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
	<24.427345, 35.302242, 34.956116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370390, 34.921352, 34.848045>,  <24.336216, 34.692818, 34.783203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370390, 34.921352, 34.848045>,  <24.427345, 35.302242, 34.956116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370390, 34.921352, 34.848045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738573, 0.079507, -0.669469,
		0.658966, -0.294866, 0.691967,
		-0.142388, -0.952225, -0.270172,
		24.327673, 34.635685, 34.766994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029951, 35.089893, 35.181900>,  <24.427345, 35.302242, 34.956116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.029951, 35.089893, 35.181900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854502, 34.941479, 34.854500>,  <24.749233, 34.852432, 34.658058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854502, 34.941479, 34.854500>,  <25.029951, 35.089893, 35.181900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854502, 34.941479, 34.854500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682844, 0.454516, -0.571960,
		0.584239, -0.809784, 0.053997,
		-0.438621, -0.371033, -0.818502,
		24.722916, 34.830170, 34.608948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573689, 34.797764, 34.790638>,  <25.029951, 35.089893, 35.181900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573689, 34.797764, 34.790638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265488, 34.872105, 34.546741>,  <25.080566, 34.916710, 34.400402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265488, 34.872105, 34.546741>,  <25.573689, 34.797764, 34.790638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265488, 34.872105, 34.546741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630158, 0.366207, -0.684685,
		0.096041, -0.911785, -0.399279,
		-0.770504, 0.185851, -0.609740,
		25.034336, 34.927860, 34.363819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237434, 35.274338, 34.701424>,  <25.573689, 34.797764, 34.790638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237434, 35.274338, 34.701424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588121, 35.455376, 34.636284>,  <26.798534, 35.563999, 34.597198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588121, 35.455376, 34.636284>,  <26.237434, 35.274338, 34.701424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588121, 35.455376, 34.636284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318450, 0.292416, -0.901711,
		-0.360488, 0.842408, 0.400496,
		0.876720, 0.452594, -0.162853,
		26.851137, 35.591152, 34.587429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232214, 36.043114, 34.703255>,  <26.237434, 35.274338, 34.701424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232214, 36.043114, 34.703255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514885, 35.898483, 34.459988>,  <26.684486, 35.811707, 34.314026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514885, 35.898483, 34.459988>,  <26.232214, 36.043114, 34.703255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514885, 35.898483, 34.459988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531117, 0.296817, -0.793609,
		0.467465, 0.883834, 0.017715,
		0.706676, -0.361575, -0.608171,
		26.726889, 35.790012, 34.277538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151997, 36.440895, 34.075077>,  <26.232214, 36.043114, 34.703255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151997, 36.440895, 34.075077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411079, 36.166050, 33.943405>,  <26.566528, 36.001144, 33.864403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411079, 36.166050, 33.943405>,  <26.151997, 36.440895, 34.075077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411079, 36.166050, 33.943405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353922, 0.111261, -0.928633,
		0.674697, 0.717984, -0.171119,
		0.647705, -0.687109, -0.329178,
		26.605391, 35.959919, 33.844650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423157, 36.735451, 33.438595>,  <26.151997, 36.440895, 34.075077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423157, 36.735451, 33.438595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508821, 36.346180, 33.404984>,  <26.560221, 36.112617, 33.384815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508821, 36.346180, 33.404984>,  <26.423157, 36.735451, 33.438595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508821, 36.346180, 33.404984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358499, 0.001711, -0.933529,
		0.908632, 0.230052, -0.348516,
		0.214163, -0.973177, -0.084028,
		26.573071, 36.054226, 33.379776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615110, 36.734425, 32.785385>,  <26.423157, 36.735451, 33.438595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615110, 36.734425, 32.785385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556067, 36.350731, 32.881783>,  <26.520639, 36.120514, 32.939621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556067, 36.350731, 32.881783>,  <26.615110, 36.734425, 32.785385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556067, 36.350731, 32.881783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236840, -0.202295, -0.950255,
		0.960270, -0.197345, -0.197324,
		-0.147611, -0.959235, 0.240997,
		26.511784, 36.062962, 32.954082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929865, 36.314476, 32.233234>,  <26.615110, 36.734425, 32.785385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929865, 36.314476, 32.233234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643990, 36.095707, 32.407635>,  <26.472464, 35.964447, 32.512276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643990, 36.095707, 32.407635>,  <26.929865, 36.314476, 32.233234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643990, 36.095707, 32.407635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311294, -0.309502, -0.898501,
		0.626352, -0.777874, 0.050945,
		-0.714688, -0.546920, 0.436004,
		26.429583, 35.931633, 32.538437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945780, 35.711098, 31.934677>,  <26.929865, 36.314476, 32.233234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945780, 35.711098, 31.934677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568689, 35.749897, 32.062336>,  <26.342434, 35.773178, 32.138931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568689, 35.749897, 32.062336>,  <26.945780, 35.711098, 31.934677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568689, 35.749897, 32.062336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327707, -0.447825, -0.831902,
		0.062231, -0.888845, 0.453963,
		-0.942727, 0.096997, 0.319150,
		26.285872, 35.778996, 32.158081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717726, 34.975594, 31.755596>,  <26.945780, 35.711098, 31.934677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717726, 34.975594, 31.755596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391075, 35.199986, 31.809893>,  <26.195086, 35.334621, 31.842470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391075, 35.199986, 31.809893>,  <26.717726, 34.975594, 31.755596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391075, 35.199986, 31.809893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473636, -0.516942, -0.713050,
		-0.329833, -0.646588, 0.687847,
		-0.816627, 0.560977, 0.135743,
		26.146088, 35.368279, 31.850615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218126, 34.513145, 31.748932>,  <26.717726, 34.975594, 31.755596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218126, 34.513145, 31.748932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023777, 34.857407, 31.688011>,  <25.907167, 35.063965, 31.651459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023777, 34.857407, 31.688011>,  <26.218126, 34.513145, 31.748932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023777, 34.857407, 31.688011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478044, -0.407560, -0.778054,
		-0.731711, -0.305228, 0.609455,
		-0.485874, 0.860657, -0.152304,
		25.878016, 35.115604, 31.642321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521187, 34.341339, 31.475657>,  <26.218126, 34.513145, 31.748932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521187, 34.341339, 31.475657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577623, 34.714546, 31.343245>,  <25.611485, 34.938469, 31.263798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577623, 34.714546, 31.343245>,  <25.521187, 34.341339, 31.475657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577623, 34.714546, 31.343245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369091, -0.260692, -0.892082,
		-0.918621, 0.248045, 0.307586,
		0.141091, 0.933013, -0.331029,
		25.619951, 34.994450, 31.243937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894939, 34.473022, 31.213428>,  <25.521187, 34.341339, 31.475657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894939, 34.473022, 31.213428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151537, 34.726398, 31.040342>,  <25.305494, 34.878422, 30.936491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151537, 34.726398, 31.040342>,  <24.894939, 34.473022, 31.213428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151537, 34.726398, 31.040342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240477, -0.369593, -0.897536,
		-0.728463, 0.679822, -0.084764,
		0.641493, 0.633438, -0.432716,
		25.343985, 34.916431, 30.910528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.574589, 34.773727, 30.710300>,  <24.894939, 34.473022, 31.213428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.574589, 34.773727, 30.710300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954494, 34.817806, 30.593130>,  <25.182438, 34.844254, 30.522827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954494, 34.817806, 30.593130>,  <24.574589, 34.773727, 30.710300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954494, 34.817806, 30.593130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268820, -0.192043, -0.943851,
		-0.160268, 0.975180, -0.152771,
		0.949763, 0.110201, -0.292926,
		25.239424, 34.850868, 30.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526817, 35.151646, 30.120470>,  <24.574589, 34.773727, 30.710300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526817, 35.151646, 30.120470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891283, 34.986950, 30.114092>,  <25.109962, 34.888134, 30.110264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891283, 34.986950, 30.114092>,  <24.526817, 35.151646, 30.120470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891283, 34.986950, 30.114092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141156, -0.275549, -0.950867,
		0.387112, 0.868646, -0.309189,
		0.911164, -0.411736, -0.015946,
		25.164633, 34.863430, 30.109308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827457, 35.312416, 29.402626>,  <24.526817, 35.151646, 30.120470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827457, 35.312416, 29.402626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048326, 35.014805, 29.553108>,  <25.180849, 34.836239, 29.643396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048326, 35.014805, 29.553108>,  <24.827457, 35.312416, 29.402626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048326, 35.014805, 29.553108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053445, -0.418715, -0.906544,
		0.832014, 0.520676, -0.191439,
		0.552174, -0.744026, 0.376204,
		25.213980, 34.791595, 29.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326145, 35.171001, 28.895679>,  <24.827457, 35.312416, 29.402626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326145, 35.171001, 28.895679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301302, 34.849579, 29.132471>,  <25.286396, 34.656727, 29.274546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301302, 34.849579, 29.132471>,  <25.326145, 35.171001, 28.895679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301302, 34.849579, 29.132471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040020, -0.594654, -0.802985,
		0.997267, -0.026181, 0.069092,
		-0.062109, -0.803555, 0.591981,
		25.282669, 34.608513, 29.310066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680225, 34.670826, 28.532532>,  <25.326145, 35.171001, 28.895679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680225, 34.670826, 28.532532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458790, 34.454884, 28.786175>,  <25.325930, 34.325317, 28.938360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458790, 34.454884, 28.786175>,  <25.680225, 34.670826, 28.532532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458790, 34.454884, 28.786175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124987, -0.698942, -0.704172,
		0.823358, -0.469076, 0.319451,
		-0.553588, -0.539859, 0.634108,
		25.292713, 34.292927, 28.976408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012522, 34.045403, 28.601078>,  <25.680225, 34.670826, 28.532532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012522, 34.045403, 28.601078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625822, 33.976082, 28.676300>,  <25.393803, 33.934490, 28.721434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625822, 33.976082, 28.676300>,  <26.012522, 34.045403, 28.601078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625822, 33.976082, 28.676300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031543, -0.648932, -0.760192,
		0.253778, -0.740846, 0.621887,
		-0.966748, -0.173304, 0.188053,
		25.335798, 33.924091, 28.732716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948164, 33.387997, 28.579748>,  <26.012522, 34.045403, 28.601078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948164, 33.387997, 28.579748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569857, 33.506359, 28.526138>,  <25.342873, 33.577377, 28.493973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569857, 33.506359, 28.526138>,  <25.948164, 33.387997, 28.579748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569857, 33.506359, 28.526138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111864, -0.684030, -0.720826,
		-0.304973, -0.666742, 0.680035,
		-0.945768, 0.295904, -0.134026,
		25.286125, 33.595131, 28.485929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567333, 32.800331, 28.494987>,  <25.948164, 33.387997, 28.579748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567333, 32.800331, 28.494987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344999, 33.080692, 28.316200>,  <25.211599, 33.248909, 28.208927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344999, 33.080692, 28.316200>,  <25.567333, 32.800331, 28.494987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344999, 33.080692, 28.316200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117127, -0.598349, -0.792628,
		-0.822999, -0.388218, 0.414679,
		-0.555835, 0.700902, -0.446970,
		25.178249, 33.290962, 28.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072372, 32.379738, 28.031628>,  <25.567333, 32.800331, 28.494987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072372, 32.379738, 28.031628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035767, 32.747814, 27.879379>,  <25.013803, 32.968662, 27.788031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035767, 32.747814, 27.879379>,  <25.072372, 32.379738, 28.031628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035767, 32.747814, 27.879379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026202, -0.379866, -0.924671,
		-0.995459, -0.094592, 0.010652,
		-0.091513, 0.920193, -0.380620,
		25.008312, 33.023872, 27.765194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564756, 32.282864, 27.483458>,  <25.072372, 32.379738, 28.031628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564756, 32.282864, 27.483458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736078, 32.630630, 27.384932>,  <24.838871, 32.839291, 27.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736078, 32.630630, 27.384932>,  <24.564756, 32.282864, 27.483458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736078, 32.630630, 27.384932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203210, -0.172929, -0.963743,
		-0.880488, 0.462831, 0.102607,
		0.428306, 0.869415, -0.246314,
		24.864571, 32.891457, 27.311037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105440, 32.573872, 27.038162>,  <24.564756, 32.282864, 27.483458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105440, 32.573872, 27.038162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460035, 32.748817, 26.977699>,  <24.672792, 32.853786, 26.941422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460035, 32.748817, 26.977699>,  <24.105440, 32.573872, 27.038162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460035, 32.748817, 26.977699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145607, -0.046426, -0.988253,
		-0.439246, 0.898084, 0.022528,
		0.886488, 0.437366, -0.151159,
		24.725983, 32.880028, 26.932352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.038862, 33.171741, 26.692810>,  <24.105440, 32.573872, 27.038162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.038862, 33.171741, 26.692810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387686, 32.998234, 26.602165>,  <24.596981, 32.894131, 26.547777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387686, 32.998234, 26.602165>,  <24.038862, 33.171741, 26.692810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387686, 32.998234, 26.602165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295418, -0.097406, -0.950390,
		0.390178, 0.895743, -0.213087,
		0.872061, -0.433770, -0.226613,
		24.649303, 32.868103, 26.534182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386202, 33.580212, 26.173342>,  <24.038862, 33.171741, 26.692810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386202, 33.580212, 26.173342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490986, 33.200195, 26.105452>,  <24.553856, 32.972187, 26.064716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490986, 33.200195, 26.105452>,  <24.386202, 33.580212, 26.173342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490986, 33.200195, 26.105452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321298, 0.079983, -0.943594,
		0.910025, 0.301716, -0.284293,
		0.261959, -0.950037, -0.169727,
		24.569574, 32.915184, 26.054533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897717, 33.497753, 25.677477>,  <24.386202, 33.580212, 26.173342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897717, 33.497753, 25.677477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612644, 33.219265, 25.711807>,  <24.441601, 33.052174, 25.732405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612644, 33.219265, 25.711807>,  <24.897717, 33.497753, 25.677477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612644, 33.219265, 25.711807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288032, 0.178872, -0.940767,
		0.639630, -0.695185, -0.328012,
		-0.712679, -0.696221, 0.085824,
		24.398840, 33.010399, 25.737555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306112, 33.516869, 25.068638>,  <24.897717, 33.497753, 25.677477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306112, 33.516869, 25.068638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298649, 33.256393, 24.765163>,  <25.294170, 33.100109, 24.583078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298649, 33.256393, 24.765163>,  <25.306112, 33.516869, 25.068638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298649, 33.256393, 24.765163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738372, 0.520609, -0.428688,
		0.674136, 0.552194, -0.490533,
		-0.018657, -0.651190, -0.758685,
		25.293053, 33.061035, 24.537558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404129, 33.817902, 24.381193>,  <25.306112, 33.516869, 25.068638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404129, 33.817902, 24.381193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178413, 33.489212, 24.349325>,  <25.042984, 33.292000, 24.330204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178413, 33.489212, 24.349325>,  <25.404129, 33.817902, 24.381193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178413, 33.489212, 24.349325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634439, 0.493372, -0.595040,
		0.528268, -0.285224, -0.799737,
		-0.564287, -0.821725, -0.079675,
		25.009127, 33.242695, 24.325424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901527, 33.357468, 24.256102>,  <25.404129, 33.817902, 24.381193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901527, 33.357468, 24.256102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229939, 33.131557, 24.222765>,  <26.426985, 32.996014, 24.202763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229939, 33.131557, 24.222765>,  <25.901527, 33.357468, 24.256102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229939, 33.131557, 24.222765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569187, 0.821073, 0.043185,
		0.044040, -0.082893, 0.995585,
		0.821028, -0.564773, -0.083341,
		26.476246, 32.962124, 24.197763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373337, 33.849373, 24.479731>,  <25.901527, 33.357468, 24.256102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373337, 33.849373, 24.479731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581451, 33.567699, 24.286474>,  <26.706320, 33.398697, 24.170521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581451, 33.567699, 24.286474>,  <26.373337, 33.849373, 24.479731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581451, 33.567699, 24.286474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594043, 0.704872, -0.387646,
		0.613527, -0.085320, 0.785051,
		0.520287, -0.704185, -0.483141,
		26.737537, 33.356445, 24.141531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089333, 33.921547, 24.752405>,  <26.373337, 33.849373, 24.479731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089333, 33.921547, 24.752405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062208, 33.757763, 24.388483>,  <27.045935, 33.659492, 24.170130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062208, 33.757763, 24.388483>,  <27.089333, 33.921547, 24.752405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062208, 33.757763, 24.388483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753496, 0.576695, -0.315700,
		0.653946, -0.706943, 0.269419,
		-0.067809, -0.409456, -0.909806,
		27.041866, 33.634926, 24.115541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710480, 33.574478, 24.543583>,  <27.089333, 33.921547, 24.752405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710480, 33.574478, 24.543583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556057, 33.704548, 24.198278>,  <27.463404, 33.782589, 23.991096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556057, 33.704548, 24.198278>,  <27.710480, 33.574478, 24.543583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556057, 33.704548, 24.198278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819749, 0.550099, -0.159383,
		0.423052, -0.769189, -0.478932,
		-0.386056, 0.325177, -0.863262,
		27.440241, 33.802101, 23.939301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190247, 34.127422, 24.584723>,  <27.710480, 33.574478, 24.543583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190247, 34.127422, 24.584723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894794, 34.391754, 24.637980>,  <27.717524, 34.550354, 24.669933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894794, 34.391754, 24.637980>,  <28.190247, 34.127422, 24.584723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894794, 34.391754, 24.637980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450223, 0.336597, 0.827044,
		0.501721, 0.670824, -0.546142,
		-0.738631, 0.660831, 0.133142,
		27.673204, 34.590004, 24.677921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524441, 34.746326, 24.797705>,  <28.190247, 34.127422, 24.584723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524441, 34.746326, 24.797705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147009, 34.809235, 24.914274>,  <27.920549, 34.846977, 24.984215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147009, 34.809235, 24.914274>,  <28.524441, 34.746326, 24.797705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147009, 34.809235, 24.914274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330332, 0.385204, 0.861684,
		0.023257, 0.909332, -0.415420,
		-0.943578, 0.157267, 0.291423,
		27.863935, 34.856415, 25.001701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515343, 35.376705, 25.338694>,  <28.524441, 34.746326, 24.797705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515343, 35.376705, 25.338694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189682, 35.159462, 25.420851>,  <27.994286, 35.029118, 25.470146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189682, 35.159462, 25.420851>,  <28.515343, 35.376705, 25.338694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189682, 35.159462, 25.420851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186903, 0.089786, 0.978267,
		-0.549746, 0.834849, 0.028409,
		-0.814154, -0.543108, 0.205395,
		27.945436, 34.996529, 25.482470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210836, 35.807346, 25.790230>,  <28.515343, 35.376705, 25.338694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210836, 35.807346, 25.790230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040531, 35.451359, 25.855564>,  <27.938347, 35.237766, 25.894764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040531, 35.451359, 25.855564>,  <28.210836, 35.807346, 25.790230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040531, 35.451359, 25.855564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059585, 0.152545, 0.986499,
		-0.902870, 0.429748, -0.011920,
		-0.425764, -0.889970, 0.163335,
		27.912802, 35.184368, 25.904564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744764, 36.019039, 26.354563>,  <28.210836, 35.807346, 25.790230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744764, 36.019039, 26.354563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794174, 35.622105, 26.356216>,  <27.823820, 35.383945, 26.357208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794174, 35.622105, 26.356216>,  <27.744764, 36.019039, 26.354563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794174, 35.622105, 26.356216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257055, 0.036020, 0.965725,
		-0.958470, -0.118230, 0.259533,
		0.123526, -0.992333, 0.004132,
		27.831232, 35.324406, 26.357456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327312, 35.736938, 26.861084>,  <27.744764, 36.019039, 26.354563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327312, 35.736938, 26.861084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606602, 35.455624, 26.807617>,  <27.774176, 35.286835, 26.775537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606602, 35.455624, 26.807617>,  <27.327312, 35.736938, 26.861084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606602, 35.455624, 26.807617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239708, 0.053744, 0.969356,
		-0.674555, -0.708868, 0.206110,
		0.698223, -0.703291, -0.133668,
		27.816069, 35.244637, 26.767517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149353, 35.167557, 27.338869>,  <27.327312, 35.736938, 26.861084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149353, 35.167557, 27.338869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542547, 35.165260, 27.265432>,  <27.778463, 35.163883, 27.221371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542547, 35.165260, 27.265432>,  <27.149353, 35.167557, 27.338869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542547, 35.165260, 27.265432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179156, -0.190556, 0.965190,
		-0.040525, -0.981659, -0.186286,
		0.982986, -0.005740, -0.183592,
		27.837442, 35.163540, 27.210354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369354, 34.876408, 27.918268>,  <27.149353, 35.167557, 27.338869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369354, 34.876408, 27.918268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720285, 34.977295, 27.754963>,  <27.930843, 35.037827, 27.656979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720285, 34.977295, 27.754963>,  <27.369354, 34.876408, 27.918268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720285, 34.977295, 27.754963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393222, 0.109838, 0.912859,
		0.275088, -0.961415, -0.002816,
		0.877328, 0.252224, -0.408264,
		27.983484, 35.052963, 27.632484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835129, 34.421566, 28.163904>,  <27.369354, 34.876408, 27.918268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835129, 34.421566, 28.163904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043900, 34.742226, 28.047319>,  <28.169163, 34.934620, 27.977369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043900, 34.742226, 28.047319>,  <27.835129, 34.421566, 28.163904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043900, 34.742226, 28.047319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441650, 0.038356, 0.896367,
		0.729751, -0.596563, -0.334030,
		0.521927, 0.801649, -0.291463,
		28.200478, 34.982719, 27.959881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536299, 34.307171, 28.290106>,  <27.835129, 34.421566, 28.163904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536299, 34.307171, 28.290106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514484, 34.706524, 28.296534>,  <28.501396, 34.946136, 28.300390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514484, 34.706524, 28.296534>,  <28.536299, 34.307171, 28.290106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514484, 34.706524, 28.296534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410893, 0.007771, 0.911650,
		0.910051, 0.056322, -0.410652,
		-0.054537, 0.998382, 0.016070,
		28.498123, 35.006039, 28.301355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203087, 34.647301, 28.478283>,  <28.536299, 34.307171, 28.290106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203087, 34.647301, 28.478283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925039, 34.923149, 28.559504>,  <28.758211, 35.088657, 28.608236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925039, 34.923149, 28.559504>,  <29.203087, 34.647301, 28.478283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925039, 34.923149, 28.559504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459533, 0.209035, 0.863212,
		0.552844, 0.693345, -0.462208,
		-0.695121, 0.689621, 0.203051,
		28.716503, 35.130035, 28.620419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458479, 34.913174, 28.991138>,  <29.203087, 34.647301, 28.478283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458479, 34.913174, 28.991138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113714, 35.115555, 29.004494>,  <28.906855, 35.236984, 29.012506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113714, 35.115555, 29.004494>,  <29.458479, 34.913174, 28.991138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113714, 35.115555, 29.004494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209014, 0.294525, 0.932506,
		0.461973, 0.810718, -0.359607,
		-0.861913, 0.505956, 0.033389,
		28.855141, 35.267342, 29.014511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578260, 35.479477, 29.527130>,  <29.458479, 34.913174, 28.991138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578260, 35.479477, 29.527130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181458, 35.441685, 29.493671>,  <28.943377, 35.419010, 29.473597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181458, 35.441685, 29.493671>,  <29.578260, 35.479477, 29.527130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181458, 35.441685, 29.493671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112164, 0.356492, 0.927541,
		-0.057812, 0.929509, -0.364240,
		-0.992007, -0.094477, -0.083648,
		28.883856, 35.413342, 29.468576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164436, 36.161858, 29.799250>,  <29.578260, 35.479477, 29.527130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164436, 36.161858, 29.799250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935410, 35.834949, 29.825306>,  <28.797993, 35.638805, 29.840940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935410, 35.834949, 29.825306>,  <29.164436, 36.161858, 29.799250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935410, 35.834949, 29.825306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129187, 0.168398, 0.977217,
		-0.809616, 0.551107, -0.202000,
		-0.572567, -0.817266, 0.065142,
		28.763639, 35.589771, 29.844849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399801, 36.349037, 30.070688>,  <29.164436, 36.161858, 29.799250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399801, 36.349037, 30.070688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435179, 35.957256, 30.143187>,  <28.456406, 35.722187, 30.186686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435179, 35.957256, 30.143187>,  <28.399801, 36.349037, 30.070688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435179, 35.957256, 30.143187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283689, 0.149653, 0.947167,
		-0.954829, -0.135188, -0.264624,
		0.088444, -0.979453, 0.181245,
		28.461712, 35.663422, 30.197559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772190, 36.215149, 30.476330>,  <28.399801, 36.349037, 30.070688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772190, 36.215149, 30.476330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036861, 35.920006, 30.529627>,  <28.195663, 35.742920, 30.561605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036861, 35.920006, 30.529627>,  <27.772190, 36.215149, 30.476330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036861, 35.920006, 30.529627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190253, 0.006670, 0.981712,
		-0.725249, -0.674927, -0.135966,
		0.661678, -0.737854, 0.133244,
		28.235365, 35.698650, 30.569601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479368, 35.830441, 30.987116>,  <27.772190, 36.215149, 30.476330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479368, 35.830441, 30.987116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841003, 35.660908, 31.008984>,  <28.057985, 35.559189, 31.022104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841003, 35.660908, 31.008984>,  <27.479368, 35.830441, 30.987116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841003, 35.660908, 31.008984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146202, -0.186553, 0.971505,
		-0.401557, -0.886320, -0.230626,
		0.904089, -0.423833, 0.054671,
		28.112230, 35.533756, 31.025385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450556, 35.249264, 31.281956>,  <27.479368, 35.830441, 30.987116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450556, 35.249264, 31.281956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833519, 35.342949, 31.349501>,  <28.063297, 35.399158, 31.390028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833519, 35.342949, 31.349501>,  <27.450556, 35.249264, 31.281956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833519, 35.342949, 31.349501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165958, -0.032205, 0.985607,
		0.236282, -0.971651, 0.008037,
		0.957407, 0.234215, 0.168863,
		28.120741, 35.413212, 31.400160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767653, 34.761707, 31.782562>,  <27.450556, 35.249264, 31.281956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767653, 34.761707, 31.782562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002661, 35.082417, 31.826338>,  <28.143665, 35.274841, 31.852602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002661, 35.082417, 31.826338>,  <27.767653, 34.761707, 31.782562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002661, 35.082417, 31.826338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226488, 0.033095, 0.973451,
		0.776868, -0.596708, 0.201037,
		0.587519, 0.801776, 0.109437,
		28.178917, 35.322948, 31.859169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120438, 34.655628, 32.302414>,  <27.767653, 34.761707, 31.782562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120438, 34.655628, 32.302414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219799, 35.043079, 32.299553>,  <28.279417, 35.275551, 32.297836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219799, 35.043079, 32.299553>,  <28.120438, 34.655628, 32.302414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219799, 35.043079, 32.299553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010577, 0.010098, 0.999893,
		0.968599, -0.248302, 0.012753,
		0.248405, 0.968630, -0.007154,
		28.294321, 35.333668, 32.297405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772263, 34.695168, 32.685211>,  <28.120438, 34.655628, 32.302414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772263, 34.695168, 32.685211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572081, 35.041454, 32.688759>,  <28.451971, 35.249226, 32.690887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572081, 35.041454, 32.688759>,  <28.772263, 34.695168, 32.685211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572081, 35.041454, 32.688759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073009, 0.031988, 0.996818,
		0.862679, 0.499510, -0.079214,
		-0.500454, 0.865717, 0.008873,
		28.421944, 35.301170, 32.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156946, 35.019905, 33.144711>,  <28.772263, 34.695168, 32.685211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156946, 35.019905, 33.144711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814562, 35.224785, 33.116467>,  <28.609131, 35.347713, 33.099518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814562, 35.224785, 33.116467>,  <29.156946, 35.019905, 33.144711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814562, 35.224785, 33.116467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040379, 0.202374, 0.978476,
		0.515462, 0.834685, -0.193906,
		-0.855961, 0.512196, -0.070612,
		28.557774, 35.378445, 33.095284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214613, 35.716480, 33.374573>,  <29.156946, 35.019905, 33.144711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214613, 35.716480, 33.374573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846043, 35.569485, 33.425053>,  <28.624901, 35.481285, 33.455341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846043, 35.569485, 33.425053>,  <29.214613, 35.716480, 33.374573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846043, 35.569485, 33.425053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024247, 0.269788, 0.962615,
		-0.387802, 0.890036, -0.239678,
		-0.921424, -0.367492, 0.126204,
		28.569616, 35.459236, 33.462914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821642, 35.246204, 33.544769>,  <29.214613, 35.716480, 33.374573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821642, 35.246204, 33.544769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930313, 35.117615, 33.181927>,  <29.995516, 35.040459, 32.964222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930313, 35.117615, 33.181927>,  <29.821642, 35.246204, 33.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930313, 35.117615, 33.181927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935664, 0.308811, 0.170790,
		0.225219, -0.895147, 0.384693,
		0.271680, -0.321478, -0.907107,
		30.011818, 35.021172, 32.909794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449713, 35.022205, 33.794659>,  <29.821642, 35.246204, 33.544769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449713, 35.022205, 33.794659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447374, 35.078640, 33.398666>,  <30.445971, 35.112499, 33.161072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447374, 35.078640, 33.398666>,  <30.449713, 35.022205, 33.794659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447374, 35.078640, 33.398666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827776, 0.556109, 0.074364,
		0.561028, -0.819048, -0.120035,
		-0.005845, 0.141082, -0.989981,
		30.445621, 35.120964, 33.101673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056952, 34.839489, 33.508461>,  <30.449713, 35.022205, 33.794659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056952, 34.839489, 33.508461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907986, 35.149441, 33.304161>,  <30.818605, 35.335411, 33.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907986, 35.149441, 33.304161>,  <31.056952, 34.839489, 33.508461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907986, 35.149441, 33.304161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828166, 0.525858, 0.193944,
		0.418866, -0.350759, -0.837568,
		-0.372414, 0.774882, -0.510751,
		30.796261, 35.381905, 33.150936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681248, 35.113228, 32.989147>,  <31.056952, 34.839489, 33.508461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681248, 35.113228, 32.989147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409164, 35.354538, 33.155697>,  <31.245914, 35.499325, 33.255627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409164, 35.354538, 33.155697>,  <31.681248, 35.113228, 32.989147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409164, 35.354538, 33.155697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733007, 0.556927, 0.390553,
		0.003721, 0.570866, -0.821035,
		-0.680210, 0.603278, 0.416376,
		31.205101, 35.535522, 33.280609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726063, 35.898979, 32.814373>,  <31.681248, 35.113228, 32.989147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726063, 35.898979, 32.814373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575506, 35.834118, 33.179237>,  <31.485172, 35.795200, 33.398155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575506, 35.834118, 33.179237>,  <31.726063, 35.898979, 32.814373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575506, 35.834118, 33.179237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669234, 0.633260, 0.388726,
		-0.640668, 0.756761, -0.129834,
		-0.376391, -0.162154, 0.912160,
		31.462589, 35.785473, 33.452885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668173, 36.512836, 33.300007>,  <31.726063, 35.898979, 32.814373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668173, 36.512836, 33.300007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668381, 36.219749, 33.572220>,  <31.668507, 36.043896, 33.735546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668381, 36.219749, 33.572220>,  <31.668173, 36.512836, 33.300007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668381, 36.219749, 33.572220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500117, 0.589504, 0.634324,
		-0.865958, 0.340015, 0.366752,
		0.000522, -0.732717, 0.680533,
		31.668537, 35.999935, 33.776379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628277, 36.776161, 33.952991>,  <31.668173, 36.512836, 33.300007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628277, 36.776161, 33.952991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789957, 36.425983, 34.058983>,  <31.886965, 36.215878, 34.122578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789957, 36.425983, 34.058983>,  <31.628277, 36.776161, 33.952991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789957, 36.425983, 34.058983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489121, 0.451675, 0.746157,
		-0.772906, -0.171989, 0.610767,
		0.404199, -0.875448, 0.264979,
		31.911217, 36.163349, 34.138477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464806, 36.616447, 34.632614>,  <31.628277, 36.776161, 33.952991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464806, 36.616447, 34.632614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813751, 36.434559, 34.560825>,  <32.023121, 36.325428, 34.517754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813751, 36.434559, 34.560825>,  <31.464806, 36.616447, 34.632614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813751, 36.434559, 34.560825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369746, 0.373584, 0.850719,
		-0.319789, -0.808497, 0.494032,
		0.872366, -0.454717, -0.179470,
		32.075462, 36.298145, 34.506985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673405, 36.338261, 35.266434>,  <31.464806, 36.616447, 34.632614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673405, 36.338261, 35.266434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014530, 36.316841, 35.058651>,  <32.219204, 36.303989, 34.933979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014530, 36.316841, 35.058651>,  <31.673405, 36.338261, 35.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014530, 36.316841, 35.058651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513838, 0.263498, 0.816419,
		0.093157, -0.963172, 0.252231,
		0.852814, -0.053551, -0.519461,
		32.270374, 36.300777, 34.902813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218628, 35.993507, 35.715767>,  <31.673405, 36.338261, 35.266434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218628, 35.993507, 35.715767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430229, 36.201153, 35.447239>,  <32.557190, 36.325741, 35.286121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430229, 36.201153, 35.447239>,  <32.218628, 35.993507, 35.715767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430229, 36.201153, 35.447239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592252, 0.340726, 0.730167,
		0.607777, -0.783854, -0.127201,
		0.529004, 0.519113, -0.671324,
		32.588932, 36.356888, 35.245842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859367, 35.861393, 35.733261>,  <32.218628, 35.993507, 35.715767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859367, 35.861393, 35.733261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904633, 36.221817, 35.565792>,  <32.931793, 36.438072, 35.465313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904633, 36.221817, 35.565792>,  <32.859367, 35.861393, 35.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904633, 36.221817, 35.565792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596570, 0.275346, 0.753849,
		0.794543, -0.335072, -0.506387,
		0.113162, 0.901061, -0.418669,
		32.938580, 36.492134, 35.440193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437843, 36.001850, 35.928234>,  <32.859367, 35.861393, 35.733261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437843, 36.001850, 35.928234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293182, 36.361359, 35.829102>,  <33.206387, 36.577065, 35.769623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293182, 36.361359, 35.829102>,  <33.437843, 36.001850, 35.928234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293182, 36.361359, 35.829102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610913, 0.429260, 0.665223,
		0.704266, 0.089177, -0.704313,
		-0.361656, 0.898768, -0.247834,
		33.184685, 36.630989, 35.754753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050568, 36.495003, 35.830589>,  <33.437843, 36.001850, 35.928234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050568, 36.495003, 35.830589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725159, 36.702972, 35.934788>,  <33.529911, 36.827755, 35.997307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725159, 36.702972, 35.934788>,  <34.050568, 36.495003, 35.830589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725159, 36.702972, 35.934788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492879, 0.378740, 0.783343,
		0.308618, 0.765662, -0.564373,
		-0.813526, 0.519921, 0.260493,
		33.481102, 36.858948, 36.012936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349831, 37.158218, 36.212265>,  <34.050568, 36.495003, 35.830589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349831, 37.158218, 36.212265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959408, 37.144386, 36.298164>,  <33.725155, 37.136086, 36.349705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959408, 37.144386, 36.298164>,  <34.349831, 37.158218, 36.212265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959408, 37.144386, 36.298164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172326, 0.479498, 0.860456,
		-0.132728, 0.876861, -0.462058,
		-0.976057, -0.034582, 0.214749,
		33.666592, 37.134010, 36.362591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416847, 37.778446, 36.470116>,  <34.349831, 37.158218, 36.212265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416847, 37.778446, 36.470116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083565, 37.597569, 36.597416>,  <33.883595, 37.489040, 36.673798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083565, 37.597569, 36.597416>,  <34.416847, 37.778446, 36.470116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083565, 37.597569, 36.597416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042793, 0.521086, 0.852431,
		-0.551302, 0.723871, -0.414822,
		-0.833208, -0.452195, 0.318252,
		33.833603, 37.461910, 36.692890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943237, 38.302696, 36.763741>,  <34.416847, 37.778446, 36.470116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943237, 38.302696, 36.763741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839703, 37.952602, 36.927185>,  <33.777584, 37.742546, 37.025253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839703, 37.952602, 36.927185>,  <33.943237, 38.302696, 36.763741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839703, 37.952602, 36.927185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089890, 0.443019, 0.891994,
		-0.961730, 0.194148, -0.193343,
		-0.258834, -0.875238, 0.408613,
		33.762051, 37.690033, 37.049770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386345, 38.535023, 37.192257>,  <33.943237, 38.302696, 36.763741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386345, 38.535023, 37.192257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515182, 38.176640, 37.314583>,  <33.592487, 37.961609, 37.387978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515182, 38.176640, 37.314583>,  <33.386345, 38.535023, 37.192257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515182, 38.176640, 37.314583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003727, 0.321823, 0.946792,
		-0.946699, -0.306099, 0.100319,
		0.322097, -0.895954, 0.305811,
		33.611813, 37.907852, 37.406326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019394, 38.434868, 37.800713>,  <33.386345, 38.535023, 37.192257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019394, 38.434868, 37.800713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309849, 38.163094, 37.842854>,  <33.484119, 38.000031, 37.868137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309849, 38.163094, 37.842854>,  <33.019394, 38.434868, 37.800713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309849, 38.163094, 37.842854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097589, 0.049830, 0.993979,
		-0.680591, -0.732044, -0.030122,
		0.726135, -0.679432, 0.105354,
		33.527691, 37.959263, 37.874458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782997, 38.030773, 38.385372>,  <33.019394, 38.434868, 37.800713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782997, 38.030773, 38.385372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171757, 37.936810, 38.379395>,  <33.405014, 37.880432, 38.375809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171757, 37.936810, 38.379395>,  <32.782997, 38.030773, 38.385372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171757, 37.936810, 38.379395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020169, 0.019849, 0.999599,
		-0.234521, -0.971814, 0.024030,
		0.971902, -0.234912, -0.014946,
		33.463326, 37.866337, 38.374912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013634, 37.347931, 38.766373>,  <32.782997, 38.030773, 38.385372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013634, 37.347931, 38.766373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329792, 37.592022, 38.744862>,  <33.519485, 37.738476, 38.731956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329792, 37.592022, 38.744862>,  <33.013634, 37.347931, 38.766373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329792, 37.592022, 38.744862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027021, 0.052972, 0.998230,
		0.612001, -0.790450, 0.025380,
		0.790396, 0.610232, -0.053777,
		33.566910, 37.775093, 38.728729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370163, 37.110855, 39.357445>,  <33.013634, 37.347931, 38.766373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370163, 37.110855, 39.357445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528931, 37.465137, 39.261135>,  <33.624191, 37.677708, 39.203350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528931, 37.465137, 39.261135>,  <33.370163, 37.110855, 39.357445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528931, 37.465137, 39.261135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137451, 0.202012, 0.969690,
		0.907504, -0.417982, -0.041559,
		0.396918, 0.885710, -0.240779,
		33.648006, 37.730850, 39.188900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920044, 37.153740, 39.819496>,  <33.370163, 37.110855, 39.357445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920044, 37.153740, 39.819496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829502, 37.512753, 39.668125>,  <33.775177, 37.728161, 39.577305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829502, 37.512753, 39.668125>,  <33.920044, 37.153740, 39.819496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829502, 37.512753, 39.668125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045562, 0.378328, 0.924550,
		0.972979, 0.226515, -0.044742,
		-0.226351, 0.897530, -0.378425,
		33.761597, 37.782013, 39.554596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380310, 37.533195, 40.126171>,  <33.920044, 37.153740, 39.819496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380310, 37.533195, 40.126171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065617, 37.757591, 40.023148>,  <33.876801, 37.892231, 39.961334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065617, 37.757591, 40.023148>,  <34.380310, 37.533195, 40.126171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065617, 37.757591, 40.023148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055815, 0.350888, 0.934753,
		0.614766, 0.749775, -0.244743,
		-0.786732, 0.560994, -0.257562,
		33.829597, 37.925888, 39.945877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594101, 38.181339, 40.270382>,  <34.380310, 37.533195, 40.126171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594101, 38.181339, 40.270382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194324, 38.185482, 40.283054>,  <33.954456, 38.187965, 40.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194324, 38.185482, 40.283054>,  <34.594101, 38.181339, 40.270382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194324, 38.185482, 40.283054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033256, 0.244932, 0.968970,
		0.002271, 0.969485, -0.245141,
		-0.999444, 0.010353, 0.031685,
		33.894493, 38.188587, 40.292561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344971, 38.812344, 40.651268>,  <34.594101, 38.181339, 40.270382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344971, 38.812344, 40.651268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040573, 38.552925, 40.657845>,  <33.857933, 38.397274, 40.661789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040573, 38.552925, 40.657845>,  <34.344971, 38.812344, 40.651268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040573, 38.552925, 40.657845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171104, 0.225089, 0.959197,
		-0.625785, 0.727132, -0.282261,
		-0.760997, -0.648547, 0.016442,
		33.812275, 38.358360, 40.662777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807873, 39.250561, 41.031109>,  <34.344971, 38.812344, 40.651268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807873, 39.250561, 41.031109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682396, 38.871010, 41.017025>,  <33.607109, 38.643280, 41.008575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682396, 38.871010, 41.017025>,  <33.807873, 39.250561, 41.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682396, 38.871010, 41.017025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455241, 0.117752, 0.882547,
		-0.833280, 0.292874, -0.468903,
		-0.313689, -0.948873, -0.035208,
		33.588287, 38.586349, 41.006462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073273, 39.333199, 41.037941>,  <33.807873, 39.250561, 41.031109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073273, 39.333199, 41.037941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212894, 38.975033, 41.148495>,  <33.296669, 38.760132, 41.214825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212894, 38.975033, 41.148495>,  <33.073273, 39.333199, 41.037941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212894, 38.975033, 41.148495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431437, 0.108261, 0.895624,
		-0.831879, -0.431863, -0.348527,
		0.349055, -0.895418, 0.276382,
		33.317612, 38.706406, 41.231411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575066, 39.150818, 41.436020>,  <33.073273, 39.333199, 41.037941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575066, 39.150818, 41.436020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873451, 38.907383, 41.544212>,  <33.052483, 38.761322, 41.609127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873451, 38.907383, 41.544212>,  <32.575066, 39.150818, 41.436020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873451, 38.907383, 41.544212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391892, -0.072738, 0.917131,
		-0.538477, -0.790148, -0.292759,
		0.745964, -0.608584, 0.270485,
		33.097240, 38.724808, 41.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264179, 38.646004, 41.883350>,  <32.575066, 39.150818, 41.436020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264179, 38.646004, 41.883350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654118, 38.632729, 41.971500>,  <32.888081, 38.624763, 42.024391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654118, 38.632729, 41.971500>,  <32.264179, 38.646004, 41.883350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654118, 38.632729, 41.971500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217032, 0.083353, 0.972599,
		-0.050646, -0.995967, 0.074054,
		0.974850, -0.033186, 0.220378,
		32.946571, 38.622772, 42.037613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352741, 38.115826, 42.348934>,  <32.264179, 38.646004, 41.883350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352741, 38.115826, 42.348934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666183, 38.360905, 42.390026>,  <32.854248, 38.507954, 42.414680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666183, 38.360905, 42.390026>,  <32.352741, 38.115826, 42.348934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666183, 38.360905, 42.390026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248518, 0.157593, 0.955722,
		0.569383, -0.774442, 0.275758,
		0.783608, 0.612702, 0.102732,
		32.901264, 38.544716, 42.420845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466679, 38.045109, 43.034225>,  <32.352741, 38.115826, 42.348934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466679, 38.045109, 43.034225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691978, 38.354862, 42.918926>,  <32.827156, 38.540714, 42.849747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691978, 38.354862, 42.918926>,  <32.466679, 38.045109, 43.034225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691978, 38.354862, 42.918926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052984, 0.381982, 0.922649,
		0.824588, -0.504407, 0.256181,
		0.563247, 0.774379, -0.288253,
		32.860954, 38.587177, 42.832451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982067, 37.992870, 43.464237>,  <32.466679, 38.045109, 43.034225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982067, 37.992870, 43.464237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937332, 38.364464, 43.323112>,  <32.910492, 38.587421, 43.238438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937332, 38.364464, 43.323112>,  <32.982067, 37.992870, 43.464237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937332, 38.364464, 43.323112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246224, 0.318060, 0.915539,
		0.962739, 0.189261, 0.193168,
		-0.111836, 0.928988, -0.352810,
		32.903782, 38.643162, 43.217270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318600, 38.326591, 43.952682>,  <32.982067, 37.992870, 43.464237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318600, 38.326591, 43.952682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121548, 38.622311, 43.769051>,  <33.003319, 38.799744, 43.658871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121548, 38.622311, 43.769051>,  <33.318600, 38.326591, 43.952682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121548, 38.622311, 43.769051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221694, 0.403518, 0.887708,
		0.841528, 0.539086, -0.034887,
		-0.492628, 0.739297, -0.459084,
		32.973759, 38.844101, 43.631325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333462, 38.957466, 44.446262>,  <33.318600, 38.326591, 43.952682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333462, 38.957466, 44.446262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017269, 38.979221, 44.202236>,  <32.827553, 38.992275, 44.055820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017269, 38.979221, 44.202236>,  <33.333462, 38.957466, 44.446262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017269, 38.979221, 44.202236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545985, 0.388801, 0.742115,
		0.277553, 0.919715, -0.277648,
		-0.790484, 0.054384, -0.610063,
		32.780125, 38.995537, 44.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137997, 39.573418, 44.495636>,  <33.333462, 38.957466, 44.446262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137997, 39.573418, 44.495636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817348, 39.362240, 44.383442>,  <32.624958, 39.235535, 44.316124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817348, 39.362240, 44.383442>,  <33.137997, 39.573418, 44.495636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817348, 39.362240, 44.383442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548868, 0.463994, 0.695308,
		-0.236941, 0.711326, -0.661721,
		-0.801625, -0.527945, -0.280485,
		32.576862, 39.203857, 44.299297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600544, 40.067871, 44.509972>,  <33.137997, 39.573418, 44.495636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600544, 40.067871, 44.509972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395000, 39.725784, 44.536980>,  <32.271675, 39.520535, 44.553185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395000, 39.725784, 44.536980>,  <32.600544, 40.067871, 44.509972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395000, 39.725784, 44.536980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591584, 0.410254, 0.694060,
		-0.621271, 0.316704, -0.716744,
		-0.513859, -0.855214, 0.067522,
		32.240845, 39.469219, 44.557236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015659, 40.295296, 44.534130>,  <32.600544, 40.067871, 44.509972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015659, 40.295296, 44.534130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955671, 39.918461, 44.654118>,  <31.919678, 39.692360, 44.726109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955671, 39.918461, 44.654118>,  <32.015659, 40.295296, 44.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955671, 39.918461, 44.654118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538086, 0.332306, 0.774620,
		-0.829441, -0.045237, -0.556760,
		-0.149973, -0.942086, 0.299970,
		31.910679, 39.635834, 44.744110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385729, 40.322681, 44.622265>,  <32.015659, 40.295296, 44.534130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385729, 40.322681, 44.622265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528591, 40.032787, 44.857960>,  <31.614307, 39.858852, 44.999378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528591, 40.032787, 44.857960>,  <31.385729, 40.322681, 44.622265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528591, 40.032787, 44.857960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563704, 0.335764, 0.754653,
		-0.744768, -0.601682, -0.288617,
		0.357153, -0.724736, 0.589236,
		31.635736, 39.815365, 45.034729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804716, 40.024212, 45.018311>,  <31.385729, 40.322681, 44.622265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804716, 40.024212, 45.018311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118439, 39.915527, 45.241390>,  <31.306673, 39.850315, 45.375240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118439, 39.915527, 45.241390>,  <30.804716, 40.024212, 45.018311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118439, 39.915527, 45.241390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479409, 0.305106, 0.822847,
		-0.393735, -0.912734, 0.109036,
		0.784308, -0.271710, 0.557704,
		31.353731, 39.834015, 45.408703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491846, 39.597794, 45.519920>,  <30.804716, 40.024212, 45.018311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491846, 39.597794, 45.519920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845768, 39.715027, 45.664818>,  <31.058121, 39.785366, 45.751755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845768, 39.715027, 45.664818>,  <30.491846, 39.597794, 45.519920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845768, 39.715027, 45.664818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412067, 0.129240, 0.901941,
		0.217536, -0.947309, 0.235126,
		0.884804, 0.293092, 0.362240,
		31.111210, 39.802952, 45.773491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651260, 39.099644, 46.052116>,  <30.491846, 39.597794, 45.519920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651260, 39.099644, 46.052116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841362, 39.445404, 46.117771>,  <30.955423, 39.652863, 46.157166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841362, 39.445404, 46.117771>,  <30.651260, 39.099644, 46.052116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841362, 39.445404, 46.117771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418416, 0.057934, 0.906406,
		0.773990, -0.499451, 0.389214,
		0.475254, 0.864403, 0.164138,
		30.983938, 39.704723, 46.167011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902143, 39.035084, 46.690216>,  <30.651260, 39.099644, 46.052116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902143, 39.035084, 46.690216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906168, 39.430954, 46.633022>,  <30.908583, 39.668476, 46.598705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906168, 39.430954, 46.633022>,  <30.902143, 39.035084, 46.690216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906168, 39.430954, 46.633022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272719, 0.140291, 0.951810,
		0.962041, 0.029419, 0.271314,
		0.010061, 0.989673, -0.142988,
		30.909187, 39.727856, 46.590126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070408, 39.201897, 47.234020>,  <30.902143, 39.035084, 46.690216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070408, 39.201897, 47.234020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951895, 39.562408, 47.107582>,  <30.880787, 39.778713, 47.031719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951895, 39.562408, 47.107582>,  <31.070408, 39.201897, 47.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951895, 39.562408, 47.107582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416193, 0.176052, 0.892070,
		0.859651, 0.395864, 0.322944,
		-0.296283, 0.901276, -0.316099,
		30.863010, 39.832790, 47.012753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094269, 39.609943, 47.817455>,  <31.070408, 39.201897, 47.234020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094269, 39.609943, 47.817455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856216, 39.819836, 47.573986>,  <30.713385, 39.945770, 47.427906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856216, 39.819836, 47.573986>,  <31.094269, 39.609943, 47.817455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856216, 39.819836, 47.573986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537157, 0.303609, 0.786946,
		0.597730, 0.795287, 0.101174,
		-0.595131, 0.524728, -0.608671,
		30.677677, 39.977253, 47.391384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039209, 40.293171, 48.161224>,  <31.094269, 39.609943, 47.817455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039209, 40.293171, 48.161224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742174, 40.245693, 47.897564>,  <30.563953, 40.217209, 47.739368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742174, 40.245693, 47.897564>,  <31.039209, 40.293171, 48.161224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742174, 40.245693, 47.897564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664952, 0.248219, 0.704433,
		0.080003, 0.961405, -0.263249,
		-0.742589, -0.118691, -0.659147,
		30.519398, 40.210087, 47.699821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663202, 40.862839, 48.243309>,  <31.039209, 40.293171, 48.161224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663202, 40.862839, 48.243309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416710, 40.583263, 48.098122>,  <30.268814, 40.415520, 48.011009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416710, 40.583263, 48.098122>,  <30.663202, 40.862839, 48.243309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416710, 40.583263, 48.098122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706828, 0.287558, 0.646301,
		-0.347352, 0.654824, -0.671232,
		-0.616232, -0.698939, -0.362964,
		30.231840, 40.373581, 47.989231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047512, 41.202835, 48.101009>,  <30.663202, 40.862839, 48.243309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047512, 41.202835, 48.101009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985664, 40.810112, 48.145081>,  <29.948557, 40.574478, 48.171524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985664, 40.810112, 48.145081>,  <30.047512, 41.202835, 48.101009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985664, 40.810112, 48.145081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693482, 0.187285, 0.695706,
		-0.703688, 0.031159, -0.709826,
		-0.154618, -0.981811, 0.110182,
		29.939280, 40.515568, 48.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373592, 41.082932, 48.101299>,  <30.047512, 41.202835, 48.101009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373592, 41.082932, 48.101299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544928, 40.785889, 48.307236>,  <29.647728, 40.607662, 48.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544928, 40.785889, 48.307236>,  <29.373592, 41.082932, 48.101299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544928, 40.785889, 48.307236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636421, 0.156550, 0.755289,
		-0.641481, -0.651175, -0.405553,
		0.428336, -0.742605, 0.514845,
		29.673428, 40.563107, 48.461689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886225, 40.548401, 48.373352>,  <29.373592, 41.082932, 48.101299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886225, 40.548401, 48.373352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190331, 40.531246, 48.632629>,  <29.372793, 40.520954, 48.788197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190331, 40.531246, 48.632629>,  <28.886225, 40.548401, 48.373352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190331, 40.531246, 48.632629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641952, 0.103214, 0.759766,
		-0.099489, -0.993734, 0.050937,
		0.760263, -0.042889, 0.648198,
		29.418409, 40.518379, 48.827087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928473, 39.924038, 48.786308>,  <28.886225, 40.548401, 48.373352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928473, 39.924038, 48.786308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003233, 40.290924, 48.927036>,  <29.048090, 40.511055, 49.011475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003233, 40.290924, 48.927036>,  <28.928473, 39.924038, 48.786308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003233, 40.290924, 48.927036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835140, -0.040239, 0.548564,
		0.517310, -0.396350, 0.758483,
		0.186903, 0.917217, 0.351824,
		29.059303, 40.566090, 49.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978971, 39.942490, 49.480335>,  <28.928473, 39.924038, 48.786308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978971, 39.942490, 49.480335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821375, 40.275799, 49.325195>,  <28.726816, 40.475784, 49.232113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821375, 40.275799, 49.325195>,  <28.978971, 39.942490, 49.480335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821375, 40.275799, 49.325195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836701, -0.150520, 0.526569,
		0.380396, 0.531978, 0.756504,
		-0.393992, 0.833272, -0.387850,
		28.703176, 40.525780, 49.208839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623732, 40.435146, 49.976147>,  <28.978971, 39.942490, 49.480335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623732, 40.435146, 49.976147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410265, 40.493317, 49.642906>,  <28.282185, 40.528217, 49.442963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410265, 40.493317, 49.642906>,  <28.623732, 40.435146, 49.976147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410265, 40.493317, 49.642906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841368, -0.190827, 0.505653,
		-0.085445, 0.970792, 0.224191,
		-0.533666, 0.145422, -0.833099,
		28.250166, 40.536942, 49.392975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837042, 40.533001, 50.721443>,  <28.623732, 40.435146, 49.976147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837042, 40.533001, 50.721443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912310, 40.290977, 51.030891>,  <28.957470, 40.145763, 51.216560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912310, 40.290977, 51.030891>,  <28.837042, 40.533001, 50.721443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912310, 40.290977, 51.030891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727361, 0.615150, 0.304198,
		-0.659953, 0.505464, 0.555849,
		0.188170, -0.605059, 0.773625,
		28.968761, 40.109459, 51.262978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588190, 40.497459, 50.496914>,  <28.837042, 40.533001, 50.721443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588190, 40.497459, 50.496914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910734, 40.487488, 50.733273>,  <30.104261, 40.481506, 50.875088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910734, 40.487488, 50.733273>,  <29.588190, 40.497459, 50.496914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910734, 40.487488, 50.733273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399947, -0.759009, 0.513758,
		0.435689, -0.650602, -0.622006,
		0.806360, -0.024930, 0.590899,
		30.152643, 40.480007, 50.910542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097698, 39.889137, 50.613251>,  <29.588190, 40.497459, 50.496914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097698, 39.889137, 50.613251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077118, 40.059208, 50.974709>,  <30.064770, 40.161251, 51.191586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077118, 40.059208, 50.974709>,  <30.097698, 39.889137, 50.613251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077118, 40.059208, 50.974709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414163, -0.832451, 0.368095,
		0.908748, -0.355320, 0.218919,
		-0.051448, 0.425174, 0.903648,
		30.061684, 40.186760, 51.245804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564175, 39.249756, 50.538048>,  <30.097698, 39.889137, 50.613251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564175, 39.249756, 50.538048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563139, 38.892120, 50.717205>,  <30.562517, 38.677540, 50.824699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563139, 38.892120, 50.717205>,  <30.564175, 39.249756, 50.538048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563139, 38.892120, 50.717205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030990, -0.447747, -0.893623,
		0.999516, 0.011564, 0.028868,
		-0.002591, -0.894086, 0.447889,
		30.562361, 38.623894, 50.851570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017702, 38.840061, 50.238983>,  <30.564175, 39.249756, 50.538048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017702, 38.840061, 50.238983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780222, 38.553757, 50.386063>,  <30.637733, 38.381973, 50.474312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780222, 38.553757, 50.386063>,  <31.017702, 38.840061, 50.238983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780222, 38.553757, 50.386063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022579, -0.471587, -0.881531,
		0.804368, -0.515064, 0.296143,
		-0.593702, -0.715762, 0.367700,
		30.602112, 38.339027, 50.496372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343546, 38.152218, 50.307446>,  <31.017702, 38.840061, 50.238983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343546, 38.152218, 50.307446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953360, 38.164440, 50.220234>,  <30.719248, 38.171772, 50.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953360, 38.164440, 50.220234>,  <31.343546, 38.152218, 50.307446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953360, 38.164440, 50.220234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200198, -0.288957, -0.936176,
		-0.091604, -0.956854, 0.275751,
		-0.975464, 0.030553, -0.218029,
		30.660721, 38.173607, 50.154823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006596, 37.597466, 50.039761>,  <31.343546, 38.152218, 50.307446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006596, 37.597466, 50.039761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775322, 37.862389, 49.849159>,  <30.636557, 38.021343, 49.734798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775322, 37.862389, 49.849159>,  <31.006596, 37.597466, 50.039761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775322, 37.862389, 49.849159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111234, -0.514578, -0.850198,
		-0.808287, -0.544576, 0.223851,
		-0.578186, 0.662304, -0.476502,
		30.601866, 38.061081, 49.706207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563730, 37.243938, 49.597557>,  <31.006596, 37.597466, 50.039761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563730, 37.243938, 49.597557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565557, 37.609634, 49.435501>,  <30.566654, 37.829052, 49.338268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565557, 37.609634, 49.435501>,  <30.563730, 37.243938, 49.597557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565557, 37.609634, 49.435501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156793, -0.400788, -0.902654,
		-0.987621, -0.059401, -0.145177,
		0.004566, 0.914243, -0.405141,
		30.566927, 37.883907, 49.313957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058434, 37.341732, 49.037033>,  <30.563730, 37.243938, 49.597557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058434, 37.341732, 49.037033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359766, 37.599247, 48.983326>,  <30.540565, 37.753757, 48.951103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359766, 37.599247, 48.983326>,  <30.058434, 37.341732, 49.037033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359766, 37.599247, 48.983326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087134, -0.300073, -0.949928,
		-0.651841, 0.703914, -0.282151,
		0.753334, 0.643787, -0.134265,
		30.585766, 37.792381, 48.943047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063780, 37.586933, 48.291103>,  <30.058434, 37.341732, 49.037033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063780, 37.586933, 48.291103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421602, 37.733208, 48.393902>,  <30.636295, 37.820972, 48.455582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421602, 37.733208, 48.393902>,  <30.063780, 37.586933, 48.291103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421602, 37.733208, 48.393902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313497, -0.103520, -0.943930,
		-0.318575, 0.924965, -0.207245,
		0.894555, 0.365683, 0.256995,
		30.689968, 37.842915, 48.471001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171276, 38.236050, 47.921307>,  <30.063780, 37.586933, 48.291103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171276, 38.236050, 47.921307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523436, 38.071922, 48.016415>,  <30.734732, 37.973446, 48.073479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523436, 38.071922, 48.016415>,  <30.171276, 38.236050, 47.921307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523436, 38.071922, 48.016415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235413, -0.057094, -0.970217,
		0.411674, 0.910153, 0.046329,
		0.880401, -0.410320, 0.237766,
		30.787556, 37.948826, 48.087746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691786, 38.456245, 47.374008>,  <30.171276, 38.236050, 47.921307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691786, 38.456245, 47.374008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888084, 38.161453, 47.559921>,  <31.005863, 37.984577, 47.671471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888084, 38.161453, 47.559921>,  <30.691786, 38.456245, 47.374008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888084, 38.161453, 47.559921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380215, -0.298833, -0.875292,
		0.783967, 0.606265, 0.133560,
		0.490746, -0.736982, 0.464786,
		31.035309, 37.940357, 47.699356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413054, 38.537312, 47.100071>,  <30.691786, 38.456245, 47.374008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413054, 38.537312, 47.100071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377146, 38.163174, 47.236938>,  <31.355602, 37.938690, 47.319057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377146, 38.163174, 47.236938>,  <31.413054, 38.537312, 47.100071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377146, 38.163174, 47.236938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544114, -0.333811, -0.769747,
		0.834195, 0.117080, 0.538898,
		-0.089768, -0.935341, 0.342169,
		31.350216, 37.882572, 47.339588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014030, 38.223717, 46.958176>,  <31.413054, 38.537312, 47.100071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014030, 38.223717, 46.958176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763336, 37.914753, 46.999317>,  <31.612919, 37.729374, 47.024002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763336, 37.914753, 46.999317>,  <32.014030, 38.223717, 46.958176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763336, 37.914753, 46.999317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395267, -0.428887, -0.812293,
		0.671537, -0.468440, 0.574109,
		-0.626739, -0.772411, 0.102855,
		31.575314, 37.683029, 47.030174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481579, 37.644150, 46.989887>,  <32.014030, 38.223717, 46.958176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481579, 37.644150, 46.989887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127476, 37.479225, 46.903805>,  <31.915014, 37.380272, 46.852154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127476, 37.479225, 46.903805>,  <32.481579, 37.644150, 46.989887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127476, 37.479225, 46.903805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450009, -0.642415, -0.620318,
		0.117511, -0.645989, 0.754248,
		-0.885259, -0.412313, -0.215210,
		31.861898, 37.355530, 46.839241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568726, 36.942894, 46.963570>,  <32.481579, 37.644150, 46.989887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568726, 36.942894, 46.963570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218243, 36.988293, 46.776218>,  <32.007954, 37.015533, 46.663807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218243, 36.988293, 46.776218>,  <32.568726, 36.942894, 46.963570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218243, 36.988293, 46.776218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286351, -0.659114, -0.695393,
		-0.387641, -0.743429, 0.545020,
		-0.876206, 0.113495, -0.468382,
		31.955381, 37.022343, 46.635704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552109, 36.308086, 46.737408>,  <32.568726, 36.942894, 46.963570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552109, 36.308086, 46.737408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304970, 36.529949, 46.514473>,  <32.156685, 36.663067, 46.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304970, 36.529949, 46.514473>,  <32.552109, 36.308086, 46.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304970, 36.529949, 46.514473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265761, -0.519786, -0.811908,
		-0.740025, -0.649752, 0.173741,
		-0.617846, 0.554659, -0.557333,
		32.119617, 36.696346, 46.347275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030502, 35.924473, 46.448898>,  <32.552109, 36.308086, 46.737408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030502, 35.924473, 46.448898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057873, 36.228233, 46.190090>,  <32.074295, 36.410488, 46.034805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057873, 36.228233, 46.190090>,  <32.030502, 35.924473, 46.448898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057873, 36.228233, 46.190090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243012, -0.641690, -0.727447,
		-0.967607, -0.107460, -0.228449,
		0.068422, 0.759399, -0.647017,
		32.078400, 36.456055, 45.995983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709597, 35.671333, 45.842663>,  <32.030502, 35.924473, 46.448898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709597, 35.671333, 45.842663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925625, 35.991695, 45.739227>,  <32.055241, 36.183914, 45.677166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925625, 35.991695, 45.739227>,  <31.709597, 35.671333, 45.842663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925625, 35.991695, 45.739227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291248, -0.466122, -0.835407,
		-0.789618, 0.375867, -0.485003,
		0.540073, 0.800908, -0.258588,
		32.087646, 36.231968, 45.661652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480354, 35.861404, 45.126854>,  <31.709597, 35.671333, 45.842663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480354, 35.861404, 45.126854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832489, 36.047932, 45.161621>,  <32.043770, 36.159847, 45.182480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832489, 36.047932, 45.161621>,  <31.480354, 35.861404, 45.126854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832489, 36.047932, 45.161621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247579, -0.295400, -0.922737,
		-0.404615, 0.833837, -0.375503,
		0.880336, 0.466320, 0.086917,
		32.096588, 36.187828, 45.187695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512178, 36.285248, 44.516655>,  <31.480354, 35.861404, 45.126854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512178, 36.285248, 44.516655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876074, 36.180931, 44.645874>,  <32.094410, 36.118343, 44.723408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876074, 36.180931, 44.645874>,  <31.512178, 36.285248, 44.516655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876074, 36.180931, 44.645874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186176, -0.439233, -0.878870,
		0.371094, 0.859688, -0.351035,
		0.909740, -0.260789, 0.323050,
		32.148994, 36.102695, 44.742790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960171, 36.465668, 43.932270>,  <31.512178, 36.285248, 44.516655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960171, 36.465668, 43.932270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143784, 36.203255, 44.171906>,  <32.253952, 36.045807, 44.315685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143784, 36.203255, 44.171906>,  <31.960171, 36.465668, 43.932270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143784, 36.203255, 44.171906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109856, -0.627240, -0.771039,
		0.881602, 0.419745, -0.215853,
		0.459032, -0.656036, 0.599088,
		32.281494, 36.006443, 44.351631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602493, 36.418709, 43.651638>,  <31.960171, 36.465668, 43.932270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602493, 36.418709, 43.651638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565670, 36.090363, 43.877102>,  <32.543575, 35.893356, 44.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565670, 36.090363, 43.877102>,  <32.602493, 36.418709, 43.651638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565670, 36.090363, 43.877102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225364, -0.568548, -0.791179,
		0.969916, 0.054195, 0.237332,
		-0.092056, -0.820863, 0.563657,
		32.538052, 35.844105, 44.046200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221222, 36.023354, 43.456718>,  <32.602493, 36.418709, 43.651638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221222, 36.023354, 43.456718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976952, 35.747986, 43.613255>,  <32.830391, 35.582764, 43.707176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976952, 35.747986, 43.613255>,  <33.221222, 36.023354, 43.456718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976952, 35.747986, 43.613255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344540, -0.675955, -0.651442,
		0.712997, -0.262987, 0.649979,
		-0.610677, -0.688420, 0.391345,
		32.793747, 35.541458, 43.730659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648403, 35.502300, 43.467129>,  <33.221222, 36.023354, 43.456718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648403, 35.502300, 43.467129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275860, 35.359879, 43.497574>,  <33.052334, 35.274426, 43.515842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275860, 35.359879, 43.497574>,  <33.648403, 35.502300, 43.467129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275860, 35.359879, 43.497574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222145, -0.721315, -0.656016,
		0.288482, -0.594077, 0.750899,
		-0.931359, -0.356057, 0.076115,
		32.996452, 35.253063, 43.520409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733604, 34.837788, 43.544857>,  <33.648403, 35.502300, 43.467129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733604, 34.837788, 43.544857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367306, 34.881226, 43.390137>,  <33.147526, 34.907288, 43.297302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367306, 34.881226, 43.390137>,  <33.733604, 34.837788, 43.544857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367306, 34.881226, 43.390137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177019, -0.755221, -0.631115,
		-0.360659, -0.646412, 0.672366,
		-0.915745, 0.108596, -0.386805,
		33.092583, 34.913803, 43.274094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492214, 34.124226, 43.403931>,  <33.733604, 34.837788, 43.544857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492214, 34.124226, 43.403931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248268, 34.352798, 43.184280>,  <33.101902, 34.489941, 43.052490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248268, 34.352798, 43.184280>,  <33.492214, 34.124226, 43.403931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248268, 34.352798, 43.184280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105367, -0.628274, -0.770824,
		-0.785472, -0.527956, 0.322950,
		-0.609862, 0.571432, -0.549121,
		33.065311, 34.524227, 43.019543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089588, 33.599121, 42.969254>,  <33.492214, 34.124226, 43.403931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089588, 33.599121, 42.969254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054302, 33.945751, 42.772778>,  <33.033131, 34.153728, 42.654892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054302, 33.945751, 42.772778>,  <33.089588, 33.599121, 42.969254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054302, 33.945751, 42.772778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103384, -0.482484, -0.869782,
		-0.990721, -0.127513, -0.047026,
		-0.088219, 0.866573, -0.491191,
		33.027836, 34.205723, 42.625420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673458, 33.402168, 42.423264>,  <33.089588, 33.599121, 42.969254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673458, 33.402168, 42.423264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877132, 33.720848, 42.293037>,  <32.999336, 33.912056, 42.214901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877132, 33.720848, 42.293037>,  <32.673458, 33.402168, 42.423264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877132, 33.720848, 42.293037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126830, -0.443608, -0.887201,
		-0.851260, 0.410458, -0.326925,
		0.509186, 0.796703, -0.325568,
		33.029888, 33.959858, 42.195366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342495, 33.641235, 41.739403>,  <32.673458, 33.402168, 42.423264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342495, 33.641235, 41.739403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706833, 33.804882, 41.761219>,  <32.925438, 33.903072, 41.774307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706833, 33.804882, 41.761219>,  <32.342495, 33.641235, 41.739403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706833, 33.804882, 41.761219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159853, -0.227851, -0.960485,
		-0.380528, 0.883574, -0.272937,
		0.910849, 0.409121, 0.054538,
		32.980087, 33.927620, 41.777580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337414, 33.944435, 41.165966>,  <32.342495, 33.641235, 41.739403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337414, 33.944435, 41.165966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724701, 33.922874, 41.263657>,  <32.957073, 33.909939, 41.322269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724701, 33.922874, 41.263657>,  <32.337414, 33.944435, 41.165966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724701, 33.922874, 41.263657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209706, -0.357180, -0.910190,
		0.136293, 0.932479, -0.334525,
		0.968219, -0.053900, 0.244228,
		33.015167, 33.906704, 41.336926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669956, 34.064522, 40.515793>,  <32.337414, 33.944435, 41.165966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669956, 34.064522, 40.515793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986603, 33.916718, 40.710442>,  <33.176590, 33.828033, 40.827232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986603, 33.916718, 40.710442>,  <32.669956, 34.064522, 40.515793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986603, 33.916718, 40.710442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381099, -0.323926, -0.865930,
		0.477600, 0.870938, -0.115606,
		0.791620, -0.369511, 0.486621,
		33.224091, 33.805862, 40.856426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249390, 34.343826, 40.339344>,  <32.669956, 34.064522, 40.515793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249390, 34.343826, 40.339344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391315, 33.993229, 40.469486>,  <33.476471, 33.782871, 40.547573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391315, 33.993229, 40.469486>,  <33.249390, 34.343826, 40.339344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391315, 33.993229, 40.469486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307131, -0.219411, -0.926029,
		0.883049, 0.428499, 0.191349,
		0.354818, -0.876497, 0.325356,
		33.497761, 33.730278, 40.567093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884254, 34.256542, 40.060287>,  <33.249390, 34.343826, 40.339344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884254, 34.256542, 40.060287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826370, 33.877686, 40.174820>,  <33.791641, 33.650372, 40.243542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826370, 33.877686, 40.174820>,  <33.884254, 34.256542, 40.060287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826370, 33.877686, 40.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310990, -0.318251, -0.895545,
		0.939332, -0.040547, 0.340605,
		-0.144710, -0.947139, 0.286333,
		33.782959, 33.593544, 40.260719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503113, 33.872555, 39.968029>,  <33.884254, 34.256542, 40.060287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503113, 33.872555, 39.968029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195927, 33.616394, 39.963833>,  <34.011616, 33.462696, 39.961315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195927, 33.616394, 39.963833>,  <34.503113, 33.872555, 39.968029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195927, 33.616394, 39.963833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278990, -0.319728, -0.905504,
		0.576532, -0.698326, 0.424207,
		-0.767968, -0.640402, -0.010492,
		33.965538, 33.424274, 39.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757656, 33.290211, 39.492191>,  <34.503113, 33.872555, 39.968029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757656, 33.290211, 39.492191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358917, 33.260841, 39.504189>,  <34.119675, 33.243221, 39.511387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358917, 33.260841, 39.504189>,  <34.757656, 33.290211, 39.492191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358917, 33.260841, 39.504189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003851, -0.332878, -0.942962,
		0.079217, -0.940107, 0.331547,
		-0.996850, -0.073422, 0.029990,
		34.059864, 33.238815, 39.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656979, 32.859310, 38.988792>,  <34.757656, 33.290211, 39.492191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656979, 32.859310, 38.988792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280220, 32.980350, 39.047127>,  <34.054165, 33.052975, 39.082127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280220, 32.980350, 39.047127>,  <34.656979, 32.859310, 38.988792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280220, 32.980350, 39.047127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192124, -0.129171, -0.972833,
		-0.275548, -0.944322, 0.179803,
		-0.941893, 0.302607, 0.145834,
		33.997654, 33.071133, 39.090878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174374, 32.296837, 38.760777>,  <34.656979, 32.859310, 38.988792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174374, 32.296837, 38.760777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005169, 32.658924, 38.744534>,  <33.903645, 32.876175, 38.734787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005169, 32.658924, 38.744534>,  <34.174374, 32.296837, 38.760777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005169, 32.658924, 38.744534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231625, -0.151351, -0.960959,
		-0.876020, -0.397091, 0.273694,
		-0.423012, 0.905213, -0.040610,
		33.878265, 32.930489, 38.732349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530941, 32.251266, 38.424427>,  <34.174374, 32.296837, 38.760777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530941, 32.251266, 38.424427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584278, 32.646442, 38.392967>,  <33.616280, 32.883549, 38.374092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584278, 32.646442, 38.392967>,  <33.530941, 32.251266, 38.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584278, 32.646442, 38.392967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464743, -0.007764, -0.885412,
		-0.875348, 0.154614, 0.458105,
		0.133340, 0.987944, -0.078652,
		33.624279, 32.942825, 38.369373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839600, 32.515850, 38.135548>,  <33.530941, 32.251266, 38.424427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839600, 32.515850, 38.135548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139977, 32.769302, 38.061153>,  <33.320202, 32.921375, 38.016518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139977, 32.769302, 38.061153>,  <32.839600, 32.515850, 38.135548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139977, 32.769302, 38.061153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447413, 0.281035, -0.849023,
		-0.485702, 0.720781, 0.494538,
		0.750943, 0.633635, -0.185988,
		33.365261, 32.959393, 38.005356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523827, 33.066277, 37.800835>,  <32.839600, 32.515850, 38.135548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523827, 33.066277, 37.800835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907040, 33.097904, 37.690620>,  <33.136967, 33.116882, 37.624493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907040, 33.097904, 37.690620>,  <32.523827, 33.066277, 37.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907040, 33.097904, 37.690620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283815, 0.396678, -0.872981,
		0.040271, 0.914546, 0.402472,
		0.958033, 0.079072, -0.275537,
		33.194450, 33.121628, 37.607960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490578, 33.577427, 37.415371>,  <32.523827, 33.066277, 37.800835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490578, 33.577427, 37.415371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859932, 33.465302, 37.310471>,  <33.081547, 33.398026, 37.247532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859932, 33.465302, 37.310471>,  <32.490578, 33.577427, 37.415371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859932, 33.465302, 37.310471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100253, 0.483364, -0.869660,
		0.370540, 0.829327, 0.418231,
		0.923390, -0.280315, -0.262248,
		33.136948, 33.381207, 37.231796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719498, 34.248341, 37.061497>,  <32.490578, 33.577427, 37.415371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719498, 34.248341, 37.061497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965820, 33.952003, 36.954212>,  <33.113613, 33.774200, 36.889839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965820, 33.952003, 36.954212>,  <32.719498, 34.248341, 37.061497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965820, 33.952003, 36.954212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069947, 0.390478, -0.917951,
		0.784788, 0.546517, 0.292278,
		0.615804, -0.740841, -0.268216,
		33.150562, 33.729752, 36.873749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317825, 34.532440, 36.876980>,  <32.719498, 34.248341, 37.061497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317825, 34.532440, 36.876980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297882, 34.177353, 36.693909>,  <33.285915, 33.964302, 36.584064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297882, 34.177353, 36.693909>,  <33.317825, 34.532440, 36.876980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297882, 34.177353, 36.693909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049772, 0.455474, -0.888857,
		0.997515, -0.067096, 0.021474,
		-0.049858, -0.887717, -0.457681,
		33.282925, 33.911037, 36.556602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793724, 34.551849, 36.413326>,  <33.317825, 34.532440, 36.876980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793724, 34.551849, 36.413326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564297, 34.258228, 36.267899>,  <33.426640, 34.082054, 36.180641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564297, 34.258228, 36.267899>,  <33.793724, 34.551849, 36.413326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564297, 34.258228, 36.267899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260449, 0.257386, -0.930548,
		0.776650, -0.628425, 0.043555,
		-0.573569, -0.734053, -0.363571,
		33.392227, 34.038013, 36.158829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259224, 34.154427, 35.919422>,  <33.793724, 34.551849, 36.413326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259224, 34.154427, 35.919422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871063, 34.105221, 35.836304>,  <33.638165, 34.075695, 35.786430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871063, 34.105221, 35.836304>,  <34.259224, 34.154427, 35.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871063, 34.105221, 35.836304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172776, 0.247496, -0.953359,
		0.168707, -0.961048, -0.218918,
		-0.970405, -0.123015, -0.207800,
		33.579941, 34.068317, 35.773964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878708, 34.255287, 36.050903>,  <34.259224, 34.154427, 35.919422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878708, 34.255287, 36.050903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249386, 34.176907, 35.922634>,  <35.471794, 34.129879, 35.845673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249386, 34.176907, 35.922634>,  <34.878708, 34.255287, 36.050903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249386, 34.176907, 35.922634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343343, 0.094537, 0.934440,
		-0.152789, -0.976046, 0.154886,
		0.926699, -0.195951, -0.320674,
		35.527397, 34.118122, 35.826431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160519, 33.756069, 36.423550>,  <34.878708, 34.255287, 36.050903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160519, 33.756069, 36.423550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461796, 33.980782, 36.286671>,  <35.642563, 34.115608, 36.204544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461796, 33.980782, 36.286671>,  <35.160519, 33.756069, 36.423550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461796, 33.980782, 36.286671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374514, 0.061439, 0.925183,
		0.540771, -0.825004, -0.164118,
		0.753197, 0.561777, -0.342200,
		35.687756, 34.149315, 36.184010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889561, 33.384708, 36.591259>,  <35.160519, 33.756069, 36.423550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889561, 33.384708, 36.591259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914997, 33.782490, 36.557770>,  <35.930260, 34.021160, 36.537674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914997, 33.782490, 36.557770>,  <35.889561, 33.384708, 36.591259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914997, 33.782490, 36.557770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237092, 0.066437, 0.969213,
		0.969403, -0.081488, -0.231553,
		0.063596, 0.994457, -0.083725,
		35.934074, 34.080826, 36.532654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469269, 33.581844, 36.897381>,  <35.889561, 33.384708, 36.591259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469269, 33.581844, 36.897381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283031, 33.935844, 36.896389>,  <36.171291, 34.148243, 36.895794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283031, 33.935844, 36.896389>,  <36.469269, 33.581844, 36.897381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283031, 33.935844, 36.896389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332260, 0.177398, 0.926355,
		0.820261, 0.430478, -0.376644,
		-0.465591, 0.884996, -0.002482,
		36.143353, 34.201344, 36.895645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913212, 33.913654, 37.299835>,  <36.469269, 33.581844, 36.897381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913212, 33.913654, 37.299835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601295, 34.162685, 37.273518>,  <36.414146, 34.312103, 37.257729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601295, 34.162685, 37.273518>,  <36.913212, 33.913654, 37.299835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601295, 34.162685, 37.273518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174854, 0.317503, 0.931996,
		0.601127, 0.715257, -0.356445,
		-0.779790, 0.622575, -0.065794,
		36.367359, 34.349457, 37.253780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149887, 34.561993, 37.545101>,  <36.913212, 33.913654, 37.299835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149887, 34.561993, 37.545101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757618, 34.512424, 37.605679>,  <36.522259, 34.482685, 37.642025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757618, 34.512424, 37.605679>,  <37.149887, 34.561993, 37.545101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757618, 34.512424, 37.605679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122219, 0.216510, 0.968600,
		-0.152814, 0.968384, -0.197180,
		-0.980668, -0.123917, 0.151441,
		36.463417, 34.475250, 37.651112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834000, 35.154861, 37.993107>,  <37.149887, 34.561993, 37.545101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834000, 35.154861, 37.993107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605576, 34.828159, 38.026073>,  <36.468521, 34.632137, 38.045853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605576, 34.828159, 38.026073>,  <36.834000, 35.154861, 37.993107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605576, 34.828159, 38.026073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155804, 0.206413, 0.965981,
		-0.805984, 0.538797, -0.245129,
		-0.571065, -0.816757, 0.082419,
		36.434258, 34.583134, 38.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364487, 35.470318, 38.429138>,  <36.834000, 35.154861, 37.993107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364487, 35.470318, 38.429138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281033, 35.079269, 38.439995>,  <36.230961, 34.844643, 38.446510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281033, 35.079269, 38.439995>,  <36.364487, 35.470318, 38.429138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281033, 35.079269, 38.439995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237930, 0.077656, 0.968173,
		-0.948610, 0.195535, -0.248806,
		-0.208633, -0.977617, 0.027142,
		36.218441, 34.785984, 38.448139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737080, 35.417023, 38.792336>,  <36.364487, 35.470318, 38.429138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737080, 35.417023, 38.792336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908916, 35.058231, 38.834076>,  <36.012016, 34.842957, 38.859119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908916, 35.058231, 38.834076>,  <35.737080, 35.417023, 38.792336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908916, 35.058231, 38.834076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310463, -0.038192, 0.949818,
		-0.847978, -0.440427, -0.294884,
		0.429587, -0.896976, 0.104350,
		36.037792, 34.789139, 38.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173264, 34.920959, 39.016212>,  <35.737080, 35.417023, 38.792336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173264, 34.920959, 39.016212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539692, 34.790176, 39.109085>,  <35.759548, 34.711708, 39.164810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539692, 34.790176, 39.109085>,  <35.173264, 34.920959, 39.016212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539692, 34.790176, 39.109085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278565, -0.102337, 0.954949,
		-0.288468, -0.939481, -0.184828,
		0.916072, -0.326959, 0.232185,
		35.814514, 34.692089, 39.178741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067307, 34.589703, 39.669662>,  <35.173264, 34.920959, 39.016212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067307, 34.589703, 39.669662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463654, 34.635540, 39.641235>,  <35.701462, 34.663044, 39.624180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463654, 34.635540, 39.641235>,  <35.067307, 34.589703, 39.669662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463654, 34.635540, 39.641235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080790, -0.082577, 0.993305,
		0.107963, -0.989974, -0.091081,
		0.990867, 0.114598, -0.071065,
		35.760914, 34.669918, 39.619915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308971, 34.077000, 40.116016>,  <35.067307, 34.589703, 39.669662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308971, 34.077000, 40.116016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629025, 34.316437, 40.100651>,  <35.821056, 34.460098, 40.091431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629025, 34.316437, 40.100651>,  <35.308971, 34.077000, 40.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629025, 34.316437, 40.100651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015728, 0.043080, 0.998948,
		0.599616, -0.799896, 0.025055,
		0.800134, 0.598591, -0.038412,
		35.869064, 34.496014, 40.089127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897396, 33.822857, 40.538162>,  <35.308971, 34.077000, 40.116016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897396, 33.822857, 40.538162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949013, 34.219501, 40.535294>,  <35.979984, 34.457489, 40.533573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949013, 34.219501, 40.535294>,  <35.897396, 33.822857, 40.538162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949013, 34.219501, 40.535294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000731, 0.007328, 0.999973,
		0.991639, -0.129034, 0.001671,
		0.129043, 0.991613, -0.007172,
		35.987724, 34.516987, 40.533142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407864, 33.898010, 41.007866>,  <35.897396, 33.822857, 40.538162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407864, 33.898010, 41.007866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256870, 34.268349, 41.000778>,  <36.166275, 34.490551, 40.996525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256870, 34.268349, 41.000778>,  <36.407864, 33.898010, 41.007866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256870, 34.268349, 41.000778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104799, 0.061728, 0.992576,
		0.920068, 0.372821, -0.120329,
		-0.377481, 0.925848, -0.017723,
		36.143627, 34.546104, 40.995461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752953, 34.186195, 41.545555>,  <36.407864, 33.898010, 41.007866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752953, 34.186195, 41.545555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443924, 34.432327, 41.482941>,  <36.258507, 34.580006, 41.445374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443924, 34.432327, 41.482941>,  <36.752953, 34.186195, 41.545555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443924, 34.432327, 41.482941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064607, 0.169073, 0.983484,
		0.631628, 0.769928, -0.090867,
		-0.772575, 0.615325, -0.156534,
		36.212151, 34.616924, 41.435982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908985, 34.743584, 41.988831>,  <36.752953, 34.186195, 41.545555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908985, 34.743584, 41.988831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518463, 34.770821, 41.906670>,  <36.284149, 34.787163, 41.857372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518463, 34.770821, 41.906670>,  <36.908985, 34.743584, 41.988831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518463, 34.770821, 41.906670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192622, 0.159113, 0.968287,
		0.098614, 0.984910, -0.142227,
		-0.976305, 0.068091, -0.205406,
		36.225571, 34.791248, 41.845047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708366, 35.397537, 42.248104>,  <36.908985, 34.743584, 41.988831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708366, 35.397537, 42.248104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369411, 35.185940, 42.229809>,  <36.166039, 35.058979, 42.218830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369411, 35.185940, 42.229809>,  <36.708366, 35.397537, 42.248104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369411, 35.185940, 42.229809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249519, 0.320696, 0.913725,
		-0.468691, 0.785694, -0.403750,
		-0.847389, -0.528998, -0.045738,
		36.115196, 35.027241, 42.216087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174759, 35.930809, 42.408592>,  <36.708366, 35.397537, 42.248104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174759, 35.930809, 42.408592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975410, 35.587845, 42.459934>,  <35.855801, 35.382069, 42.490742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975410, 35.587845, 42.459934>,  <36.174759, 35.930809, 42.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975410, 35.587845, 42.459934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319802, 0.319426, 0.892017,
		-0.805824, 0.403507, -0.433394,
		-0.498372, -0.857409, 0.128359,
		35.825897, 35.330624, 42.498444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500744, 36.082172, 42.602455>,  <36.174759, 35.930809, 42.408592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500744, 36.082172, 42.602455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546265, 35.701103, 42.715206>,  <35.573578, 35.472462, 42.782856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546265, 35.701103, 42.715206>,  <35.500744, 36.082172, 42.602455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546265, 35.701103, 42.715206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382692, 0.219794, 0.897350,
		-0.916840, -0.209998, -0.339567,
		0.113806, -0.952676, 0.281881,
		35.580406, 35.415302, 42.799770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811550, 36.025833, 42.995949>,  <35.500744, 36.082172, 42.602455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811550, 36.025833, 42.995949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080170, 35.757717, 43.122276>,  <35.241341, 35.596848, 43.198074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080170, 35.757717, 43.122276>,  <34.811550, 36.025833, 42.995949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080170, 35.757717, 43.122276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305624, 0.137715, 0.942141,
		-0.674997, -0.729213, -0.112373,
		0.671546, -0.670286, 0.315822,
		35.281631, 35.556633, 43.217022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462376, 35.576721, 43.458065>,  <34.811550, 36.025833, 42.995949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462376, 35.576721, 43.458065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849113, 35.568329, 43.559864>,  <35.081158, 35.563293, 43.620945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849113, 35.568329, 43.559864>,  <34.462376, 35.576721, 43.458065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849113, 35.568329, 43.559864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247158, 0.173731, 0.953273,
		-0.064216, -0.984570, 0.162785,
		0.966845, -0.020982, 0.254501,
		35.139168, 35.562035, 43.636215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507832, 35.240070, 44.065331>,  <34.462376, 35.576721, 43.458065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507832, 35.240070, 44.065331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872688, 35.399269, 44.104507>,  <35.091602, 35.494789, 44.128014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872688, 35.399269, 44.104507>,  <34.507832, 35.240070, 44.065331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872688, 35.399269, 44.104507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140930, 0.080151, 0.986770,
		0.384880, -0.913879, 0.129198,
		0.912143, 0.397996, 0.097944,
		35.146332, 35.518669, 44.133892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800697, 34.842472, 44.589970>,  <34.507832, 35.240070, 44.065331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800697, 34.842472, 44.589970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952232, 35.209930, 44.545116>,  <35.043152, 35.430405, 44.518204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952232, 35.209930, 44.545116>,  <34.800697, 34.842472, 44.589970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952232, 35.209930, 44.545116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320246, 0.243803, 0.915425,
		0.868289, -0.310885, 0.386554,
		0.378835, 0.918646, -0.112132,
		35.065884, 35.485523, 44.511478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983860, 35.012352, 45.247368>,  <34.800697, 34.842472, 44.589970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983860, 35.012352, 45.247368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028751, 35.367500, 45.068890>,  <35.055687, 35.580589, 44.961803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028751, 35.367500, 45.068890>,  <34.983860, 35.012352, 45.247368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028751, 35.367500, 45.068890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282793, 0.459005, 0.842225,
		0.952593, 0.031661, 0.302596,
		0.112227, 0.887870, -0.446198,
		35.062420, 35.633862, 44.935032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427280, 35.477966, 45.751579>,  <34.983860, 35.012352, 45.247368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427280, 35.477966, 45.751579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211914, 35.700668, 45.498554>,  <35.082695, 35.834290, 45.346741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211914, 35.700668, 45.498554>,  <35.427280, 35.477966, 45.751579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211914, 35.700668, 45.498554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332655, 0.549260, 0.766586,
		0.774239, 0.623168, -0.110524,
		-0.538419, 0.556754, -0.632558,
		35.050388, 35.867695, 45.308788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672523, 36.172363, 45.983688>,  <35.427280, 35.477966, 45.751579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672523, 36.172363, 45.983688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338764, 36.203884, 45.765488>,  <35.138508, 36.222797, 45.634567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338764, 36.203884, 45.765488>,  <35.672523, 36.172363, 45.983688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338764, 36.203884, 45.765488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318491, 0.738820, 0.593893,
		0.449829, 0.669280, -0.591370,
		-0.834396, 0.078804, -0.545502,
		35.088444, 36.227524, 45.601837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659618, 36.883778, 45.755169>,  <35.672523, 36.172363, 45.983688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659618, 36.883778, 45.755169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279861, 36.758274, 45.761017>,  <35.052010, 36.682972, 45.764526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279861, 36.758274, 45.761017>,  <35.659618, 36.883778, 45.755169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279861, 36.758274, 45.761017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264376, 0.823367, 0.502168,
		-0.169602, 0.472887, -0.864646,
		-0.949390, -0.313760, 0.014625,
		34.995045, 36.664146, 45.765404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303020, 37.399071, 45.915844>,  <35.659618, 36.883778, 45.755169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303020, 37.399071, 45.915844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016621, 37.129925, 45.990238>,  <34.844780, 36.968437, 46.034874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016621, 37.129925, 45.990238>,  <35.303020, 37.399071, 45.915844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016621, 37.129925, 45.990238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471956, 0.662870, 0.581258,
		-0.514393, 0.328406, -0.792180,
		-0.716001, -0.672869, 0.185983,
		34.801819, 36.928062, 46.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558628, 37.755962, 45.872540>,  <35.303020, 37.399071, 45.915844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558628, 37.755962, 45.872540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510082, 37.437534, 46.109703>,  <34.480953, 37.246479, 46.252003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510082, 37.437534, 46.109703>,  <34.558628, 37.755962, 45.872540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510082, 37.437534, 46.109703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545588, 0.552502, 0.630140,
		-0.829219, -0.247007, -0.501381,
		-0.121365, -0.796071, 0.592909,
		34.473671, 37.198711, 46.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870636, 37.696568, 46.035107>,  <34.558628, 37.755962, 45.872540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870636, 37.696568, 46.035107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028584, 37.496323, 46.343254>,  <34.123352, 37.376175, 46.528141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028584, 37.496323, 46.343254>,  <33.870636, 37.696568, 46.035107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028584, 37.496323, 46.343254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556853, 0.536527, 0.634077,
		-0.730750, -0.679358, -0.066912,
		0.394865, -0.500612, 0.770369,
		34.147041, 37.346138, 46.574364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392101, 37.711880, 46.602024>,  <33.870636, 37.696568, 46.035107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392101, 37.711880, 46.602024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723461, 37.631798, 46.811279>,  <33.922276, 37.583748, 46.936832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723461, 37.631798, 46.811279>,  <33.392101, 37.711880, 46.602024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723461, 37.631798, 46.811279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404235, 0.432836, 0.805759,
		-0.387748, -0.878961, 0.277632,
		0.828399, -0.200203, 0.523138,
		33.971981, 37.571735, 46.968220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150826, 37.556763, 47.356880>,  <33.392101, 37.711880, 46.602024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150826, 37.556763, 47.356880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533413, 37.671898, 47.337627>,  <33.762966, 37.740978, 47.326077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533413, 37.671898, 47.337627>,  <33.150826, 37.556763, 47.356880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533413, 37.671898, 47.337627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159451, 0.653576, 0.739874,
		0.244425, -0.699991, 0.671021,
		0.956468, 0.287838, -0.048136,
		33.820354, 37.758251, 47.323185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388557, 37.542839, 48.109131>,  <33.150826, 37.556763, 47.356880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388557, 37.542839, 48.109131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641300, 37.777569, 47.906593>,  <33.792946, 37.918407, 47.785069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641300, 37.777569, 47.906593>,  <33.388557, 37.542839, 48.109131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641300, 37.777569, 47.906593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043459, 0.679077, 0.732779,
		0.773864, -0.441008, 0.454584,
		0.631859, 0.586827, -0.506348,
		33.830856, 37.953617, 47.754688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702682, 37.890751, 48.674549>,  <33.388557, 37.542839, 48.109131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702682, 37.890751, 48.674549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817070, 38.104572, 48.356434>,  <33.885700, 38.232864, 48.165565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817070, 38.104572, 48.356434>,  <33.702682, 37.890751, 48.674549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817070, 38.104572, 48.356434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076574, 0.840038, 0.537096,
		0.955176, -0.092692, 0.281154,
		0.285965, 0.534551, -0.795286,
		33.902859, 38.264938, 48.117847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244022, 38.282749, 48.894062>,  <33.702682, 37.890751, 48.674549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244022, 38.282749, 48.894062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091705, 38.471088, 48.575745>,  <34.000313, 38.584091, 48.384754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091705, 38.471088, 48.575745>,  <34.244022, 38.282749, 48.894062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091705, 38.471088, 48.575745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081929, 0.874434, 0.478176,
		0.921022, 0.116889, -0.371559,
		-0.380797, 0.470852, -0.795796,
		33.977467, 38.612343, 48.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647655, 38.865082, 48.964188>,  <34.244022, 38.282749, 48.894062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647655, 38.865082, 48.964188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316223, 38.934776, 48.751358>,  <34.117363, 38.976593, 48.623661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316223, 38.934776, 48.751358>,  <34.647655, 38.865082, 48.964188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316223, 38.934776, 48.751358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099513, 0.889378, 0.446211,
		0.550959, 0.422669, -0.719580,
		-0.828578, 0.174237, -0.532072,
		34.067650, 38.987049, 48.591736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668968, 39.581177, 49.021725>,  <34.647655, 38.865082, 48.964188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668968, 39.581177, 49.021725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305935, 39.512100, 48.868641>,  <34.088116, 39.470654, 48.776791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305935, 39.512100, 48.868641>,  <34.668968, 39.581177, 49.021725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305935, 39.512100, 48.868641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341931, 0.832977, 0.435009,
		0.243661, 0.525667, -0.815048,
		-0.907586, -0.172696, -0.382706,
		34.033661, 39.460293, 48.753830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505932, 40.175545, 48.663197>,  <34.668968, 39.581177, 49.021725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505932, 40.175545, 48.663197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154335, 40.003128, 48.744755>,  <33.943378, 39.899677, 48.793690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154335, 40.003128, 48.744755>,  <34.505932, 40.175545, 48.663197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154335, 40.003128, 48.744755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262095, 0.793965, 0.548566,
		-0.398343, 0.428745, -0.810864,
		-0.878993, -0.431041, 0.203899,
		33.890636, 39.873817, 48.805923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120647, 40.569836, 49.062477>,  <34.505932, 40.175545, 48.663197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120647, 40.569836, 49.062477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350639, 40.889610, 48.992847>,  <34.488636, 41.081474, 48.951069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350639, 40.889610, 48.992847>,  <34.120647, 40.569836, 49.062477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350639, 40.889610, 48.992847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074847, -0.160475, -0.984198,
		-0.814734, 0.578927, -0.032436,
		0.574984, 0.799432, -0.174076,
		34.523136, 41.129440, 48.940624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875511, 41.007984, 48.539230>,  <34.120647, 40.569836, 49.062477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875511, 41.007984, 48.539230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273445, 40.998306, 48.578682>,  <34.512203, 40.992500, 48.602352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273445, 40.998306, 48.578682>,  <33.875511, 41.007984, 48.539230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273445, 40.998306, 48.578682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086331, -0.309959, -0.946822,
		0.053476, 0.950442, -0.306268,
		0.994830, -0.024192, 0.098628,
		34.571896, 40.991047, 48.608269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132431, 41.272152, 47.946690>,  <33.875511, 41.007984, 48.539230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132431, 41.272152, 47.946690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437302, 41.062576, 48.098782>,  <34.620224, 40.936832, 48.190037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437302, 41.062576, 48.098782>,  <34.132431, 41.272152, 47.946690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437302, 41.062576, 48.098782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148207, -0.430528, -0.890326,
		0.630174, 0.734940, -0.250488,
		0.762178, -0.523936, 0.380230,
		34.665955, 40.905396, 48.212852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761730, 41.375603, 47.527672>,  <34.132431, 41.272152, 47.946690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761730, 41.375603, 47.527672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811539, 41.017860, 47.699543>,  <34.841423, 40.803215, 47.802666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811539, 41.017860, 47.699543>,  <34.761730, 41.375603, 47.527672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811539, 41.017860, 47.699543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278527, -0.384125, -0.880267,
		0.952322, 0.229287, 0.201272,
		0.124521, -0.894358, 0.429673,
		34.848896, 40.749554, 47.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480793, 41.149849, 47.246559>,  <34.761730, 41.375603, 47.527672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480793, 41.149849, 47.246559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306492, 40.830421, 47.412643>,  <35.201912, 40.638763, 47.512295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306492, 40.830421, 47.412643>,  <35.480793, 41.149849, 47.246559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306492, 40.830421, 47.412643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238602, -0.547296, -0.802207,
		0.867863, -0.250496, 0.429029,
		-0.435755, -0.798573, 0.415209,
		35.175766, 40.590851, 47.537205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944702, 40.681335, 47.246147>,  <35.480793, 41.149849, 47.246559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944702, 40.681335, 47.246147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606129, 40.468964, 47.262463>,  <35.402985, 40.341541, 47.272251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606129, 40.468964, 47.262463>,  <35.944702, 40.681335, 47.246147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606129, 40.468964, 47.262463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296173, -0.533061, -0.792545,
		0.442533, -0.658754, 0.608447,
		-0.846432, -0.530933, 0.040792,
		35.352200, 40.309685, 47.274700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168770, 39.965820, 47.171692>,  <35.944702, 40.681335, 47.246147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168770, 39.965820, 47.171692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777817, 39.940376, 47.091011>,  <35.543247, 39.925110, 47.042603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777817, 39.940376, 47.091011>,  <36.168770, 39.965820, 47.171692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777817, 39.940376, 47.091011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202752, -0.553141, -0.808039,
		-0.060169, -0.830655, 0.553526,
		-0.977380, -0.063610, -0.201699,
		35.484604, 39.921295, 47.030502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900028, 39.224545, 47.213810>,  <36.168770, 39.965820, 47.171692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900028, 39.224545, 47.213810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705124, 39.449680, 46.946739>,  <35.588181, 39.584763, 46.786499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705124, 39.449680, 46.946739>,  <35.900028, 39.224545, 47.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705124, 39.449680, 46.946739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358120, -0.568536, -0.740619,
		-0.796445, -0.599984, 0.075463,
		-0.487263, 0.562838, -0.667674,
		35.558945, 39.618530, 46.746437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593048, 38.731705, 46.792294>,  <35.900028, 39.224545, 47.213810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593048, 38.731705, 46.792294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537018, 39.034977, 46.537563>,  <35.503399, 39.216942, 46.384727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537018, 39.034977, 46.537563>,  <35.593048, 38.731705, 46.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537018, 39.034977, 46.537563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241240, -0.597649, -0.764604,
		-0.960303, -0.260731, -0.099186,
		-0.140077, 0.758179, -0.636822,
		35.494995, 39.262432, 46.346516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273502, 38.438686, 46.146988>,  <35.593048, 38.731705, 46.792294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273502, 38.438686, 46.146988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425919, 38.794933, 46.047699>,  <35.517368, 39.008682, 45.988125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425919, 38.794933, 46.047699>,  <35.273502, 38.438686, 46.146988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425919, 38.794933, 46.047699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356547, -0.389264, -0.849322,
		-0.853043, 0.235122, -0.465871,
		0.381041, 0.890613, -0.248227,
		35.540230, 39.062119, 45.973232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184990, 38.423725, 45.466793>,  <35.273502, 38.438686, 46.146988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184990, 38.423725, 45.466793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426430, 38.740601, 45.502808>,  <35.571293, 38.930725, 45.524418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426430, 38.740601, 45.502808>,  <35.184990, 38.423725, 45.466793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426430, 38.740601, 45.502808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462534, -0.255944, -0.848855,
		-0.649411, 0.554009, -0.520902,
		0.603595, 0.792191, 0.090035,
		35.607510, 38.978256, 45.529819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175625, 38.785572, 44.745972>,  <35.184990, 38.423725, 45.466793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175625, 38.785572, 44.745972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498943, 38.883858, 44.959991>,  <35.692936, 38.942829, 45.088402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498943, 38.883858, 44.959991>,  <35.175625, 38.785572, 44.745972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498943, 38.883858, 44.959991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588394, -0.304572, -0.749018,
		-0.021087, 0.920249, -0.390764,
		0.808299, 0.245718, 0.535047,
		35.741432, 38.957573, 45.120506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459385, 39.312988, 44.351151>,  <35.175625, 38.785572, 44.745972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459385, 39.312988, 44.351151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742165, 39.132442, 44.568958>,  <35.911831, 39.024117, 44.699642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742165, 39.132442, 44.568958>,  <35.459385, 39.312988, 44.351151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742165, 39.132442, 44.568958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483713, -0.253126, -0.837824,
		0.515994, 0.855686, 0.039384,
		0.706946, -0.451363, 0.544517,
		35.954247, 38.997032, 44.732315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089230, 39.656776, 44.170258>,  <35.459385, 39.312988, 44.351151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089230, 39.656776, 44.170258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171200, 39.295605, 44.321373>,  <36.220383, 39.078903, 44.412041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171200, 39.295605, 44.321373>,  <36.089230, 39.656776, 44.170258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171200, 39.295605, 44.321373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571467, -0.202986, -0.795124,
		0.794627, 0.378832, 0.474399,
		0.204922, -0.902930, 0.377788,
		36.232677, 39.024727, 44.434708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794621, 39.577549, 43.941422>,  <36.089230, 39.656776, 44.170258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794621, 39.577549, 43.941422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679947, 39.211376, 44.054413>,  <36.611141, 38.991673, 44.122208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679947, 39.211376, 44.054413>,  <36.794621, 39.577549, 43.941422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679947, 39.211376, 44.054413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473421, -0.391711, -0.788946,
		0.832877, -0.092446, 0.545682,
		-0.286684, -0.915432, 0.282481,
		36.593941, 38.936745, 44.139156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413883, 39.122925, 43.837940>,  <36.794621, 39.577549, 43.941422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413883, 39.122925, 43.837940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087109, 38.893276, 43.859844>,  <36.891045, 38.755486, 43.872986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087109, 38.893276, 43.859844>,  <37.413883, 39.122925, 43.837940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087109, 38.893276, 43.859844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347287, -0.565515, -0.748054,
		0.460444, -0.592094, 0.661374,
		-0.816936, -0.574124, 0.054761,
		36.842030, 38.721039, 43.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645672, 38.386265, 43.813358>,  <37.413883, 39.122925, 43.837940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645672, 38.386265, 43.813358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269825, 38.410069, 43.678555>,  <37.044315, 38.424351, 43.597672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269825, 38.410069, 43.678555>,  <37.645672, 38.386265, 43.813358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269825, 38.410069, 43.678555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255754, -0.532209, -0.807059,
		-0.227387, -0.844519, 0.484854,
		-0.939620, 0.059511, -0.337006,
		36.987938, 38.427921, 43.577454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503296, 37.668102, 43.630390>,  <37.645672, 38.386265, 43.813358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503296, 37.668102, 43.630390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255241, 37.902973, 43.422295>,  <37.106407, 38.043896, 43.297436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255241, 37.902973, 43.422295>,  <37.503296, 37.668102, 43.630390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255241, 37.902973, 43.422295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138690, -0.570649, -0.809398,
		-0.772138, -0.574088, 0.272443,
		-0.620135, 0.587182, -0.520240,
		37.069202, 38.079128, 43.266224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294582, 37.159195, 43.200752>,  <37.503296, 37.668102, 43.630390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294582, 37.159195, 43.200752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141960, 37.498058, 43.052837>,  <37.050385, 37.701374, 42.964088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141960, 37.498058, 43.052837>,  <37.294582, 37.159195, 43.200752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141960, 37.498058, 43.052837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082428, -0.367278, -0.926451,
		-0.920663, -0.383975, 0.070309,
		-0.381557, 0.847154, -0.369790,
		37.027493, 37.752205, 42.941902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692894, 36.972504, 42.803535>,  <37.294582, 37.159195, 43.200752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692894, 36.972504, 42.803535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827927, 37.324440, 42.669720>,  <36.908947, 37.535603, 42.589432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827927, 37.324440, 42.669720>,  <36.692894, 36.972504, 42.803535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827927, 37.324440, 42.669720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057341, -0.373961, -0.925670,
		-0.939549, 0.293306, -0.176693,
		0.337580, 0.879844, -0.334536,
		36.929199, 37.588394, 42.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394455, 37.037716, 42.240845>,  <36.692894, 36.972504, 42.803535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394455, 37.037716, 42.240845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686745, 37.307777, 42.200424>,  <36.862118, 37.469814, 42.176170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686745, 37.307777, 42.200424>,  <36.394455, 37.037716, 42.240845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686745, 37.307777, 42.200424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214600, -0.367692, -0.904848,
		-0.648069, 0.639506, -0.413569,
		0.730721, 0.675155, -0.101052,
		36.905960, 37.510323, 42.170109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191528, 37.377483, 41.629555>,  <36.394455, 37.037716, 42.240845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191528, 37.377483, 41.629555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585880, 37.438709, 41.656700>,  <36.822491, 37.475445, 41.672989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585880, 37.438709, 41.656700>,  <36.191528, 37.377483, 41.629555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585880, 37.438709, 41.656700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100851, -0.219331, -0.970424,
		-0.133656, 0.963568, -0.231672,
		0.985883, 0.153067, 0.067862,
		36.881645, 37.484631, 41.677059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392811, 37.638126, 40.998837>,  <36.191528, 37.377483, 41.629555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392811, 37.638126, 40.998837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731819, 37.505634, 41.164726>,  <36.935223, 37.426140, 41.264259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731819, 37.505634, 41.164726>,  <36.392811, 37.638126, 40.998837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731819, 37.505634, 41.164726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338496, -0.264523, -0.903022,
		0.408812, 0.905711, -0.112069,
		0.847522, -0.331231, 0.414720,
		36.986076, 37.406265, 41.289143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992393, 37.950069, 40.594769>,  <36.392811, 37.638126, 40.998837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992393, 37.950069, 40.594769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086136, 37.611347, 40.785763>,  <37.142380, 37.408112, 40.900360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086136, 37.611347, 40.785763>,  <36.992393, 37.950069, 40.594769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086136, 37.611347, 40.785763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365285, -0.378464, -0.850489,
		0.900913, 0.373735, 0.220631,
		0.234357, -0.846810, 0.477483,
		37.156445, 37.357304, 40.929008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502991, 37.702343, 40.193623>,  <36.992393, 37.950069, 40.594769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502991, 37.702343, 40.193623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486786, 37.392136, 40.445633>,  <37.477062, 37.206013, 40.596840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486786, 37.392136, 40.445633>,  <37.502991, 37.702343, 40.193623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486786, 37.392136, 40.445633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361229, -0.599263, -0.714421,
		0.931597, 0.198643, 0.304414,
		-0.040509, -0.775516, 0.630027,
		37.474632, 37.159481, 40.634640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186039, 37.505539, 40.306099>,  <37.502991, 37.702343, 40.193623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186039, 37.505539, 40.306099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934586, 37.199364, 40.361122>,  <37.783714, 37.015659, 40.394135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934586, 37.199364, 40.361122>,  <38.186039, 37.505539, 40.306099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934586, 37.199364, 40.361122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535963, -0.554567, -0.636552,
		0.563525, -0.326435, 0.758867,
		-0.628635, -0.765438, 0.137556,
		37.745995, 36.969730, 40.402390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529518, 36.934467, 40.355431>,  <38.186039, 37.505539, 40.306099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529518, 36.934467, 40.355431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174675, 36.777077, 40.258915>,  <37.961769, 36.682640, 40.201004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174675, 36.777077, 40.258915>,  <38.529518, 36.934467, 40.355431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174675, 36.777077, 40.258915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449511, -0.617783, -0.645200,
		0.104808, -0.680822, 0.724911,
		-0.887104, -0.393478, -0.241288,
		37.908543, 36.659035, 40.186527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577682, 36.195759, 40.320820>,  <38.529518, 36.934467, 40.355431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577682, 36.195759, 40.320820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229870, 36.242344, 40.128841>,  <38.021183, 36.270294, 40.013653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229870, 36.242344, 40.128841>,  <38.577682, 36.195759, 40.320820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229870, 36.242344, 40.128841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250609, -0.733340, -0.631986,
		-0.425565, -0.669812, 0.608478,
		-0.869534, 0.116461, -0.479945,
		37.969009, 36.277283, 39.984859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277443, 35.517509, 40.178188>,  <38.577682, 36.195759, 40.320820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277443, 35.517509, 40.178188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092644, 35.750729, 39.910873>,  <37.981766, 35.890659, 39.750484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092644, 35.750729, 39.910873>,  <38.277443, 35.517509, 40.178188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092644, 35.750729, 39.910873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159687, -0.686528, -0.709351,
		-0.872387, -0.434436, 0.224068,
		-0.461997, 0.583048, -0.668292,
		37.954044, 35.925644, 39.710384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915798, 35.105221, 39.884239>,  <38.277443, 35.517509, 40.178188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915798, 35.105221, 39.884239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938511, 35.400219, 39.615055>,  <37.952141, 35.577217, 39.453545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938511, 35.400219, 39.615055>,  <37.915798, 35.105221, 39.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938511, 35.400219, 39.615055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193786, -0.669371, -0.717209,
		-0.979399, -0.089685, -0.180926,
		0.056784, 0.737495, -0.672961,
		37.955547, 35.621468, 39.413166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698265, 34.815620, 39.212593>,  <37.915798, 35.105221, 39.884239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698265, 34.815620, 39.212593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867661, 35.158516, 39.095428>,  <37.969299, 35.364254, 39.025127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867661, 35.158516, 39.095428>,  <37.698265, 34.815620, 39.212593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867661, 35.158516, 39.095428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190901, -0.400530, -0.896177,
		-0.885557, 0.323606, -0.333269,
		0.423492, 0.857237, -0.292915,
		37.994709, 35.415688, 39.007553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514683, 34.864422, 38.436817>,  <37.698265, 34.815620, 39.212593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514683, 34.864422, 38.436817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824844, 35.104328, 38.515842>,  <38.010941, 35.248272, 38.563259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824844, 35.104328, 38.515842>,  <37.514683, 34.864422, 38.436817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824844, 35.104328, 38.515842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402412, -0.228221, -0.886555,
		-0.486637, 0.766939, -0.418316,
		0.775402, 0.599766, 0.197564,
		38.057465, 35.284260, 38.575111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656685, 35.302345, 37.890316>,  <37.514683, 34.864422, 38.436817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656685, 35.302345, 37.890316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012783, 35.299610, 38.072483>,  <38.226444, 35.297970, 38.181786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012783, 35.299610, 38.072483>,  <37.656685, 35.302345, 37.890316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012783, 35.299610, 38.072483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446077, -0.188958, -0.874820,
		0.092041, 0.981961, -0.165168,
		0.890249, -0.006842, 0.455422,
		38.279858, 35.297558, 38.209110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208496, 35.733234, 37.531788>,  <37.656685, 35.302345, 37.890316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208496, 35.733234, 37.531788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413338, 35.469925, 37.752487>,  <38.536243, 35.311939, 37.884907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413338, 35.469925, 37.752487>,  <38.208496, 35.733234, 37.531788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413338, 35.469925, 37.752487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630064, -0.148678, -0.762177,
		0.583751, 0.737953, 0.338613,
		0.512107, -0.658270, 0.551749,
		38.566971, 35.272446, 37.918011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846748, 35.996281, 37.512310>,  <38.208496, 35.733234, 37.531788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846748, 35.996281, 37.512310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884995, 35.617176, 37.634033>,  <38.907944, 35.389713, 37.707066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884995, 35.617176, 37.634033>,  <38.846748, 35.996281, 37.512310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884995, 35.617176, 37.634033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620107, -0.182424, -0.763013,
		0.778669, 0.261659, 0.570272,
		0.095618, -0.947764, 0.304305,
		38.913681, 35.332848, 37.725323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517780, 35.804794, 37.489674>,  <38.846748, 35.996281, 37.512310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517780, 35.804794, 37.489674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337337, 35.447948, 37.479549>,  <39.229073, 35.233841, 37.473476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337337, 35.447948, 37.479549>,  <39.517780, 35.804794, 37.489674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337337, 35.447948, 37.479549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572646, -0.267579, -0.774905,
		0.684529, -0.364059, 0.631570,
		-0.451106, -0.892111, -0.025311,
		39.202007, 35.180317, 37.471954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064880, 35.367371, 37.515865>,  <39.517780, 35.804794, 37.489674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064880, 35.367371, 37.515865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748837, 35.169773, 37.370708>,  <39.559208, 35.051212, 37.283615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748837, 35.169773, 37.370708>,  <40.064880, 35.367371, 37.515865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748837, 35.169773, 37.370708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538424, -0.276384, -0.796060,
		0.292953, -0.824366, 0.484354,
		-0.790113, -0.493996, -0.362890,
		39.511803, 35.021576, 37.261841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354111, 34.766720, 37.322033>,  <40.064880, 35.367371, 37.515865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354111, 34.766720, 37.322033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994701, 34.742508, 37.148140>,  <39.779057, 34.727982, 37.043804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994701, 34.742508, 37.148140>,  <40.354111, 34.766720, 37.322033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994701, 34.742508, 37.148140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438600, -0.161878, -0.883983,
		-0.016862, -0.984953, 0.172001,
		-0.898524, -0.060534, -0.434730,
		39.725143, 34.724346, 37.017719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425739, 34.192020, 36.802769>,  <40.354111, 34.766720, 37.322033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425739, 34.192020, 36.802769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123611, 34.422123, 36.677185>,  <39.942337, 34.560184, 36.601833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123611, 34.422123, 36.677185>,  <40.425739, 34.192020, 36.802769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123611, 34.422123, 36.677185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307602, -0.111832, -0.944920,
		-0.578687, -0.810289, -0.092483,
		-0.755316, 0.575261, -0.313962,
		39.897015, 34.594700, 36.582996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009754, 33.818367, 36.409527>,  <40.425739, 34.192020, 36.802769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009754, 33.818367, 36.409527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004044, 34.204929, 36.306870>,  <40.000618, 34.436867, 36.245277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004044, 34.204929, 36.306870>,  <40.009754, 33.818367, 36.409527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004044, 34.204929, 36.306870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234568, -0.246266, -0.940389,
		-0.971995, -0.073621, -0.223172,
		-0.014273, 0.966402, -0.256639,
		39.999763, 34.494850, 36.229877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456192, 34.218338, 35.930042>,  <40.009754, 33.818367, 36.409527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456192, 34.218338, 35.930042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826401, 34.360153, 35.876816>,  <40.048527, 34.445244, 35.844879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826401, 34.360153, 35.876816>,  <39.456192, 34.218338, 35.930042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826401, 34.360153, 35.876816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074082, -0.175081, -0.981763,
		-0.371369, 0.918504, -0.135777,
		0.925525, 0.354537, -0.133065,
		40.104057, 34.466515, 35.836895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602974, 34.850239, 35.434303>,  <39.456192, 34.218338, 35.930042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602974, 34.850239, 35.434303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916611, 34.601986, 35.432499>,  <40.104794, 34.453033, 35.431416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916611, 34.601986, 35.432499>,  <39.602974, 34.850239, 35.434303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916611, 34.601986, 35.432499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076781, -0.089787, -0.992997,
		0.615883, 0.778943, -0.118054,
		0.784088, -0.620634, -0.004509,
		40.151836, 34.415794, 35.431145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189354, 35.062878, 35.020020>,  <39.602974, 34.850239, 35.434303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189354, 35.062878, 35.020020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171757, 34.663723, 35.039143>,  <40.161198, 34.424229, 35.050617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171757, 34.663723, 35.039143>,  <40.189354, 35.062878, 35.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171757, 34.663723, 35.039143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083103, -0.051339, -0.995218,
		0.995570, -0.039806, 0.085186,
		-0.043989, -0.997888, 0.047803,
		40.158562, 34.364357, 35.053482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687416, 34.728115, 34.578114>,  <40.189354, 35.062878, 35.020020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687416, 34.728115, 34.578114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422924, 34.428150, 34.586151>,  <40.264229, 34.248173, 34.590973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422924, 34.428150, 34.586151>,  <40.687416, 34.728115, 34.578114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422924, 34.428150, 34.586151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158951, -0.166233, -0.973191,
		0.733149, -0.640310, 0.229117,
		-0.661231, -0.749913, 0.020096,
		40.224556, 34.203175, 34.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047791, 34.059135, 34.339092>,  <40.687416, 34.728115, 34.578114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047791, 34.059135, 34.339092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660919, 34.139061, 34.276295>,  <40.428799, 34.187016, 34.238617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660919, 34.139061, 34.276295>,  <41.047791, 34.059135, 34.339092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660919, 34.139061, 34.276295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127615, -0.152342, -0.980054,
		-0.219751, -0.967918, 0.121841,
		-0.967173, 0.199819, -0.156998,
		40.370766, 34.199005, 34.229195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683460, 33.526512, 33.942425>,  <41.047791, 34.059135, 34.339092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683460, 33.526512, 33.942425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557926, 33.903919, 33.899937>,  <40.482605, 34.130363, 33.874443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557926, 33.903919, 33.899937>,  <40.683460, 33.526512, 33.942425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557926, 33.903919, 33.899937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357489, 0.013783, -0.933816,
		-0.879606, -0.331038, -0.341623,
		-0.313838, 0.943517, -0.106219,
		40.463776, 34.186974, 33.868073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108932, 33.618839, 33.392769>,  <40.683460, 33.526512, 33.942425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108932, 33.618839, 33.392769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341434, 33.939568, 33.448219>,  <40.480938, 34.132004, 33.481487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341434, 33.939568, 33.448219>,  <40.108932, 33.618839, 33.392769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341434, 33.939568, 33.448219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321870, -0.070096, -0.944185,
		-0.747354, 0.593435, -0.298827,
		0.581259, 0.801824, 0.138623,
		40.515812, 34.180115, 33.489807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961514, 34.103287, 32.862286>,  <40.108932, 33.618839, 33.392769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961514, 34.103287, 32.862286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322876, 34.193588, 33.008106>,  <40.539692, 34.247768, 33.095600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322876, 34.193588, 33.008106>,  <39.961514, 34.103287, 32.862286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322876, 34.193588, 33.008106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353420, 0.089404, -0.931183,
		-0.242813, 0.970073, 0.000981,
		0.903403, 0.225756, 0.364551,
		40.593895, 34.261314, 33.117470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128548, 34.651100, 32.492840>,  <39.961514, 34.103287, 32.862286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128548, 34.651100, 32.492840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476524, 34.503044, 32.623184>,  <40.685310, 34.414211, 32.701393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476524, 34.503044, 32.623184>,  <40.128548, 34.651100, 32.492840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476524, 34.503044, 32.623184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353340, 0.006890, -0.935470,
		0.344014, 0.928949, 0.136781,
		0.869946, -0.370145, 0.325864,
		40.737507, 34.392002, 32.720943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623688, 35.073273, 32.091133>,  <40.128548, 34.651100, 32.492840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623688, 35.073273, 32.091133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807049, 34.744320, 32.225922>,  <40.917065, 34.546947, 32.306797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807049, 34.744320, 32.225922>,  <40.623688, 35.073273, 32.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807049, 34.744320, 32.225922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262093, -0.237208, -0.935436,
		0.849222, 0.517121, 0.106806,
		0.458398, -0.822386, 0.336976,
		40.944569, 34.497604, 32.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299854, 35.090267, 31.735189>,  <40.623688, 35.073273, 32.091133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299854, 35.090267, 31.735189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222698, 34.712872, 31.842989>,  <41.176403, 34.486435, 31.907669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222698, 34.712872, 31.842989>,  <41.299854, 35.090267, 31.735189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222698, 34.712872, 31.842989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142331, -0.298655, -0.943688,
		0.970842, -0.143672, 0.191895,
		-0.192892, -0.943485, 0.269498,
		41.164829, 34.429825, 31.923838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805813, 34.736660, 31.433809>,  <41.299854, 35.090267, 31.735189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805813, 34.736660, 31.433809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526154, 34.467899, 31.531578>,  <41.358360, 34.306644, 31.590239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526154, 34.467899, 31.531578>,  <41.805813, 34.736660, 31.433809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526154, 34.467899, 31.531578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100172, -0.430538, -0.896996,
		0.707926, -0.602648, 0.368315,
		-0.699146, -0.671902, 0.244421,
		41.316410, 34.266327, 31.604904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052334, 34.077198, 31.319807>,  <41.805813, 34.736660, 31.433809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052334, 34.077198, 31.319807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662838, 33.986504, 31.311646>,  <41.429138, 33.932087, 31.306749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662838, 33.986504, 31.311646>,  <42.052334, 34.077198, 31.319807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662838, 33.986504, 31.311646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076619, -0.242010, -0.967244,
		0.214374, -0.943409, 0.253027,
		-0.973742, -0.226738, -0.020403,
		41.370716, 33.918484, 31.305525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004326, 33.482521, 30.945770>,  <42.052334, 34.077198, 31.319807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004326, 33.482521, 30.945770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633446, 33.629265, 30.915533>,  <41.410919, 33.717312, 30.897390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633446, 33.629265, 30.915533>,  <42.004326, 33.482521, 30.945770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633446, 33.629265, 30.915533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007873, -0.182682, -0.983141,
		-0.374483, -0.912164, 0.166494,
		-0.927200, 0.366858, -0.075592,
		41.355286, 33.739323, 30.892855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730824, 33.077419, 30.444445>,  <42.004326, 33.482521, 30.945770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730824, 33.077419, 30.444445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473526, 33.382877, 30.466660>,  <41.319149, 33.566151, 30.479988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473526, 33.382877, 30.466660>,  <41.730824, 33.077419, 30.444445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473526, 33.382877, 30.466660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045927, 0.033925, -0.998369,
		-0.764284, -0.644744, 0.013249,
		-0.643243, 0.763645, 0.055539,
		41.280552, 33.611969, 30.483322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143673, 32.928127, 29.930130>,  <41.730824, 33.077419, 30.444445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143673, 32.928127, 29.930130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133873, 33.318233, 30.017998>,  <41.127995, 33.552296, 30.070719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133873, 33.318233, 30.017998>,  <41.143673, 32.928127, 29.930130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133873, 33.318233, 30.017998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105206, 0.216000, -0.970709,
		-0.994149, -0.046893, 0.097312,
		-0.024500, 0.975267, 0.219669,
		41.126522, 33.610813, 30.083899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624306, 33.088745, 29.489834>,  <41.143673, 32.928127, 29.930130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624306, 33.088745, 29.489834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810719, 33.425858, 29.597565>,  <40.922565, 33.628124, 29.662203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810719, 33.425858, 29.597565>,  <40.624306, 33.088745, 29.489834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810719, 33.425858, 29.597565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097488, 0.351462, -0.931112,
		-0.879381, 0.407672, 0.245954,
		0.466032, 0.842780, 0.269326,
		40.950527, 33.678692, 29.678362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185032, 33.590275, 29.170334>,  <40.624306, 33.088745, 29.489834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185032, 33.590275, 29.170334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541752, 33.757706, 29.239014>,  <40.755783, 33.858162, 29.280222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541752, 33.757706, 29.239014>,  <40.185032, 33.590275, 29.170334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541752, 33.757706, 29.239014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010346, 0.360548, -0.932683,
		-0.452304, 0.833547, 0.317208,
		0.891804, 0.418575, 0.171701,
		40.809292, 33.883278, 29.290524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157909, 34.317047, 28.943659>,  <40.185032, 33.590275, 29.170334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157909, 34.317047, 28.943659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530418, 34.172050, 28.929024>,  <40.753922, 34.085052, 28.920242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530418, 34.172050, 28.929024>,  <40.157909, 34.317047, 28.943659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530418, 34.172050, 28.929024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033084, 0.184141, -0.982343,
		0.362829, 0.913614, 0.183478,
		0.931268, -0.362493, -0.036585,
		40.809799, 34.063301, 28.918049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584629, 34.836929, 28.584026>,  <40.157909, 34.317047, 28.943659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584629, 34.836929, 28.584026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773788, 34.484810, 28.568815>,  <40.887283, 34.273537, 28.559689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773788, 34.484810, 28.568815>,  <40.584629, 34.836929, 28.584026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773788, 34.484810, 28.568815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307832, 0.205499, -0.928983,
		0.825597, 0.427605, 0.368163,
		0.472895, -0.880298, -0.038028,
		40.915657, 34.220722, 28.557407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164417, 35.025291, 28.186972>,  <40.584629, 34.836929, 28.584026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164417, 35.025291, 28.186972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162418, 34.626244, 28.159433>,  <41.161221, 34.386814, 28.142910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162418, 34.626244, 28.159433>,  <41.164417, 35.025291, 28.186972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162418, 34.626244, 28.159433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236354, 0.065717, -0.969442,
		0.971654, -0.021116, 0.235462,
		-0.004997, -0.997615, -0.068845,
		41.160919, 34.326958, 28.138781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855572, 34.843346, 27.950457>,  <41.164417, 35.025291, 28.186972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855572, 34.843346, 27.950457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614391, 34.545574, 27.835718>,  <41.469685, 34.366913, 27.766874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614391, 34.545574, 27.835718>,  <41.855572, 34.843346, 27.950457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614391, 34.545574, 27.835718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429998, -0.000393, -0.902830,
		0.671977, -0.667706, 0.320338,
		-0.602950, -0.744425, -0.286848,
		41.433506, 34.322247, 27.749664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292957, 34.302086, 27.524784>,  <41.855572, 34.843346, 27.950457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292957, 34.302086, 27.524784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908356, 34.253788, 27.426052>,  <41.677593, 34.224808, 27.366812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908356, 34.253788, 27.426052>,  <42.292957, 34.302086, 27.524784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908356, 34.253788, 27.426052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241680, 0.055829, -0.968749,
		0.130758, -0.991112, -0.024497,
		-0.961506, -0.120751, -0.246832,
		41.619904, 34.217564, 27.352003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346039, 34.180443, 26.809996>,  <42.292957, 34.302086, 27.524784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346039, 34.180443, 26.809996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950977, 34.233459, 26.843388>,  <41.713940, 34.265270, 26.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950977, 34.233459, 26.843388>,  <42.346039, 34.180443, 26.809996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950977, 34.233459, 26.843388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046654, 0.259835, -0.964525,
		-0.149534, -0.956513, -0.250444,
		-0.987655, 0.132545, 0.083479,
		41.654682, 34.273224, 26.868431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114857, 33.964535, 26.171238>,  <42.346039, 34.180443, 26.809996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114857, 33.964535, 26.171238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850952, 34.194508, 26.364805>,  <41.692612, 34.332489, 26.480946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850952, 34.194508, 26.364805>,  <42.114857, 33.964535, 26.171238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850952, 34.194508, 26.364805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025771, 0.626265, -0.779184,
		-0.751035, -0.526545, -0.398368,
		-0.659759, 0.574928, 0.483917,
		41.653023, 34.366985, 26.509981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483765, 33.962051, 25.651218>,  <42.114857, 33.964535, 26.171238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483765, 33.962051, 25.651218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412682, 34.270397, 25.895905>,  <41.370033, 34.455402, 26.042715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412682, 34.270397, 25.895905>,  <41.483765, 33.962051, 25.651218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412682, 34.270397, 25.895905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147061, 0.635430, -0.758025,
		-0.973033, -0.044748, -0.226285,
		-0.177708, 0.770861, 0.611714,
		41.359367, 34.501656, 26.079418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996250, 34.386978, 25.295732>,  <41.483765, 33.962051, 25.651218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996250, 34.386978, 25.295732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183964, 34.608257, 25.571047>,  <41.296593, 34.741024, 25.736237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183964, 34.608257, 25.571047>,  <40.996250, 34.386978, 25.295732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183964, 34.608257, 25.571047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183066, 0.701565, -0.688689,
		-0.863862, 0.449195, 0.227963,
		0.469286, 0.553200, 0.688287,
		41.324749, 34.774216, 25.777533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848377, 34.993259, 25.146217>,  <40.996250, 34.386978, 25.295732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848377, 34.993259, 25.146217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201885, 35.044556, 25.326221>,  <41.413990, 35.075333, 25.434223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201885, 35.044556, 25.326221>,  <40.848377, 34.993259, 25.146217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201885, 35.044556, 25.326221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294090, 0.595802, -0.747350,
		-0.363958, 0.792827, 0.488835,
		0.883768, 0.128243, 0.450009,
		41.467014, 35.083027, 25.461224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630505, 34.828083, 24.849566>,  <40.848377, 34.993259, 25.146217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630505, 34.828083, 24.849566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020031, 34.862980, 24.765602>,  <42.253746, 34.883919, 24.715223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020031, 34.862980, 24.765602>,  <41.630505, 34.828083, 24.849566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020031, 34.862980, 24.765602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225581, -0.256933, 0.939733,
		0.028055, -0.962483, -0.269887,
		0.973820, 0.087245, -0.209910,
		42.312176, 34.889153, 24.702629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717976, 35.578327, 24.684921>,  <41.630505, 34.828083, 24.849566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717976, 35.578327, 24.684921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906261, 35.916454, 24.786009>,  <42.019234, 36.119331, 24.846661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906261, 35.916454, 24.786009>,  <41.717976, 35.578327, 24.684921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906261, 35.916454, 24.786009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809414, -0.527733, 0.257579,
		0.351104, 0.083307, -0.932623,
		0.470718, 0.845315, 0.252719,
		42.047478, 36.170048, 24.861824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334591, 35.542419, 24.285891>,  <41.717976, 35.578327, 24.684921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334591, 35.542419, 24.285891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339836, 35.759758, 24.621653>,  <42.342983, 35.890160, 24.823111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339836, 35.759758, 24.621653>,  <42.334591, 35.542419, 24.285891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339836, 35.759758, 24.621653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859633, -0.434921, 0.268094,
		0.510744, 0.718066, -0.472782,
		0.013114, 0.543346, 0.839406,
		42.343769, 35.922764, 24.873474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534870, 36.191402, 24.510717>,  <42.334591, 35.542419, 24.285891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534870, 36.191402, 24.510717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846470, 36.060638, 24.296696>,  <43.033432, 35.982178, 24.168283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846470, 36.060638, 24.296696>,  <42.534870, 36.191402, 24.510717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846470, 36.060638, 24.296696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623466, 0.313116, 0.716414,
		-0.066673, -0.891675, 0.447738,
		0.779003, -0.326915, -0.535053,
		43.080170, 35.962563, 24.136179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028152, 35.960827, 24.999922>,  <42.534870, 36.191402, 24.510717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028152, 35.960827, 24.999922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235260, 36.011826, 24.661537>,  <43.359524, 36.042427, 24.458506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235260, 36.011826, 24.661537>,  <43.028152, 35.960827, 24.999922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235260, 36.011826, 24.661537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813947, 0.231077, 0.533004,
		0.263440, -0.964545, 0.015868,
		0.517774, 0.127499, -0.845964,
		43.390591, 36.050076, 24.407747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708729, 35.617271, 25.150532>,  <43.028152, 35.960827, 24.999922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708729, 35.617271, 25.150532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741852, 35.899021, 24.868540>,  <43.761726, 36.068073, 24.699345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741852, 35.899021, 24.868540>,  <43.708729, 35.617271, 25.150532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741852, 35.899021, 24.868540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891014, 0.264520, 0.368950,
		0.446361, -0.658699, -0.605705,
		0.082806, 0.704376, -0.704981,
		43.766693, 36.110332, 24.657045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346577, 35.258598, 24.973639>,  <43.708729, 35.617271, 25.150532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346577, 35.258598, 24.973639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288368, 35.557491, 25.233013>,  <44.253441, 35.736828, 25.388638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288368, 35.557491, 25.233013>,  <44.346577, 35.258598, 24.973639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288368, 35.557491, 25.233013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008503, -0.656336, 0.754420,
		0.989318, 0.104273, 0.101868,
		-0.145525, 0.747228, 0.648438,
		44.244709, 35.781658, 25.427546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778606, 35.065109, 25.594030>,  <44.346577, 35.258598, 24.973639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778606, 35.065109, 25.594030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498608, 35.329117, 25.703121>,  <44.330608, 35.487522, 25.768576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498608, 35.329117, 25.703121>,  <44.778606, 35.065109, 25.594030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498608, 35.329117, 25.703121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177662, -0.208945, 0.961654,
		0.691695, 0.721607, 0.029000,
		-0.699996, 0.660019, 0.272728,
		44.288609, 35.527122, 25.784939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965012, 35.440800, 26.245083>,  <44.778606, 35.065109, 25.594030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965012, 35.440800, 26.245083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567436, 35.482010, 26.260447>,  <44.328892, 35.506737, 26.269665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567436, 35.482010, 26.260447>,  <44.965012, 35.440800, 26.245083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567436, 35.482010, 26.260447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028264, -0.098197, 0.994766,
		0.106262, 0.989819, 0.094690,
		-0.993936, 0.103030, 0.038410,
		44.269257, 35.512920, 26.271969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910255, 35.879578, 26.731419>,  <44.965012, 35.440800, 26.245083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910255, 35.879578, 26.731419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582031, 35.655266, 26.687223>,  <44.385098, 35.520679, 26.660706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582031, 35.655266, 26.687223>,  <44.910255, 35.879578, 26.731419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582031, 35.655266, 26.687223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036257, -0.141853, 0.989224,
		-0.570412, 0.815721, 0.096067,
		-0.820558, -0.560782, -0.110490,
		44.335865, 35.487030, 26.654076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476151, 36.133282, 27.276161>,  <44.910255, 35.879578, 26.731419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476151, 36.133282, 27.276161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321644, 35.773445, 27.194635>,  <44.228939, 35.557545, 27.145720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321644, 35.773445, 27.194635>,  <44.476151, 36.133282, 27.276161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321644, 35.773445, 27.194635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259837, -0.105896, 0.959829,
		-0.885035, 0.423705, -0.192842,
		-0.386263, -0.899589, -0.203816,
		44.205765, 35.503567, 27.133492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824760, 36.189156, 27.638529>,  <44.476151, 36.133282, 27.276161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824760, 36.189156, 27.638529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872971, 35.801231, 27.553732>,  <43.901897, 35.568478, 27.502853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872971, 35.801231, 27.553732>,  <43.824760, 36.189156, 27.638529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872971, 35.801231, 27.553732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416175, -0.243241, 0.876146,
		-0.901261, -0.017372, -0.432928,
		0.120526, -0.969810, -0.211994,
		43.909130, 35.510288, 27.490133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240555, 35.857033, 27.963747>,  <43.824760, 36.189156, 27.638529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240555, 35.857033, 27.963747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491291, 35.549129, 27.915503>,  <43.641731, 35.364388, 27.886557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491291, 35.549129, 27.915503>,  <43.240555, 35.857033, 27.963747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491291, 35.549129, 27.915503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328015, -0.401124, 0.855281,
		-0.706741, -0.496559, -0.503932,
		0.626836, -0.769759, -0.120612,
		43.679340, 35.318203, 27.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808674, 35.373039, 28.079481>,  <43.240555, 35.857033, 27.963747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808674, 35.373039, 28.079481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175186, 35.225452, 28.141829>,  <43.395092, 35.136902, 28.179237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175186, 35.225452, 28.141829>,  <42.808674, 35.373039, 28.079481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175186, 35.225452, 28.141829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322620, -0.449238, 0.833128,
		-0.237371, -0.813666, -0.530663,
		0.916281, -0.368963, 0.155869,
		43.450069, 35.114761, 28.188589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743431, 34.683228, 28.269609>,  <42.808674, 35.373039, 28.079481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743431, 34.683228, 28.269609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113594, 34.763889, 28.397955>,  <43.335693, 34.812286, 28.474962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113594, 34.763889, 28.397955>,  <42.743431, 34.683228, 28.269609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113594, 34.763889, 28.397955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154469, -0.572433, 0.805270,
		0.346062, -0.794767, -0.498585,
		0.925408, 0.201657, 0.320864,
		43.391216, 34.824387, 28.494213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011066, 34.093952, 28.587763>,  <42.743431, 34.683228, 28.269609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011066, 34.093952, 28.587763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258251, 34.366795, 28.744150>,  <43.406563, 34.530499, 28.837982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258251, 34.366795, 28.744150>,  <43.011066, 34.093952, 28.587763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258251, 34.366795, 28.744150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006232, -0.501516, 0.865126,
		0.786186, -0.532176, -0.314167,
		0.617959, 0.682107, 0.390969,
		43.443638, 34.571426, 28.861441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493782, 33.734306, 29.018461>,  <43.011066, 34.093952, 28.587763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493782, 33.734306, 29.018461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522045, 34.106293, 29.162773>,  <43.539005, 34.329487, 29.249361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522045, 34.106293, 29.162773>,  <43.493782, 33.734306, 29.018461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522045, 34.106293, 29.162773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055347, -0.364783, 0.929446,
		0.995964, -0.045707, -0.077247,
		0.070661, 0.929970, 0.360781,
		43.543243, 34.385284, 29.271008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105213, 33.679016, 29.619953>,  <43.493782, 33.734306, 29.018461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105213, 33.679016, 29.619953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924328, 34.026337, 29.701496>,  <43.815796, 34.234730, 29.750422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924328, 34.026337, 29.701496>,  <44.105213, 33.679016, 29.619953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924328, 34.026337, 29.701496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049958, -0.203546, 0.977790,
		0.890510, 0.452353, 0.048668,
		-0.452213, 0.868300, 0.203859,
		43.788666, 34.286827, 29.762653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474712, 34.117653, 30.107513>,  <44.105213, 33.679016, 29.619953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474712, 34.117653, 30.107513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106144, 34.270920, 30.133360>,  <43.885002, 34.362881, 30.148869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106144, 34.270920, 30.133360>,  <44.474712, 34.117653, 30.107513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106144, 34.270920, 30.133360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012968, -0.135875, 0.990641,
		0.388358, 0.913632, 0.120229,
		-0.921417, 0.383164, 0.064616,
		43.829720, 34.385868, 30.152744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584862, 34.575249, 30.623161>,  <44.474712, 34.117653, 30.107513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584862, 34.575249, 30.623161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191536, 34.510777, 30.589422>,  <43.955540, 34.472092, 30.569178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191536, 34.510777, 30.589422>,  <44.584862, 34.575249, 30.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191536, 34.510777, 30.589422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116684, 0.203080, 0.972185,
		-0.139570, 0.965805, -0.218499,
		-0.983313, -0.161183, -0.084350,
		43.896542, 34.462421, 30.564117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202934, 35.172649, 30.942717>,  <44.584862, 34.575249, 30.623161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202934, 35.172649, 30.942717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985607, 34.837273, 30.959755>,  <43.855209, 34.636047, 30.969978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985607, 34.837273, 30.959755>,  <44.202934, 35.172649, 30.942717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985607, 34.837273, 30.959755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088996, 0.107975, 0.990162,
		-0.834797, 0.534182, -0.133283,
		-0.543318, -0.838446, 0.042597,
		43.822613, 34.585739, 30.972534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614487, 35.357517, 31.393486>,  <44.202934, 35.172649, 30.942717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614487, 35.357517, 31.393486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615082, 34.958038, 31.373085>,  <43.615440, 34.718349, 31.360846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615082, 34.958038, 31.373085>,  <43.614487, 35.357517, 31.393486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615082, 34.958038, 31.373085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088014, -0.050933, 0.994816,
		-0.996118, 0.003009, -0.087975,
		0.001487, -0.998698, -0.051000,
		43.615528, 34.658428, 31.357784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050758, 35.123531, 31.675745>,  <43.614487, 35.357517, 31.393486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050758, 35.123531, 31.675745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324074, 34.832695, 31.702421>,  <43.488064, 34.658192, 31.718428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324074, 34.832695, 31.702421>,  <43.050758, 35.123531, 31.675745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324074, 34.832695, 31.702421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077676, 0.018432, 0.996808,
		-0.726000, -0.686293, -0.043883,
		0.683293, -0.727092, 0.066690,
		43.529060, 34.614567, 31.722429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837685, 34.720970, 32.306908>,  <43.050758, 35.123531, 31.675745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837685, 34.720970, 32.306908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201534, 34.581753, 32.216179>,  <43.419846, 34.498222, 32.161743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201534, 34.581753, 32.216179>,  <42.837685, 34.720970, 32.306908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201534, 34.581753, 32.216179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147671, -0.239443, 0.959615,
		-0.388304, -0.906382, -0.166406,
		0.909622, -0.348049, -0.226823,
		43.474422, 34.477337, 32.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946854, 33.949703, 32.595470>,  <42.837685, 34.720970, 32.306908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946854, 33.949703, 32.595470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289421, 34.150608, 32.547668>,  <43.494961, 34.271149, 32.518986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289421, 34.150608, 32.547668>,  <42.946854, 33.949703, 32.595470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289421, 34.150608, 32.547668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280998, -0.259279, 0.924021,
		0.433113, -0.824929, -0.363186,
		0.856418, 0.502260, -0.119506,
		43.546349, 34.301285, 32.511818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354717, 33.414803, 32.913010>,  <42.946854, 33.949703, 32.595470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354717, 33.414803, 32.913010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571732, 33.750198, 32.892689>,  <43.701942, 33.951435, 32.880497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571732, 33.750198, 32.892689>,  <43.354717, 33.414803, 32.913010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571732, 33.750198, 32.892689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242918, -0.098705, 0.965012,
		0.804141, -0.535898, -0.257236,
		0.542539, 0.838493, -0.050807,
		43.734493, 34.001747, 32.877445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018700, 33.251305, 33.241066>,  <43.354717, 33.414803, 32.913010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018700, 33.251305, 33.241066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994808, 33.649986, 33.263008>,  <43.980473, 33.889194, 33.276173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994808, 33.649986, 33.263008>,  <44.018700, 33.251305, 33.241066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994808, 33.649986, 33.263008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210612, -0.041134, 0.976704,
		0.975743, 0.069892, -0.207461,
		-0.059730, 0.996706, 0.054856,
		43.976891, 33.948997, 33.279465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585869, 33.485588, 33.581882>,  <44.018700, 33.251305, 33.241066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585869, 33.485588, 33.581882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357220, 33.812904, 33.606049>,  <44.220032, 34.009293, 33.620548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357220, 33.812904, 33.606049>,  <44.585869, 33.485588, 33.581882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357220, 33.812904, 33.606049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125406, 0.014368, 0.992002,
		0.810877, 0.574626, -0.110831,
		-0.571622, 0.818290, 0.060411,
		44.185734, 34.058392, 33.624172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996517, 33.908569, 34.043907>,  <44.585869, 33.485588, 33.581882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996517, 33.908569, 34.043907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624706, 34.054657, 34.064312>,  <44.401619, 34.142311, 34.076553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624706, 34.054657, 34.064312>,  <44.996517, 33.908569, 34.043907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624706, 34.054657, 34.064312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055080, 0.000720, 0.998482,
		0.364628, 0.930921, -0.020786,
		-0.929523, 0.365220, 0.051013,
		44.345848, 34.164223, 34.079617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007710, 34.536694, 34.541050>,  <44.996517, 33.908569, 34.043907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007710, 34.536694, 34.541050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636051, 34.392769, 34.507046>,  <44.413055, 34.306416, 34.486645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636051, 34.392769, 34.507046>,  <45.007710, 34.536694, 34.541050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636051, 34.392769, 34.507046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070837, -0.052421, 0.996109,
		-0.362864, 0.931553, 0.023220,
		-0.929146, -0.359807, -0.085010,
		44.357307, 34.284828, 34.481544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721664, 34.673096, 34.278019>,  <45.007710, 34.536694, 34.541050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721664, 34.673096, 34.278019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997150, 34.456207, 34.085487>,  <46.162441, 34.326077, 33.969967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997150, 34.456207, 34.085487>,  <45.721664, 34.673096, 34.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997150, 34.456207, 34.085487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079643, -0.716429, 0.693099,
		-0.720688, -0.438979, -0.536569,
		0.688670, -0.542242, -0.481360,
		46.203762, 34.293541, 33.941090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070198, 34.366596, 34.807510>,  <45.721664, 34.673096, 34.278019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070198, 34.366596, 34.807510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396057, 34.578007, 34.712009>,  <46.591572, 34.704853, 34.654709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396057, 34.578007, 34.712009>,  <46.070198, 34.366596, 34.807510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396057, 34.578007, 34.712009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567012, 0.812329, -0.136454,
		0.121827, 0.246539, 0.961445,
		0.814651, 0.528527, -0.238754,
		46.640453, 34.736565, 34.640385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148735, 34.915005, 35.266518>,  <46.070198, 34.366596, 34.807510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148735, 34.915005, 35.266518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297466, 34.960323, 34.897972>,  <46.386703, 34.987514, 34.676846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297466, 34.960323, 34.897972>,  <46.148735, 34.915005, 35.266518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297466, 34.960323, 34.897972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723164, 0.657668, -0.210968,
		0.582049, 0.744740, 0.326470,
		0.371825, 0.113298, -0.921363,
		46.409012, 34.994312, 34.621563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956085, 34.940193, 35.233700>,  <46.148735, 34.915005, 35.266518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956085, 34.940193, 35.233700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242619, 34.727932, 35.052475>,  <47.414539, 34.600574, 34.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242619, 34.727932, 35.052475>,  <46.956085, 34.940193, 35.233700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242619, 34.727932, 35.052475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013492, 0.659733, -0.751379,
		0.697625, 0.532127, 0.479750,
		0.716336, -0.530654, -0.453066,
		47.457520, 34.568737, 34.916553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552677, 35.408188, 35.148746>,  <46.956085, 34.940193, 35.233700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552677, 35.408188, 35.148746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553375, 35.108658, 34.883644>,  <47.553795, 34.928940, 34.724583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553375, 35.108658, 34.883644>,  <47.552677, 35.408188, 35.148746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553375, 35.108658, 34.883644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168309, 0.653527, -0.737953,
		0.985733, -0.110260, 0.127175,
		0.001745, -0.748829, -0.662761,
		47.553898, 34.884010, 34.684814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.243965, 41.312302, 42.737240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857410, 41.227890, 42.678513>,  <34.625477, 41.177242, 42.643276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857410, 41.227890, 42.678513>,  <35.243965, 41.312302, 42.737240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857410, 41.227890, 42.678513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248251, -0.617674, -0.746224,
		0.066791, -0.757592, 0.649303,
		-0.966391, -0.211031, -0.146818,
		34.567493, 41.164581, 42.634468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157589, 40.561398, 42.763283>,  <35.243965, 41.312302, 42.737240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157589, 40.561398, 42.763283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892490, 40.764320, 42.542953>,  <34.733433, 40.886074, 42.410755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892490, 40.764320, 42.542953>,  <35.157589, 40.561398, 42.763283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892490, 40.764320, 42.542953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317456, -0.475864, -0.820229,
		-0.678226, -0.718466, 0.154329,
		-0.662746, 0.507308, -0.550824,
		34.693668, 40.916512, 42.377705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933071, 40.064739, 42.289425>,  <35.157589, 40.561398, 42.763283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933071, 40.064739, 42.289425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.784950, 40.392036, 42.113541>,  <34.696079, 40.588417, 42.008011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.784950, 40.392036, 42.113541>,  <34.933071, 40.064739, 42.289425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784950, 40.392036, 42.113541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233742, -0.376057, -0.896630,
		-0.899023, -0.434802, -0.052005,
		-0.370300, 0.818247, -0.439715,
		34.673859, 40.637512, 41.981625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488106, 39.837868, 41.772617>,  <34.933071, 40.064739, 42.289425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488106, 39.837868, 41.772617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590672, 40.208839, 41.663715>,  <34.652210, 40.431423, 41.598373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590672, 40.208839, 41.663715>,  <34.488106, 39.837868, 41.772617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590672, 40.208839, 41.663715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217860, -0.329879, -0.918541,
		-0.941696, 0.176210, -0.286635,
		0.256411, 0.927432, -0.272257,
		34.667595, 40.487068, 41.582039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227634, 39.896107, 40.956322>,  <34.488106, 39.837868, 41.772617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227634, 39.896107, 40.956322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476257, 40.203358, 41.017830>,  <34.625431, 40.387711, 41.054733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476257, 40.203358, 41.017830>,  <34.227634, 39.896107, 40.956322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476257, 40.203358, 41.017830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392566, -0.135552, -0.909680,
		-0.677909, 0.625781, -0.385795,
		0.621555, 0.768130, 0.153768,
		34.662724, 40.433796, 41.063961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073372, 40.302223, 40.500256>,  <34.227634, 39.896107, 40.956322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073372, 40.302223, 40.500256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450161, 40.393002, 40.599197>,  <34.676235, 40.447468, 40.658562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450161, 40.393002, 40.599197>,  <34.073372, 40.302223, 40.500256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450161, 40.393002, 40.599197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272715, -0.087702, -0.958089,
		-0.195743, 0.969950, -0.144505,
		0.941972, 0.226948, 0.247353,
		34.732754, 40.461086, 40.673405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386566, 40.697426, 39.889938>,  <34.073372, 40.302223, 40.500256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386566, 40.697426, 39.889938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707726, 40.574230, 40.094093>,  <34.900421, 40.500313, 40.216587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707726, 40.574230, 40.094093>,  <34.386566, 40.697426, 39.889938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707726, 40.574230, 40.094093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472545, -0.193090, -0.859894,
		0.363390, 0.931589, -0.009493,
		0.802900, -0.307991, 0.510385,
		34.948597, 40.481834, 40.247208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983540, 40.964111, 39.492378>,  <34.386566, 40.697426, 39.889938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983540, 40.964111, 39.492378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097607, 40.651543, 39.714390>,  <35.166046, 40.464001, 39.847595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097607, 40.651543, 39.714390>,  <34.983540, 40.964111, 39.492378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097607, 40.651543, 39.714390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455716, -0.398889, -0.795746,
		0.843210, 0.479855, 0.242357,
		0.285169, -0.781426, 0.555024,
		35.183159, 40.417114, 39.880898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533829, 40.836811, 39.153969>,  <34.983540, 40.964111, 39.492378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533829, 40.836811, 39.153969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475677, 40.509315, 39.376152>,  <35.440788, 40.312817, 39.509460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475677, 40.509315, 39.376152>,  <35.533829, 40.836811, 39.153969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475677, 40.509315, 39.376152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481868, -0.548928, -0.682995,
		0.864101, 0.168367, 0.474323,
		-0.145375, -0.818738, 0.555459,
		35.432064, 40.263695, 39.542789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227737, 40.420631, 39.252750>,  <35.533829, 40.836811, 39.153969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227737, 40.420631, 39.252750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940655, 40.150364, 39.320114>,  <35.768406, 39.988205, 39.360531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940655, 40.150364, 39.320114>,  <36.227737, 40.420631, 39.252750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940655, 40.150364, 39.320114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513830, -0.677101, -0.526795,
		0.469968, -0.291554, 0.833143,
		-0.717711, -0.675670, 0.168407,
		35.725342, 39.947662, 39.370636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551971, 39.810242, 39.525574>,  <36.227737, 40.420631, 39.252750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551971, 39.810242, 39.525574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.200703, 39.730061, 39.351845>,  <35.989941, 39.681950, 39.247608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.200703, 39.730061, 39.351845>,  <36.551971, 39.810242, 39.525574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200703, 39.730061, 39.351845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448606, -0.660289, -0.602304,
		-0.166041, -0.723765, 0.669772,
		-0.878170, -0.200457, -0.434321,
		35.937252, 39.669922, 39.221550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588799, 39.005444, 39.409389>,  <36.551971, 39.810242, 39.525574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588799, 39.005444, 39.409389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290573, 39.158604, 39.191212>,  <36.111637, 39.250500, 39.060303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290573, 39.158604, 39.191212>,  <36.588799, 39.005444, 39.409389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290573, 39.158604, 39.191212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314984, -0.518805, -0.794749,
		-0.587293, -0.764347, 0.266196,
		-0.745568, 0.382903, -0.545448,
		36.066902, 39.273476, 39.027576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378326, 38.444038, 39.014774>,  <36.588799, 39.005444, 39.409389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378326, 38.444038, 39.014774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238415, 38.753468, 38.803398>,  <36.154469, 38.939125, 38.676575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238415, 38.753468, 38.803398>,  <36.378326, 38.444038, 39.014774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238415, 38.753468, 38.803398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244936, -0.468934, -0.848591,
		-0.904246, -0.426253, -0.025452,
		-0.349779, 0.773569, -0.528436,
		36.133480, 38.985538, 38.644867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913071, 38.212067, 38.393703>,  <36.378326, 38.444038, 39.014774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913071, 38.212067, 38.393703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048855, 38.575413, 38.296021>,  <36.130325, 38.793423, 38.237411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048855, 38.575413, 38.296021>,  <35.913071, 38.212067, 38.393703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048855, 38.575413, 38.296021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335438, -0.359457, -0.870788,
		-0.878778, 0.213678, -0.426721,
		0.339456, 0.908368, -0.244207,
		36.150692, 38.847923, 38.222759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789940, 38.197533, 37.708679>,  <35.913071, 38.212067, 38.393703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789940, 38.197533, 37.708679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058300, 38.480854, 37.796497>,  <36.219315, 38.650848, 37.849190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058300, 38.480854, 37.796497>,  <35.789940, 38.197533, 37.708679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058300, 38.480854, 37.796497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508806, -0.224319, -0.831142,
		-0.539454, 0.669318, -0.510885,
		0.670899, 0.708304, 0.219544,
		36.259571, 38.693344, 37.862362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947269, 38.636360, 36.995907>,  <35.789940, 38.197533, 37.708679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947269, 38.636360, 36.995907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256210, 38.692230, 37.243763>,  <36.441574, 38.725754, 37.392479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256210, 38.692230, 37.243763>,  <35.947269, 38.636360, 36.995907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256210, 38.692230, 37.243763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634744, -0.133060, -0.761181,
		-0.023868, 0.981217, -0.191427,
		0.772354, 0.139675, 0.619645,
		36.487915, 38.734131, 37.429657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367737, 39.116169, 36.657722>,  <35.947269, 38.636360, 36.995907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367737, 39.116169, 36.657722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624390, 38.979279, 36.932293>,  <36.778381, 38.897144, 37.097034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624390, 38.979279, 36.932293>,  <36.367737, 39.116169, 36.657722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624390, 38.979279, 36.932293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650657, -0.231023, -0.723377,
		0.406140, 0.910774, 0.074440,
		0.641635, -0.342228, 0.686429,
		36.816879, 38.876610, 37.138222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962097, 39.553970, 36.488712>,  <36.367737, 39.116169, 36.657722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962097, 39.553970, 36.488712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064365, 39.212490, 36.670185>,  <37.125725, 39.007603, 36.779068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064365, 39.212490, 36.670185>,  <36.962097, 39.553970, 36.488712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064365, 39.212490, 36.670185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785474, -0.090154, -0.612293,
		0.563616, 0.512903, 0.647509,
		0.255671, -0.853700, 0.453685,
		37.141068, 38.956379, 36.806290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646519, 39.593777, 36.552975>,  <36.962097, 39.553970, 36.488712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646519, 39.593777, 36.552975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589619, 39.200684, 36.600296>,  <37.555477, 38.964828, 36.628689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589619, 39.200684, 36.600296>,  <37.646519, 39.593777, 36.552975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589619, 39.200684, 36.600296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858446, -0.181990, -0.479531,
		0.492782, 0.033345, 0.869514,
		-0.142253, -0.982735, 0.118307,
		37.546944, 38.905865, 36.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253632, 39.328484, 36.686081>,  <37.646519, 39.593777, 36.552975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253632, 39.328484, 36.686081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065750, 38.985294, 36.602894>,  <37.953022, 38.779381, 36.552982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065750, 38.985294, 36.602894>,  <38.253632, 39.328484, 36.686081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065750, 38.985294, 36.602894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816312, -0.332395, -0.472385,
		0.336169, -0.391648, 0.856506,
		-0.469707, -0.857978, -0.207966,
		37.924839, 38.727901, 36.540504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707737, 38.772373, 36.946762>,  <38.253632, 39.328484, 36.686081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707737, 38.772373, 36.946762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471821, 38.632206, 36.655735>,  <38.330273, 38.548107, 36.481117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471821, 38.632206, 36.655735>,  <38.707737, 38.772373, 36.946762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471821, 38.632206, 36.655735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795791, -0.405426, -0.449829,
		-0.137350, -0.844299, 0.517972,
		-0.589789, -0.350413, -0.727571,
		38.294884, 38.527081, 36.437466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137760, 38.183666, 36.677059>,  <38.707737, 38.772373, 36.946762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137760, 38.183666, 36.677059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854759, 38.271599, 36.408398>,  <38.684959, 38.324356, 36.247200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854759, 38.271599, 36.408398>,  <39.137760, 38.183666, 36.677059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854759, 38.271599, 36.408398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626292, -0.245281, -0.739997,
		-0.327417, -0.944199, 0.035858,
		-0.707500, 0.219830, -0.671654,
		38.642509, 38.337547, 36.206902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193638, 37.450138, 36.782047>,  <39.137760, 38.183666, 36.677059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193638, 37.450138, 36.782047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581642, 37.355671, 36.805019>,  <39.814445, 37.298992, 36.818802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581642, 37.355671, 36.805019>,  <39.193638, 37.450138, 36.782047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581642, 37.355671, 36.805019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015150, 0.177066, 0.984082,
		-0.242573, -0.955445, 0.168179,
		0.970015, -0.236164, 0.057426,
		39.872646, 37.284821, 36.822247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333157, 36.971802, 37.334839>,  <39.193638, 37.450138, 36.782047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333157, 36.971802, 37.334839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.667019, 37.179031, 37.260052>,  <39.867336, 37.303368, 37.215179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.667019, 37.179031, 37.260052>,  <39.333157, 36.971802, 37.334839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667019, 37.179031, 37.260052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081642, 0.452084, 0.888231,
		0.544694, -0.726099, 0.419629,
		0.834651, 0.518074, -0.186967,
		39.917416, 37.334454, 37.203960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708351, 36.911736, 37.969746>,  <39.333157, 36.971802, 37.334839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708351, 36.911736, 37.969746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873749, 37.219631, 37.775211>,  <39.972988, 37.404369, 37.658489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873749, 37.219631, 37.775211>,  <39.708351, 36.911736, 37.969746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873749, 37.219631, 37.775211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017033, 0.540582, 0.841119,
		0.910349, -0.339511, 0.236637,
		0.413490, 0.769743, -0.486335,
		39.997795, 37.450554, 37.629311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188251, 37.139492, 38.429028>,  <39.708351, 36.911736, 37.969746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188251, 37.139492, 38.429028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.155899, 37.459404, 38.191097>,  <40.136486, 37.651352, 38.048340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.155899, 37.459404, 38.191097>,  <40.188251, 37.139492, 38.429028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155899, 37.459404, 38.191097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035546, 0.594083, 0.803618,
		0.996089, 0.086143, -0.019622,
		-0.080884, 0.799778, -0.594822,
		40.131634, 37.699337, 38.012650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665337, 37.537609, 38.669357>,  <40.188251, 37.139492, 38.429028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665337, 37.537609, 38.669357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.407749, 37.766975, 38.466774>,  <40.253197, 37.904594, 38.345226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.407749, 37.766975, 38.466774>,  <40.665337, 37.537609, 38.669357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407749, 37.766975, 38.466774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163648, 0.543425, 0.823352,
		0.747343, 0.613095, -0.256112,
		-0.643971, 0.573414, -0.506457,
		40.214558, 37.938999, 38.314838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911091, 38.195240, 38.712402>,  <40.665337, 37.537609, 38.669357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911091, 38.195240, 38.712402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528942, 38.266991, 38.618519>,  <40.299652, 38.310040, 38.562191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528942, 38.266991, 38.618519>,  <40.911091, 38.195240, 38.712402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528942, 38.266991, 38.618519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004953, 0.804151, 0.594404,
		0.295359, 0.566715, -0.769153,
		-0.955374, 0.179372, -0.234707,
		40.242329, 38.320801, 38.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776180, 38.900463, 38.596695>,  <40.911091, 38.195240, 38.712402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776180, 38.900463, 38.596695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.418186, 38.750778, 38.693825>,  <40.203388, 38.660969, 38.752102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.418186, 38.750778, 38.693825>,  <40.776180, 38.900463, 38.596695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418186, 38.750778, 38.693825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210055, 0.833737, 0.510645,
		-0.393543, 0.406013, -0.824789,
		-0.894986, -0.374212, 0.242827,
		40.149689, 38.638515, 38.766674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378147, 39.474541, 38.716064>,  <40.776180, 38.900463, 38.596695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378147, 39.474541, 38.716064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.172024, 39.168758, 38.871014>,  <40.048347, 38.985287, 38.963982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.172024, 39.168758, 38.871014>,  <40.378147, 39.474541, 38.716064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172024, 39.168758, 38.871014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384617, 0.610227, 0.692599,
		-0.765848, 0.207914, -0.608480,
		-0.515312, -0.764457, 0.387374,
		40.017429, 38.939423, 38.987225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776897, 39.777157, 38.921143>,  <40.378147, 39.474541, 38.716064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776897, 39.777157, 38.921143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.771412, 39.437187, 39.131832>,  <39.768120, 39.233204, 39.258244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.771412, 39.437187, 39.131832>,  <39.776897, 39.777157, 38.921143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771412, 39.437187, 39.131832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268230, 0.510588, 0.816917,
		-0.963257, -0.130082, -0.234976,
		-0.013709, -0.849929, 0.526720,
		39.767300, 39.182209, 39.289848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099258, 39.603642, 39.087704>,  <39.776897, 39.777157, 38.921143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099258, 39.603642, 39.087704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320274, 39.417149, 39.364056>,  <39.452885, 39.305252, 39.529869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320274, 39.417149, 39.364056>,  <39.099258, 39.603642, 39.087704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320274, 39.417149, 39.364056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430409, 0.550227, 0.715541,
		-0.713754, -0.692730, 0.103352,
		0.552543, -0.466236, 0.690884,
		39.486038, 39.277279, 39.571320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585896, 39.467564, 39.628914>,  <39.099258, 39.603642, 39.087704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585896, 39.467564, 39.628914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943775, 39.428867, 39.803341>,  <39.158504, 39.405647, 39.907997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943775, 39.428867, 39.803341>,  <38.585896, 39.467564, 39.628914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943775, 39.428867, 39.803341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377241, 0.359078, 0.853670,
		-0.239168, -0.928280, 0.284771,
		0.894700, -0.096743, 0.436065,
		39.212185, 39.399845, 39.934162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454960, 39.236557, 40.253376>,  <38.585896, 39.467564, 39.628914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454960, 39.236557, 40.253376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810478, 39.419849, 40.256561>,  <39.023788, 39.529823, 40.258472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810478, 39.419849, 40.256561>,  <38.454960, 39.236557, 40.253376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810478, 39.419849, 40.256561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264753, 0.499195, 0.825052,
		0.374089, -0.735412, 0.565001,
		0.888799, 0.458229, 0.007959,
		39.077118, 39.557320, 40.258949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820263, 39.010250, 40.965302>,  <38.454960, 39.236557, 40.253376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820263, 39.010250, 40.965302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961399, 39.360836, 40.834267>,  <39.046082, 39.571186, 40.755646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961399, 39.360836, 40.834267>,  <38.820263, 39.010250, 40.965302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961399, 39.360836, 40.834267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353678, 0.449060, 0.820522,
		0.866265, -0.173654, 0.468433,
		0.352841, 0.876464, -0.327588,
		39.067253, 39.623775, 40.735989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138107, 39.332413, 41.527058>,  <38.820263, 39.010250, 40.965302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138107, 39.332413, 41.527058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.071476, 39.649128, 41.292000>,  <39.031498, 39.839157, 41.150967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.071476, 39.649128, 41.292000>,  <39.138107, 39.332413, 41.527058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071476, 39.649128, 41.292000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336462, 0.514553, 0.788688,
		0.926846, 0.329099, 0.180692,
		-0.166581, 0.791789, -0.587641,
		39.021503, 39.886665, 41.115707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349644, 39.910332, 41.867695>,  <39.138107, 39.332413, 41.527058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349644, 39.910332, 41.867695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111721, 40.083965, 41.597057>,  <38.968967, 40.188145, 41.434673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111721, 40.083965, 41.597057>,  <39.349644, 39.910332, 41.867695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111721, 40.083965, 41.597057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336320, 0.630091, 0.699910,
		0.730133, 0.643863, -0.228792,
		-0.594806, 0.434080, -0.676595,
		38.933281, 40.214188, 41.394077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435482, 40.687065, 41.947296>,  <39.349644, 39.910332, 41.867695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435482, 40.687065, 41.947296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.078014, 40.645290, 41.772736>,  <38.863533, 40.620224, 41.667999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.078014, 40.645290, 41.772736>,  <39.435482, 40.687065, 41.947296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078014, 40.645290, 41.772736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425869, 0.503810, 0.751539,
		0.141375, 0.857478, -0.494716,
		-0.893672, -0.104435, -0.436399,
		38.809914, 40.613960, 41.641815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142616, 41.328766, 42.047447>,  <39.435482, 40.687065, 41.947296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142616, 41.328766, 42.047447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830307, 41.088890, 41.977276>,  <38.642921, 40.944965, 41.935173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830307, 41.088890, 41.977276>,  <39.142616, 41.328766, 42.047447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830307, 41.088890, 41.977276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536881, 0.500276, 0.679325,
		-0.319623, 0.624578, -0.712561,
		-0.780769, -0.599689, -0.175424,
		38.596077, 40.908985, 41.924648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576324, 41.829655, 42.148724>,  <39.142616, 41.328766, 42.047447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576324, 41.829655, 42.148724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404362, 41.468552, 42.143040>,  <38.301186, 41.251888, 42.139629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404362, 41.468552, 42.143040>,  <38.576324, 41.829655, 42.148724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404362, 41.468552, 42.143040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746120, 0.346363, 0.568627,
		-0.508414, 0.255057, -0.822473,
		-0.429907, -0.902761, -0.014208,
		38.275391, 41.197723, 42.138779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.760872, 41.928852, 41.922634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784191, 41.568104, 42.093857>,  <37.798183, 41.351654, 42.196590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784191, 41.568104, 42.093857>,  <37.760872, 41.928852, 41.922634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784191, 41.568104, 42.093857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754490, 0.240975, 0.610472,
		-0.653717, -0.358552, -0.666404,
		0.058300, -0.901871, 0.428054,
		37.801682, 41.297543, 42.222275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122746, 41.834000, 42.003559>,  <37.760872, 41.928852, 41.922634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122746, 41.834000, 42.003559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309155, 41.587639, 42.257645>,  <37.421001, 41.439823, 42.410095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309155, 41.587639, 42.257645>,  <37.122746, 41.834000, 42.003559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309155, 41.587639, 42.257645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682138, 0.207124, 0.701275,
		-0.563482, -0.760111, -0.323604,
		0.466021, -0.615898, 0.635212,
		37.448959, 41.402870, 42.448208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625172, 41.383266, 42.295208>,  <37.122746, 41.834000, 42.003559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625172, 41.383266, 42.295208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931358, 41.420605, 42.549877>,  <37.115070, 41.443008, 42.702679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931358, 41.420605, 42.549877>,  <36.625172, 41.383266, 42.295208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931358, 41.420605, 42.549877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643451, 0.102122, 0.758645,
		0.005794, -0.990383, 0.138231,
		0.765466, 0.093340, 0.636671,
		37.160999, 41.448608, 42.740879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304237, 40.888618, 42.842247>,  <36.625172, 41.383266, 42.295208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304237, 40.888618, 42.842247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592987, 41.120640, 42.993210>,  <36.766239, 41.259853, 43.083786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592987, 41.120640, 42.993210>,  <36.304237, 40.888618, 42.842247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592987, 41.120640, 42.993210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591750, 0.234652, 0.771213,
		0.358787, -0.780048, 0.512637,
		0.721875, 0.580055, 0.377404,
		36.809551, 41.294655, 43.106430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442814, 40.575562, 43.550850>,  <36.304237, 40.888618, 42.842247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442814, 40.575562, 43.550850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522160, 40.966091, 43.516335>,  <36.569767, 41.200409, 43.495625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522160, 40.966091, 43.516335>,  <36.442814, 40.575562, 43.550850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522160, 40.966091, 43.516335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485091, 0.174293, 0.856918,
		0.851668, -0.128124, 0.508179,
		0.198363, 0.976323, -0.086288,
		36.581669, 41.258987, 43.490448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629299, 40.737339, 44.244133>,  <36.442814, 40.575562, 43.550850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629299, 40.737339, 44.244133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556267, 41.090397, 44.070881>,  <36.512447, 41.302231, 43.966930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556267, 41.090397, 44.070881>,  <36.629299, 40.737339, 44.244133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556267, 41.090397, 44.070881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423618, 0.326926, 0.844788,
		0.887249, 0.337728, 0.314212,
		-0.182584, 0.882643, -0.433132,
		36.501492, 41.355190, 43.940941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954288, 41.227539, 44.629642>,  <36.629299, 40.737339, 44.244133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954288, 41.227539, 44.629642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697403, 41.452019, 44.420788>,  <36.543274, 41.586704, 44.295475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697403, 41.452019, 44.420788>,  <36.954288, 41.227539, 44.629642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697403, 41.452019, 44.420788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156569, 0.570770, 0.806044,
		0.750367, 0.599400, -0.278690,
		-0.642211, 0.561195, -0.522135,
		36.504738, 41.620377, 44.264149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022301, 41.913395, 44.862186>,  <36.954288, 41.227539, 44.629642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022301, 41.913395, 44.862186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674278, 41.942135, 44.667110>,  <36.465466, 41.959377, 44.550064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674278, 41.942135, 44.667110>,  <37.022301, 41.913395, 44.862186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674278, 41.942135, 44.667110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312995, 0.683802, 0.659128,
		0.380839, 0.726122, -0.572458,
		-0.870055, 0.071845, -0.487691,
		36.413261, 41.963688, 44.520802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846123, 42.619659, 44.764610>,  <37.022301, 41.913395, 44.862186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846123, 42.619659, 44.764610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490898, 42.435772, 44.764210>,  <36.277763, 42.325439, 44.763969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490898, 42.435772, 44.764210>,  <36.846123, 42.619659, 44.764610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490898, 42.435772, 44.764210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349939, 0.674575, 0.649993,
		-0.298143, 0.577583, -0.759940,
		-0.888062, -0.459723, -0.000999,
		36.224480, 42.297855, 44.763908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235325, 43.134377, 44.757458>,  <36.846123, 42.619659, 44.764610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235325, 43.134377, 44.757458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048294, 42.798759, 44.868729>,  <35.936073, 42.597389, 44.935490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048294, 42.798759, 44.868729>,  <36.235325, 43.134377, 44.757458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048294, 42.798759, 44.868729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429140, 0.490588, 0.758395,
		-0.772792, 0.235235, -0.589455,
		-0.467580, -0.839040, 0.278174,
		35.908020, 42.547047, 44.952183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534050, 43.322186, 44.898666>,  <36.235325, 43.134377, 44.757458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534050, 43.322186, 44.898666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612537, 42.983307, 45.096153>,  <35.659630, 42.779980, 45.214645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612537, 42.983307, 45.096153>,  <35.534050, 43.322186, 44.898666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612537, 42.983307, 45.096153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364674, 0.404341, 0.838762,
		-0.910225, -0.344630, -0.229610,
		0.196222, -0.847195, 0.493719,
		35.671406, 42.729149, 45.244270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979847, 43.323105, 45.419296>,  <35.534050, 43.322186, 44.898666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979847, 43.323105, 45.419296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228100, 43.039448, 45.553116>,  <35.377052, 42.869251, 45.633408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228100, 43.039448, 45.553116>,  <34.979847, 43.323105, 45.419296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228100, 43.039448, 45.553116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320506, 0.159962, 0.933642,
		-0.715604, -0.686677, -0.128007,
		0.620634, -0.709145, 0.334554,
		35.414291, 42.826706, 45.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610619, 42.840244, 45.915314>,  <34.979847, 43.323105, 45.419296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610619, 42.840244, 45.915314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002007, 42.831841, 45.997437>,  <35.236839, 42.826797, 46.046711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002007, 42.831841, 45.997437>,  <34.610619, 42.840244, 45.915314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002007, 42.831841, 45.997437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201539, 0.116862, 0.972484,
		-0.044425, -0.992926, 0.110112,
		0.978473, -0.021011, 0.205305,
		35.295547, 42.825539, 46.059029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671604, 42.488453, 46.541164>,  <34.610619, 42.840244, 45.915314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671604, 42.488453, 46.541164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025555, 42.674061, 46.524784>,  <35.237926, 42.785423, 46.514957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025555, 42.674061, 46.524784>,  <34.671604, 42.488453, 46.541164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025555, 42.674061, 46.524784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082329, 0.242312, 0.966699,
		0.458487, -0.852041, 0.252619,
		0.884880, 0.464017, -0.040949,
		35.291019, 42.813267, 46.512501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940529, 42.209934, 47.103790>,  <34.671604, 42.488453, 46.541164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940529, 42.209934, 47.103790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165779, 42.533966, 47.038483>,  <35.300930, 42.728386, 46.999298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165779, 42.533966, 47.038483>,  <34.940529, 42.209934, 47.103790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165779, 42.533966, 47.038483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114542, 0.272178, 0.955405,
		0.818396, -0.519310, 0.246059,
		0.563123, 0.810084, -0.163267,
		35.334717, 42.776993, 46.989502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334175, 42.336838, 47.699623>,  <34.940529, 42.209934, 47.103790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334175, 42.336838, 47.699623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339401, 42.696457, 47.524559>,  <35.342537, 42.912228, 47.419521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339401, 42.696457, 47.524559>,  <35.334175, 42.336838, 47.699623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339401, 42.696457, 47.524559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119329, 0.435972, 0.892014,
		0.992769, 0.040568, 0.112980,
		0.013069, 0.899046, -0.437660,
		35.343323, 42.966171, 47.393261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776901, 42.720528, 48.078022>,  <35.334175, 42.336838, 47.699623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776901, 42.720528, 48.078022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539505, 42.978512, 47.885441>,  <35.397068, 43.133301, 47.769894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539505, 42.978512, 47.885441>,  <35.776901, 42.720528, 48.078022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539505, 42.978512, 47.885441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266466, 0.406997, 0.873699,
		0.759450, 0.646822, -0.069689,
		-0.593491, 0.644961, -0.481450,
		35.361458, 43.172001, 47.741005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899521, 43.395092, 48.430313>,  <35.776901, 42.720528, 48.078022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899521, 43.395092, 48.430313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568218, 43.450459, 48.213123>,  <35.369434, 43.483681, 48.082809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568218, 43.450459, 48.213123>,  <35.899521, 43.395092, 48.430313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568218, 43.450459, 48.213123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420929, 0.485918, 0.765965,
		0.369867, 0.862974, -0.344202,
		-0.828261, 0.138421, -0.542976,
		35.319740, 43.491985, 48.050232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579224, 44.141575, 48.507023>,  <35.899521, 43.395092, 48.430313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579224, 44.141575, 48.507023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270477, 43.903465, 48.417694>,  <35.085232, 43.760597, 48.364098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270477, 43.903465, 48.417694>,  <35.579224, 44.141575, 48.507023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270477, 43.903465, 48.417694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301213, 0.033046, 0.952984,
		-0.559910, 0.802841, -0.204813,
		-0.771863, -0.595277, -0.223323,
		35.038918, 43.724880, 48.350697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123787, 44.545776, 48.746193>,  <35.579224, 44.141575, 48.507023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123787, 44.545776, 48.746193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.941547, 44.191559, 48.709888>,  <34.832203, 43.979027, 48.688107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.941547, 44.191559, 48.709888>,  <35.123787, 44.545776, 48.746193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941547, 44.191559, 48.709888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412543, 0.119695, 0.903040,
		-0.788821, 0.448866, -0.419859,
		-0.455598, -0.885547, -0.090759,
		34.804867, 43.925896, 48.682659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397171, 44.624588, 48.952961>,  <35.123787, 44.545776, 48.746193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397171, 44.624588, 48.952961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465717, 44.232105, 48.988449>,  <34.506847, 43.996616, 49.009743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465717, 44.232105, 48.988449>,  <34.397171, 44.624588, 48.952961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465717, 44.232105, 48.988449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285246, 0.036779, 0.957748,
		-0.943010, -0.189435, -0.273582,
		0.171370, -0.981204, 0.088719,
		34.517128, 43.937744, 49.015064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726505, 44.293800, 49.009396>,  <34.397171, 44.624588, 48.952961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726505, 44.293800, 49.009396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017941, 44.084873, 49.186638>,  <34.192802, 43.959518, 49.292984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017941, 44.084873, 49.186638>,  <33.726505, 44.293800, 49.009396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017941, 44.084873, 49.186638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450471, 0.121929, 0.884426,
		-0.515977, -0.843990, -0.146452,
		0.728590, -0.522316, 0.443105,
		34.236519, 43.928177, 49.319569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495647, 43.656769, 49.289757>,  <33.726505, 44.293800, 49.009396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495647, 43.656769, 49.289757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817120, 43.786228, 49.489494>,  <34.010002, 43.863903, 49.609337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817120, 43.786228, 49.489494>,  <33.495647, 43.656769, 49.289757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817120, 43.786228, 49.489494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467385, -0.176039, 0.866349,
		0.368298, -0.929656, 0.009789,
		0.803684, 0.323650, 0.499342,
		34.058224, 43.883324, 49.639297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107639, 43.655384, 50.011002>,  <33.495647, 43.656769, 49.289757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107639, 43.655384, 50.011002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.824326, 43.419262, 50.165855>,  <32.654339, 43.277588, 50.258766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.824326, 43.419262, 50.165855>,  <33.107639, 43.655384, 50.011002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824326, 43.419262, 50.165855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054085, -0.592165, -0.804000,
		0.703854, -0.548521, 0.451347,
		-0.708283, -0.590309, 0.387131,
		32.611839, 43.242168, 50.281994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244389, 42.873352, 49.838371>,  <33.107639, 43.655384, 50.011002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244389, 42.873352, 49.838371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849953, 42.920906, 49.884838>,  <32.613293, 42.949440, 49.912720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849953, 42.920906, 49.884838>,  <33.244389, 42.873352, 49.838371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849953, 42.920906, 49.884838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159444, -0.479018, -0.863203,
		-0.046974, -0.869717, 0.491310,
		-0.986089, 0.118884, 0.116170,
		32.554127, 42.956570, 49.919689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916630, 42.208416, 49.635754>,  <33.244389, 42.873352, 49.838371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916630, 42.208416, 49.635754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653824, 42.508556, 49.606617>,  <32.496140, 42.688641, 49.589134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653824, 42.508556, 49.606617>,  <32.916630, 42.208416, 49.635754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653824, 42.508556, 49.606617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374521, -0.408732, -0.832269,
		-0.654270, -0.519529, 0.549564,
		-0.657012, 0.750352, -0.072846,
		32.456718, 42.733662, 49.584763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365555, 41.865231, 49.363792>,  <32.916630, 42.208416, 49.635754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365555, 41.865231, 49.363792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272682, 42.245724, 49.282555>,  <32.216957, 42.474018, 49.233810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272682, 42.245724, 49.282555>,  <32.365555, 41.865231, 49.363792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272682, 42.245724, 49.282555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273454, -0.264219, -0.924885,
		-0.933442, -0.159203, 0.321465,
		-0.232182, 0.951232, -0.203098,
		32.203026, 42.531094, 49.221626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919861, 41.783508, 48.917015>,  <32.365555, 41.865231, 49.363792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919861, 41.783508, 48.917015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.024166, 42.161560, 48.838295>,  <32.086750, 42.388390, 48.791061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.024166, 42.161560, 48.838295>,  <31.919861, 41.783508, 48.917015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024166, 42.161560, 48.838295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053065, -0.217577, -0.974599,
		-0.963943, 0.243698, -0.106890,
		0.260764, 0.945130, -0.196800,
		32.102394, 42.445099, 48.779255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390615, 42.119072, 48.515419>,  <31.919861, 41.783508, 48.917015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390615, 42.119072, 48.515419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725185, 42.325317, 48.441078>,  <31.925926, 42.449066, 48.396473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725185, 42.325317, 48.441078>,  <31.390615, 42.119072, 48.515419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725185, 42.325317, 48.441078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107269, -0.178531, -0.978070,
		-0.537485, 0.838016, -0.094018,
		0.836423, 0.515613, -0.185851,
		31.976112, 42.480000, 48.385323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175360, 42.355293, 47.859753>,  <31.390615, 42.119072, 48.515419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175360, 42.355293, 47.859753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566591, 42.430588, 47.895367>,  <31.801331, 42.475765, 47.916733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566591, 42.430588, 47.895367>,  <31.175360, 42.355293, 47.859753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566591, 42.430588, 47.895367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099457, -0.046663, -0.993947,
		-0.182944, 0.981014, -0.064361,
		0.978080, 0.188238, 0.089032,
		31.860016, 42.487061, 47.922077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296816, 42.774128, 47.220375>,  <31.175360, 42.355293, 47.859753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296816, 42.774128, 47.220375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647667, 42.643852, 47.361553>,  <31.858177, 42.565689, 47.446262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647667, 42.643852, 47.361553>,  <31.296816, 42.774128, 47.220375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647667, 42.643852, 47.361553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299297, -0.204052, -0.932086,
		0.375587, 0.923197, -0.081503,
		0.877129, -0.325686, 0.352950,
		31.910805, 42.546146, 47.467438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862553, 43.120926, 46.821861>,  <31.296816, 42.774128, 47.220375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862553, 43.120926, 46.821861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.020039, 42.786049, 46.973698>,  <32.114529, 42.585121, 47.064800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.020039, 42.786049, 46.973698>,  <31.862553, 43.120926, 46.821861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020039, 42.786049, 46.973698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382865, -0.226073, -0.895715,
		0.835705, 0.497989, 0.231525,
		0.393715, -0.837197, 0.379593,
		32.138153, 42.534889, 47.087574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509212, 43.121487, 46.477211>,  <31.862553, 43.120926, 46.821861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509212, 43.121487, 46.477211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400124, 42.755989, 46.597672>,  <32.334671, 42.536690, 46.669949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400124, 42.755989, 46.597672>,  <32.509212, 43.121487, 46.477211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400124, 42.755989, 46.597672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361206, -0.387362, -0.848222,
		0.891713, -0.122554, 0.435693,
		-0.272724, -0.913745, 0.301149,
		32.318306, 42.481865, 46.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052120, 42.768158, 46.522060>,  <32.509212, 43.121487, 46.477211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052120, 42.768158, 46.522060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790459, 42.470615, 46.467285>,  <32.633461, 42.292088, 46.434422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790459, 42.470615, 46.467285>,  <33.052120, 42.768158, 46.522060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790459, 42.470615, 46.467285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651573, -0.462277, -0.601458,
		0.384096, -0.482675, 0.787080,
		-0.654158, -0.743858, -0.136939,
		32.594212, 42.247459, 46.426205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441837, 42.125057, 46.561340>,  <33.052120, 42.768158, 46.522060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441837, 42.125057, 46.561340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105694, 42.082745, 46.348698>,  <32.904007, 42.057358, 46.221111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105694, 42.082745, 46.348698>,  <33.441837, 42.125057, 46.561340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105694, 42.082745, 46.348698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518539, -0.442503, -0.731647,
		-0.157843, -0.890506, 0.426714,
		-0.840358, -0.105782, -0.531609,
		32.853588, 42.051010, 46.189217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489910, 41.559521, 46.189827>,  <33.441837, 42.125057, 46.561340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489910, 41.559521, 46.189827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176041, 41.694939, 45.982105>,  <32.987720, 41.776188, 45.857471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176041, 41.694939, 45.982105>,  <33.489910, 41.559521, 46.189827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176041, 41.694939, 45.982105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443736, -0.278230, -0.851872,
		-0.432881, -0.898875, 0.068096,
		-0.784673, 0.338543, -0.519304,
		32.940639, 41.796501, 45.826313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448387, 41.143616, 45.536625>,  <33.489910, 41.559521, 46.189827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448387, 41.143616, 45.536625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250286, 41.473850, 45.428459>,  <33.131424, 41.671993, 45.363560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250286, 41.473850, 45.428459>,  <33.448387, 41.143616, 45.536625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250286, 41.473850, 45.428459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300297, -0.129390, -0.945029,
		-0.815195, -0.549236, -0.183841,
		-0.495257, 0.825590, -0.270412,
		33.101707, 41.721527, 45.347336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023762, 40.926186, 45.009445>,  <33.448387, 41.143616, 45.536625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023762, 40.926186, 45.009445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.070663, 41.322964, 44.990261>,  <33.098804, 41.561031, 44.978752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.070663, 41.322964, 44.990261>,  <33.023762, 40.926186, 45.009445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070663, 41.322964, 44.990261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387666, -0.090177, -0.917378,
		-0.914312, 0.088973, -0.395117,
		0.117253, 0.991943, -0.047958,
		33.105839, 41.620548, 44.975872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795982, 41.088028, 44.356823>,  <33.023762, 40.926186, 45.009445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795982, 41.088028, 44.356823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044121, 41.378624, 44.475063>,  <33.193005, 41.552982, 44.546009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044121, 41.378624, 44.475063>,  <32.795982, 41.088028, 44.356823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044121, 41.378624, 44.475063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391038, 0.040225, -0.919495,
		-0.679894, 0.685999, -0.259132,
		0.620349, 0.726490, 0.295601,
		33.230225, 41.596569, 44.563744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680683, 41.670204, 43.766777>,  <32.795982, 41.088028, 44.356823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680683, 41.670204, 43.766777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013313, 41.779957, 43.959938>,  <33.212891, 41.845810, 44.075832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013313, 41.779957, 43.959938>,  <32.680683, 41.670204, 43.766777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013313, 41.779957, 43.959938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486376, 0.060049, -0.871684,
		-0.268171, 0.959744, -0.083517,
		0.831578, 0.274381, 0.482900,
		33.262787, 41.862270, 44.104809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880669, 42.325264, 43.463207>,  <32.680683, 41.670204, 43.766777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880669, 42.325264, 43.463207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207668, 42.157578, 43.621174>,  <33.403866, 42.056965, 43.715954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207668, 42.157578, 43.621174>,  <32.880669, 42.325264, 43.463207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207668, 42.157578, 43.621174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366722, -0.149835, -0.918186,
		0.444090, 0.895437, 0.031246,
		0.817495, -0.419216, 0.394916,
		33.452915, 42.031815, 43.739647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461056, 42.589371, 43.063801>,  <32.880669, 42.325264, 43.463207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461056, 42.589371, 43.063801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619068, 42.278450, 43.259655>,  <33.713875, 42.091896, 43.377167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619068, 42.278450, 43.259655>,  <33.461056, 42.589371, 43.063801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619068, 42.278450, 43.259655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456877, -0.296174, -0.838775,
		0.797003, 0.555048, 0.238135,
		0.395031, -0.777305, 0.489640,
		33.737579, 42.045258, 43.406548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115337, 42.485744, 42.812267>,  <33.461056, 42.589371, 43.063801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115337, 42.485744, 42.812267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054386, 42.119175, 42.960297>,  <34.017815, 41.899235, 43.049114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054386, 42.119175, 42.960297>,  <34.115337, 42.485744, 42.812267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054386, 42.119175, 42.960297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382059, -0.399954, -0.833107,
		0.911488, 0.014438, 0.411073,
		-0.152382, -0.916422, 0.370069,
		34.008671, 41.844250, 43.071316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787914, 42.097645, 42.807407>,  <34.115337, 42.485744, 42.812267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787914, 42.097645, 42.807407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530148, 41.791862, 42.814632>,  <34.375488, 41.608391, 42.818970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530148, 41.791862, 42.814632>,  <34.787914, 42.097645, 42.807407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530148, 41.791862, 42.814632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510797, -0.447931, -0.733788,
		0.569042, -0.463639, 0.679139,
		-0.644420, -0.764458, 0.018066,
		34.336823, 41.562527, 42.820053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.323677, 35.457573, 26.068922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940247, 35.423355, 25.960245>,  <41.710190, 35.402824, 25.895039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940247, 35.423355, 25.960245>,  <42.323677, 35.457573, 26.068922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940247, 35.423355, 25.960245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179245, -0.560143, 0.808771,
		-0.221371, 0.823968, 0.521606,
		-0.958575, -0.085543, -0.271691,
		41.652676, 35.397694, 25.878738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920769, 35.543510, 26.625566>,  <42.323677, 35.457573, 26.068922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920769, 35.543510, 26.625566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733917, 35.315472, 26.355223>,  <41.621807, 35.178650, 26.193016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733917, 35.315472, 26.355223>,  <41.920769, 35.543510, 26.625566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733917, 35.315472, 26.355223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359864, -0.575624, 0.734272,
		-0.807646, 0.586213, 0.063731,
		-0.467125, -0.570098, -0.675857,
		41.593781, 35.144444, 26.152466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232800, 35.523796, 26.856373>,  <41.920769, 35.543510, 26.625566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232800, 35.523796, 26.856373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289303, 35.205605, 26.620659>,  <41.323204, 35.014690, 26.479231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289303, 35.205605, 26.620659>,  <41.232800, 35.523796, 26.856373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289303, 35.205605, 26.620659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390644, -0.591740, 0.705153,
		-0.909640, 0.130595, -0.394336,
		0.141256, -0.795480, -0.589287,
		41.331680, 34.966961, 26.443872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776867, 35.080090, 27.132551>,  <41.232800, 35.523796, 26.856373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776867, 35.080090, 27.132551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001614, 34.841511, 26.903273>,  <41.136459, 34.698364, 26.765705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001614, 34.841511, 26.903273>,  <40.776867, 35.080090, 27.132551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001614, 34.841511, 26.903273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089591, -0.732712, 0.674616,
		-0.822364, -0.327689, -0.465121,
		0.561863, -0.596451, -0.573198,
		41.170174, 34.662575, 26.731314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403698, 34.493542, 26.852814>,  <40.776867, 35.080090, 27.132551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403698, 34.493542, 26.852814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789337, 34.392891, 26.886755>,  <41.020721, 34.332500, 26.907120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789337, 34.392891, 26.886755>,  <40.403698, 34.493542, 26.852814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789337, 34.392891, 26.886755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221817, -0.587416, 0.778293,
		-0.145995, -0.769172, -0.622141,
		0.964097, -0.251628, 0.084855,
		41.078568, 34.317402, 26.912210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421741, 33.871758, 27.077091>,  <40.403698, 34.493542, 26.852814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421741, 33.871758, 27.077091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789303, 33.998138, 27.171564>,  <41.009842, 34.073967, 27.228249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789303, 33.998138, 27.171564>,  <40.421741, 33.871758, 27.077091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789303, 33.998138, 27.171564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120985, -0.344145, 0.931089,
		0.375466, -0.884158, -0.278011,
		0.918906, 0.315957, 0.236184,
		41.064976, 34.092926, 27.242420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753326, 33.251648, 27.460747>,  <40.421741, 33.871758, 27.077091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753326, 33.251648, 27.460747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.931240, 33.601521, 27.537804>,  <41.037987, 33.811443, 27.584038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.931240, 33.601521, 27.537804>,  <40.753326, 33.251648, 27.460747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931240, 33.601521, 27.537804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001301, -0.214456, 0.976733,
		0.895639, -0.434681, -0.094247,
		0.444779, 0.874678, 0.192641,
		41.064674, 33.863922, 27.595596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074463, 33.023045, 27.952675>,  <40.753326, 33.251648, 27.460747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074463, 33.023045, 27.952675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.117531, 33.415657, 28.015926>,  <41.143372, 33.651226, 28.053877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.117531, 33.415657, 28.015926>,  <41.074463, 33.023045, 27.952675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117531, 33.415657, 28.015926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007551, -0.158239, 0.987372,
		0.994158, -0.107506, -0.009627,
		0.107672, 0.981531, 0.158126,
		41.149834, 33.710117, 28.063364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596920, 33.118290, 28.485027>,  <41.074463, 33.023045, 27.952675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596920, 33.118290, 28.485027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397972, 33.464169, 28.513071>,  <41.278603, 33.671696, 28.529898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397972, 33.464169, 28.513071>,  <41.596920, 33.118290, 28.485027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397972, 33.464169, 28.513071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200087, 0.035700, 0.979127,
		0.844148, 0.501019, -0.190771,
		-0.497372, 0.864700, 0.070112,
		41.248760, 33.723579, 28.534105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043354, 33.689053, 28.888914>,  <41.596920, 33.118290, 28.485027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043354, 33.689053, 28.888914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653172, 33.777103, 28.886677>,  <41.419064, 33.829933, 28.885334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653172, 33.777103, 28.886677>,  <42.043354, 33.689053, 28.888914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653172, 33.777103, 28.886677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049849, 0.245502, 0.968113,
		0.214480, 0.944073, -0.250449,
		-0.975456, 0.220126, -0.005594,
		41.360535, 33.843140, 28.884998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025455, 34.214630, 29.434818>,  <42.043354, 33.689053, 28.888914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025455, 34.214630, 29.434818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.636936, 34.132351, 29.387030>,  <41.403824, 34.082985, 29.358356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.636936, 34.132351, 29.387030>,  <42.025455, 34.214630, 29.434818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636936, 34.132351, 29.387030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173861, 0.271100, 0.946719,
		-0.162348, 0.940316, -0.299081,
		-0.971296, -0.205697, -0.119472,
		41.345547, 34.070641, 29.351189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747707, 34.701492, 29.861498>,  <42.025455, 34.214630, 29.434818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747707, 34.701492, 29.861498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505390, 34.388290, 29.805038>,  <41.360001, 34.200371, 29.771162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505390, 34.388290, 29.805038>,  <41.747707, 34.701492, 29.861498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505390, 34.388290, 29.805038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292935, 0.054560, 0.954574,
		-0.739732, 0.619622, -0.262420,
		-0.605793, -0.783001, -0.141150,
		41.323650, 34.153389, 29.762693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178101, 34.900650, 30.242804>,  <41.747707, 34.701492, 29.861498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178101, 34.900650, 30.242804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154289, 34.504086, 30.196234>,  <41.140003, 34.266148, 30.168293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154289, 34.504086, 30.196234>,  <41.178101, 34.900650, 30.242804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154289, 34.504086, 30.196234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275357, -0.095795, 0.956557,
		-0.959497, 0.089003, -0.267290,
		-0.059531, -0.991414, -0.116422,
		41.136429, 34.206661, 30.161306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567200, 34.653156, 30.529055>,  <41.178101, 34.900650, 30.242804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567200, 34.653156, 30.529055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808189, 34.334461, 30.510195>,  <40.952785, 34.143242, 30.498878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808189, 34.334461, 30.510195>,  <40.567200, 34.653156, 30.529055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808189, 34.334461, 30.510195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383592, -0.340853, 0.858299,
		-0.699913, -0.499020, -0.510980,
		0.602478, -0.796742, -0.047148,
		40.988934, 34.095440, 30.496050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134274, 34.266350, 30.849928>,  <40.567200, 34.653156, 30.529055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134274, 34.266350, 30.849928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485916, 34.076134, 30.862852>,  <40.696899, 33.962006, 30.870607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485916, 34.076134, 30.862852>,  <40.134274, 34.266350, 30.849928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485916, 34.076134, 30.862852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115547, -0.146856, 0.982386,
		-0.462416, -0.867351, -0.184048,
		0.879102, -0.475538, 0.032311,
		40.749645, 33.933472, 30.872545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070164, 33.710793, 31.351925>,  <40.134274, 34.266350, 30.849928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070164, 33.710793, 31.351925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463665, 33.778336, 31.327522>,  <40.699764, 33.818863, 31.312880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463665, 33.778336, 31.327522>,  <40.070164, 33.710793, 31.351925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463665, 33.778336, 31.327522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044509, 0.099828, 0.994009,
		0.173942, -0.980571, 0.090690,
		0.983749, 0.168863, -0.061009,
		40.758789, 33.828995, 31.309219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344013, 33.386505, 31.930603>,  <40.070164, 33.710793, 31.351925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344013, 33.386505, 31.930603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657833, 33.615692, 31.835793>,  <40.846127, 33.753204, 31.778906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657833, 33.615692, 31.835793>,  <40.344013, 33.386505, 31.930603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657833, 33.615692, 31.835793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016344, 0.363021, 0.931637,
		0.619847, -0.734792, 0.275445,
		0.784552, 0.572971, -0.237027,
		40.893200, 33.787582, 31.764685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081547, 33.213425, 32.338547>,  <40.344013, 33.386505, 31.930603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081547, 33.213425, 32.338547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.079945, 33.592201, 32.209988>,  <41.078983, 33.819466, 32.132854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.079945, 33.592201, 32.209988>,  <41.081547, 33.213425, 32.338547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079945, 33.592201, 32.209988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063427, 0.320991, 0.944956,
		0.997979, -0.016598, -0.061348,
		-0.004008, 0.946937, -0.321394,
		41.078743, 33.876282, 32.113571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739147, 33.492340, 32.655998>,  <41.081547, 33.213425, 32.338547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739147, 33.492340, 32.655998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467865, 33.775131, 32.575779>,  <41.305096, 33.944805, 32.527649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467865, 33.775131, 32.575779>,  <41.739147, 33.492340, 32.655998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467865, 33.775131, 32.575779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135452, 0.388487, 0.911444,
		0.722277, 0.590986, -0.359236,
		-0.678210, 0.706975, -0.200545,
		41.264400, 33.987225, 32.515614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820316, 33.904251, 33.291809>,  <41.739147, 33.492340, 32.655998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820316, 33.904251, 33.291809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494656, 34.042473, 33.105156>,  <41.299259, 34.125404, 32.993164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494656, 34.042473, 33.105156>,  <41.820316, 33.904251, 33.291809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494656, 34.042473, 33.105156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262716, 0.497456, 0.826752,
		0.517812, 0.795697, -0.314225,
		-0.814156, 0.345550, -0.466631,
		41.250408, 34.146137, 32.965168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790966, 34.503010, 33.564930>,  <41.820316, 33.904251, 33.291809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790966, 34.503010, 33.564930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422791, 34.432869, 33.425186>,  <41.201885, 34.390785, 33.341339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422791, 34.432869, 33.425186>,  <41.790966, 34.503010, 33.564930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422791, 34.432869, 33.425186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383287, 0.229402, 0.894687,
		-0.076743, 0.957406, -0.278360,
		-0.920435, -0.175353, -0.349356,
		41.146660, 34.380264, 33.320377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430279, 34.301380, 34.048504>,  <41.790966, 34.503010, 33.564930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430279, 34.301380, 34.048504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575817, 34.586964, 34.287796>,  <42.663139, 34.758312, 34.431370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575817, 34.586964, 34.287796>,  <42.430279, 34.301380, 34.048504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575817, 34.586964, 34.287796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695655, -0.635382, 0.335193,
		0.619419, 0.294204, -0.727849,
		0.363847, 0.713957, 0.598232,
		42.684971, 34.801151, 34.467266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121784, 33.994751, 34.304489>,  <42.430279, 34.301380, 34.048504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121784, 33.994751, 34.304489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500393, 34.104897, 34.371750>,  <43.727558, 34.170986, 34.412106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500393, 34.104897, 34.371750>,  <43.121784, 33.994751, 34.304489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500393, 34.104897, 34.371750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066619, 0.343125, -0.936924,
		-0.315695, 0.898019, 0.306429,
		0.946519, 0.275369, 0.168148,
		43.784348, 34.187508, 34.422195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104618, 34.691101, 34.181561>,  <43.121784, 33.994751, 34.304489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104618, 34.691101, 34.181561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477161, 34.551277, 34.140823>,  <43.700687, 34.467384, 34.116379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477161, 34.551277, 34.140823>,  <43.104618, 34.691101, 34.181561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477161, 34.551277, 34.140823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020031, 0.328499, -0.944292,
		0.363541, 0.877438, 0.312954,
		0.931363, -0.349557, -0.101847,
		43.756569, 34.446411, 34.110268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408249, 35.106655, 33.727024>,  <43.104618, 34.691101, 34.181561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408249, 35.106655, 33.727024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634933, 34.778732, 33.694157>,  <43.770943, 34.581978, 33.674435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634933, 34.778732, 33.694157>,  <43.408249, 35.106655, 33.727024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634933, 34.778732, 33.694157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078994, 0.153338, -0.985011,
		0.820121, 0.551725, 0.151658,
		0.566711, -0.819809, -0.082173,
		43.804947, 34.532791, 33.669506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900265, 35.259541, 33.290405>,  <43.408249, 35.106655, 33.727024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900265, 35.259541, 33.290405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919682, 34.860161, 33.279514>,  <43.931332, 34.620533, 33.272980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919682, 34.860161, 33.279514>,  <43.900265, 35.259541, 33.290405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919682, 34.860161, 33.279514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179061, 0.035514, -0.983197,
		0.982639, 0.042854, 0.180508,
		0.048545, -0.998450, -0.027224,
		43.934246, 34.560627, 33.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449886, 35.082939, 32.902027>,  <43.900265, 35.259541, 33.290405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449886, 35.082939, 32.902027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242786, 34.741180, 32.884441>,  <44.118526, 34.536125, 32.873890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242786, 34.741180, 32.884441>,  <44.449886, 35.082939, 32.902027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242786, 34.741180, 32.884441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025855, 0.035734, -0.999027,
		0.855139, -0.518387, 0.003589,
		-0.517754, -0.854399, -0.043961,
		44.087460, 34.484859, 32.871254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685844, 34.744587, 32.312004>,  <44.449886, 35.082939, 32.902027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685844, 34.744587, 32.312004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.330082, 34.579605, 32.390823>,  <44.116623, 34.480614, 32.438114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.330082, 34.579605, 32.390823>,  <44.685844, 34.744587, 32.312004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330082, 34.579605, 32.390823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077993, -0.287828, -0.954501,
		0.450409, -0.864311, 0.223828,
		-0.889410, -0.412459, 0.197050,
		44.063259, 34.455868, 32.449940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692429, 34.067940, 32.000134>,  <44.685844, 34.744587, 32.312004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692429, 34.067940, 32.000134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316128, 34.196854, 32.042294>,  <44.090347, 34.274204, 32.067589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316128, 34.196854, 32.042294>,  <44.692429, 34.067940, 32.000134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316128, 34.196854, 32.042294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182822, -0.220296, -0.958147,
		-0.285579, -0.920652, 0.266166,
		-0.940755, 0.322288, 0.105403,
		44.033901, 34.293541, 32.073914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327282, 33.608078, 31.639214>,  <44.692429, 34.067940, 32.000134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327282, 33.608078, 31.639214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071678, 33.912556, 31.683481>,  <43.918316, 34.095242, 31.710041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071678, 33.912556, 31.683481>,  <44.327282, 33.608078, 31.639214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071678, 33.912556, 31.683481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222092, -0.044834, -0.973994,
		-0.736442, -0.646967, 0.197706,
		-0.639006, 0.761199, 0.110668,
		43.879978, 34.140915, 31.716682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742611, 33.376820, 31.336435>,  <44.327282, 33.608078, 31.639214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742611, 33.376820, 31.336435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694969, 33.773972, 31.337458>,  <43.666386, 34.012264, 31.338070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694969, 33.773972, 31.337458>,  <43.742611, 33.376820, 31.336435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694969, 33.773972, 31.337458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297818, -0.033271, -0.954043,
		-0.947164, -0.114388, 0.299660,
		-0.119101, 0.992879, 0.002554,
		43.659237, 34.071835, 31.338224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058914, 33.564987, 30.976923>,  <43.742611, 33.376820, 31.336435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058914, 33.564987, 30.976923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293510, 33.888927, 30.971819>,  <43.434269, 34.083294, 30.968756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293510, 33.888927, 30.971819>,  <43.058914, 33.564987, 30.976923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293510, 33.888927, 30.971819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216818, 0.141797, -0.965859,
		-0.780397, 0.569235, 0.258753,
		0.586491, 0.809855, -0.012763,
		43.469460, 34.131886, 30.967991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696495, 33.978729, 30.534964>,  <43.058914, 33.564987, 30.976923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696495, 33.978729, 30.534964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056408, 34.153210, 30.539434>,  <43.272354, 34.257896, 30.542116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056408, 34.153210, 30.539434>,  <42.696495, 33.978729, 30.534964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056408, 34.153210, 30.539434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137911, 0.308590, -0.941144,
		-0.413976, 0.845282, 0.337820,
		0.899780, 0.436200, 0.011176,
		43.326344, 34.284069, 30.542788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586349, 34.726276, 30.291098>,  <42.696495, 33.978729, 30.534964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586349, 34.726276, 30.291098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967201, 34.614761, 30.240948>,  <43.195713, 34.547852, 30.210857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967201, 34.614761, 30.240948>,  <42.586349, 34.726276, 30.291098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967201, 34.614761, 30.240948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035768, 0.508934, -0.860062,
		0.303583, 0.814409, 0.494545,
		0.952133, -0.278790, -0.125374,
		43.252842, 34.531124, 30.203335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034153, 35.230556, 30.188213>,  <42.586349, 34.726276, 30.291098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034153, 35.230556, 30.188213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257816, 34.943871, 30.021524>,  <43.392014, 34.771858, 29.921511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257816, 34.943871, 30.021524>,  <43.034153, 35.230556, 30.188213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257816, 34.943871, 30.021524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087073, 0.550636, -0.830191,
		0.824474, 0.427926, 0.370301,
		0.559162, -0.716714, -0.416724,
		43.425564, 34.728855, 29.896507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647549, 35.495369, 29.940006>,  <43.034153, 35.230556, 30.188213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647549, 35.495369, 29.940006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.584408, 35.165661, 29.722507>,  <43.546524, 34.967834, 29.592009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.584408, 35.165661, 29.722507>,  <43.647549, 35.495369, 29.940006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584408, 35.165661, 29.722507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312357, 0.480694, -0.819369,
		0.936759, -0.299180, 0.181589,
		-0.157850, -0.824272, -0.543745,
		43.537052, 34.918381, 29.559383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123203, 35.527691, 29.423595>,  <43.647549, 35.495369, 29.940006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123203, 35.527691, 29.423595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885761, 35.247341, 29.265402>,  <43.743294, 35.079132, 29.170485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885761, 35.247341, 29.265402>,  <44.123203, 35.527691, 29.423595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885761, 35.247341, 29.265402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233733, 0.320101, -0.918098,
		0.770065, -0.637428, -0.026198,
		-0.593607, -0.700872, -0.395486,
		43.707680, 35.037079, 29.146755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569313, 35.115913, 28.969198>,  <44.123203, 35.527691, 29.423595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569313, 35.115913, 28.969198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206348, 35.053673, 28.813047>,  <43.988571, 35.016327, 28.719357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206348, 35.053673, 28.813047>,  <44.569313, 35.115913, 28.969198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206348, 35.053673, 28.813047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357117, 0.204165, -0.911474,
		0.221540, -0.966489, -0.129688,
		-0.907407, -0.155614, -0.390380,
		43.934124, 35.006992, 28.695934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734268, 34.903561, 28.270519>,  <44.569313, 35.115913, 28.969198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734268, 34.903561, 28.270519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335667, 34.932800, 28.254347>,  <44.096504, 34.950344, 28.244644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335667, 34.932800, 28.254347>,  <44.734268, 34.903561, 28.270519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335667, 34.932800, 28.254347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049399, 0.125404, -0.990875,
		-0.067360, -0.989409, -0.128576,
		-0.996505, 0.073097, -0.040429,
		44.036716, 34.954731, 28.242218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510609, 34.311661, 27.925478>,  <44.734268, 34.903561, 28.270519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510609, 34.311661, 27.925478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265118, 34.626125, 27.896391>,  <44.117825, 34.814804, 27.878939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265118, 34.626125, 27.896391>,  <44.510609, 34.311661, 27.925478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265118, 34.626125, 27.896391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166098, 0.038523, -0.985357,
		-0.771851, -0.616815, -0.154223,
		-0.613724, 0.786165, -0.072717,
		44.081001, 34.861973, 27.874577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038582, 34.217346, 27.396641>,  <44.510609, 34.311661, 27.925478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038582, 34.217346, 27.396641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993477, 34.614548, 27.410618>,  <43.966412, 34.852871, 27.419004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993477, 34.614548, 27.410618>,  <44.038582, 34.217346, 27.396641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993477, 34.614548, 27.410618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180086, 0.055007, -0.982112,
		-0.977166, -0.104456, -0.185029,
		-0.112765, 0.993007, 0.034940,
		43.959648, 34.912449, 27.421101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562794, 34.404568, 26.841084>,  <44.038582, 34.217346, 27.396641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562794, 34.404568, 26.841084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779484, 34.726810, 26.937037>,  <43.909496, 34.920155, 26.994608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779484, 34.726810, 26.937037>,  <43.562794, 34.404568, 26.841084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779484, 34.726810, 26.937037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065291, 0.244193, -0.967526,
		-0.838019, 0.539791, 0.079686,
		0.541721, 0.805602, 0.239882,
		43.942001, 34.968491, 27.009001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.231785, 40.128719, 40.440899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885357, 39.943497, 40.365543>,  <39.677498, 39.832363, 40.320328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885357, 39.943497, 40.365543>,  <40.231785, 40.128719, 40.440899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885357, 39.943497, 40.365543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464018, -0.604388, -0.647613,
		0.186022, -0.648298, 0.738312,
		-0.866073, -0.463061, -0.188393,
		39.625534, 39.804577, 40.309025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332542, 39.317333, 40.570873>,  <40.231785, 40.128719, 40.440899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332542, 39.317333, 40.570873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009544, 39.374989, 40.342075>,  <39.815746, 39.409580, 40.204796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009544, 39.374989, 40.342075>,  <40.332542, 39.317333, 40.570873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009544, 39.374989, 40.342075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318561, -0.709565, -0.628519,
		-0.496464, -0.689740, 0.527051,
		-0.807491, 0.144139, -0.571998,
		39.767296, 39.418232, 40.170475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243126, 38.593460, 40.407715>,  <40.332542, 39.317333, 40.570873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243126, 38.593460, 40.407715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020046, 38.808193, 40.154488>,  <39.886196, 38.937035, 40.002552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020046, 38.808193, 40.154488>,  <40.243126, 38.593460, 40.407715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020046, 38.808193, 40.154488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089594, -0.719307, -0.688891,
		-0.825192, -0.440914, 0.353061,
		-0.557701, 0.536835, -0.633070,
		39.852737, 38.969242, 39.964565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904942, 38.061794, 39.958267>,  <40.243126, 38.593460, 40.407715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904942, 38.061794, 39.958267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807823, 38.395809, 39.760777>,  <39.749554, 38.596218, 39.642281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807823, 38.395809, 39.760777>,  <39.904942, 38.061794, 39.958267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807823, 38.395809, 39.760777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074117, -0.491503, -0.867716,
		-0.967242, -0.247269, 0.057443,
		-0.242793, 0.835034, -0.493730,
		39.734985, 38.646320, 39.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250954, 38.032650, 39.589684>,  <39.904942, 38.061794, 39.958267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250954, 38.032650, 39.589684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497742, 38.292656, 39.412224>,  <39.645817, 38.448658, 39.305748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497742, 38.292656, 39.412224>,  <39.250954, 38.032650, 39.589684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497742, 38.292656, 39.412224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184702, -0.428389, -0.884516,
		-0.765003, 0.627665, -0.144246,
		0.616973, 0.650015, -0.443650,
		39.682835, 38.487659, 39.279129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959267, 38.225475, 38.903885>,  <39.250954, 38.032650, 39.589684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959267, 38.225475, 38.903885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338871, 38.342945, 38.858055>,  <39.566635, 38.413429, 38.830559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338871, 38.342945, 38.858055>,  <38.959267, 38.225475, 38.903885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338871, 38.342945, 38.858055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007969, -0.340976, -0.940038,
		-0.315134, 0.893022, -0.321251,
		0.949014, 0.293678, -0.114570,
		39.623573, 38.431049, 38.823685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953579, 38.570324, 38.228653>,  <38.959267, 38.225475, 38.903885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953579, 38.570324, 38.228653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329590, 38.472561, 38.323822>,  <39.555199, 38.413902, 38.380924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329590, 38.472561, 38.323822>,  <38.953579, 38.570324, 38.228653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329590, 38.472561, 38.323822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158245, -0.305418, -0.938978,
		0.302161, 0.920317, -0.248425,
		0.940030, -0.244411, 0.237921,
		39.611599, 38.399239, 38.395199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338764, 38.747486, 37.702568>,  <38.953579, 38.570324, 38.228653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338764, 38.747486, 37.702568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604561, 38.509129, 37.882954>,  <39.764038, 38.366116, 37.991184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604561, 38.509129, 37.882954>,  <39.338764, 38.747486, 37.702568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604561, 38.509129, 37.882954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107502, -0.520959, -0.846785,
		0.739525, 0.611159, -0.282113,
		0.664489, -0.595891, 0.450963,
		39.803909, 38.330360, 38.018242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845562, 38.646030, 37.186119>,  <39.338764, 38.747486, 37.702568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845562, 38.646030, 37.186119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927788, 38.357784, 37.450981>,  <39.977123, 38.184837, 37.609898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927788, 38.357784, 37.450981>,  <39.845562, 38.646030, 37.186119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927788, 38.357784, 37.450981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405499, -0.553076, -0.727789,
		0.890681, 0.418114, 0.178516,
		0.205566, -0.720617, 0.662159,
		39.989456, 38.141598, 37.649628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493534, 38.399731, 36.969185>,  <39.845562, 38.646030, 37.186119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493534, 38.399731, 36.969185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353775, 38.091114, 37.181843>,  <40.269920, 37.905945, 37.309437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353775, 38.091114, 37.181843>,  <40.493534, 38.399731, 36.969185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353775, 38.091114, 37.181843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214253, -0.618164, -0.756286,
		0.912150, -0.150336, 0.381289,
		-0.349396, -0.771539, 0.531648,
		40.248955, 37.859653, 37.341339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099686, 37.887493, 37.063961>,  <40.493534, 38.399731, 36.969185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099686, 37.887493, 37.063961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736313, 37.722897, 37.093449>,  <40.518291, 37.624138, 37.111141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736313, 37.722897, 37.093449>,  <41.099686, 37.887493, 37.063961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736313, 37.722897, 37.093449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210388, -0.602405, -0.769965,
		0.361237, -0.683950, 0.633814,
		-0.908430, -0.411487, 0.073716,
		40.463783, 37.599449, 37.115562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226284, 37.189644, 36.888103>,  <41.099686, 37.887493, 37.063961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226284, 37.189644, 36.888103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830090, 37.237892, 36.861599>,  <40.592373, 37.266842, 36.845695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830090, 37.237892, 36.861599>,  <41.226284, 37.189644, 36.888103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830090, 37.237892, 36.861599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002041, -0.494289, -0.869295,
		-0.137611, -0.860888, 0.489831,
		-0.990484, 0.120624, -0.066263,
		40.532944, 37.274078, 36.841721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718876, 36.670578, 36.628620>,  <41.226284, 37.189644, 36.888103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718876, 36.670578, 36.628620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403210, 36.474865, 36.777115>,  <40.213810, 36.357437, 36.866211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403210, 36.474865, 36.777115>,  <40.718876, 36.670578, 36.628620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403210, 36.474865, 36.777115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613922, 0.645887, -0.453794,
		-0.017740, -0.586029, -0.810096,
		-0.789167, -0.489286, 0.371234,
		40.166458, 36.328079, 36.888485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207619, 36.384724, 36.086140>,  <40.718876, 36.670578, 36.628620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207619, 36.384724, 36.086140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062859, 36.502533, 36.439926>,  <39.976002, 36.573219, 36.652199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062859, 36.502533, 36.439926>,  <40.207619, 36.384724, 36.086140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062859, 36.502533, 36.439926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471354, 0.760752, -0.446186,
		-0.804273, -0.578372, -0.136492,
		-0.361898, 0.294519, 0.884471,
		39.954288, 36.590889, 36.705269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618416, 35.725452, 36.050316>,  <40.207619, 36.384724, 36.086140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618416, 35.725452, 36.050316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695599, 35.333347, 36.067558>,  <39.741909, 35.098083, 36.077904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695599, 35.333347, 36.067558>,  <39.618416, 35.725452, 36.050316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695599, 35.333347, 36.067558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496238, -0.059595, 0.866139,
		-0.846472, -0.188517, -0.497941,
		0.192957, -0.980260, 0.043104,
		39.753487, 35.039268, 36.080490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970818, 35.434998, 36.110779>,  <39.618416, 35.725452, 36.050316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970818, 35.434998, 36.110779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235771, 35.170219, 36.251106>,  <39.394745, 35.011353, 36.335304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235771, 35.170219, 36.251106>,  <38.970818, 35.434998, 36.110779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235771, 35.170219, 36.251106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553080, -0.116221, 0.824982,
		-0.505323, -0.740485, -0.443093,
		0.662383, -0.661948, 0.350818,
		39.434486, 34.971634, 36.356350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627460, 34.939354, 36.420387>,  <38.970818, 35.434998, 36.110779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627460, 34.939354, 36.420387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977711, 34.859940, 36.596508>,  <39.187862, 34.812290, 36.702179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977711, 34.859940, 36.596508>,  <38.627460, 34.939354, 36.420387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977711, 34.859940, 36.596508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459904, -0.064261, 0.885640,
		-0.147538, -0.977985, -0.147576,
		0.875626, -0.198536, 0.440298,
		39.240398, 34.800377, 36.728596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485859, 34.303303, 36.808216>,  <38.627460, 34.939354, 36.420387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485859, 34.303303, 36.808216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789612, 34.513992, 36.960999>,  <38.971863, 34.640408, 37.052666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789612, 34.513992, 36.960999>,  <38.485859, 34.303303, 36.808216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789612, 34.513992, 36.960999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454982, 0.010249, 0.890442,
		0.465107, -0.849971, 0.247435,
		0.759386, 0.526729, 0.381954,
		39.017429, 34.672012, 37.075584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792351, 33.975586, 37.470051>,  <38.485859, 34.303303, 36.808216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792351, 33.975586, 37.470051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903004, 34.359715, 37.484180>,  <38.969395, 34.590191, 37.492657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903004, 34.359715, 37.484180>,  <38.792351, 33.975586, 37.470051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903004, 34.359715, 37.484180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443642, 0.095019, 0.891153,
		0.852441, -0.262194, 0.452327,
		0.276635, 0.960326, 0.035322,
		38.985992, 34.647812, 37.494778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886875, 34.114525, 38.214558>,  <38.792351, 33.975586, 37.470051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886875, 34.114525, 38.214558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882694, 34.476147, 38.043640>,  <38.880188, 34.693119, 37.941090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882694, 34.476147, 38.043640>,  <38.886875, 34.114525, 38.214558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882694, 34.476147, 38.043640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355781, 0.395994, 0.846528,
		0.934511, 0.160869, 0.317507,
		-0.010449, 0.904052, -0.427295,
		38.879559, 34.747364, 37.915451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263966, 34.549812, 38.689156>,  <38.886875, 34.114525, 38.214558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263966, 34.549812, 38.689156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046528, 34.770058, 38.435753>,  <38.916065, 34.902203, 38.283710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046528, 34.770058, 38.435753>,  <39.263966, 34.549812, 38.689156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046528, 34.770058, 38.435753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321412, 0.560679, 0.763108,
		0.775370, 0.618439, -0.127809,
		-0.543595, 0.550611, -0.633507,
		38.883450, 34.935242, 38.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424721, 35.254894, 38.773159>,  <39.263966, 34.549812, 38.689156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424721, 35.254894, 38.773159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062477, 35.260807, 38.603615>,  <38.845131, 35.264355, 38.501888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062477, 35.260807, 38.603615>,  <39.424721, 35.254894, 38.773159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062477, 35.260807, 38.603615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316495, 0.641720, 0.698589,
		0.282325, 0.766797, -0.576468,
		-0.905607, 0.014780, -0.423861,
		38.790794, 35.265240, 38.476456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239479, 35.974148, 38.783489>,  <39.424721, 35.254894, 38.773159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239479, 35.974148, 38.783489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907059, 35.754433, 38.748550>,  <38.707607, 35.622604, 38.727589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907059, 35.754433, 38.748550>,  <39.239479, 35.974148, 38.783489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907059, 35.754433, 38.748550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411119, 0.500892, 0.761635,
		-0.374607, 0.668871, -0.642092,
		-0.831054, -0.549290, -0.087348,
		38.657742, 35.589645, 38.722347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725697, 36.392212, 38.601261>,  <39.239479, 35.974148, 38.783489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725697, 36.392212, 38.601261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515617, 36.084541, 38.746880>,  <38.389572, 35.899937, 38.834251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515617, 36.084541, 38.746880>,  <38.725697, 36.392212, 38.601261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515617, 36.084541, 38.746880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536408, 0.631337, 0.560071,
		-0.660634, 0.098867, -0.744169,
		-0.525194, -0.769181, 0.364050,
		38.358059, 35.853786, 38.856094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971008, 36.599621, 38.566730>,  <38.725697, 36.392212, 38.601261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971008, 36.599621, 38.566730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968567, 36.304729, 38.836979>,  <37.967102, 36.127796, 38.999126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968567, 36.304729, 38.836979>,  <37.971008, 36.599621, 38.566730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968567, 36.304729, 38.836979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537575, 0.572118, 0.619430,
		-0.843193, -0.359414, -0.399808,
		-0.006106, -0.737226, 0.675618,
		37.966736, 36.083561, 39.039665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362984, 36.658737, 38.790573>,  <37.971008, 36.599621, 38.566730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362984, 36.658737, 38.790573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554001, 36.450802, 39.073902>,  <37.668610, 36.326038, 39.243900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554001, 36.450802, 39.073902>,  <37.362984, 36.658737, 38.790573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554001, 36.450802, 39.073902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444085, 0.552818, 0.705111,
		-0.758120, -0.651273, 0.033138,
		0.477539, -0.519842, 0.708322,
		37.697262, 36.294849, 39.286400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874222, 36.506741, 39.314217>,  <37.362984, 36.658737, 38.790573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874222, 36.506741, 39.314217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202393, 36.418610, 39.525253>,  <37.399296, 36.365730, 39.651875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202393, 36.418610, 39.525253>,  <36.874222, 36.506741, 39.314217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202393, 36.418610, 39.525253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357909, 0.521695, 0.774426,
		-0.445875, -0.824189, 0.349153,
		0.820425, -0.220332, 0.527596,
		37.448521, 36.352509, 39.683533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662628, 36.210430, 39.932865>,  <36.874222, 36.506741, 39.314217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662628, 36.210430, 39.932865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032646, 36.349983, 39.992970>,  <37.254658, 36.433716, 40.029034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032646, 36.349983, 39.992970>,  <36.662628, 36.210430, 39.932865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032646, 36.349983, 39.992970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312680, 0.474707, 0.822730,
		0.215705, -0.808044, 0.548212,
		0.925042, 0.348882, 0.150262,
		37.310158, 36.454647, 40.038048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722752, 35.446266, 39.913689>,  <36.662628, 36.210430, 39.932865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722752, 35.446266, 39.913689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467548, 35.142429, 39.964222>,  <36.314426, 34.960125, 39.994541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467548, 35.142429, 39.964222>,  <36.722752, 35.446266, 39.913689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467548, 35.142429, 39.964222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266959, -0.372084, -0.888981,
		0.722272, -0.533452, 0.440173,
		-0.638010, -0.759594, 0.126336,
		36.276146, 34.914551, 40.002121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056953, 34.765804, 39.678272>,  <36.722752, 35.446266, 39.913689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056953, 34.765804, 39.678272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658352, 34.773743, 39.645824>,  <36.419189, 34.778503, 39.626358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658352, 34.773743, 39.645824>,  <37.056953, 34.765804, 39.678272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658352, 34.773743, 39.645824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068832, -0.354841, -0.932390,
		-0.047283, -0.934716, 0.352235,
		-0.996507, 0.019841, -0.081116,
		36.359398, 34.779694, 39.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937981, 34.052750, 39.387032>,  <37.056953, 34.765804, 39.678272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937981, 34.052750, 39.387032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611900, 34.277222, 39.329727>,  <36.416252, 34.411903, 39.295345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611900, 34.277222, 39.329727>,  <36.937981, 34.052750, 39.387032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611900, 34.277222, 39.329727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061874, -0.330315, -0.941840,
		-0.575862, -0.758927, 0.303996,
		-0.815202, 0.561179, -0.143258,
		36.367340, 34.445576, 39.286751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528179, 33.588562, 38.959034>,  <36.937981, 34.052750, 39.387032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528179, 33.588562, 38.959034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370609, 33.954960, 38.928646>,  <36.276070, 34.174801, 38.910412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370609, 33.954960, 38.928646>,  <36.528179, 33.588562, 38.959034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370609, 33.954960, 38.928646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105333, -0.127099, -0.986281,
		-0.913089, -0.380514, 0.146552,
		-0.393921, 0.915999, -0.075972,
		36.252434, 34.229759, 38.905853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017113, 33.507046, 38.450535>,  <36.528179, 33.588562, 38.959034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017113, 33.507046, 38.450535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045002, 33.906002, 38.458122>,  <36.061737, 34.145374, 38.462673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045002, 33.906002, 38.458122>,  <36.017113, 33.507046, 38.450535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045002, 33.906002, 38.458122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209793, 0.033246, -0.977180,
		-0.975257, 0.064155, 0.211563,
		0.069724, 0.997386, 0.018964,
		36.065918, 34.205219, 38.463810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402447, 33.845299, 38.142014>,  <36.017113, 33.507046, 38.450535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402447, 33.845299, 38.142014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718342, 34.087292, 38.101376>,  <35.907879, 34.232487, 38.076992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718342, 34.087292, 38.101376>,  <35.402447, 33.845299, 38.142014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718342, 34.087292, 38.101376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096902, -0.040507, -0.994469,
		-0.605748, 0.795210, 0.026634,
		0.789734, 0.604979, -0.101595,
		35.955261, 34.268784, 38.070896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156109, 34.497902, 37.761364>,  <35.402447, 33.845299, 38.142014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156109, 34.497902, 37.761364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554329, 34.492222, 37.724117>,  <35.793262, 34.488815, 37.701771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554329, 34.492222, 37.724117>,  <35.156109, 34.497902, 37.761364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554329, 34.492222, 37.724117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090922, 0.113223, -0.989401,
		0.024594, 0.993468, 0.111428,
		0.995554, -0.014202, -0.093113,
		35.852997, 34.487961, 37.696182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257782, 35.088840, 37.387508>,  <35.156109, 34.497902, 37.761364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257782, 35.088840, 37.387508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588097, 34.870369, 37.331272>,  <35.786285, 34.739288, 37.297531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588097, 34.870369, 37.331272>,  <35.257782, 35.088840, 37.387508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588097, 34.870369, 37.331272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027865, 0.209474, -0.977417,
		0.563292, 0.811057, 0.157762,
		0.825788, -0.546175, -0.140595,
		35.835835, 34.706516, 37.289093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486149, 35.312199, 36.924591>,  <35.257782, 35.088840, 37.387508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486149, 35.312199, 36.924591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721470, 34.988758, 36.921173>,  <35.862663, 34.794693, 36.919121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721470, 34.988758, 36.921173>,  <35.486149, 35.312199, 36.924591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721470, 34.988758, 36.921173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002832, 0.012631, -0.999916,
		0.808637, 0.588228, 0.009720,
		0.588301, -0.808597, -0.008548,
		35.897961, 34.746178, 36.918610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974644, 35.355938, 36.335186>,  <35.486149, 35.312199, 36.924591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974644, 35.355938, 36.335186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976181, 34.958832, 36.383175>,  <35.977104, 34.720566, 36.411968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976181, 34.958832, 36.383175>,  <35.974644, 35.355938, 36.335186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976181, 34.958832, 36.383175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116922, -0.118702, -0.986022,
		0.993134, 0.017814, 0.115621,
		0.003841, -0.992770, 0.119970,
		35.977333, 34.660999, 36.419167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645321, 35.085461, 36.106438>,  <35.974644, 35.355938, 36.335186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645321, 35.085461, 36.106438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396458, 34.772686, 36.090973>,  <36.247139, 34.585022, 36.081692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396458, 34.772686, 36.090973>,  <36.645321, 35.085461, 36.106438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396458, 34.772686, 36.090973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335765, -0.221890, -0.915438,
		0.707234, -0.582530, 0.400597,
		-0.622159, -0.781935, -0.038665,
		36.209808, 34.538105, 36.079372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874535, 35.769272, 36.077572>,  <36.645321, 35.085461, 36.106438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874535, 35.769272, 36.077572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620338, 35.945869, 35.824200>,  <36.467819, 36.051826, 35.672176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620338, 35.945869, 35.824200>,  <36.874535, 35.769272, 36.077572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620338, 35.945869, 35.824200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412665, 0.499176, 0.761926,
		0.652579, 0.745592, -0.135032,
		-0.635490, 0.441494, -0.633432,
		36.429691, 36.078316, 35.634171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.394169, 35.456055, 43.964794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005775, 35.469856, 43.870132>,  <35.772739, 35.478138, 43.813335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005775, 35.469856, 43.870132>,  <36.394169, 35.456055, 43.964794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005775, 35.469856, 43.870132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200155, -0.424393, -0.883079,
		-0.130902, -0.904821, 0.405172,
		-0.970981, 0.034499, -0.236658,
		35.714481, 35.480206, 43.799133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121166, 34.696533, 43.759186>,  <36.394169, 35.456055, 43.964794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121166, 34.696533, 43.759186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905193, 34.969849, 43.562576>,  <35.775612, 35.133839, 43.444611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905193, 34.969849, 43.562576>,  <36.121166, 34.696533, 43.759186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905193, 34.969849, 43.562576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132977, -0.507381, -0.851400,
		-0.831141, -0.525056, 0.183088,
		-0.539928, 0.683287, -0.491525,
		35.743214, 35.174835, 43.415119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921803, 34.298435, 43.283489>,  <36.121166, 34.696533, 43.759186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921803, 34.298435, 43.283489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801723, 34.647873, 43.130272>,  <35.729675, 34.857536, 43.038342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801723, 34.647873, 43.130272>,  <35.921803, 34.298435, 43.283489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801723, 34.647873, 43.130272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066713, -0.419807, -0.905158,
		-0.951540, -0.246175, 0.184306,
		-0.300200, 0.873590, -0.383040,
		35.711662, 34.909950, 43.015358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376644, 34.187740, 42.881805>,  <35.921803, 34.298435, 43.283489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376644, 34.187740, 42.881805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534607, 34.523800, 42.733109>,  <35.629383, 34.725437, 42.643890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534607, 34.523800, 42.733109>,  <35.376644, 34.187740, 42.881805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534607, 34.523800, 42.733109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119066, -0.354417, -0.927476,
		-0.910973, 0.410528, -0.039928,
		0.394906, 0.840152, -0.371744,
		35.653080, 34.775845, 42.621586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017948, 34.336514, 42.170456>,  <35.376644, 34.187740, 42.881805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017948, 34.336514, 42.170456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.345123, 34.566628, 42.168537>,  <35.541428, 34.704697, 42.167385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.345123, 34.566628, 42.168537>,  <35.017948, 34.336514, 42.170456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345123, 34.566628, 42.168537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017679, -0.033467, -0.999284,
		-0.575038, 0.817265, -0.037544,
		0.817936, 0.575290, -0.004796,
		35.590504, 34.739216, 42.167099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980652, 34.844494, 41.511822>,  <35.017948, 34.336514, 42.170456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980652, 34.844494, 41.511822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366947, 34.850567, 41.615459>,  <35.598724, 34.854210, 41.677643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366947, 34.850567, 41.615459>,  <34.980652, 34.844494, 41.511822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366947, 34.850567, 41.615459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257424, 0.071027, -0.963685,
		-0.033037, 0.997359, 0.064683,
		0.965734, 0.015186, 0.259090,
		35.656666, 34.855122, 41.693188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237331, 35.543468, 41.320290>,  <34.980652, 34.844494, 41.511822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237331, 35.543468, 41.320290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531525, 35.273563, 41.344799>,  <35.708042, 35.111622, 41.359505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531525, 35.273563, 41.344799>,  <35.237331, 35.543468, 41.320290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531525, 35.273563, 41.344799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144890, 0.068297, -0.987088,
		0.661867, 0.734867, 0.147998,
		0.735486, -0.674764, 0.061271,
		35.752171, 35.071133, 41.363182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764450, 35.795895, 40.979080>,  <35.237331, 35.543468, 41.320290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764450, 35.795895, 40.979080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881264, 35.413399, 40.971817>,  <35.951351, 35.183903, 40.967461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881264, 35.413399, 40.971817>,  <35.764450, 35.795895, 40.979080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881264, 35.413399, 40.971817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267357, 0.099848, -0.958411,
		0.918278, 0.275037, 0.284815,
		0.292036, -0.956235, -0.018155,
		35.968876, 35.126530, 40.966370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283386, 35.747639, 40.487381>,  <35.764450, 35.795895, 40.979080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283386, 35.747639, 40.487381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232590, 35.350945, 40.480141>,  <36.202110, 35.112926, 40.475796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232590, 35.350945, 40.480141>,  <36.283386, 35.747639, 40.487381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232590, 35.350945, 40.480141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370800, -0.030544, -0.928210,
		0.919989, -0.124586, 0.371616,
		-0.126992, -0.991739, -0.018096,
		36.194492, 35.053421, 40.474712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885399, 35.997074, 40.612782>,  <36.283386, 35.747639, 40.487381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885399, 35.997074, 40.612782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149410, 36.292416, 40.557365>,  <37.307816, 36.469620, 40.524117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149410, 36.292416, 40.557365>,  <36.885399, 35.997074, 40.612782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149410, 36.292416, 40.557365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212883, 0.360686, 0.908067,
		0.720448, -0.569855, 0.395246,
		0.660027, 0.738356, -0.138544,
		37.347420, 36.513924, 40.515804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112431, 36.072628, 41.299618>,  <36.885399, 35.997074, 40.612782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112431, 36.072628, 41.299618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237411, 36.392799, 41.094997>,  <37.312401, 36.584904, 40.972225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237411, 36.392799, 41.094997>,  <37.112431, 36.072628, 41.299618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237411, 36.392799, 41.094997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047086, 0.550904, 0.833239,
		0.948765, -0.236261, 0.209821,
		0.312453, 0.800428, -0.511554,
		37.331146, 36.632927, 40.941532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758438, 36.349308, 41.531052>,  <37.112431, 36.072628, 41.299618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758438, 36.349308, 41.531052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566162, 36.656796, 41.362289>,  <37.450798, 36.841290, 41.261032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566162, 36.656796, 41.362289>,  <37.758438, 36.349308, 41.531052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566162, 36.656796, 41.362289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071228, 0.445322, 0.892533,
		0.873993, 0.459083, -0.159307,
		-0.480690, 0.768721, -0.421908,
		37.421955, 36.887413, 41.235718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127064, 36.947262, 41.798244>,  <37.758438, 36.349308, 41.531052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127064, 36.947262, 41.798244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772083, 37.073936, 41.664299>,  <37.559093, 37.149940, 41.583931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772083, 37.073936, 41.664299>,  <38.127064, 36.947262, 41.798244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772083, 37.073936, 41.664299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121339, 0.540393, 0.832618,
		0.444635, 0.779543, -0.441148,
		-0.887455, 0.316683, -0.334867,
		37.505848, 37.168941, 41.563839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139267, 37.634228, 41.838139>,  <38.127064, 36.947262, 41.798244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139267, 37.634228, 41.838139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742573, 37.636604, 41.786877>,  <37.504555, 37.638031, 41.756119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742573, 37.636604, 41.786877>,  <38.139267, 37.634228, 41.838139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742573, 37.636604, 41.786877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106222, 0.522179, 0.846195,
		0.071951, 0.852815, -0.517232,
		-0.991736, 0.005943, -0.128159,
		37.445053, 37.638386, 41.748428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946571, 38.256279, 41.941109>,  <38.139267, 37.634228, 41.838139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946571, 38.256279, 41.941109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610779, 38.046307, 41.997280>,  <37.409306, 37.920322, 42.030983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610779, 38.046307, 41.997280>,  <37.946571, 38.256279, 41.941109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610779, 38.046307, 41.997280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262444, 0.617959, 0.741114,
		-0.475816, 0.585294, -0.656529,
		-0.839478, -0.524936, 0.140428,
		37.358936, 37.888824, 42.039410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346973, 38.629971, 41.982265>,  <37.946571, 38.256279, 41.941109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346973, 38.629971, 41.982265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210178, 38.307728, 42.175777>,  <37.128101, 38.114384, 42.291885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210178, 38.307728, 42.175777>,  <37.346973, 38.629971, 41.982265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210178, 38.307728, 42.175777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467191, 0.592453, 0.656302,
		-0.815337, -0.001570, -0.578984,
		-0.341990, -0.805604, 0.483782,
		37.107582, 38.066048, 42.320911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760746, 38.918179, 42.318966>,  <37.346973, 38.629971, 41.982265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760746, 38.918179, 42.318966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829563, 38.573730, 42.510326>,  <36.870853, 38.367062, 42.625141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829563, 38.573730, 42.510326>,  <36.760746, 38.918179, 42.318966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829563, 38.573730, 42.510326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585727, 0.301050, 0.752525,
		-0.792040, -0.409678, -0.452590,
		0.172041, -0.861123, 0.478403,
		36.881176, 38.315395, 42.653847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088631, 38.658989, 42.578918>,  <36.760746, 38.918179, 42.318966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088631, 38.658989, 42.578918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385612, 38.512894, 42.803547>,  <36.563801, 38.425236, 42.938324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385612, 38.512894, 42.803547>,  <36.088631, 38.658989, 42.578918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385612, 38.512894, 42.803547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537599, 0.175305, 0.824776,
		-0.399687, -0.914259, -0.066196,
		0.742454, -0.365239, 0.561572,
		36.608349, 38.403320, 42.972019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726513, 38.507519, 43.169827>,  <36.088631, 38.658989, 42.578918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726513, 38.507519, 43.169827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.105263, 38.460358, 43.289509>,  <36.332512, 38.432060, 43.361317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.105263, 38.460358, 43.289509>,  <35.726513, 38.507519, 43.169827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105263, 38.460358, 43.289509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260386, 0.264953, 0.928439,
		-0.188743, -0.957026, 0.220177,
		0.946877, -0.117905, 0.299204,
		36.389324, 38.424988, 43.379269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781258, 37.935223, 43.754650>,  <35.726513, 38.507519, 43.169827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781258, 37.935223, 43.754650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.087540, 38.187733, 43.803944>,  <36.271309, 38.339241, 43.833519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.087540, 38.187733, 43.803944>,  <35.781258, 37.935223, 43.754650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087540, 38.187733, 43.803944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273578, 0.146255, 0.950665,
		0.582113, -0.761640, 0.284692,
		0.765702, 0.631280, 0.123232,
		36.317249, 38.377117, 43.840912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063938, 37.765690, 44.411053>,  <35.781258, 37.935223, 43.754650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063938, 37.765690, 44.411053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253685, 38.112602, 44.350662>,  <36.367535, 38.320751, 44.314426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253685, 38.112602, 44.350662>,  <36.063938, 37.765690, 44.411053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253685, 38.112602, 44.350662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278943, 0.310747, 0.908640,
		0.834965, -0.388915, 0.389332,
		0.474367, 0.867284, -0.150978,
		36.395996, 38.372787, 44.305370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483700, 37.862560, 44.971642>,  <36.063938, 37.765690, 44.411053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483700, 37.862560, 44.971642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428574, 38.226654, 44.815445>,  <36.395496, 38.445110, 44.721729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428574, 38.226654, 44.815445>,  <36.483700, 37.862560, 44.971642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428574, 38.226654, 44.815445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312941, 0.334036, 0.889094,
		0.939720, 0.244732, 0.238814,
		-0.137817, 0.910234, -0.390487,
		36.387230, 38.499725, 44.698299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763763, 38.307373, 45.421211>,  <36.483700, 37.862560, 44.971642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763763, 38.307373, 45.421211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508617, 38.537891, 45.216858>,  <36.355530, 38.676205, 45.094246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508617, 38.537891, 45.216858>,  <36.763763, 38.307373, 45.421211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508617, 38.537891, 45.216858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238148, 0.483252, 0.842468,
		0.732400, 0.659050, -0.171008,
		-0.637869, 0.576298, -0.510885,
		36.317257, 38.710781, 45.063591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.638617, 39.131947, 43.413879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998997, 39.080238, 43.579567>,  <32.215225, 39.049213, 43.678978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998997, 39.080238, 43.579567>,  <31.638617, 39.131947, 43.413879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998997, 39.080238, 43.579567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374766, -0.249339, -0.892962,
		0.218718, 0.959749, -0.176194,
		0.900951, -0.129275, 0.414216,
		32.269283, 39.041454, 43.703831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063404, 39.584671, 43.045277>,  <31.638617, 39.131947, 43.413879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063404, 39.584671, 43.045277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345413, 39.360119, 43.218616>,  <32.514618, 39.225388, 43.322620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345413, 39.360119, 43.218616>,  <32.063404, 39.584671, 43.045277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345413, 39.360119, 43.218616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457258, -0.107234, -0.882846,
		0.542083, 0.820579, 0.181094,
		0.705025, -0.561383, 0.433346,
		32.556919, 39.191704, 43.348621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684380, 39.834229, 42.739559>,  <32.063404, 39.584671, 43.045277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684380, 39.834229, 42.739559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761784, 39.473663, 42.894485>,  <32.808228, 39.257324, 42.987442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761784, 39.473663, 42.894485>,  <32.684380, 39.834229, 42.739559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761784, 39.473663, 42.894485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708064, -0.144952, -0.691111,
		0.679116, 0.407983, 0.610205,
		0.193512, -0.901409, 0.387317,
		32.819836, 39.203239, 43.010681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435970, 39.771790, 42.575848>,  <32.684380, 39.834229, 42.739559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435970, 39.771790, 42.575848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305859, 39.400505, 42.648090>,  <33.227791, 39.177734, 42.691437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305859, 39.400505, 42.648090>,  <33.435970, 39.771790, 42.575848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305859, 39.400505, 42.648090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540561, -0.339235, -0.769879,
		0.775880, -0.152793, 0.612099,
		-0.325277, -0.928210, 0.180611,
		33.208275, 39.122044, 42.702274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955875, 39.318127, 42.614079>,  <33.435970, 39.771790, 42.575848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955875, 39.318127, 42.614079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636246, 39.099712, 42.513416>,  <33.444469, 38.968666, 42.453018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636246, 39.099712, 42.513416>,  <33.955875, 39.318127, 42.614079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636246, 39.099712, 42.513416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491926, -0.353110, -0.795816,
		0.345678, -0.759712, 0.550768,
		-0.799072, -0.546033, -0.251660,
		33.396523, 38.935902, 42.437920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241776, 38.709393, 42.316513>,  <33.955875, 39.318127, 42.614079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241776, 38.709393, 42.316513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852409, 38.678215, 42.230366>,  <33.618790, 38.659508, 42.178677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852409, 38.678215, 42.230366>,  <34.241776, 38.709393, 42.316513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852409, 38.678215, 42.230366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228654, -0.385464, -0.893943,
		-0.013340, -0.919425, 0.393040,
		-0.973416, -0.077945, -0.215373,
		33.560383, 38.654831, 42.165752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120098, 38.058826, 42.088879>,  <34.241776, 38.709393, 42.316513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120098, 38.058826, 42.088879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814861, 38.266411, 41.934811>,  <33.631718, 38.390961, 41.842369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814861, 38.266411, 41.934811>,  <34.120098, 38.058826, 42.088879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814861, 38.266411, 41.934811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203130, -0.373185, -0.905246,
		-0.613533, -0.769030, 0.179358,
		-0.763096, 0.518965, -0.385174,
		33.585934, 38.422100, 41.819260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748913, 37.533848, 41.648380>,  <34.120098, 38.058826, 42.088879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748913, 37.533848, 41.648380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601284, 37.883041, 41.520832>,  <33.512707, 38.092556, 41.444302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601284, 37.883041, 41.520832>,  <33.748913, 37.533848, 41.648380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601284, 37.883041, 41.520832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124471, -0.386433, -0.913880,
		-0.921027, -0.297600, 0.251285,
		-0.369076, 0.872986, -0.318872,
		33.490562, 38.144936, 41.425171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194447, 37.359802, 41.212807>,  <33.748913, 37.533848, 41.648380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194447, 37.359802, 41.212807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330219, 37.728466, 41.137623>,  <33.411682, 37.949665, 41.092510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330219, 37.728466, 41.137623>,  <33.194447, 37.359802, 41.212807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330219, 37.728466, 41.137623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039237, -0.213526, -0.976149,
		-0.939811, 0.323962, -0.108641,
		0.339433, 0.921659, -0.187963,
		33.432049, 38.004963, 41.081234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747082, 37.638412, 40.706532>,  <33.194447, 37.359802, 41.212807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747082, 37.638412, 40.706532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074261, 37.868450, 40.700382>,  <33.270569, 38.006474, 40.696693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074261, 37.868450, 40.700382>,  <32.747082, 37.638412, 40.706532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074261, 37.868450, 40.700382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019626, 0.001186, -0.999807,
		-0.574962, 0.818089, 0.012257,
		0.817945, 0.575091, -0.015374,
		33.319645, 38.040977, 40.695770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597446, 38.171974, 40.205936>,  <32.747082, 37.638412, 40.706532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597446, 38.171974, 40.205936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996037, 38.169727, 40.239407>,  <33.235191, 38.168381, 40.259487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996037, 38.169727, 40.239407>,  <32.597446, 38.171974, 40.205936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996037, 38.169727, 40.239407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083106, -0.067662, -0.994241,
		0.011246, 0.997693, -0.066957,
		0.996477, -0.005617, 0.083675,
		33.294979, 38.168041, 40.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786877, 38.623665, 39.678402>,  <32.597446, 38.171974, 40.205936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786877, 38.623665, 39.678402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.112469, 38.402119, 39.748455>,  <33.307823, 38.269192, 39.790485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.112469, 38.402119, 39.748455>,  <32.786877, 38.623665, 39.678402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112469, 38.402119, 39.748455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245045, 0.054044, -0.968004,
		0.526677, 0.830852, 0.179712,
		0.813981, -0.553863, 0.175133,
		33.356663, 38.235958, 39.800995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354542, 38.965321, 39.352882>,  <32.786877, 38.623665, 39.678402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354542, 38.965321, 39.352882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477364, 38.589149, 39.411278>,  <33.551056, 38.363445, 39.446316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477364, 38.589149, 39.411278>,  <33.354542, 38.965321, 39.352882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477364, 38.589149, 39.411278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286130, -0.055076, -0.956607,
		0.907659, 0.335506, 0.252173,
		0.307059, -0.940427, 0.145988,
		33.569481, 38.307022, 39.455074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045990, 38.941856, 39.088173>,  <33.354542, 38.965321, 39.352882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045990, 38.941856, 39.088173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.880898, 38.577679, 39.077263>,  <33.781841, 38.359173, 39.070717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.880898, 38.577679, 39.077263>,  <34.045990, 38.941856, 39.088173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880898, 38.577679, 39.077263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271607, -0.094437, -0.957764,
		0.869417, -0.402703, 0.286260,
		-0.412728, -0.910446, -0.027271,
		33.757080, 38.304546, 39.069080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688168, 39.222256, 39.390808>,  <34.045990, 38.941856, 39.088173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688168, 39.222256, 39.390808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.024139, 39.438850, 39.405243>,  <35.225723, 39.568810, 39.413906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.024139, 39.438850, 39.405243>,  <34.688168, 39.222256, 39.390808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024139, 39.438850, 39.405243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307295, 0.419739, 0.854043,
		0.447313, -0.728425, 0.518950,
		0.839929, 0.541495, 0.036087,
		35.276119, 39.601295, 39.416069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029922, 39.114037, 40.085537>,  <34.688168, 39.222256, 39.390808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029922, 39.114037, 40.085537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158768, 39.470272, 39.957096>,  <35.236073, 39.684013, 39.880032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158768, 39.470272, 39.957096>,  <35.029922, 39.114037, 40.085537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158768, 39.470272, 39.957096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062384, 0.358405, 0.931479,
		0.944645, -0.280006, 0.171004,
		0.322108, 0.890585, -0.321098,
		35.255402, 39.737446, 39.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600098, 39.362675, 40.541687>,  <35.029922, 39.114037, 40.085537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600098, 39.362675, 40.541687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.471546, 39.693687, 40.357552>,  <35.394417, 39.892296, 40.247070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.471546, 39.693687, 40.357552>,  <35.600098, 39.362675, 40.541687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471546, 39.693687, 40.357552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070410, 0.463897, 0.883087,
		0.944329, 0.316218, -0.090820,
		-0.321379, 0.827530, -0.460336,
		35.375134, 39.941948, 40.219452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983181, 39.984764, 40.904022>,  <35.600098, 39.362675, 40.541687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983181, 39.984764, 40.904022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.661373, 40.125816, 40.712860>,  <35.468288, 40.210449, 40.598164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.661373, 40.125816, 40.712860>,  <35.983181, 39.984764, 40.904022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661373, 40.125816, 40.712860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309650, 0.437599, 0.844170,
		0.506814, 0.827137, -0.242865,
		-0.804522, 0.352634, -0.477905,
		35.420017, 40.231606, 40.569489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905811, 40.701225, 41.181492>,  <35.983181, 39.984764, 40.904022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905811, 40.701225, 41.181492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550140, 40.622620, 41.016212>,  <35.336739, 40.575455, 40.917046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550140, 40.622620, 41.016212>,  <35.905811, 40.701225, 41.181492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550140, 40.622620, 41.016212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452188, 0.515318, 0.727993,
		0.069867, 0.834163, -0.547075,
		-0.889182, -0.196518, -0.413202,
		35.283386, 40.563663, 40.892250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495308, 41.367935, 41.110268>,  <35.905811, 40.701225, 41.181492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495308, 41.367935, 41.110268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.240421, 41.059975, 41.124180>,  <35.087490, 40.875198, 41.132526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.240421, 41.059975, 41.124180>,  <35.495308, 41.367935, 41.110268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240421, 41.059975, 41.124180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491923, 0.441059, 0.750652,
		-0.593265, 0.461222, -0.659781,
		-0.637220, -0.769897, 0.034780,
		35.049255, 40.829006, 41.134613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854664, 41.710876, 41.296494>,  <35.495308, 41.367935, 41.110268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854664, 41.710876, 41.296494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770744, 41.326775, 41.370129>,  <34.720390, 41.096313, 41.414310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770744, 41.326775, 41.370129>,  <34.854664, 41.710876, 41.296494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770744, 41.326775, 41.370129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638129, 0.277133, 0.718323,
		-0.740793, 0.033231, -0.670911,
		-0.209803, -0.960257, 0.184092,
		34.707802, 41.038696, 41.425358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137611, 41.693218, 41.423138>,  <34.854664, 41.710876, 41.296494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137611, 41.693218, 41.423138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295650, 41.364620, 41.587597>,  <34.390472, 41.167461, 41.686272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295650, 41.364620, 41.587597>,  <34.137611, 41.693218, 41.423138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295650, 41.364620, 41.587597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444679, 0.220606, 0.868098,
		-0.803841, -0.525811, -0.278141,
		0.395096, -0.821496, 0.411149,
		34.414181, 41.118172, 41.710941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613609, 41.383347, 41.773453>,  <34.137611, 41.693218, 41.423138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613609, 41.383347, 41.773453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957050, 41.260937, 41.937969>,  <34.163113, 41.187492, 42.036678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957050, 41.260937, 41.937969>,  <33.613609, 41.383347, 41.773453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957050, 41.260937, 41.937969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383041, 0.150258, 0.911428,
		-0.340716, -0.940092, 0.011792,
		0.858599, -0.306021, 0.411289,
		34.214630, 41.169132, 42.061356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323219, 40.969849, 42.260876>,  <33.613609, 41.383347, 41.773453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323219, 40.969849, 42.260876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697517, 41.059723, 42.369614>,  <33.922096, 41.113647, 42.434856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697517, 41.059723, 42.369614>,  <33.323219, 40.969849, 42.260876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697517, 41.059723, 42.369614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311541, 0.165313, 0.935742,
		0.165313, -0.960305, 0.224690,
		-0.935742, -0.224690, -0.271846,
		33.978241, 41.127129, 42.451168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421520, 40.706841, 42.891663>,  <33.323219, 40.969849, 42.260876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421520, 40.706841, 42.891663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701927, 40.991318, 42.870598>,  <33.870171, 41.162006, 42.857960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701927, 40.991318, 42.870598>,  <33.421520, 40.706841, 42.891663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701927, 40.991318, 42.870598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197297, 0.264376, 0.944023,
		0.685307, -0.651388, 0.325649,
		0.701019, 0.711196, -0.052662,
		33.912231, 41.204678, 42.854801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735680, 40.677696, 43.493240>,  <33.421520, 40.706841, 42.891663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735680, 40.677696, 43.493240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.819622, 41.046707, 43.363682>,  <33.869987, 41.268112, 43.285946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.819622, 41.046707, 43.363682>,  <33.735680, 40.677696, 43.493240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819622, 41.046707, 43.363682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041516, 0.339379, 0.939733,
		0.976850, -0.183766, 0.109521,
		0.209860, 0.922525, -0.323893,
		33.882580, 41.323463, 43.266514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171875, 40.947689, 44.004196>,  <33.735680, 40.677696, 43.493240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171875, 40.947689, 44.004196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024654, 41.272659, 43.823303>,  <33.936321, 41.467640, 43.714767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024654, 41.272659, 43.823303>,  <34.171875, 40.947689, 44.004196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024654, 41.272659, 43.823303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157722, 0.424769, 0.891456,
		0.916330, 0.399429, -0.028200,
		-0.368052, 0.812421, -0.452228,
		33.914238, 41.516384, 43.687634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485519, 41.564812, 44.320091>,  <34.171875, 40.947689, 44.004196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485519, 41.564812, 44.320091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141911, 41.688004, 44.156521>,  <33.935745, 41.761917, 44.058380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141911, 41.688004, 44.156521>,  <34.485519, 41.564812, 44.320091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141911, 41.688004, 44.156521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295818, 0.353301, 0.887508,
		0.417809, 0.883361, -0.212389,
		-0.859027, 0.307980, -0.408927,
		33.884201, 41.780399, 44.033844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271812, 41.790909, 43.994854>,  <34.485519, 41.564812, 44.320091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271812, 41.790909, 43.994854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623039, 41.873867, 44.167355>,  <35.833778, 41.923641, 44.270855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623039, 41.873867, 44.167355>,  <35.271812, 41.790909, 43.994854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623039, 41.873867, 44.167355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437011, 0.019630, -0.899242,
		-0.194964, 0.978060, -0.073398,
		0.878072, 0.207396, 0.431250,
		35.886459, 41.936085, 44.296730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663399, 42.334991, 43.558723>,  <35.271812, 41.790909, 43.994854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663399, 42.334991, 43.558723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930031, 42.126312, 43.771702>,  <36.090012, 42.001106, 43.899490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930031, 42.126312, 43.771702>,  <35.663399, 42.334991, 43.558723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930031, 42.126312, 43.771702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570522, -0.102666, -0.814840,
		0.479761, 0.846933, 0.229202,
		0.666584, -0.521694, 0.532449,
		36.130005, 41.969803, 43.931435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375095, 42.544086, 43.458241>,  <35.663399, 42.334991, 43.558723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375095, 42.544086, 43.458241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424503, 42.177689, 43.610924>,  <36.454147, 41.957851, 43.702534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424503, 42.177689, 43.610924>,  <36.375095, 42.544086, 43.458241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424503, 42.177689, 43.610924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660870, -0.211016, -0.720224,
		0.740266, 0.341222, 0.579287,
		0.123518, -0.915991, 0.381712,
		36.461559, 41.902893, 43.725437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112904, 42.460667, 43.489136>,  <36.375095, 42.544086, 43.458241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112904, 42.460667, 43.489136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.946980, 42.096863, 43.478374>,  <36.847424, 41.878582, 43.471920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.946980, 42.096863, 43.478374>,  <37.112904, 42.460667, 43.489136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946980, 42.096863, 43.478374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769256, -0.334746, -0.544233,
		0.485981, -0.246448, 0.838502,
		-0.414810, -0.909510, -0.026902,
		36.822536, 41.824009, 43.470303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716766, 42.049995, 43.690865>,  <37.112904, 42.460667, 43.489136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716766, 42.049995, 43.690865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449440, 41.817947, 43.504608>,  <37.289043, 41.678719, 43.392857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449440, 41.817947, 43.504608>,  <37.716766, 42.049995, 43.690865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449440, 41.817947, 43.504608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733557, -0.410057, -0.541985,
		0.123477, -0.703788, 0.699597,
		-0.668317, -0.580117, -0.465636,
		37.248943, 41.643913, 43.364918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075485, 41.436684, 43.684380>,  <37.716766, 42.049995, 43.690865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075485, 41.436684, 43.684380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807816, 41.432484, 43.387165>,  <37.647213, 41.429962, 43.208836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807816, 41.432484, 43.387165>,  <38.075485, 41.436684, 43.684380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807816, 41.432484, 43.387165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670280, -0.440231, -0.597429,
		-0.320834, -0.897823, 0.301628,
		-0.669172, -0.010499, -0.743034,
		37.607063, 41.429333, 43.164253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066673, 40.765568, 43.406235>,  <38.075485, 41.436684, 43.684380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066673, 40.765568, 43.406235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895653, 40.978409, 43.113918>,  <37.793041, 41.106113, 42.938526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895653, 40.978409, 43.113918>,  <38.066673, 40.765568, 43.406235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895653, 40.978409, 43.113918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522054, -0.514643, -0.680149,
		-0.738011, -0.672313, -0.057752,
		-0.427551, 0.532107, -0.730796,
		37.767387, 41.138042, 42.894680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960911, 40.230698, 42.921005>,  <38.066673, 40.765568, 43.406235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960911, 40.230698, 42.921005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911057, 40.566952, 42.710175>,  <37.881145, 40.768703, 42.583675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911057, 40.566952, 42.710175>,  <37.960911, 40.230698, 42.921005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911057, 40.566952, 42.710175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384308, -0.448849, -0.806748,
		-0.914753, -0.303108, -0.267118,
		-0.124636, 0.840631, -0.527073,
		37.873665, 40.819141, 42.552052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646759, 40.027363, 42.292763>,  <37.960911, 40.230698, 42.921005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646759, 40.027363, 42.292763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851543, 40.368530, 42.251926>,  <37.974415, 40.573231, 42.227425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851543, 40.368530, 42.251926>,  <37.646759, 40.027363, 42.292763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851543, 40.368530, 42.251926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415354, -0.349829, -0.839703,
		-0.751914, 0.387492, -0.533363,
		0.511963, 0.852919, -0.102095,
		38.005131, 40.624405, 42.221298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597301, 40.180408, 41.628448>,  <37.646759, 40.027363, 42.292763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597301, 40.180408, 41.628448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914799, 40.404392, 41.723454>,  <38.105297, 40.538784, 41.780457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914799, 40.404392, 41.723454>,  <37.597301, 40.180408, 41.628448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914799, 40.404392, 41.723454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456221, -0.289824, -0.841347,
		-0.402283, 0.776174, -0.485512,
		0.793745, 0.559960, 0.237516,
		38.152924, 40.572380, 41.794708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684635, 40.515747, 41.062431>,  <37.597301, 40.180408, 41.628448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684635, 40.515747, 41.062431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041092, 40.541775, 41.242043>,  <38.254967, 40.557392, 41.349812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041092, 40.541775, 41.242043>,  <37.684635, 40.515747, 41.062431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041092, 40.541775, 41.242043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433055, -0.417253, -0.798977,
		0.135372, 0.906458, -0.400010,
		0.891144, 0.065067, 0.449030,
		38.308434, 40.561295, 41.376751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145821, 40.832272, 40.546215>,  <37.684635, 40.515747, 41.062431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145821, 40.832272, 40.546215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380821, 40.642269, 40.808270>,  <38.521824, 40.528267, 40.965504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380821, 40.642269, 40.808270>,  <38.145821, 40.832272, 40.546215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380821, 40.642269, 40.808270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569363, -0.332659, -0.751774,
		0.575034, 0.814683, 0.075012,
		0.587504, -0.475005, 0.655141,
		38.557072, 40.499767, 41.004810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764717, 40.796188, 40.212021>,  <38.145821, 40.832272, 40.546215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764717, 40.796188, 40.212021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.824299, 40.512745, 40.487900>,  <38.860046, 40.342678, 40.653427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.824299, 40.512745, 40.487900>,  <38.764717, 40.796188, 40.212021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824299, 40.512745, 40.487900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617393, -0.478186, -0.624631,
		0.772425, 0.518855, 0.366265,
		0.148950, -0.708610, 0.689700,
		38.868984, 40.300163, 40.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510311, 40.728176, 40.270569>,  <38.764717, 40.796188, 40.212021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510311, 40.728176, 40.270569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381584, 40.377926, 40.414627>,  <39.304348, 40.167774, 40.501064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381584, 40.377926, 40.414627>,  <39.510311, 40.728176, 40.270569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381584, 40.377926, 40.414627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670791, -0.479314, -0.565948,
		0.668184, 0.059450, 0.741617,
		-0.321822, -0.875628, 0.360149,
		39.285038, 40.115238, 40.522671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.737167, 33.521114, 26.643181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.395809, 33.348034, 26.759451>,  <25.190994, 33.244186, 26.829212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.395809, 33.348034, 26.759451>,  <25.737167, 33.521114, 26.643181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395809, 33.348034, 26.759451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036449, 0.506734, 0.861332,
		-0.519992, 0.745649, -0.416672,
		-0.853393, -0.432699, 0.290675,
		25.139791, 33.218224, 26.846653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396780, 34.035130, 26.930916>,  <25.737167, 33.521114, 26.643181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396780, 34.035130, 26.930916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.236187, 33.696304, 27.070227>,  <25.139832, 33.493008, 27.153812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.236187, 33.696304, 27.070227>,  <25.396780, 34.035130, 26.930916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236187, 33.696304, 27.070227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018382, 0.372739, 0.927754,
		-0.915682, 0.378878, -0.134077,
		-0.401482, -0.847064, 0.348275,
		25.115742, 33.442184, 27.174709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897455, 34.244766, 27.318867>,  <25.396780, 34.035130, 26.930916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897455, 34.244766, 27.318867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.930449, 33.871460, 27.458706>,  <24.950245, 33.647476, 27.542610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.930449, 33.871460, 27.458706>,  <24.897455, 34.244766, 27.318867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930449, 33.871460, 27.458706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165379, 0.333112, 0.928271,
		-0.982775, -0.134381, -0.126866,
		0.082481, -0.933262, 0.349598,
		24.955193, 33.591480, 27.563585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313465, 34.138481, 27.703165>,  <24.897455, 34.244766, 27.318867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313465, 34.138481, 27.703165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.600933, 33.896770, 27.840784>,  <24.773415, 33.751743, 27.923355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.600933, 33.896770, 27.840784>,  <24.313465, 34.138481, 27.703165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600933, 33.896770, 27.840784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170304, 0.326753, 0.929639,
		-0.674174, -0.726696, 0.131917,
		0.718670, -0.604272, 0.344048,
		24.816534, 33.715488, 27.943998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013689, 33.989208, 28.363523>,  <24.313465, 34.138481, 27.703165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013689, 33.989208, 28.363523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.390083, 33.856800, 28.391722>,  <24.615919, 33.777355, 28.408640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.390083, 33.856800, 28.391722>,  <24.013689, 33.989208, 28.363523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390083, 33.856800, 28.391722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050912, 0.344364, 0.937455,
		-0.334596, -0.878542, 0.340894,
		0.940985, -0.331024, 0.070494,
		24.672379, 33.757492, 28.412870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097723, 33.669582, 29.014553>,  <24.013689, 33.989208, 28.363523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.097723, 33.669582, 29.014553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.478451, 33.745052, 28.917852>,  <24.706886, 33.790337, 28.859831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.478451, 33.745052, 28.917852>,  <24.097723, 33.669582, 29.014553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478451, 33.745052, 28.917852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185335, 0.274159, 0.943656,
		0.244318, -0.942995, 0.225982,
		0.951819, 0.188670, -0.241753,
		24.763996, 33.801655, 28.845325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493517, 33.540745, 29.641514>,  <24.097723, 33.669582, 29.014553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493517, 33.540745, 29.641514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.759518, 33.763157, 29.442076>,  <24.919119, 33.896606, 29.322412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.759518, 33.763157, 29.442076>,  <24.493517, 33.540745, 29.641514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759518, 33.763157, 29.442076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307970, 0.404038, 0.861341,
		0.680386, -0.726347, 0.097446,
		0.665004, 0.556033, -0.498595,
		24.959019, 33.929966, 29.292498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187349, 33.578583, 30.092031>,  <24.493517, 33.540745, 29.641514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187349, 33.578583, 30.092031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.208506, 33.885986, 29.836971>,  <25.221199, 34.070427, 29.683935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.208506, 33.885986, 29.836971>,  <25.187349, 33.578583, 30.092031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208506, 33.885986, 29.836971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458621, 0.548524, 0.699135,
		0.887057, -0.329418, -0.323441,
		0.052892, 0.768509, -0.637649,
		25.224373, 34.116539, 29.645676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903601, 33.793858, 30.103199>,  <25.187349, 33.578583, 30.092031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903601, 33.793858, 30.103199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.686611, 34.103718, 29.973186>,  <25.556417, 34.289635, 29.895178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.686611, 34.103718, 29.973186>,  <25.903601, 33.793858, 30.103199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686611, 34.103718, 29.973186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380878, 0.571653, 0.726736,
		0.748770, 0.270436, -0.605151,
		-0.542472, 0.774646, -0.325033,
		25.523869, 34.336113, 29.875677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339735, 34.341537, 30.062748>,  <25.903601, 33.793858, 30.103199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339735, 34.341537, 30.062748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972952, 34.499760, 30.083614>,  <25.752882, 34.594692, 30.096134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972952, 34.499760, 30.083614>,  <26.339735, 34.341537, 30.062748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972952, 34.499760, 30.083614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266488, 0.509891, 0.817921,
		0.296934, 0.763903, -0.572960,
		-0.916959, 0.395555, 0.052168,
		25.697865, 34.618427, 30.099264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447147, 35.049721, 30.149145>,  <26.339735, 34.341537, 30.062748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447147, 35.049721, 30.149145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.071335, 34.990925, 30.272871>,  <25.845848, 34.955647, 30.347107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.071335, 34.990925, 30.272871>,  <26.447147, 35.049721, 30.149145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071335, 34.990925, 30.272871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123018, 0.698062, 0.705390,
		-0.319609, 0.700787, -0.637768,
		-0.939530, -0.146992, 0.309317,
		25.789476, 34.946827, 30.365665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183023, 35.711212, 30.327141>,  <26.447147, 35.049721, 30.149145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183023, 35.711212, 30.327141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930712, 35.462437, 30.512747>,  <25.779325, 35.313171, 30.624111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930712, 35.462437, 30.512747>,  <26.183023, 35.711212, 30.327141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930712, 35.462437, 30.512747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133544, 0.502056, 0.854462,
		-0.764385, 0.600943, -0.233630,
		-0.630779, -0.621938, 0.464016,
		25.741478, 35.275856, 30.651951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858738, 36.190334, 30.865427>,  <26.183023, 35.711212, 30.327141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858738, 36.190334, 30.865427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769697, 35.816010, 30.974752>,  <25.716272, 35.591415, 31.040348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769697, 35.816010, 30.974752>,  <25.858738, 36.190334, 30.865427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769697, 35.816010, 30.974752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172149, 0.238212, 0.955835,
		-0.959590, 0.259820, 0.108074,
		-0.222600, -0.935814, 0.273314,
		25.702917, 35.535267, 31.056747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352417, 36.322601, 31.420034>,  <25.858738, 36.190334, 30.865427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352417, 36.322601, 31.420034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522318, 35.963814, 31.469063>,  <25.624258, 35.748539, 31.498480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522318, 35.963814, 31.469063>,  <25.352417, 36.322601, 31.420034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522318, 35.963814, 31.469063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253876, 0.247977, 0.934909,
		-0.868983, -0.365987, 0.333049,
		0.424753, -0.896973, 0.122572,
		25.649744, 35.694721, 31.505835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148352, 36.220337, 32.084972>,  <25.352417, 36.322601, 31.420034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148352, 36.220337, 32.084972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.434259, 35.953880, 31.999779>,  <25.605804, 35.794006, 31.948664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.434259, 35.953880, 31.999779>,  <25.148352, 36.220337, 32.084972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434259, 35.953880, 31.999779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355035, 0.083246, 0.931139,
		-0.602539, -0.741167, 0.296005,
		0.714771, -0.666139, -0.212981,
		25.648691, 35.754040, 31.935884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106615, 35.710629, 32.598377>,  <25.148352, 36.220337, 32.084972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106615, 35.710629, 32.598377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.480850, 35.691841, 32.458393>,  <25.705391, 35.680569, 32.374405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.480850, 35.691841, 32.458393>,  <25.106615, 35.710629, 32.598377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480850, 35.691841, 32.458393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346564, -0.067599, 0.935587,
		-0.067599, -0.996606, -0.046968,
		-0.935587, 0.046968, 0.349958,
		25.761526, 35.677750, 32.353405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438044, 35.300327, 33.076920>,  <25.106615, 35.710629, 32.598377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438044, 35.300327, 33.076920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.743450, 35.502110, 32.915642>,  <25.926695, 35.623180, 32.818874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.743450, 35.502110, 32.915642>,  <25.438044, 35.300327, 33.076920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743450, 35.502110, 32.915642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479649, -0.024932, 0.877106,
		0.432411, -0.863075, -0.260999,
		0.763516, 0.504459, -0.403193,
		25.972506, 35.653446, 32.794685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921694, 34.946136, 33.320091>,  <25.438044, 35.300327, 33.076920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921694, 34.946136, 33.320091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.087271, 35.295654, 33.218006>,  <26.186617, 35.505363, 33.156754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.087271, 35.295654, 33.218006>,  <25.921694, 34.946136, 33.320091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087271, 35.295654, 33.218006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692031, -0.119924, 0.711837,
		0.591392, -0.471278, -0.654334,
		0.413943, 0.873794, -0.255217,
		26.211454, 35.557793, 33.141441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684519, 34.798489, 33.384670>,  <25.921694, 34.946136, 33.320091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684519, 34.798489, 33.384670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.669630, 35.198181, 33.379662>,  <26.660698, 35.437996, 33.376656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.669630, 35.198181, 33.379662>,  <26.684519, 34.798489, 33.384670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669630, 35.198181, 33.379662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807562, 0.037457, 0.588592,
		0.588607, 0.011793, -0.808333,
		-0.037220, 0.999229, -0.012524,
		26.658464, 35.497952, 33.375904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426987, 35.066704, 33.451191>,  <26.684519, 34.798489, 33.384670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426987, 35.066704, 33.451191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163298, 35.339657, 33.577545>,  <27.005085, 35.503429, 33.653358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163298, 35.339657, 33.577545>,  <27.426987, 35.066704, 33.451191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163298, 35.339657, 33.577545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593210, 0.213794, 0.776141,
		0.462090, 0.699034, -0.545733,
		-0.659223, 0.682381, 0.315882,
		26.965530, 35.544373, 33.672310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762403, 35.728752, 33.537483>,  <27.426987, 35.066704, 33.451191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762403, 35.728752, 33.537483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440155, 35.696243, 33.772213>,  <27.246805, 35.676739, 33.913052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440155, 35.696243, 33.772213>,  <27.762403, 35.728752, 33.537483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440155, 35.696243, 33.772213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592428, -0.109552, 0.798140,
		-0.000582, 0.990653, 0.136408,
		-0.805623, -0.081277, 0.586826,
		27.198467, 35.671860, 33.948261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424059, 36.087479, 33.117073>,  <27.762403, 35.728752, 33.537483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424059, 36.087479, 33.117073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775858, 35.899937, 33.084442>,  <27.986938, 35.787411, 33.064865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775858, 35.899937, 33.084442>,  <27.424059, 36.087479, 33.117073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775858, 35.899937, 33.084442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070208, 0.041708, -0.996660,
		0.470694, 0.882288, 0.003765,
		0.879499, -0.468858, -0.081576,
		28.039707, 35.759281, 33.059971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064459, 36.542332, 32.755302>,  <27.424059, 36.087479, 33.117073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064459, 36.542332, 32.755302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158073, 36.155369, 32.716640>,  <28.214243, 35.923191, 32.693443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158073, 36.155369, 32.716640>,  <28.064459, 36.542332, 32.755302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158073, 36.155369, 32.716640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025772, 0.093212, -0.995313,
		0.971886, 0.235433, -0.003117,
		0.234039, -0.967411, -0.096659,
		28.228285, 35.865147, 32.687641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554302, 36.574951, 32.160545>,  <28.064459, 36.542332, 32.755302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554302, 36.574951, 32.160545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472210, 36.188622, 32.223869>,  <28.422955, 35.956825, 32.261864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472210, 36.188622, 32.223869>,  <28.554302, 36.574951, 32.160545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472210, 36.188622, 32.223869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106223, -0.182781, -0.977398,
		0.972932, -0.183778, 0.140105,
		-0.205233, -0.965824, 0.158312,
		28.410641, 35.898872, 32.271362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009474, 36.289684, 31.829430>,  <28.554302, 36.574951, 32.160545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009474, 36.289684, 31.829430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758785, 35.978951, 31.853926>,  <28.608372, 35.792511, 31.868624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758785, 35.978951, 31.853926>,  <29.009474, 36.289684, 31.829430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758785, 35.978951, 31.853926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202524, -0.238270, -0.949848,
		0.752467, -0.582885, 0.306656,
		-0.626719, -0.776835, 0.061242,
		28.570770, 35.745899, 31.872299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342741, 35.775551, 31.527449>,  <29.009474, 36.289684, 31.829430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342741, 35.775551, 31.527449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.957470, 35.673958, 31.492176>,  <28.726307, 35.613003, 31.471012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.957470, 35.673958, 31.492176>,  <29.342741, 35.775551, 31.527449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957470, 35.673958, 31.492176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152207, -0.244745, -0.957566,
		0.221628, -0.935730, 0.274392,
		-0.963179, -0.253988, -0.088182,
		28.668516, 35.597763, 31.465721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352299, 35.234047, 31.096066>,  <29.342741, 35.775551, 31.527449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352299, 35.234047, 31.096066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975058, 35.366348, 31.082449>,  <28.748713, 35.445728, 31.074278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975058, 35.366348, 31.082449>,  <29.352299, 35.234047, 31.096066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975058, 35.366348, 31.082449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007402, -0.081476, -0.996648,
		-0.332420, -0.940193, 0.074392,
		-0.943103, 0.330755, -0.034043,
		28.692127, 35.465576, 31.072235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064554, 34.679104, 30.754015>,  <29.352299, 35.234047, 31.096066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064554, 34.679104, 30.754015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831285, 35.000530, 30.706367>,  <28.691324, 35.193386, 30.677778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831285, 35.000530, 30.706367>,  <29.064554, 34.679104, 30.754015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831285, 35.000530, 30.706367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005790, -0.150745, -0.988556,
		-0.812329, -0.575807, 0.092563,
		-0.583171, 0.803568, -0.119121,
		28.656334, 35.241600, 30.670631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595013, 34.425991, 30.434612>,  <29.064554, 34.679104, 30.754015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595013, 34.425991, 30.434612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542879, 34.814949, 30.357191>,  <28.511599, 35.048325, 30.310740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542879, 34.814949, 30.357191>,  <28.595013, 34.425991, 30.434612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542879, 34.814949, 30.357191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144488, -0.211760, -0.966582,
		-0.980886, -0.098011, 0.168099,
		-0.130333, 0.972395, -0.193551,
		28.503778, 35.106667, 30.299126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077778, 34.509045, 29.880976>,  <28.595013, 34.425991, 30.434612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077778, 34.509045, 29.880976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281569, 34.853230, 29.878433>,  <28.403843, 35.059738, 29.876907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281569, 34.853230, 29.878433>,  <28.077778, 34.509045, 29.880976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281569, 34.853230, 29.878433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033704, -0.027339, -0.999058,
		-0.859823, 0.508785, -0.042930,
		0.509479, 0.860460, -0.006358,
		28.434412, 35.111366, 29.876526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677530, 35.010715, 29.476126>,  <28.077778, 34.509045, 29.880976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677530, 35.010715, 29.476126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056412, 35.136330, 29.450239>,  <28.283741, 35.211697, 29.434708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056412, 35.136330, 29.450239>,  <27.677530, 35.010715, 29.476126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056412, 35.136330, 29.450239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110602, 0.130555, -0.985253,
		-0.300954, 0.940392, 0.158395,
		0.947203, 0.314034, -0.064719,
		28.340572, 35.230541, 29.430824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625183, 35.678097, 29.227930>,  <27.677530, 35.010715, 29.476126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625183, 35.678097, 29.227930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.985332, 35.523529, 29.147921>,  <28.201422, 35.430790, 29.099915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.985332, 35.523529, 29.147921>,  <27.625183, 35.678097, 29.227930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985332, 35.523529, 29.147921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056084, 0.352796, -0.934018,
		0.431491, 0.852182, 0.295976,
		0.900372, -0.386421, -0.200022,
		28.255444, 35.407604, 29.087914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936422, 36.098274, 28.735561>,  <27.625183, 35.678097, 29.227930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936422, 36.098274, 28.735561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157347, 35.765205, 28.719513>,  <28.289902, 35.565365, 28.709885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157347, 35.765205, 28.719513>,  <27.936422, 36.098274, 28.735561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157347, 35.765205, 28.719513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112909, 0.122402, -0.986037,
		0.825955, 0.540071, 0.161620,
		0.552312, -0.832671, -0.040120,
		28.323040, 35.515404, 28.707478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426249, 36.281841, 28.254799>,  <27.936422, 36.098274, 28.735561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426249, 36.281841, 28.254799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438223, 35.882072, 28.261295>,  <28.445408, 35.642212, 28.265192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438223, 35.882072, 28.261295>,  <28.426249, 36.281841, 28.254799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438223, 35.882072, 28.261295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071207, -0.014072, -0.997362,
		0.997012, 0.031014, 0.070744,
		0.029937, -0.999420, 0.016239,
		28.447205, 35.582245, 28.266167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801544, 36.086472, 27.647442>,  <28.426249, 36.281841, 28.254799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801544, 36.086472, 27.647442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601101, 35.752136, 27.737118>,  <28.480835, 35.551533, 27.790922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601101, 35.752136, 27.737118>,  <28.801544, 36.086472, 27.647442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601101, 35.752136, 27.737118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061339, -0.292717, -0.954230,
		0.863207, -0.464422, 0.197953,
		-0.501110, -0.835840, 0.224188,
		28.450768, 35.501385, 27.804375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001118, 35.647957, 27.175186>,  <28.801544, 36.086472, 27.647442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001118, 35.647957, 27.175186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688673, 35.444016, 27.319361>,  <28.501205, 35.321651, 27.405865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688673, 35.444016, 27.319361>,  <29.001118, 35.647957, 27.175186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688673, 35.444016, 27.319361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151172, -0.405659, -0.901436,
		0.605814, -0.758611, 0.239790,
		-0.781112, -0.509853, 0.360435,
		28.454340, 35.291061, 27.427492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076803, 35.061573, 26.807257>,  <29.001118, 35.647957, 27.175186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076803, 35.061573, 26.807257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699646, 35.068153, 26.940331>,  <28.473351, 35.072102, 27.020176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699646, 35.068153, 26.940331>,  <29.076803, 35.061573, 26.807257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699646, 35.068153, 26.940331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331248, -0.151268, -0.931339,
		0.035006, -0.988356, 0.148078,
		-0.942894, 0.016448, 0.332686,
		28.416779, 35.073090, 27.040136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785467, 34.456169, 26.549919>,  <29.076803, 35.061573, 26.807257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785467, 34.456169, 26.549919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473553, 34.695164, 26.624689>,  <28.286404, 34.838562, 26.669550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473553, 34.695164, 26.624689>,  <28.785467, 34.456169, 26.549919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473553, 34.695164, 26.624689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375630, -0.207672, -0.903202,
		-0.500837, -0.774517, 0.386375,
		-0.779785, 0.597491, 0.186922,
		28.239616, 34.874413, 26.680765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133408, 34.009811, 26.378979>,  <28.785467, 34.456169, 26.549919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133408, 34.009811, 26.378979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024103, 34.394249, 26.362879>,  <27.958521, 34.624912, 26.353220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024103, 34.394249, 26.362879>,  <28.133408, 34.009811, 26.378979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024103, 34.394249, 26.362879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512954, -0.180983, -0.839121,
		-0.813762, -0.208652, 0.542454,
		-0.273259, 0.961098, -0.040248,
		27.942125, 34.682579, 26.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474504, 33.966991, 26.028313>,  <28.133408, 34.009811, 26.378979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474504, 33.966991, 26.028313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596333, 34.346588, 25.995689>,  <27.669430, 34.574345, 25.976116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596333, 34.346588, 25.995689>,  <27.474504, 33.966991, 26.028313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596333, 34.346588, 25.995689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420915, 0.057286, -0.905290,
		-0.854440, 0.310054, 0.416892,
		0.304571, 0.948992, -0.081559,
		27.687704, 34.631287, 25.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854313, 34.366535, 25.835888>,  <27.474504, 33.966991, 26.028313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854313, 34.366535, 25.835888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183290, 34.564667, 25.724007>,  <27.380678, 34.683544, 25.656878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183290, 34.564667, 25.724007>,  <26.854313, 34.366535, 25.835888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183290, 34.564667, 25.724007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347851, 0.048877, -0.936275,
		-0.450093, 0.867329, 0.212499,
		0.822445, 0.495329, -0.279702,
		27.430023, 34.713264, 25.640097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695583, 34.872875, 25.372278>,  <26.854313, 34.366535, 25.835888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695583, 34.872875, 25.372278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083485, 34.846931, 25.278152>,  <27.316225, 34.831364, 25.221676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083485, 34.846931, 25.278152>,  <26.695583, 34.872875, 25.372278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083485, 34.846931, 25.278152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232671, 0.045794, -0.971477,
		0.073786, 0.996843, 0.029318,
		0.969752, -0.064860, -0.235315,
		27.374411, 34.827473, 25.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.883816, 39.187481, 45.666069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529148, 39.140015, 45.487301>,  <36.316349, 39.111534, 45.380039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529148, 39.140015, 45.487301>,  <36.883816, 39.187481, 45.666069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529148, 39.140015, 45.487301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446841, 0.468567, 0.762088,
		0.118981, 0.875422, -0.468487,
		-0.886666, -0.118665, -0.446924,
		36.263149, 39.104416, 45.353222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582756, 39.865513, 45.665833>,  <36.883816, 39.187481, 45.666069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582756, 39.865513, 45.665833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287354, 39.598503, 45.627815>,  <36.110111, 39.438297, 45.605007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287354, 39.598503, 45.627815>,  <36.582756, 39.865513, 45.665833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287354, 39.598503, 45.627815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498229, 0.445283, 0.743970,
		-0.454295, 0.596775, -0.661420,
		-0.738502, -0.667520, -0.095040,
		36.065804, 39.398247, 45.599304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829403, 40.302361, 45.657589>,  <36.582756, 39.865513, 45.665833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829403, 40.302361, 45.657589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746937, 39.919662, 45.739689>,  <35.697456, 39.690044, 45.788948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746937, 39.919662, 45.739689>,  <35.829403, 40.302361, 45.657589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746937, 39.919662, 45.739689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465958, 0.280441, 0.839188,
		-0.860452, 0.077377, -0.503622,
		-0.206170, -0.956747, 0.205252,
		35.685085, 39.632637, 45.801266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143951, 40.257538, 45.670753>,  <35.829403, 40.302361, 45.657589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143951, 40.257538, 45.670753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291351, 39.955994, 45.888340>,  <35.379791, 39.775066, 46.018890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291351, 39.955994, 45.888340>,  <35.143951, 40.257538, 45.670753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291351, 39.955994, 45.888340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525437, 0.313808, 0.790848,
		-0.766891, -0.577249, -0.280468,
		0.368503, -0.753862, 0.543964,
		35.401901, 39.729836, 46.051529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606327, 40.176147, 46.105858>,  <35.143951, 40.257538, 45.670753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606327, 40.176147, 46.105858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885334, 39.965462, 46.300194>,  <35.052738, 39.839050, 46.416798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885334, 39.965462, 46.300194>,  <34.606327, 40.176147, 46.105858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885334, 39.965462, 46.300194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305431, 0.394802, 0.866512,
		-0.648213, -0.752800, 0.114508,
		0.697518, -0.526711, 0.485844,
		35.094589, 39.807449, 46.445946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224232, 39.830227, 46.695160>,  <34.606327, 40.176147, 46.105858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224232, 39.830227, 46.695160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608963, 39.857105, 46.801270>,  <34.839802, 39.873230, 46.864937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608963, 39.857105, 46.801270>,  <34.224232, 39.830227, 46.695160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608963, 39.857105, 46.801270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273318, 0.283940, 0.919062,
		-0.013571, -0.956485, 0.291466,
		0.961828, 0.067191, 0.265278,
		34.897511, 39.877262, 46.880852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233669, 39.626854, 47.403931>,  <34.224232, 39.830227, 46.695160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233669, 39.626854, 47.403931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574787, 39.833622, 47.374184>,  <34.779457, 39.957684, 47.356335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574787, 39.833622, 47.374184>,  <34.233669, 39.626854, 47.403931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574787, 39.833622, 47.374184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123569, 0.338073, 0.932972,
		0.507415, -0.786446, 0.352183,
		0.852796, 0.516923, -0.074363,
		34.830627, 39.988701, 47.351875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595100, 39.518909, 47.974190>,  <34.233669, 39.626854, 47.403931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595100, 39.518909, 47.974190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768501, 39.854717, 47.843174>,  <34.872543, 40.056202, 47.764565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768501, 39.854717, 47.843174>,  <34.595100, 39.518909, 47.974190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768501, 39.854717, 47.843174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047372, 0.384199, 0.922034,
		0.899906, -0.384188, 0.206321,
		0.433503, 0.839518, -0.327543,
		34.898552, 40.106571, 47.744911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165848, 39.661968, 48.451355>,  <34.595100, 39.518909, 47.974190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165848, 39.661968, 48.451355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090755, 39.998672, 48.248894>,  <35.045700, 40.200695, 48.127415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090755, 39.998672, 48.248894>,  <35.165848, 39.661968, 48.451355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090755, 39.998672, 48.248894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147642, 0.485280, 0.861804,
		0.971060, 0.236521, 0.033175,
		-0.187735, 0.841761, -0.506156,
		35.034435, 40.251202, 48.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662079, 40.189411, 48.661076>,  <35.165848, 39.661968, 48.451355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662079, 40.189411, 48.661076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367096, 40.418896, 48.518520>,  <35.190105, 40.556587, 48.432987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367096, 40.418896, 48.518520>,  <35.662079, 40.189411, 48.661076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367096, 40.418896, 48.518520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041815, 0.565443, 0.823727,
		0.674099, 0.592560, -0.440980,
		-0.737457, 0.573712, -0.356387,
		35.145859, 40.591011, 48.411606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836208, 40.957653, 48.751781>,  <35.662079, 40.189411, 48.661076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836208, 40.957653, 48.751781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438278, 40.920158, 48.736115>,  <35.199520, 40.897663, 48.726715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438278, 40.920158, 48.736115>,  <35.836208, 40.957653, 48.751781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438278, 40.920158, 48.736115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076370, 0.435852, 0.896772,
		-0.066990, 0.895123, -0.440756,
		-0.994827, -0.093735, -0.039163,
		35.139832, 40.892036, 48.724365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660980, 41.288986, 49.438488>,  <35.836208, 40.957653, 48.751781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660980, 41.288986, 49.438488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301369, 41.266476, 49.264782>,  <35.085602, 41.252968, 49.160561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301369, 41.266476, 49.264782>,  <35.660980, 41.288986, 49.438488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301369, 41.266476, 49.264782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395669, 0.529279, 0.750539,
		0.187608, 0.846579, -0.498103,
		-0.899027, -0.056276, -0.434263,
		35.031662, 41.249592, 49.134502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469875, 41.758099, 50.016884>,  <35.660980, 41.288986, 49.438488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469875, 41.758099, 50.016884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658482, 42.109402, 50.048737>,  <35.771645, 42.320183, 50.067848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658482, 42.109402, 50.048737>,  <35.469875, 41.758099, 50.016884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658482, 42.109402, 50.048737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259685, 0.224582, -0.939216,
		-0.842755, 0.422175, 0.333964,
		0.471516, 0.878254, 0.079635,
		35.799938, 42.372879, 50.072628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013683, 42.216900, 50.038643>,  <35.469875, 41.758099, 50.016884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013683, 42.216900, 50.038643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363441, 42.336357, 49.885670>,  <35.573296, 42.408031, 49.793888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363441, 42.336357, 49.885670>,  <35.013683, 42.216900, 50.038643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363441, 42.336357, 49.885670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454302, 0.227024, -0.861435,
		-0.170437, 0.926971, 0.334180,
		0.874392, 0.298639, -0.382431,
		35.625759, 42.425949, 49.770939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043495, 42.995342, 49.750931>,  <35.013683, 42.216900, 50.038643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043495, 42.995342, 49.750931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814758, 43.295776, 49.618946>,  <34.677517, 43.476036, 49.539757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814758, 43.295776, 49.618946>,  <35.043495, 42.995342, 49.750931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814758, 43.295776, 49.618946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068338, -0.444422, -0.893207,
		-0.817515, -0.488221, 0.305465,
		-0.571838, 0.751085, -0.329958,
		34.643208, 43.521103, 49.519958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611851, 42.675922, 49.276840>,  <35.043495, 42.995342, 49.750931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611851, 42.675922, 49.276840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605457, 43.066532, 49.190910>,  <34.601624, 43.300896, 49.139351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605457, 43.066532, 49.190910>,  <34.611851, 42.675922, 49.276840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605457, 43.066532, 49.190910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171049, -0.209014, -0.962837,
		-0.985133, -0.052131, -0.163693,
		-0.015979, 0.976522, -0.214824,
		34.600662, 43.359489, 49.126465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297268, 42.736774, 48.654804>,  <34.611851, 42.675922, 49.276840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297268, 42.736774, 48.654804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423759, 43.116241, 48.657211>,  <34.499653, 43.343922, 48.658653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423759, 43.116241, 48.657211>,  <34.297268, 42.736774, 48.654804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423759, 43.116241, 48.657211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093941, -0.025005, -0.995264,
		-0.944021, 0.315295, -0.097026,
		0.316228, 0.948664, 0.006014,
		34.518627, 43.400841, 48.659016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094994, 42.941429, 48.058834>,  <34.297268, 42.736774, 48.654804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094994, 42.941429, 48.058834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379536, 43.206577, 48.152275>,  <34.550262, 43.365665, 48.208340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379536, 43.206577, 48.152275>,  <34.094994, 42.941429, 48.058834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379536, 43.206577, 48.152275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271359, 0.047563, -0.961302,
		-0.648334, 0.747218, -0.146042,
		0.711356, 0.662875, 0.233601,
		34.592941, 43.405441, 48.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130508, 43.497280, 47.487720>,  <34.094994, 42.941429, 48.058834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130508, 43.497280, 47.487720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.492443, 43.495327, 47.658016>,  <34.709602, 43.494156, 47.760193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.492443, 43.495327, 47.658016>,  <34.130508, 43.497280, 47.487720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492443, 43.495327, 47.658016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425290, 0.057552, -0.903225,
		-0.020095, 0.998331, 0.054150,
		0.904834, -0.004880, 0.425737,
		34.763893, 43.493862, 47.785736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544243, 44.033451, 47.172569>,  <34.130508, 43.497280, 47.487720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544243, 44.033451, 47.172569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796524, 43.770493, 47.337513>,  <34.947891, 43.612717, 47.436481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796524, 43.770493, 47.337513>,  <34.544243, 44.033451, 47.172569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796524, 43.770493, 47.337513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466753, -0.103159, -0.878350,
		0.619966, 0.746448, 0.241781,
		0.630701, -0.657399, 0.412362,
		34.985733, 43.573273, 47.461220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205544, 44.153362, 46.996487>,  <34.544243, 44.033451, 47.172569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205544, 44.153362, 46.996487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263927, 43.778435, 47.123062>,  <35.298958, 43.553478, 47.199005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263927, 43.778435, 47.123062>,  <35.205544, 44.153362, 46.996487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263927, 43.778435, 47.123062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329861, -0.255447, -0.908811,
		0.932678, 0.237030, 0.271899,
		0.145960, -0.937317, 0.316437,
		35.307716, 43.497238, 47.217995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883820, 43.957104, 46.774014>,  <35.205544, 44.153362, 46.996487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883820, 43.957104, 46.774014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747959, 43.585567, 46.833195>,  <35.666443, 43.362644, 46.868702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747959, 43.585567, 46.833195>,  <35.883820, 43.957104, 46.774014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747959, 43.585567, 46.833195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261562, -0.244379, -0.933737,
		0.903451, -0.278443, 0.325952,
		-0.339649, -0.928843, 0.147954,
		35.646065, 43.306915, 46.877583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394157, 43.434441, 46.651779>,  <35.883820, 43.957104, 46.774014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394157, 43.434441, 46.651779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052452, 43.240498, 46.576797>,  <35.847427, 43.124130, 46.531811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052452, 43.240498, 46.576797>,  <36.394157, 43.434441, 46.651779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052452, 43.240498, 46.576797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363465, -0.299311, -0.882217,
		0.371646, -0.821780, 0.431921,
		-0.854267, -0.484861, -0.187451,
		35.796173, 43.095039, 46.520561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567478, 42.750481, 46.336437>,  <36.394157, 43.434441, 46.651779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567478, 42.750481, 46.336437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177830, 42.782566, 46.251907>,  <35.944042, 42.801819, 46.201191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177830, 42.782566, 46.251907>,  <36.567478, 42.750481, 46.336437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177830, 42.782566, 46.251907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161649, -0.406235, -0.899357,
		-0.157988, -0.910241, 0.382755,
		-0.974120, 0.080216, -0.211320,
		35.885593, 42.806629, 46.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239231, 42.079391, 46.320641>,  <36.567478, 42.750481, 46.336437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239231, 42.079391, 46.320641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025730, 42.319469, 46.082355>,  <35.897629, 42.463516, 45.939384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025730, 42.319469, 46.082355>,  <36.239231, 42.079391, 46.320641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025730, 42.319469, 46.082355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160067, -0.620007, -0.768095,
		-0.830356, -0.505323, 0.234856,
		-0.533749, 0.600199, -0.595712,
		35.865604, 42.499531, 45.903641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852623, 41.604069, 45.909344>,  <36.239231, 42.079391, 46.320641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852623, 41.604069, 45.909344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802464, 41.947681, 45.710815>,  <35.772369, 42.153851, 45.591698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802464, 41.947681, 45.710815>,  <35.852623, 41.604069, 45.909344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802464, 41.947681, 45.710815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016901, -0.498350, -0.866811,
		-0.991962, -0.117084, 0.047974,
		-0.125398, 0.859033, -0.496324,
		35.764843, 42.205391, 45.561920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454891, 41.453087, 45.404869>,  <35.852623, 41.604069, 45.909344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454891, 41.453087, 45.404869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578743, 41.804955, 45.260471>,  <35.653053, 42.016075, 45.173832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578743, 41.804955, 45.260471>,  <35.454891, 41.453087, 45.404869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578743, 41.804955, 45.260471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083904, -0.403445, -0.911149,
		-0.947149, 0.251828, -0.198725,
		0.309627, 0.879667, -0.360994,
		35.671631, 42.068855, 45.152172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045151, 41.674149, 44.805126>,  <35.454891, 41.453087, 45.404869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045151, 41.674149, 44.805126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415611, 41.824722, 44.814430>,  <35.637886, 41.915066, 44.820011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415611, 41.824722, 44.814430>,  <35.045151, 41.674149, 44.805126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415611, 41.824722, 44.814430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169627, -0.360666, -0.917141,
		-0.336852, 0.853357, -0.397884,
		0.926152, 0.376432, 0.023261,
		35.693459, 41.937653, 44.821407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354908, 42.106102, 44.801506>,  <35.045151, 41.674149, 44.805126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354908, 42.106102, 44.801506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032639, 42.041668, 44.573490>,  <33.839279, 42.003006, 44.436680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032639, 42.041668, 44.573490>,  <34.354908, 42.106102, 44.801506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032639, 42.041668, 44.573490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592359, 0.215727, 0.776256,
		-0.002074, 0.963075, -0.269227,
		-0.805671, -0.161089, -0.570039,
		33.790936, 41.993340, 44.402477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880146, 42.707867, 44.839989>,  <34.354908, 42.106102, 44.801506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880146, 42.707867, 44.839989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673748, 42.379169, 44.743256>,  <33.549908, 42.181950, 44.685215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673748, 42.379169, 44.743256>,  <33.880146, 42.707867, 44.839989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673748, 42.379169, 44.743256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598291, 0.143695, 0.788289,
		-0.613021, 0.551444, -0.565787,
		-0.515998, -0.821743, -0.241835,
		33.518948, 42.132645, 44.670704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168758, 42.907768, 44.892441>,  <33.880146, 42.707867, 44.839989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168758, 42.907768, 44.892441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141682, 42.509403, 44.916355>,  <33.125435, 42.270386, 44.930702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141682, 42.509403, 44.916355>,  <33.168758, 42.907768, 44.892441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141682, 42.509403, 44.916355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540188, 0.086964, 0.837039,
		-0.838818, 0.024364, -0.543867,
		-0.067691, -0.995913, 0.059786,
		33.121376, 42.210629, 44.934292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387764, 42.735416, 44.945343>,  <33.168758, 42.907768, 44.892441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387764, 42.735416, 44.945343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611450, 42.438328, 45.092667>,  <32.745663, 42.260075, 45.181061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611450, 42.438328, 45.092667>,  <32.387764, 42.735416, 44.945343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611450, 42.438328, 45.092667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584922, -0.038651, 0.810168,
		-0.587494, -0.668485, -0.456048,
		0.559211, -0.742721, 0.368304,
		32.779213, 42.215511, 45.203159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943516, 42.327946, 45.146858>,  <32.387764, 42.735416, 44.945343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943516, 42.327946, 45.146858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253700, 42.172451, 45.345875>,  <32.439812, 42.079155, 45.465286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253700, 42.172451, 45.345875>,  <31.943516, 42.327946, 45.146858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253700, 42.172451, 45.345875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570391, -0.093375, 0.816049,
		-0.270767, -0.916607, -0.294138,
		0.775461, -0.388733, 0.497541,
		32.486340, 42.055832, 45.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696671, 41.884171, 45.605278>,  <31.943516, 42.327946, 45.146858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696671, 41.884171, 45.605278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044189, 41.968693, 45.784409>,  <32.252701, 42.019405, 45.891888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044189, 41.968693, 45.784409>,  <31.696671, 41.884171, 45.605278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044189, 41.968693, 45.784409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456571, -0.008229, 0.889649,
		0.191669, -0.977386, 0.089324,
		0.868796, 0.211301, 0.447823,
		32.304829, 42.032082, 45.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737112, 41.361504, 46.202579>,  <31.696671, 41.884171, 45.605278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737112, 41.361504, 46.202579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991568, 41.664928, 46.259014>,  <32.144241, 41.846985, 46.292873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991568, 41.664928, 46.259014>,  <31.737112, 41.361504, 46.202579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991568, 41.664928, 46.259014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389328, 0.157709, 0.907497,
		0.666146, -0.632223, 0.395656,
		0.636140, 0.758565, 0.141086,
		32.182411, 41.892498, 46.301338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813046, 40.663433, 46.435520>,  <31.737112, 41.361504, 46.202579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813046, 40.663433, 46.435520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560333, 40.369282, 46.337486>,  <31.408705, 40.192791, 46.278667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560333, 40.369282, 46.337486>,  <31.813046, 40.663433, 46.435520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560333, 40.369282, 46.337486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536337, -0.186444, -0.823153,
		0.559638, -0.651500, 0.512205,
		-0.631782, -0.735382, -0.245083,
		31.370798, 40.148666, 46.263962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216785, 40.065414, 46.337307>,  <31.813046, 40.663433, 46.435520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216785, 40.065414, 46.337307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.864954, 39.988174, 46.163383>,  <31.653856, 39.941830, 46.059029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.864954, 39.988174, 46.163383>,  <32.216785, 40.065414, 46.337307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864954, 39.988174, 46.163383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474546, -0.421313, -0.772853,
		-0.033953, -0.886119, 0.462211,
		-0.879575, -0.193100, -0.434809,
		31.601082, 39.930244, 46.032940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341808, 39.508312, 46.144993>,  <32.216785, 40.065414, 46.337307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341808, 39.508312, 46.144993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020355, 39.588833, 45.920975>,  <31.827484, 39.637146, 45.786564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020355, 39.588833, 45.920975>,  <32.341808, 39.508312, 46.144993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020355, 39.588833, 45.920975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292062, -0.686537, -0.665858,
		-0.518533, -0.698673, 0.492929,
		-0.803631, 0.201304, -0.560048,
		31.779266, 39.649223, 45.752960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092976, 38.785660, 45.853752>,  <32.341808, 39.508312, 46.144993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092976, 38.785660, 45.853752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950211, 39.069817, 45.611115>,  <31.864552, 39.240311, 45.465530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950211, 39.069817, 45.611115>,  <32.092976, 38.785660, 45.853752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950211, 39.069817, 45.611115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190358, -0.580430, -0.791747,
		-0.914536, -0.398056, 0.071935,
		-0.356913, 0.710388, -0.606598,
		31.843136, 39.282932, 45.429134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685869, 38.486309, 45.307041>,  <32.092976, 38.785660, 45.853752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685869, 38.486309, 45.307041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759104, 38.839905, 45.134975>,  <31.803045, 39.052063, 45.031738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759104, 38.839905, 45.134975>,  <31.685869, 38.486309, 45.307041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759104, 38.839905, 45.134975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535181, -0.456661, -0.710663,
		-0.824658, -0.100100, -0.556704,
		0.183088, 0.883991, -0.430161,
		31.814030, 39.105103, 45.005928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636433, 38.299843, 44.632454>,  <31.685869, 38.486309, 45.307041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636433, 38.299843, 44.632454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816523, 38.656612, 44.615582>,  <31.924576, 38.870674, 44.605457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816523, 38.656612, 44.615582>,  <31.636433, 38.299843, 44.632454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816523, 38.656612, 44.615582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571997, -0.324360, -0.753398,
		-0.685652, 0.315072, -0.656210,
		0.450223, 0.891919, -0.042178,
		31.951590, 38.924187, 44.602928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442244, 38.628704, 43.977089>,  <31.636433, 38.299843, 44.632454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442244, 38.628704, 43.977089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789972, 38.796326, 44.081917>,  <31.998610, 38.896896, 44.144814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789972, 38.796326, 44.081917>,  <31.442244, 38.628704, 43.977089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789972, 38.796326, 44.081917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357202, -0.166218, -0.919118,
		-0.341596, 0.892619, -0.294182,
		0.869321, 0.419050, 0.262066,
		32.050770, 38.922039, 44.160538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.965393, 39.030972, 49.329582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265965, 39.252987, 49.186871>,  <33.446308, 39.386196, 49.101246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265965, 39.252987, 49.186871>,  <32.965393, 39.030972, 49.329582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265965, 39.252987, 49.186871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034846, -0.506586, -0.861485,
		-0.658893, 0.659778, -0.361322,
		0.751430, 0.555035, -0.356776,
		33.491394, 39.419498, 49.079838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791031, 39.180447, 48.583427>,  <32.965393, 39.030972, 49.329582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791031, 39.180447, 48.583427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177689, 39.281528, 48.600071>,  <33.409683, 39.342178, 48.610058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177689, 39.281528, 48.600071>,  <32.791031, 39.180447, 48.583427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177689, 39.281528, 48.600071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178106, -0.546555, -0.818264,
		-0.184036, 0.798385, -0.573335,
		0.966648, 0.252705, 0.041611,
		33.467682, 39.357342, 48.612553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008949, 39.208313, 47.883968>,  <32.791031, 39.180447, 48.583427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008949, 39.208313, 47.883968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.345627, 39.162170, 48.094963>,  <33.547634, 39.134483, 48.221561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.345627, 39.162170, 48.094963>,  <33.008949, 39.208313, 47.883968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345627, 39.162170, 48.094963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307256, -0.700998, -0.643580,
		0.444014, 0.703771, -0.554579,
		0.841692, -0.115361, 0.527491,
		33.598133, 39.127563, 48.253212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532051, 39.201382, 47.338757>,  <33.008949, 39.208313, 47.883968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532051, 39.201382, 47.338757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711773, 39.016006, 47.644264>,  <33.819607, 38.904781, 47.827568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711773, 39.016006, 47.644264>,  <33.532051, 39.201382, 47.338757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711773, 39.016006, 47.644264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226301, -0.768003, -0.599133,
		0.864239, 0.442038, -0.240194,
		0.449309, -0.463438, 0.763771,
		33.846565, 38.876976, 47.873394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148609, 38.996628, 47.082211>,  <33.532051, 39.201382, 47.338757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148609, 38.996628, 47.082211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055332, 38.764408, 47.394260>,  <33.999367, 38.625076, 47.581490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055332, 38.764408, 47.394260>,  <34.148609, 38.996628, 47.082211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055332, 38.764408, 47.394260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382919, -0.792243, -0.475105,
		0.893865, 0.187931, 0.407048,
		-0.233194, -0.580545, 0.780120,
		33.985374, 38.590244, 47.628296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796867, 38.665703, 47.209858>,  <34.148609, 38.996628, 47.082211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796867, 38.665703, 47.209858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506298, 38.442997, 47.371021>,  <34.331959, 38.309376, 47.467720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506298, 38.442997, 47.371021>,  <34.796867, 38.665703, 47.209858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506298, 38.442997, 47.371021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412457, -0.822122, -0.392421,
		0.549721, -0.118882, 0.826846,
		-0.726420, -0.556760, 0.402905,
		34.288372, 38.275970, 47.491894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106483, 38.014168, 47.340000>,  <34.796867, 38.665703, 47.209858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106483, 38.014168, 47.340000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.714073, 37.940056, 47.362816>,  <34.478626, 37.895588, 47.376503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.714073, 37.940056, 47.362816>,  <35.106483, 38.014168, 47.340000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714073, 37.940056, 47.362816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094637, -0.714487, -0.693219,
		0.169190, -0.674670, 0.718467,
		-0.981029, -0.185279, 0.057035,
		34.419765, 37.884472, 47.379925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044926, 37.269009, 47.544197>,  <35.106483, 38.014168, 47.340000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044926, 37.269009, 47.544197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713795, 37.378872, 47.348541>,  <34.515114, 37.444790, 47.231148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713795, 37.378872, 47.348541>,  <35.044926, 37.269009, 47.544197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713795, 37.378872, 47.348541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098822, -0.786905, -0.609109,
		-0.552204, -0.552578, 0.624283,
		-0.827832, 0.274660, -0.489139,
		34.465446, 37.461269, 47.201801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818764, 36.590385, 47.360546>,  <35.044926, 37.269009, 47.544197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818764, 36.590385, 47.360546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615433, 36.841877, 47.125156>,  <34.493435, 36.992771, 46.983921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615433, 36.841877, 47.125156>,  <34.818764, 36.590385, 47.360546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615433, 36.841877, 47.125156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002291, -0.682362, -0.731011,
		-0.861160, -0.372942, 0.345424,
		-0.508329, 0.628726, -0.588477,
		34.462933, 37.030495, 46.948612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308018, 36.175793, 47.044594>,  <34.818764, 36.590385, 47.360546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308018, 36.175793, 47.044594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.381195, 36.493591, 46.812969>,  <34.425102, 36.684269, 46.673992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.381195, 36.493591, 46.812969>,  <34.308018, 36.175793, 47.044594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381195, 36.493591, 46.812969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009958, -0.587476, -0.809180,
		-0.983073, 0.153799, -0.099562,
		0.182942, 0.794492, -0.579064,
		34.436077, 36.731937, 46.639252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890266, 36.117336, 46.457863>,  <34.308018, 36.175793, 47.044594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890266, 36.117336, 46.457863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.171970, 36.374336, 46.337063>,  <34.340992, 36.528538, 46.264584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.171970, 36.374336, 46.337063>,  <33.890266, 36.117336, 46.457863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171970, 36.374336, 46.337063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036539, -0.457632, -0.888391,
		-0.708999, 0.614625, -0.345769,
		0.704262, 0.642502, -0.302003,
		34.383247, 36.567085, 46.246464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740887, 36.212692, 45.744644>,  <33.890266, 36.117336, 46.457863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740887, 36.212692, 45.744644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.114769, 36.354763, 45.749989>,  <34.339096, 36.440006, 45.753193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.114769, 36.354763, 45.749989>,  <33.740887, 36.212692, 45.744644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114769, 36.354763, 45.749989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172376, -0.420123, -0.890945,
		-0.310835, 0.835071, -0.453914,
		0.934702, 0.355181, 0.013357,
		34.395180, 36.461319, 45.753994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269855, 36.673702, 45.397514>,  <33.740887, 36.212692, 45.744644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269855, 36.673702, 45.397514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.911018, 36.519608, 45.310970>,  <32.695717, 36.427151, 45.259045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.911018, 36.519608, 45.310970>,  <33.269855, 36.673702, 45.397514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911018, 36.519608, 45.310970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397549, 0.490104, 0.775728,
		-0.192802, 0.781915, -0.592821,
		-0.897097, -0.385237, -0.216356,
		32.641888, 36.404037, 45.246063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781864, 37.254730, 45.255955>,  <33.269855, 36.673702, 45.397514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781864, 37.254730, 45.255955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572220, 36.936279, 45.376942>,  <32.446434, 36.745209, 45.449535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572220, 36.936279, 45.376942>,  <32.781864, 37.254730, 45.255955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572220, 36.936279, 45.376942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488531, 0.571963, 0.658935,
		-0.697598, 0.197590, -0.688706,
		-0.524113, -0.796126, 0.302471,
		32.414986, 36.697441, 45.467682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098507, 37.547951, 45.268570>,  <32.781864, 37.254730, 45.255955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098507, 37.547951, 45.268570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096256, 37.216354, 45.492264>,  <32.094906, 37.017399, 45.626480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096256, 37.216354, 45.492264>,  <32.098507, 37.547951, 45.268570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096256, 37.216354, 45.492264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623396, 0.440183, 0.646232,
		-0.781886, -0.344991, -0.519265,
		-0.005627, -0.828987, 0.559239,
		32.094566, 36.967659, 45.660034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427444, 37.469749, 45.554691>,  <32.098507, 37.547951, 45.268570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427444, 37.469749, 45.554691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.626810, 37.220367, 45.795654>,  <31.746429, 37.070740, 45.940231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.626810, 37.220367, 45.795654>,  <31.427444, 37.469749, 45.554691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626810, 37.220367, 45.795654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472768, 0.386987, 0.791664,
		-0.726688, -0.679373, -0.101870,
		0.498413, -0.623453, 0.602404,
		31.776335, 37.033333, 45.976376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872221, 37.165688, 45.940704>,  <31.427444, 37.469749, 45.554691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872221, 37.165688, 45.940704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.216959, 37.135315, 46.141285>,  <31.423801, 37.117092, 46.261635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.216959, 37.135315, 46.141285>,  <30.872221, 37.165688, 45.940704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216959, 37.135315, 46.141285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449526, 0.343453, 0.824601,
		-0.234839, -0.936095, 0.261870,
		0.861845, -0.075931, 0.501455,
		31.475513, 37.112537, 46.291721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692528, 36.907604, 46.581268>,  <30.872221, 37.165688, 45.940704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692528, 36.907604, 46.581268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060118, 37.036671, 46.671932>,  <31.280672, 37.114109, 46.726330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060118, 37.036671, 46.671932>,  <30.692528, 36.907604, 46.581268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060118, 37.036671, 46.671932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337276, 0.345421, 0.875745,
		0.204281, -0.881233, 0.426261,
		0.918974, 0.322665, 0.226656,
		31.335810, 37.133472, 46.739929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818874, 36.678101, 47.301014>,  <30.692528, 36.907604, 46.581268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818874, 36.678101, 47.301014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.078167, 36.969101, 47.211094>,  <31.233742, 37.143703, 47.157143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.078167, 36.969101, 47.211094>,  <30.818874, 36.678101, 47.301014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078167, 36.969101, 47.211094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090437, 0.366696, 0.925935,
		0.756054, -0.579890, 0.303497,
		0.648231, 0.727504, -0.224798,
		31.272636, 37.187351, 47.143654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363960, 36.623688, 47.784584>,  <30.818874, 36.678101, 47.301014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363960, 36.623688, 47.784584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.341114, 37.001534, 47.655312>,  <31.327406, 37.228241, 47.577747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.341114, 37.001534, 47.655312>,  <31.363960, 36.623688, 47.784584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341114, 37.001534, 47.655312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085126, 0.317927, 0.944286,
		0.994732, 0.081443, 0.062253,
		-0.057114, 0.944611, -0.323185,
		31.323980, 37.284916, 47.558357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874725, 37.037132, 48.149540>,  <31.363960, 36.623688, 47.784584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874725, 37.037132, 48.149540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.588034, 37.285000, 48.021591>,  <31.416019, 37.433720, 47.944820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.588034, 37.285000, 48.021591>,  <31.874725, 37.037132, 48.149540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588034, 37.285000, 48.021591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148183, 0.312884, 0.938161,
		0.681427, 0.719805, -0.132429,
		-0.716728, 0.619664, -0.319871,
		31.373014, 37.470898, 47.925629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857233, 37.478970, 48.681999>,  <31.874725, 37.037132, 48.149540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857233, 37.478970, 48.681999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566439, 37.650932, 48.467831>,  <31.391962, 37.754108, 48.339329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566439, 37.650932, 48.467831>,  <31.857233, 37.478970, 48.681999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566439, 37.650932, 48.467831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329866, 0.465226, 0.821434,
		0.602231, 0.773786, -0.196400,
		-0.726984, 0.429908, -0.535419,
		31.348343, 37.779903, 48.307205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878269, 38.276455, 48.759357>,  <31.857233, 37.478970, 48.681999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878269, 38.276455, 48.759357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514744, 38.134666, 48.671345>,  <31.296629, 38.049595, 48.618538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514744, 38.134666, 48.671345>,  <31.878269, 38.276455, 48.759357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514744, 38.134666, 48.671345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346662, 0.348143, 0.870989,
		-0.232134, 0.867842, -0.439277,
		-0.908812, -0.354467, -0.220032,
		31.242100, 38.028328, 48.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453417, 38.807888, 48.942810>,  <31.878269, 38.276455, 48.759357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453417, 38.807888, 48.942810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200628, 38.497967, 48.936020>,  <31.048954, 38.312012, 48.931946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200628, 38.497967, 48.936020>,  <31.453417, 38.807888, 48.942810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200628, 38.497967, 48.936020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430170, 0.332479, 0.839292,
		-0.644643, 0.537712, -0.543416,
		-0.631972, -0.774805, -0.016977,
		31.011036, 38.265526, 48.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787054, 39.035877, 48.837425>,  <31.453417, 38.807888, 48.942810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787054, 39.035877, 48.837425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.763596, 38.678532, 49.015621>,  <30.749521, 38.464123, 49.122540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.763596, 38.678532, 49.015621>,  <30.787054, 39.035877, 48.837425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763596, 38.678532, 49.015621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352809, 0.436006, 0.827903,
		-0.933856, -0.108620, -0.340757,
		-0.058646, -0.893364, 0.445489,
		30.746002, 38.410522, 49.149269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029270, 38.928967, 48.858456>,  <30.787054, 39.035877, 48.837425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029270, 38.928967, 48.858456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226488, 38.705986, 49.125633>,  <30.344818, 38.572197, 49.285942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226488, 38.705986, 49.125633>,  <30.029270, 38.928967, 48.858456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226488, 38.705986, 49.125633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705359, 0.193305, 0.681984,
		-0.509292, -0.807391, -0.297896,
		0.493043, -0.557452, 0.667949,
		30.374401, 38.538750, 49.326019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037149, 39.697273, 48.712452>,  <30.029270, 38.928967, 48.858456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037149, 39.697273, 48.712452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742199, 39.919037, 48.558098>,  <29.565229, 40.052094, 48.465485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742199, 39.919037, 48.558098>,  <30.037149, 39.697273, 48.712452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742199, 39.919037, 48.558098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480924, 0.029737, -0.876258,
		-0.474330, -0.831713, -0.288556,
		-0.737376, 0.554409, -0.385885,
		29.520987, 40.085358, 48.442333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575392, 39.258183, 48.213387>,  <30.037149, 39.697273, 48.712452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575392, 39.258183, 48.213387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.693172, 39.640324, 48.203583>,  <29.763842, 39.869606, 48.197701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.693172, 39.640324, 48.203583>,  <29.575392, 39.258183, 48.213387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693172, 39.640324, 48.203583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566075, -0.195025, -0.800952,
		-0.769971, 0.221967, -0.598227,
		0.294454, 0.955351, -0.024514,
		29.781509, 39.926929, 48.196228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535616, 39.444954, 47.424900>,  <29.575392, 39.258183, 48.213387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535616, 39.444954, 47.424900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.743971, 39.748650, 47.580971>,  <29.868984, 39.930866, 47.674614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.743971, 39.748650, 47.580971>,  <29.535616, 39.444954, 47.424900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743971, 39.748650, 47.580971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522330, 0.078042, -0.849165,
		-0.675166, 0.646120, -0.355920,
		0.520886, 0.759236, 0.390179,
		29.900236, 39.976421, 47.698025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486256, 40.010712, 46.938740>,  <29.535616, 39.444954, 47.424900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486256, 40.010712, 46.938740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817947, 40.055462, 47.157780>,  <30.016962, 40.082314, 47.289204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817947, 40.055462, 47.157780>,  <29.486256, 40.010712, 46.938740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817947, 40.055462, 47.157780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537180, 0.110992, -0.836133,
		-0.154322, 0.987504, 0.031940,
		0.829230, 0.111876, 0.547596,
		30.066717, 40.089024, 47.322060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845011, 40.569160, 46.660469>,  <29.486256, 40.010712, 46.938740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845011, 40.569160, 46.660469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.122059, 40.384430, 46.882099>,  <30.288288, 40.273590, 47.015076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.122059, 40.384430, 46.882099>,  <29.845011, 40.569160, 46.660469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122059, 40.384430, 46.882099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678405, 0.156126, -0.717908,
		0.245046, 0.873120, 0.421443,
		0.692618, -0.461829, 0.554071,
		30.329844, 40.245880, 47.048321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484642, 40.969742, 46.631809>,  <29.845011, 40.569160, 46.660469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484642, 40.969742, 46.631809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.571964, 40.591358, 46.727734>,  <30.624357, 40.364330, 46.785290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.571964, 40.591358, 46.727734>,  <30.484642, 40.969742, 46.631809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571964, 40.591358, 46.727734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702051, -0.018453, -0.711888,
		0.677839, 0.323770, 0.660081,
		0.218308, -0.945956, 0.239811,
		30.637457, 40.307571, 46.799679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212109, 41.040390, 46.561867>,  <30.484642, 40.969742, 46.631809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212109, 41.040390, 46.561867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.113501, 40.652924, 46.549755>,  <31.054337, 40.420444, 46.542488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.113501, 40.652924, 46.549755>,  <31.212109, 41.040390, 46.561867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113501, 40.652924, 46.549755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548274, -0.113630, -0.828543,
		0.799139, -0.220856, 0.559105,
		-0.246519, -0.968665, -0.030283,
		31.039545, 40.362324, 46.540668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933899, 41.239849, 46.873970>,  <31.212109, 41.040390, 46.561867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933899, 41.239849, 46.873970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042656, 41.620991, 46.820080>,  <32.107910, 41.849674, 46.787746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042656, 41.620991, 46.820080>,  <31.933899, 41.239849, 46.873970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042656, 41.620991, 46.820080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007224, 0.137972, 0.990410,
		0.962300, -0.270259, 0.030630,
		0.271893, 0.952851, -0.134723,
		32.124226, 41.906845, 46.779663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559547, 41.396248, 47.378883>,  <31.933899, 41.239849, 46.873970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559547, 41.396248, 47.378883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.432426, 41.762825, 47.281609>,  <32.356155, 41.982769, 47.223244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.432426, 41.762825, 47.281609>,  <32.559547, 41.396248, 47.378883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432426, 41.762825, 47.281609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289652, 0.338058, 0.895443,
		0.902830, 0.214136, -0.372885,
		-0.317803, 0.916440, -0.243184,
		32.337086, 42.037758, 47.208652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950325, 41.880600, 47.851284>,  <32.559547, 41.396248, 47.378883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950325, 41.880600, 47.851284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.633465, 42.097221, 47.738697>,  <32.443348, 42.227192, 47.671146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.633465, 42.097221, 47.738697>,  <32.950325, 41.880600, 47.851284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633465, 42.097221, 47.738697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052162, 0.399409, 0.915288,
		0.608095, 0.739726, -0.288143,
		-0.792149, 0.541551, -0.281464,
		32.395821, 42.259686, 47.654259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149136, 42.548779, 48.006756>,  <32.950325, 41.880600, 47.851284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149136, 42.548779, 48.006756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751232, 42.522266, 47.975624>,  <32.512489, 42.506359, 47.956947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751232, 42.522266, 47.975624>,  <33.149136, 42.548779, 48.006756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751232, 42.522266, 47.975624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097239, 0.378670, 0.920410,
		-0.031532, 0.923156, -0.383131,
		-0.994762, -0.066277, -0.077826,
		32.452805, 42.502384, 47.952274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009232, 43.232201, 48.155457>,  <33.149136, 42.548779, 48.006756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009232, 43.232201, 48.155457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.692097, 42.998627, 48.225227>,  <32.501816, 42.858482, 48.267090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.692097, 42.998627, 48.225227>,  <33.009232, 43.232201, 48.155457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692097, 42.998627, 48.225227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147373, 0.461420, 0.874856,
		-0.591347, 0.667912, -0.451888,
		-0.792837, -0.583939, 0.174427,
		32.454247, 42.823444, 48.277557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559475, 43.646839, 48.524166>,  <33.009232, 43.232201, 48.155457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559475, 43.646839, 48.524166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.421009, 43.278416, 48.595524>,  <32.337929, 43.057362, 48.638340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.421009, 43.278416, 48.595524>,  <32.559475, 43.646839, 48.524166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421009, 43.278416, 48.595524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167478, 0.247766, 0.954234,
		-0.923105, 0.300443, -0.240024,
		-0.346163, -0.921057, 0.178397,
		32.317162, 43.002098, 48.649044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878826, 43.722664, 48.877136>,  <32.559475, 43.646839, 48.524166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878826, 43.722664, 48.877136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.982498, 43.356007, 48.998844>,  <32.044701, 43.136013, 49.071869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.982498, 43.356007, 48.998844>,  <31.878826, 43.722664, 48.877136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982498, 43.356007, 48.998844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100518, 0.287727, 0.952423,
		-0.960584, -0.277436, -0.017566,
		0.259182, -0.916648, 0.304273,
		32.060253, 43.081013, 49.090126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461906, 43.550579, 49.488140>,  <31.878826, 43.722664, 48.877136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461906, 43.550579, 49.488140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.789539, 43.321938, 49.507618>,  <31.986120, 43.184753, 49.519306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.789539, 43.321938, 49.507618>,  <31.461906, 43.550579, 49.488140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789539, 43.321938, 49.507618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083622, 0.202944, 0.975613,
		-0.567547, -0.795036, 0.214026,
		0.819083, -0.571604, 0.048698,
		32.035263, 43.150455, 49.522228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342863, 43.301971, 50.089649>,  <31.461906, 43.550579, 49.488140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342863, 43.301971, 50.089649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726898, 43.206825, 50.030785>,  <31.957319, 43.149738, 49.995468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726898, 43.206825, 50.030785>,  <31.342863, 43.301971, 50.089649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726898, 43.206825, 50.030785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170885, 0.082309, 0.981847,
		-0.221432, -0.967805, 0.119671,
		0.960086, -0.237863, -0.147158,
		32.014923, 43.135468, 49.986637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.777737, 38.693050, 35.234802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031094, 38.541527, 35.504711>,  <38.183109, 38.450615, 35.666656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031094, 38.541527, 35.504711>,  <37.777737, 38.693050, 35.234802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031094, 38.541527, 35.504711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768480, -0.205559, 0.605957,
		-0.090833, -0.902359, -0.421304,
		0.633394, -0.378805, 0.674773,
		38.221111, 38.427887, 35.707142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459892, 38.064236, 35.541428>,  <37.777737, 38.693050, 35.234802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459892, 38.064236, 35.541428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717850, 38.198528, 35.816063>,  <37.872623, 38.279106, 35.980843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717850, 38.198528, 35.816063>,  <37.459892, 38.064236, 35.541428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717850, 38.198528, 35.816063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737408, 0.037234, 0.674420,
		0.200863, -0.941220, 0.271586,
		0.644890, 0.335736, 0.686584,
		37.911316, 38.299248, 36.022038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351135, 37.661343, 36.123016>,  <37.459892, 38.064236, 35.541428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351135, 37.661343, 36.123016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518696, 37.990578, 36.276402>,  <37.619232, 38.188118, 36.368435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518696, 37.990578, 36.276402>,  <37.351135, 37.661343, 36.123016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518696, 37.990578, 36.276402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682346, 0.006706, 0.730998,
		0.599106, -0.567871, 0.564442,
		0.418898, 0.823090, 0.383467,
		37.644363, 38.237503, 36.391441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219925, 37.618198, 36.752598>,  <37.351135, 37.661343, 36.123016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219925, 37.618198, 36.752598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347469, 37.996700, 36.730946>,  <37.423996, 38.223801, 36.717953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347469, 37.996700, 36.730946>,  <37.219925, 37.618198, 36.752598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347469, 37.996700, 36.730946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552056, 0.231849, 0.800925,
		0.770429, -0.225500, 0.596313,
		0.318863, 0.946254, -0.054134,
		37.443127, 38.280575, 36.714706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409409, 37.875271, 37.440990>,  <37.219925, 37.618198, 36.752598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409409, 37.875271, 37.440990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338112, 38.210129, 37.234142>,  <37.295334, 38.411045, 37.110035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338112, 38.210129, 37.234142>,  <37.409409, 37.875271, 37.440990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338112, 38.210129, 37.234142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597663, 0.325382, 0.732752,
		0.781683, 0.439673, 0.442334,
		-0.178244, 0.837146, -0.517122,
		37.284637, 38.461273, 37.079006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552174, 38.259663, 37.963699>,  <37.409409, 37.875271, 37.440990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552174, 38.259663, 37.963699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328026, 38.447655, 37.690907>,  <37.193535, 38.560452, 37.527233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328026, 38.447655, 37.690907>,  <37.552174, 38.259663, 37.963699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328026, 38.447655, 37.690907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516461, 0.445435, 0.731338,
		0.647494, 0.762039, -0.006882,
		-0.560374, 0.469983, -0.681980,
		37.159912, 38.588650, 37.486313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522167, 38.971172, 38.115887>,  <37.552174, 38.259663, 37.963699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522167, 38.971172, 38.115887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192181, 38.871811, 37.912819>,  <36.994190, 38.812195, 37.790977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192181, 38.871811, 37.912819>,  <37.522167, 38.971172, 38.115887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192181, 38.871811, 37.912819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555446, 0.522335, 0.647029,
		0.104450, 0.815759, -0.568882,
		-0.824967, -0.248401, -0.507668,
		36.944691, 38.797291, 37.760517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170284, 39.625858, 38.040932>,  <37.522167, 38.971172, 38.115887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170284, 39.625858, 38.040932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900101, 39.333073, 38.005203>,  <36.737991, 39.157402, 37.983768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900101, 39.333073, 38.005203>,  <37.170284, 39.625858, 38.040932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900101, 39.333073, 38.005203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638372, 0.519822, 0.567685,
		-0.369098, 0.440466, -0.818386,
		-0.675462, -0.731966, -0.089316,
		36.697464, 39.113483, 37.978409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606026, 39.974670, 37.862663>,  <37.170284, 39.625858, 38.040932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606026, 39.974670, 37.862663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449383, 39.626331, 37.981503>,  <36.355396, 39.417328, 38.052807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449383, 39.626331, 37.981503>,  <36.606026, 39.974670, 37.862663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449383, 39.626331, 37.981503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621217, 0.488416, 0.612813,
		-0.678774, 0.055421, -0.732253,
		-0.391607, -0.870849, 0.297095,
		36.331902, 39.365078, 38.070633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828968, 39.989117, 37.882233>,  <36.606026, 39.974670, 37.862663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828968, 39.989117, 37.882233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918026, 39.686859, 38.128628>,  <35.971458, 39.505505, 38.276463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918026, 39.686859, 38.128628>,  <35.828968, 39.989117, 37.882233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918026, 39.686859, 38.128628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660366, 0.347920, 0.665484,
		-0.717180, -0.554940, -0.421537,
		0.222643, -0.755641, 0.615984,
		35.984818, 39.460167, 38.313423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213188, 39.763592, 38.138153>,  <35.828968, 39.989117, 37.882233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213188, 39.763592, 38.138153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462109, 39.605225, 38.408260>,  <35.611462, 39.510204, 38.570324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462109, 39.605225, 38.408260>,  <35.213188, 39.763592, 38.138153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462109, 39.605225, 38.408260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582502, 0.342050, 0.737355,
		-0.522912, -0.852202, -0.017769,
		0.622298, -0.395922, 0.675271,
		35.648796, 39.486446, 38.610840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798473, 39.355331, 38.652836>,  <35.213188, 39.763592, 38.138153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798473, 39.355331, 38.652836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145100, 39.460827, 38.822311>,  <35.353077, 39.524124, 38.923996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145100, 39.460827, 38.822311>,  <34.798473, 39.355331, 38.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145100, 39.460827, 38.822311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478884, 0.200455, 0.854686,
		0.140483, -0.943536, 0.300007,
		0.866565, 0.263738, 0.423684,
		35.405067, 39.539948, 38.949417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578823, 38.557907, 38.616734>,  <34.798473, 39.355331, 38.652836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578823, 38.557907, 38.616734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251884, 38.333382, 38.668678>,  <34.055721, 38.198666, 38.699844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251884, 38.333382, 38.668678>,  <34.578823, 38.557907, 38.616734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251884, 38.333382, 38.668678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044274, -0.285930, -0.957227,
		0.574437, -0.776641, 0.258557,
		-0.817351, -0.561314, 0.129863,
		34.006680, 38.164986, 38.707638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729382, 37.893074, 38.255531>,  <34.578823, 38.557907, 38.616734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729382, 37.893074, 38.255531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332760, 37.885880, 38.306915>,  <34.094788, 37.881561, 38.337746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332760, 37.885880, 38.306915>,  <34.729382, 37.893074, 38.255531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332760, 37.885880, 38.306915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092263, -0.598320, -0.795928,
		0.091179, -0.801055, 0.591605,
		-0.991551, -0.017989, 0.128462,
		34.035294, 37.880482, 38.345455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479462, 37.179623, 38.117268>,  <34.729382, 37.893074, 38.255531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479462, 37.179623, 38.117268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171143, 37.417564, 38.026028>,  <33.986153, 37.560329, 37.971283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171143, 37.417564, 38.026028>,  <34.479462, 37.179623, 38.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171143, 37.417564, 38.026028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110508, -0.477449, -0.871683,
		-0.627428, -0.646680, 0.433750,
		-0.770794, 0.594851, -0.228101,
		33.939903, 37.596020, 37.957596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852795, 36.730602, 37.845753>,  <34.479462, 37.179623, 38.117268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852795, 36.730602, 37.845753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757782, 37.095520, 37.712307>,  <33.700775, 37.314472, 37.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757782, 37.095520, 37.712307>,  <33.852795, 36.730602, 37.845753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757782, 37.095520, 37.712307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305964, -0.396225, -0.865674,
		-0.921937, -0.103548, 0.373244,
		-0.237527, 0.912296, -0.333612,
		33.686523, 37.369209, 37.612225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239944, 36.626892, 37.576706>,  <33.852795, 36.730602, 37.845753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239944, 36.626892, 37.576706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390846, 36.960808, 37.416302>,  <33.481388, 37.161156, 37.320061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390846, 36.960808, 37.416302>,  <33.239944, 36.626892, 37.576706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390846, 36.960808, 37.416302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315919, -0.291031, -0.903048,
		-0.870560, 0.467364, 0.153933,
		0.377253, 0.834788, -0.401010,
		33.504021, 37.211243, 37.295998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771240, 36.898479, 37.219093>,  <33.239944, 36.626892, 37.576706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771240, 36.898479, 37.219093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091843, 37.081726, 37.065353>,  <33.284203, 37.191673, 36.973110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091843, 37.081726, 37.065353>,  <32.771240, 36.898479, 37.219093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091843, 37.081726, 37.065353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298453, -0.250501, -0.920965,
		-0.518190, 0.852864, -0.064050,
		0.801502, 0.458119, -0.384346,
		33.332294, 37.219162, 36.950050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446312, 37.303310, 36.635651>,  <32.771240, 36.898479, 37.219093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446312, 37.303310, 36.635651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835449, 37.279640, 36.546139>,  <33.068932, 37.265438, 36.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835449, 37.279640, 36.546139>,  <32.446312, 37.303310, 36.635651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835449, 37.279640, 36.546139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224443, -0.004668, -0.974476,
		0.056623, 0.998237, -0.017824,
		0.972841, -0.059179, -0.223783,
		33.127300, 37.261887, 36.479004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604706, 37.754707, 36.135151>,  <32.446312, 37.303310, 36.635651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604706, 37.754707, 36.135151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870152, 37.456020, 36.117188>,  <33.029419, 37.276806, 36.106411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870152, 37.456020, 36.117188>,  <32.604706, 37.754707, 36.135151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870152, 37.456020, 36.117188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295229, -0.206268, -0.932895,
		0.687350, 0.632345, -0.357338,
		0.663619, -0.746722, -0.044908,
		33.069237, 37.232002, 36.103714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794437, 37.786079, 35.420773>,  <32.604706, 37.754707, 36.135151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794437, 37.786079, 35.420773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896667, 37.417404, 35.537506>,  <32.958008, 37.196198, 35.607548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896667, 37.417404, 35.537506>,  <32.794437, 37.786079, 35.420773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896667, 37.417404, 35.537506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294511, -0.361738, -0.884539,
		0.920838, 0.140121, -0.363901,
		0.255579, -0.921690, 0.291834,
		32.973343, 37.140896, 35.625057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180294, 37.592037, 34.820629>,  <32.794437, 37.786079, 35.420773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180294, 37.592037, 34.820629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108620, 37.252533, 35.019627>,  <33.065613, 37.048832, 35.139027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108620, 37.252533, 35.019627>,  <33.180294, 37.592037, 34.820629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108620, 37.252533, 35.019627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212751, -0.460282, -0.861903,
		0.960535, -0.260286, -0.098097,
		-0.179189, -0.848759, 0.497494,
		33.054863, 36.997906, 35.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186745, 37.047527, 34.345119>,  <33.180294, 37.592037, 34.820629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186745, 37.047527, 34.345119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029106, 36.825844, 34.638390>,  <32.934521, 36.692833, 34.814350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029106, 36.825844, 34.638390>,  <33.186745, 37.047527, 34.345119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029106, 36.825844, 34.638390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476475, -0.558953, -0.678634,
		0.785911, -0.616787, -0.043783,
		-0.394100, -0.554207, 0.733171,
		32.910877, 36.659580, 34.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251202, 36.436077, 34.054420>,  <33.186745, 37.047527, 34.345119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251202, 36.436077, 34.054420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960587, 36.396732, 34.326439>,  <32.786217, 36.373127, 34.489651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960587, 36.396732, 34.326439>,  <33.251202, 36.436077, 34.054420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960587, 36.396732, 34.326439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541719, -0.526845, -0.654961,
		0.422702, -0.844251, 0.329490,
		-0.726542, -0.098362, 0.680046,
		32.742622, 36.367222, 34.530453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097103, 35.666473, 34.135220>,  <33.251202, 36.436077, 34.054420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097103, 35.666473, 34.135220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775162, 35.874535, 34.249516>,  <32.581997, 35.999371, 34.318092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775162, 35.874535, 34.249516>,  <33.097103, 35.666473, 34.135220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775162, 35.874535, 34.249516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569626, -0.541971, -0.617895,
		-0.166535, -0.660083, 0.732500,
		-0.804855, 0.520152, 0.285744,
		32.533707, 36.030582, 34.335239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590912, 35.156616, 34.420189>,  <33.097103, 35.666473, 34.135220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590912, 35.156616, 34.420189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413635, 35.479908, 34.265091>,  <32.307270, 35.673882, 34.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413635, 35.479908, 34.265091>,  <32.590912, 35.156616, 34.420189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413635, 35.479908, 34.265091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574434, -0.588124, -0.569328,
		-0.688188, -0.029592, 0.724929,
		-0.443196, 0.808229, -0.387741,
		32.280678, 35.722378, 34.148769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833458, 34.876583, 35.123077>,  <32.590912, 35.156616, 34.420189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833458, 34.876583, 35.123077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921890, 34.528111, 34.947731>,  <32.974949, 34.319027, 34.842525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921890, 34.528111, 34.947731>,  <32.833458, 34.876583, 35.123077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921890, 34.528111, 34.947731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196640, -0.400433, 0.894978,
		-0.955225, -0.284064, 0.082781,
		0.221083, -0.871184, -0.438362,
		32.988216, 34.266754, 34.816223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473686, 34.420265, 35.548584>,  <32.833458, 34.876583, 35.123077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473686, 34.420265, 35.548584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768211, 34.237457, 35.348991>,  <32.944927, 34.127773, 35.229237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768211, 34.237457, 35.348991>,  <32.473686, 34.420265, 35.548584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768211, 34.237457, 35.348991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308798, -0.429200, 0.848782,
		-0.602070, -0.779051, -0.174899,
		0.736312, -0.457018, -0.498978,
		32.989105, 34.100353, 35.199299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326950, 33.642822, 35.633907>,  <32.473686, 34.420265, 35.548584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326950, 33.642822, 35.633907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709507, 33.759338, 35.642525>,  <32.939041, 33.829247, 35.647694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709507, 33.759338, 35.642525>,  <32.326950, 33.642822, 35.633907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709507, 33.759338, 35.642525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100758, -0.398250, 0.911726,
		0.274158, -0.869797, -0.410233,
		0.956392, 0.291292, 0.021545,
		32.996426, 33.846725, 35.648987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652100, 33.046806, 35.747276>,  <32.326950, 33.642822, 35.633907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652100, 33.046806, 35.747276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874199, 33.356251, 35.869408>,  <33.007458, 33.541916, 35.942684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874199, 33.356251, 35.869408>,  <32.652100, 33.046806, 35.747276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874199, 33.356251, 35.869408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056784, -0.401523, 0.914087,
		0.829741, -0.490212, -0.266875,
		0.555253, 0.773610, 0.305324,
		33.040775, 33.588333, 35.961006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357197, 32.762650, 35.910969>,  <32.652100, 33.046806, 35.747276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357197, 32.762650, 35.910969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332691, 33.115421, 36.097923>,  <33.317989, 33.327084, 36.210094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332691, 33.115421, 36.097923>,  <33.357197, 32.762650, 35.910969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332691, 33.115421, 36.097923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305147, -0.429296, 0.850053,
		0.950333, 0.194700, -0.242816,
		-0.061265, 0.881928, 0.467386,
		33.314312, 33.380001, 36.238140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894722, 32.709824, 36.350613>,  <33.357197, 32.762650, 35.910969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894722, 32.709824, 36.350613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680313, 33.004181, 36.516090>,  <33.551666, 33.180794, 36.615376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680313, 33.004181, 36.516090>,  <33.894722, 32.709824, 36.350613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680313, 33.004181, 36.516090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299635, -0.292289, 0.908177,
		0.789240, 0.610759, -0.063826,
		-0.536022, 0.735894, 0.413691,
		33.519508, 33.224949, 36.640198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290459, 32.953499, 36.919724>,  <33.894722, 32.709824, 36.350613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290459, 32.953499, 36.919724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923290, 33.076176, 37.020412>,  <33.702988, 33.149780, 37.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923290, 33.076176, 37.020412>,  <34.290459, 32.953499, 36.919724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923290, 33.076176, 37.020412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252027, -0.039304, 0.966922,
		0.306440, 0.950997, -0.041216,
		-0.917920, 0.306691, 0.251721,
		33.647915, 33.168182, 37.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441277, 33.290077, 37.417717>,  <34.290459, 32.953499, 36.919724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441277, 33.290077, 37.417717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048138, 33.240292, 37.472153>,  <33.812256, 33.210423, 37.504814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048138, 33.240292, 37.472153>,  <34.441277, 33.290077, 37.417717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048138, 33.240292, 37.472153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142218, -0.041733, 0.988955,
		-0.117405, 0.991347, 0.058718,
		-0.982848, -0.124459, 0.136088,
		33.753284, 33.202953, 37.512978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343567, 33.772552, 37.899937>,  <34.441277, 33.290077, 37.417717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343567, 33.772552, 37.899937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030533, 33.523808, 37.911533>,  <33.842712, 33.374561, 37.918491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030533, 33.523808, 37.911533>,  <34.343567, 33.772552, 37.899937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030533, 33.523808, 37.911533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098045, 0.169112, 0.980708,
		-0.614773, 0.764645, -0.193316,
		-0.782586, -0.621867, 0.028996,
		33.795757, 33.337246, 37.920231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917164, 34.170147, 38.211143>,  <34.343567, 33.772552, 37.899937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917164, 34.170147, 38.211143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815964, 33.788742, 38.276642>,  <33.755245, 33.559898, 38.315941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815964, 33.788742, 38.276642>,  <33.917164, 34.170147, 38.211143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815964, 33.788742, 38.276642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121128, 0.199142, 0.972456,
		-0.959854, 0.226196, -0.165880,
		-0.252999, -0.953508, 0.163748,
		33.740063, 33.502689, 38.325768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239571, 34.060669, 38.661312>,  <33.917164, 34.170147, 38.211143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239571, 34.060669, 38.661312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448357, 33.719536, 38.667309>,  <33.573627, 33.514854, 38.670906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448357, 33.719536, 38.667309>,  <33.239571, 34.060669, 38.661312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448357, 33.719536, 38.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230465, -0.124081, 0.965137,
		-0.821244, -0.507220, -0.261315,
		0.521961, -0.852838, 0.014995,
		33.604946, 33.463684, 38.671806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888611, 33.706699, 39.209343>,  <33.239571, 34.060669, 38.661312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888611, 33.706699, 39.209343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232712, 33.509266, 39.158222>,  <33.439175, 33.390804, 39.127548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232712, 33.509266, 39.158222>,  <32.888611, 33.706699, 39.209343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232712, 33.509266, 39.158222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134772, -0.021616, 0.990641,
		-0.491728, -0.869429, 0.047926,
		0.860256, -0.493585, -0.127804,
		33.490788, 33.361191, 39.119881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837070, 33.032265, 39.525555>,  <32.888611, 33.706699, 39.209343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837070, 33.032265, 39.525555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236763, 33.045540, 39.533867>,  <33.476578, 33.053505, 39.538853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236763, 33.045540, 39.533867>,  <32.837070, 33.032265, 39.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236763, 33.045540, 39.533867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020855, 0.002030, 0.999780,
		0.033145, -0.999447, 0.002721,
		0.999233, 0.033195, 0.020776,
		33.536533, 33.055496, 39.540100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009357, 32.554409, 40.095173>,  <32.837070, 33.032265, 39.525555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009357, 32.554409, 40.095173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316055, 32.802593, 40.029285>,  <33.500072, 32.951504, 39.989754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316055, 32.802593, 40.029285>,  <33.009357, 32.554409, 40.095173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316055, 32.802593, 40.029285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112383, 0.122895, 0.986036,
		0.632037, -0.774550, 0.024500,
		0.766745, 0.620458, -0.164721,
		33.546078, 32.988731, 39.979870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413074, 32.488773, 40.708176>,  <33.009357, 32.554409, 40.095173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413074, 32.488773, 40.708176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563976, 32.828770, 40.561100>,  <33.654518, 33.032768, 40.472855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563976, 32.828770, 40.561100>,  <33.413074, 32.488773, 40.708176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563976, 32.828770, 40.561100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128613, 0.345092, 0.929715,
		0.917135, -0.398029, 0.020868,
		0.377255, 0.849991, -0.367688,
		33.677155, 33.083767, 40.450794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812443, 32.664062, 41.206833>,  <33.413074, 32.488773, 40.708176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812443, 32.664062, 41.206833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761444, 33.004879, 41.003750>,  <33.730843, 33.209370, 40.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761444, 33.004879, 41.003750>,  <33.812443, 32.664062, 41.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761444, 33.004879, 41.003750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078072, 0.501673, 0.861528,
		0.988761, 0.149482, 0.002558,
		-0.127500, 0.852044, -0.507705,
		33.723194, 33.260494, 40.851437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265083, 33.246075, 41.471024>,  <33.812443, 32.664062, 41.206833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265083, 33.246075, 41.471024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950233, 33.423866, 41.299965>,  <33.761326, 33.530540, 41.197330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950233, 33.423866, 41.299965>,  <34.265083, 33.246075, 41.471024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950233, 33.423866, 41.299965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113130, 0.577532, 0.808491,
		0.606334, 0.684760, -0.404304,
		-0.787122, 0.444477, -0.427644,
		33.714096, 33.557209, 41.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278957, 33.949337, 41.550266>,  <34.265083, 33.246075, 41.471024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278957, 33.949337, 41.550266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883244, 33.931759, 41.494579>,  <33.645813, 33.921211, 41.461166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883244, 33.931759, 41.494579>,  <34.278957, 33.949337, 41.550266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883244, 33.931759, 41.494579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141929, 0.512800, 0.846695,
		0.034185, 0.857383, -0.513543,
		-0.989286, -0.043943, -0.139217,
		33.586456, 33.918575, 41.452816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085316, 34.542854, 41.765697>,  <34.278957, 33.949337, 41.550266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085316, 34.542854, 41.765697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730560, 34.358578, 41.751888>,  <33.517708, 34.248013, 41.743603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730560, 34.358578, 41.751888>,  <34.085316, 34.542854, 41.765697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730560, 34.358578, 41.751888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259596, 0.435147, 0.862124,
		-0.382150, 0.773570, -0.505520,
		-0.886889, -0.460691, -0.034525,
		33.464493, 34.220371, 41.741531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555275, 35.045570, 41.827171>,  <34.085316, 34.542854, 41.765697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555275, 35.045570, 41.827171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402287, 34.700996, 41.960819>,  <33.310493, 34.494251, 42.041008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402287, 34.700996, 41.960819>,  <33.555275, 35.045570, 41.827171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402287, 34.700996, 41.960819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432726, 0.486511, 0.758983,
		-0.816370, 0.145709, -0.558845,
		-0.382475, -0.861438, 0.334121,
		33.287544, 34.442566, 42.061054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836506, 35.216728, 41.865726>,  <33.555275, 35.045570, 41.827171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836506, 35.216728, 41.865726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920284, 34.920971, 42.121674>,  <32.970551, 34.743515, 42.275242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920284, 34.920971, 42.121674>,  <32.836506, 35.216728, 41.865726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920284, 34.920971, 42.121674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517812, 0.471223, 0.714016,
		-0.829458, -0.480881, -0.284170,
		0.209450, -0.739393, 0.639866,
		32.983120, 34.699154, 42.313633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261662, 35.202351, 42.301949>,  <32.836506, 35.216728, 41.865726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261662, 35.202351, 42.301949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517307, 34.970352, 42.503994>,  <32.670692, 34.831154, 42.625221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517307, 34.970352, 42.503994>,  <32.261662, 35.202351, 42.301949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517307, 34.970352, 42.503994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427189, 0.278435, 0.860223,
		-0.639566, -0.765559, -0.069816,
		0.639112, -0.579994, 0.505116,
		32.709042, 34.796352, 42.655529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824095, 35.002476, 42.904694>,  <32.261662, 35.202351, 42.301949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824095, 35.002476, 42.904694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205517, 34.977871, 43.022644>,  <32.434368, 34.963108, 43.093414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205517, 34.977871, 43.022644>,  <31.824095, 35.002476, 42.904694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205517, 34.977871, 43.022644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256350, 0.348344, 0.901633,
		-0.158183, -0.935346, 0.316395,
		0.953553, -0.061515, 0.294878,
		32.491581, 34.959415, 43.111107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821989, 34.701450, 43.586113>,  <31.824095, 35.002476, 42.904694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821989, 34.701450, 43.586113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177689, 34.884182, 43.576729>,  <32.391109, 34.993820, 43.571098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177689, 34.884182, 43.576729>,  <31.821989, 34.701450, 43.586113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177689, 34.884182, 43.576729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218140, 0.468587, 0.856062,
		0.402062, -0.756133, 0.516341,
		0.889247, 0.456824, -0.023458,
		32.444462, 35.021229, 43.569691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994762, 34.681873, 44.287865>,  <31.821989, 34.701450, 43.586113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994762, 34.681873, 44.287865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270317, 34.930370, 44.138474>,  <32.435650, 35.079468, 44.048840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270317, 34.930370, 44.138474>,  <31.994762, 34.681873, 44.287865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270317, 34.930370, 44.138474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031524, 0.489077, 0.871671,
		0.724185, -0.612254, 0.317334,
		0.688885, 0.621247, -0.373483,
		32.476982, 35.116745, 44.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538845, 34.772617, 44.792057>,  <31.994762, 34.681873, 44.287865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538845, 34.772617, 44.792057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555717, 35.108601, 44.575653>,  <32.565842, 35.310192, 44.445812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555717, 35.108601, 44.575653>,  <32.538845, 34.772617, 44.792057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555717, 35.108601, 44.575653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068266, 0.537803, 0.840302,
		0.996775, -0.072381, -0.034653,
		0.042186, 0.839958, -0.541009,
		32.568375, 35.360588, 44.413349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954556, 35.237404, 45.217457>,  <32.538845, 34.772617, 44.792057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954556, 35.237404, 45.217457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766808, 35.464951, 44.947319>,  <32.654160, 35.601479, 44.785236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766808, 35.464951, 44.947319>,  <32.954556, 35.237404, 45.217457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766808, 35.464951, 44.947319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054466, 0.782018, 0.620871,
		0.881321, 0.254634, -0.398039,
		-0.469368, 0.568866, -0.675340,
		32.625996, 35.635609, 44.744717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353851, 35.912769, 45.202877>,  <32.954556, 35.237404, 45.217457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353851, 35.912769, 45.202877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994526, 35.994617, 45.047356>,  <32.778931, 36.043728, 44.954044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994526, 35.994617, 45.047356>,  <33.353851, 35.912769, 45.202877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994526, 35.994617, 45.047356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149972, 0.688973, 0.709102,
		0.412975, 0.695302, -0.588223,
		-0.898309, 0.204625, -0.388805,
		32.725033, 36.056004, 44.930714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951096, 36.391781, 45.040852>,  <33.353851, 35.912769, 45.202877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951096, 36.391781, 45.040852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321949, 36.373318, 45.189606>,  <34.544460, 36.362240, 45.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321949, 36.373318, 45.189606>,  <33.951096, 36.391781, 45.040852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321949, 36.373318, 45.189606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334361, -0.346208, -0.876552,
		0.169213, 0.937022, -0.305545,
		0.927130, -0.046161, 0.371887,
		34.600086, 36.359470, 45.301170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422523, 36.760742, 44.558632>,  <33.951096, 36.391781, 45.040852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422523, 36.760742, 44.558632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611961, 36.497417, 44.792671>,  <34.725624, 36.339424, 44.933094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611961, 36.497417, 44.792671>,  <34.422523, 36.760742, 44.558632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611961, 36.497417, 44.792671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543360, -0.304446, -0.782351,
		0.693158, 0.688435, 0.213514,
		0.473595, -0.658308, 0.585097,
		34.754040, 36.299927, 44.968201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100979, 36.824455, 44.321163>,  <34.422523, 36.760742, 44.558632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100979, 36.824455, 44.321163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101700, 36.479935, 44.524399>,  <35.102131, 36.273224, 44.646339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101700, 36.479935, 44.524399>,  <35.100979, 36.824455, 44.321163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101700, 36.479935, 44.524399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567093, -0.417612, -0.709934,
		0.823652, 0.289411, 0.487687,
		0.001799, -0.861302, 0.508090,
		35.102238, 36.221542, 44.676826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852779, 36.614201, 44.369411>,  <35.100979, 36.824455, 44.321163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852779, 36.614201, 44.369411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611404, 36.297337, 44.405930>,  <35.466579, 36.107216, 44.427841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611404, 36.297337, 44.405930>,  <35.852779, 36.614201, 44.369411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611404, 36.297337, 44.405930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591264, -0.521318, -0.615333,
		0.535038, -0.317339, 0.782963,
		-0.603441, -0.792164, 0.091293,
		35.430370, 36.059689, 44.433319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294781, 36.059906, 44.597847>,  <35.852779, 36.614201, 44.369411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294781, 36.059906, 44.597847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957043, 35.915371, 44.439602>,  <35.754398, 35.828651, 44.344654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957043, 35.915371, 44.439602>,  <36.294781, 36.059906, 44.597847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957043, 35.915371, 44.439602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535574, -0.590322, -0.603887,
		-0.015336, -0.721773, 0.691960,
		-0.844349, -0.361335, -0.395616,
		35.703739, 35.806969, 44.320915>
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
