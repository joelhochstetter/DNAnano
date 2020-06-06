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
	<24.271238, 35.109711, 34.597282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264708, 35.151394, 34.995052>,  <24.260790, 35.176403, 35.233715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264708, 35.151394, 34.995052>,  <24.271238, 35.109711, 34.597282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264708, 35.151394, 34.995052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748545, -0.658087, 0.081256,
		0.662883, 0.745695, -0.067262,
		-0.016328, 0.104212, 0.994421,
		24.259809, 35.182659, 35.293377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880869, 35.535770, 34.760284>,  <24.271238, 35.109711, 34.597282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880869, 35.535770, 34.760284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780066, 35.252720, 35.024334>,  <24.719584, 35.082890, 35.182762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780066, 35.252720, 35.024334>,  <24.880869, 35.535770, 34.760284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780066, 35.252720, 35.024334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919738, -0.387276, -0.064023,
		0.300953, 0.591004, 0.748426,
		-0.252009, -0.707624, 0.660121,
		24.704462, 35.040432, 35.222370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338310, 35.591118, 35.334824>,  <24.880869, 35.535770, 34.760284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338310, 35.591118, 35.334824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219688, 35.209602, 35.315460>,  <25.148516, 34.980694, 35.303841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219688, 35.209602, 35.315460>,  <25.338310, 35.591118, 35.334824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219688, 35.209602, 35.315460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954809, -0.297164, 0.005787,
		-0.019904, -0.044504, 0.998811,
		-0.296553, -0.953789, -0.048408,
		25.130722, 34.923466, 35.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478184, 35.248337, 36.046555>,  <25.338310, 35.591118, 35.334824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478184, 35.248337, 36.046555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524305, 35.033344, 35.712414>,  <25.551979, 34.904350, 35.511929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524305, 35.033344, 35.712414>,  <25.478184, 35.248337, 36.046555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524305, 35.033344, 35.712414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989592, -0.010734, 0.143501,
		-0.086096, -0.843208, 0.530648,
		0.115306, -0.537480, -0.835356,
		25.558897, 34.872101, 35.461807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114489, 34.945133, 36.051479>,  <25.478184, 35.248337, 36.046555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114489, 34.945133, 36.051479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019760, 34.854069, 35.673679>,  <25.962923, 34.799431, 35.446999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019760, 34.854069, 35.673679>,  <26.114489, 34.945133, 36.051479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019760, 34.854069, 35.673679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950952, -0.253453, -0.177345,
		-0.199012, -0.940176, 0.276521,
		-0.236821, -0.227665, -0.944502,
		25.948713, 34.785770, 35.390327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546314, 34.446709, 35.844105>,  <26.114489, 34.945133, 36.051479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546314, 34.446709, 35.844105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919573, 34.553909, 35.939949>,  <27.143528, 34.618229, 35.997456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919573, 34.553909, 35.939949>,  <26.546314, 34.446709, 35.844105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919573, 34.553909, 35.939949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332097, -0.897852, -0.289093,
		0.137657, 0.349339, -0.926829,
		0.933147, 0.268001, 0.239610,
		27.199516, 34.634308, 36.011833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003216, 34.388802, 35.266151>,  <26.546314, 34.446709, 35.844105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003216, 34.388802, 35.266151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190441, 34.350174, 35.617512>,  <27.302776, 34.326996, 35.828327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190441, 34.350174, 35.617512>,  <27.003216, 34.388802, 35.266151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190441, 34.350174, 35.617512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239713, -0.942865, -0.231394,
		0.850561, 0.318871, -0.418171,
		0.468064, -0.096573, 0.878402,
		27.330860, 34.321201, 35.881031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573086, 33.988605, 35.052452>,  <27.003216, 34.388802, 35.266151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573086, 33.988605, 35.052452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564037, 33.968315, 35.451836>,  <27.558607, 33.956142, 35.691463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564037, 33.968315, 35.451836>,  <27.573086, 33.988605, 35.052452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564037, 33.968315, 35.451836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255627, -0.965806, -0.043275,
		0.966511, 0.254254, 0.034816,
		-0.022623, -0.050726, 0.998456,
		27.557251, 33.953098, 35.751373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162247, 33.733837, 35.303616>,  <27.573086, 33.988605, 35.052452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162247, 33.733837, 35.303616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928909, 33.656425, 35.619148>,  <27.788908, 33.609978, 35.808468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928909, 33.656425, 35.619148>,  <28.162247, 33.733837, 35.303616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928909, 33.656425, 35.619148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396596, -0.915419, 0.068692,
		0.708819, 0.352919, 0.610757,
		-0.583341, -0.193533, 0.788833,
		27.753906, 33.598366, 35.855797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622440, 33.319962, 35.770439>,  <28.162247, 33.733837, 35.303616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622440, 33.319962, 35.770439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268614, 33.229374, 35.933537>,  <28.056318, 33.175022, 36.031395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268614, 33.229374, 35.933537>,  <28.622440, 33.319962, 35.770439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268614, 33.229374, 35.933537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341797, -0.909580, 0.236304,
		0.317357, 0.348391, 0.881991,
		-0.884567, -0.226469, 0.407740,
		28.003244, 33.161434, 36.055859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794743, 33.068169, 36.308624>,  <28.622440, 33.319962, 35.770439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794743, 33.068169, 36.308624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417551, 32.936192, 36.291042>,  <28.191236, 32.857006, 36.280495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417551, 32.936192, 36.291042>,  <28.794743, 33.068169, 36.308624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417551, 32.936192, 36.291042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287956, -0.874869, 0.389469,
		-0.166955, 0.354603, 0.919990,
		-0.942978, -0.329941, -0.043954,
		28.134657, 32.837208, 36.277855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646612, 32.744030, 36.989796>,  <28.794743, 33.068169, 36.308624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646612, 32.744030, 36.989796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403564, 32.609959, 36.701778>,  <28.257736, 32.529518, 36.528969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403564, 32.609959, 36.701778>,  <28.646612, 32.744030, 36.989796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403564, 32.609959, 36.701778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221280, -0.942135, 0.251828,
		-0.762781, -0.006315, 0.646626,
		-0.607619, -0.335175, -0.720040,
		28.221279, 32.509407, 36.485767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205343, 32.180519, 37.187721>,  <28.646612, 32.744030, 36.989796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205343, 32.180519, 37.187721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205544, 32.114223, 36.793255>,  <28.205664, 32.074448, 36.556576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205544, 32.114223, 36.793255>,  <28.205343, 32.180519, 37.187721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205544, 32.114223, 36.793255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121068, -0.978906, 0.164575,
		-0.992644, -0.119475, 0.019577,
		0.000499, -0.165735, -0.986170,
		28.205692, 32.064503, 36.497402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968462, 31.531023, 37.288681>,  <28.205343, 32.180519, 37.187721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968462, 31.531023, 37.288681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095695, 31.573212, 36.911812>,  <28.172035, 31.598524, 36.685688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095695, 31.573212, 36.911812>,  <27.968462, 31.531023, 37.288681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095695, 31.573212, 36.911812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423615, -0.904881, 0.041721,
		-0.848158, -0.412391, -0.332508,
		0.318085, 0.105469, -0.942177,
		28.191120, 31.604853, 36.629158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912437, 30.945061, 36.944912>,  <27.968462, 31.531023, 37.288681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912437, 30.945061, 36.944912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219172, 31.148365, 36.788128>,  <28.403212, 31.270348, 36.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219172, 31.148365, 36.788128>,  <27.912437, 30.945061, 36.944912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219172, 31.148365, 36.788128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521951, -0.849212, -0.080037,
		-0.373534, -0.143206, -0.916496,
		0.766837, 0.508262, -0.391956,
		28.449223, 31.300844, 36.670540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352093, 30.450649, 36.560783>,  <27.912437, 30.945061, 36.944912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352093, 30.450649, 36.560783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623095, 30.740454, 36.510075>,  <28.785696, 30.914335, 36.479649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623095, 30.740454, 36.510075>,  <28.352093, 30.450649, 36.560783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623095, 30.740454, 36.510075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733772, -0.677649, 0.048693,
		-0.050629, -0.126012, -0.990736,
		0.677507, 0.724509, -0.126773,
		28.826347, 30.957806, 36.472042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871265, 30.197939, 36.096069>,  <28.352093, 30.450649, 36.560783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871265, 30.197939, 36.096069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029194, 30.505964, 36.296516>,  <29.123951, 30.690779, 36.416786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029194, 30.505964, 36.296516>,  <28.871265, 30.197939, 36.096069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029194, 30.505964, 36.296516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864392, -0.496180, 0.081441,
		0.311360, 0.401008, -0.861538,
		0.394819, 0.770064, 0.501118,
		29.147640, 30.736984, 36.446854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501381, 30.361103, 35.803890>,  <28.871265, 30.197939, 36.096069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501381, 30.361103, 35.803890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503355, 30.509592, 36.175304>,  <29.504539, 30.598684, 36.398151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503355, 30.509592, 36.175304>,  <29.501381, 30.361103, 35.803890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503355, 30.509592, 36.175304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866294, -0.465409, 0.181466,
		0.499511, 0.803486, -0.323883,
		0.004933, 0.371222, 0.928531,
		29.504835, 30.620958, 36.453865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145916, 30.579205, 35.900005>,  <29.501381, 30.361103, 35.803890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145916, 30.579205, 35.900005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017611, 30.586887, 36.278790>,  <29.940626, 30.591497, 36.506062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017611, 30.586887, 36.278790>,  <30.145916, 30.579205, 35.900005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017611, 30.586887, 36.278790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861545, -0.409461, 0.300136,
		0.393510, 0.912125, 0.114792,
		-0.320765, 0.019208, 0.946964,
		29.921381, 30.592649, 36.562878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774158, 30.584169, 36.117336>,  <30.145916, 30.579205, 35.900005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774158, 30.584169, 36.117336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537533, 30.524334, 36.434242>,  <30.395557, 30.488434, 36.624386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537533, 30.524334, 36.434242>,  <30.774158, 30.584169, 36.117336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537533, 30.524334, 36.434242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788411, -0.312939, 0.529601,
		0.168709, 0.937920, 0.303058,
		-0.591562, -0.149586, 0.792262,
		30.360064, 30.479458, 36.671921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954390, 31.023190, 36.721882>,  <30.774158, 30.584169, 36.117336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954390, 31.023190, 36.721882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784508, 30.678211, 36.832020>,  <30.682579, 30.471224, 36.898102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784508, 30.678211, 36.832020>,  <30.954390, 31.023190, 36.721882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784508, 30.678211, 36.832020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868464, -0.302205, 0.392992,
		-0.255724, 0.406030, 0.877351,
		-0.424706, -0.862445, 0.275342,
		30.657097, 30.419477, 36.914623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990000, 30.929804, 37.433315>,  <30.954390, 31.023190, 36.721882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990000, 30.929804, 37.433315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986294, 30.549000, 37.310944>,  <30.984070, 30.320517, 37.237522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986294, 30.549000, 37.310944>,  <30.990000, 30.929804, 37.433315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986294, 30.549000, 37.310944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833139, -0.176536, 0.524132,
		-0.552986, -0.250023, 0.794793,
		-0.009265, -0.952010, -0.305926,
		30.983515, 30.263397, 37.219166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247677, 30.558884, 38.005302>,  <30.990000, 30.929804, 37.433315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247677, 30.558884, 38.005302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260542, 30.273970, 37.724842>,  <31.268261, 30.103022, 37.556564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260542, 30.273970, 37.724842>,  <31.247677, 30.558884, 38.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260542, 30.273970, 37.724842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911737, -0.266522, 0.312573,
		-0.409514, -0.649321, 0.640844,
		0.032161, -0.712284, -0.701155,
		31.270189, 30.060286, 37.514496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530016, 30.005390, 38.347191>,  <31.247677, 30.558884, 38.005302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530016, 30.005390, 38.347191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578676, 29.934395, 37.956562>,  <31.607872, 29.891798, 37.722183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578676, 29.934395, 37.956562>,  <31.530016, 30.005390, 38.347191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578676, 29.934395, 37.956562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965123, -0.208637, 0.158142,
		-0.231818, -0.961753, 0.145918,
		0.121649, -0.177489, -0.976575,
		31.615171, 29.881149, 37.663589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826057, 29.303299, 38.288342>,  <31.530016, 30.005390, 38.347191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826057, 29.303299, 38.288342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912777, 29.538761, 37.976833>,  <31.964808, 29.680038, 37.789928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912777, 29.538761, 37.976833>,  <31.826057, 29.303299, 38.288342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912777, 29.538761, 37.976833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953702, -0.298055, 0.040203,
		-0.208451, -0.751431, -0.626018,
		0.216798, 0.588654, -0.778771,
		31.977816, 29.715357, 37.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262768, 28.957682, 37.890175>,  <31.826057, 29.303299, 38.288342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262768, 28.957682, 37.890175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357403, 29.334259, 37.794083>,  <32.414185, 29.560205, 37.736427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357403, 29.334259, 37.794083>,  <32.262768, 28.957682, 37.890175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357403, 29.334259, 37.794083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969892, -0.243536, 0.000799,
		-0.057752, -0.233184, -0.970716,
		0.236591, 0.941443, -0.240228,
		32.428379, 29.616692, 37.722015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958294, 28.982279, 37.649944>,  <32.262768, 28.957682, 37.890175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958294, 28.982279, 37.649944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909996, 29.369322, 37.738632>,  <32.881020, 29.601547, 37.791843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909996, 29.369322, 37.738632>,  <32.958294, 28.982279, 37.649944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909996, 29.369322, 37.738632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992402, 0.122980, 0.003731,
		-0.023657, 0.220484, -0.975104,
		-0.120741, 0.967607, 0.221718,
		32.873775, 29.659603, 37.805149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310871, 28.951281, 37.046864>,  <32.958294, 28.982279, 37.649944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310871, 28.951281, 37.046864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532837, 28.866325, 36.725128>,  <33.666016, 28.815353, 36.532085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532837, 28.866325, 36.725128>,  <33.310871, 28.951281, 37.046864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532837, 28.866325, 36.725128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820426, -0.020382, 0.571389,
		-0.137749, -0.976973, 0.162937,
		0.554911, -0.212387, -0.804342,
		33.699310, 28.802608, 36.483826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054161, 28.697439, 37.375538>,  <33.310871, 28.951281, 37.046864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054161, 28.697439, 37.375538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144714, 28.797009, 36.998859>,  <34.199047, 28.856750, 36.772854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144714, 28.797009, 36.998859>,  <34.054161, 28.697439, 37.375538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144714, 28.797009, 36.998859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890447, 0.338961, 0.303659,
		0.394786, -0.907273, -0.144918,
		0.226380, 0.248922, -0.941695,
		34.212627, 28.871685, 36.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680092, 28.625448, 37.548855>,  <34.054161, 28.697439, 37.375538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680092, 28.625448, 37.548855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639450, 28.835487, 37.210873>,  <34.615067, 28.961512, 37.008083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639450, 28.835487, 37.210873>,  <34.680092, 28.625448, 37.548855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639450, 28.835487, 37.210873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777375, 0.571907, 0.261936,
		0.620778, -0.630234, -0.466305,
		-0.101602, 0.525098, -0.844955,
		34.608971, 28.993017, 36.957386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324890, 28.864040, 37.259491>,  <34.680092, 28.625448, 37.548855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324890, 28.864040, 37.259491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089333, 29.134512, 37.082413>,  <34.947998, 29.296795, 36.976166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089333, 29.134512, 37.082413>,  <35.324890, 28.864040, 37.259491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089333, 29.134512, 37.082413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650556, 0.721604, 0.236779,
		0.479557, -0.148561, -0.864843,
		-0.588898, 0.676178, -0.442698,
		34.912663, 29.337366, 36.949604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763817, 29.224472, 36.853439>,  <35.324890, 28.864040, 37.259491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763817, 29.224472, 36.853439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451756, 29.468754, 36.907711>,  <35.264519, 29.615322, 36.940273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451756, 29.468754, 36.907711>,  <35.763817, 29.224472, 36.853439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451756, 29.468754, 36.907711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624015, 0.775056, 0.099462,
		-0.044416, 0.162260, -0.985748,
		-0.780149, 0.610704, 0.135677,
		35.217712, 29.651964, 36.948414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867935, 29.762535, 36.371693>,  <35.763817, 29.224472, 36.853439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867935, 29.762535, 36.371693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675671, 29.875599, 36.703732>,  <35.560314, 29.943438, 36.902954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675671, 29.875599, 36.703732>,  <35.867935, 29.762535, 36.371693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675671, 29.875599, 36.703732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718728, 0.669320, 0.188257,
		-0.502390, 0.687105, -0.524872,
		-0.480660, 0.282662, 0.830102,
		35.531471, 29.960398, 36.952763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708275, 30.527067, 36.309696>,  <35.867935, 29.762535, 36.371693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708275, 30.527067, 36.309696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759907, 30.367847, 36.672993>,  <35.790886, 30.272316, 36.890968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759907, 30.367847, 36.672993>,  <35.708275, 30.527067, 36.309696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759907, 30.367847, 36.672993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646606, 0.728191, 0.227243,
		-0.751823, 0.557938, 0.351379,
		0.129083, -0.398050, 0.908237,
		35.798634, 30.248432, 36.945465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693348, 30.891958, 36.899937>,  <35.708275, 30.527067, 36.309696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693348, 30.891958, 36.899937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967243, 30.608997, 36.970032>,  <36.131580, 30.439220, 37.012089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967243, 30.608997, 36.970032>,  <35.693348, 30.891958, 36.899937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967243, 30.608997, 36.970032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724449, 0.686889, -0.057940,
		-0.079385, 0.166628, 0.982819,
		0.684742, -0.707403, 0.175242,
		36.172665, 30.396776, 37.022606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487434, 31.606121, 36.695713>,  <35.693348, 30.891958, 36.899937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487434, 31.606121, 36.695713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447311, 31.427452, 36.340088>,  <35.423237, 31.320251, 36.126713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447311, 31.427452, 36.340088>,  <35.487434, 31.606121, 36.695713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447311, 31.427452, 36.340088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599808, 0.740082, -0.304154,
		0.793832, 0.502757, -0.342149,
		-0.100303, -0.446671, -0.889058,
		35.417221, 31.293451, 36.073372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327240, 32.225723, 36.198647>,  <35.487434, 31.606121, 36.695713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327240, 32.225723, 36.198647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191795, 31.930201, 35.965580>,  <35.110527, 31.752888, 35.825741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191795, 31.930201, 35.965580>,  <35.327240, 32.225723, 36.198647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191795, 31.930201, 35.965580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764089, 0.577287, -0.287938,
		0.549098, 0.347711, -0.759993,
		-0.338615, -0.738808, -0.582669,
		35.090210, 31.708559, 35.790779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229973, 32.472729, 35.464542>,  <35.327240, 32.225723, 36.198647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229973, 32.472729, 35.464542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984314, 32.177475, 35.576237>,  <34.836918, 32.000320, 35.643253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984314, 32.177475, 35.576237>,  <35.229973, 32.472729, 35.464542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984314, 32.177475, 35.576237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789053, 0.567754, -0.234629,
		0.014654, -0.364427, -0.931117,
		-0.614150, -0.738138, 0.279233,
		34.800068, 31.956034, 35.660007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711468, 32.546978, 35.003601>,  <35.229973, 32.472729, 35.464542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711468, 32.546978, 35.003601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553562, 32.293530, 35.269741>,  <34.458820, 32.141460, 35.429424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553562, 32.293530, 35.269741>,  <34.711468, 32.546978, 35.003601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553562, 32.293530, 35.269741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824803, 0.563446, 0.047216,
		-0.404803, -0.530140, -0.745041,
		-0.394760, -0.633625, 0.665345,
		34.435135, 32.103443, 35.469345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121136, 32.299500, 34.754799>,  <34.711468, 32.546978, 35.003601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121136, 32.299500, 34.754799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077477, 32.230713, 35.146412>,  <34.051281, 32.189442, 35.381382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077477, 32.230713, 35.146412>,  <34.121136, 32.299500, 34.754799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077477, 32.230713, 35.146412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823661, 0.567030, 0.007772,
		-0.556479, -0.805546, -0.203536,
		-0.109150, -0.171969, 0.979036,
		34.044731, 32.179123, 35.440125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450047, 32.159195, 34.762783>,  <34.121136, 32.299500, 34.754799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450047, 32.159195, 34.762783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531284, 32.238945, 35.146240>,  <33.580029, 32.286797, 35.376316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531284, 32.238945, 35.146240>,  <33.450047, 32.159195, 34.762783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531284, 32.238945, 35.146240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837281, 0.542960, 0.064461,
		-0.507654, -0.815747, 0.277208,
		0.203097, 0.199377, 0.958645,
		33.592213, 32.298759, 35.433834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799259, 32.281315, 34.998714>,  <33.450047, 32.159195, 34.762783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799259, 32.281315, 34.998714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028469, 32.431438, 35.290134>,  <33.165997, 32.521515, 35.464985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028469, 32.431438, 35.290134>,  <32.799259, 32.281315, 34.998714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028469, 32.431438, 35.290134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717749, 0.658914, 0.225096,
		-0.395568, -0.651900, 0.646956,
		0.573029, 0.375311, 0.728546,
		33.200378, 32.544033, 35.508698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430771, 32.272984, 35.625263>,  <32.799259, 32.281315, 34.998714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430771, 32.272984, 35.625263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706909, 32.559765, 35.664047>,  <32.872593, 32.731834, 35.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706909, 32.559765, 35.664047>,  <32.430771, 32.272984, 35.625263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706909, 32.559765, 35.664047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690855, 0.613486, 0.382564,
		0.214797, -0.331087, 0.918827,
		0.690349, 0.716950, 0.096958,
		32.914013, 32.774849, 35.693134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126091, 32.579235, 36.125343>,  <32.430771, 32.272984, 35.625263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126091, 32.579235, 36.125343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418629, 32.829689, 36.017200>,  <32.594151, 32.979961, 35.952312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418629, 32.829689, 36.017200>,  <32.126091, 32.579235, 36.125343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418629, 32.829689, 36.017200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593362, 0.779591, 0.200398,
		0.336245, 0.013861, 0.941672,
		0.731342, 0.626136, -0.270359,
		32.638031, 33.017529, 35.936092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223209, 33.126022, 36.709984>,  <32.126091, 32.579235, 36.125343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223209, 33.126022, 36.709984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368950, 33.268963, 36.365997>,  <32.456394, 33.354729, 36.159603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368950, 33.268963, 36.365997>,  <32.223209, 33.126022, 36.709984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368950, 33.268963, 36.365997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745371, 0.665493, -0.039257,
		0.558275, 0.655299, 0.508834,
		0.364350, 0.357354, -0.859969,
		32.478256, 33.376167, 36.108006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882658, 33.762924, 36.638096>,  <32.223209, 33.126022, 36.709984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882658, 33.762924, 36.638096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085129, 33.774891, 36.293331>,  <32.206612, 33.782070, 36.086472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085129, 33.774891, 36.293331>,  <31.882658, 33.762924, 36.638096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085129, 33.774891, 36.293331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629593, 0.695828, -0.345593,
		0.589403, 0.717584, 0.371048,
		0.506178, 0.029916, -0.861910,
		32.236980, 33.783867, 36.034760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243656, 34.393223, 36.642963>,  <31.882658, 33.762924, 36.638096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243656, 34.393223, 36.642963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137592, 34.228489, 36.294231>,  <32.073956, 34.129646, 36.084991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137592, 34.228489, 36.294231>,  <32.243656, 34.393223, 36.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137592, 34.228489, 36.294231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806645, 0.590090, -0.033417,
		0.528219, 0.694394, -0.488675,
		-0.265158, -0.411838, -0.871826,
		32.058044, 34.104939, 36.032684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990507, 34.999695, 36.216251>,  <32.243656, 34.393223, 36.642963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990507, 34.999695, 36.216251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816513, 34.662247, 36.090332>,  <31.712116, 34.459778, 36.014782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816513, 34.662247, 36.090332>,  <31.990507, 34.999695, 36.216251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816513, 34.662247, 36.090332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878329, 0.474525, -0.057996,
		0.198304, 0.251267, -0.947386,
		-0.434986, -0.843618, -0.314795,
		31.686018, 34.409161, 35.995892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572830, 35.241615, 35.683140>,  <31.990507, 34.999695, 36.216251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572830, 35.241615, 35.683140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422327, 34.881676, 35.771408>,  <31.332026, 34.665710, 35.824371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422327, 34.881676, 35.771408>,  <31.572830, 35.241615, 35.683140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422327, 34.881676, 35.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926511, 0.364748, -0.092390,
		0.002647, -0.239220, -0.970962,
		-0.376259, -0.899852, 0.220675,
		31.309450, 34.611721, 35.837612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095549, 35.059956, 35.197002>,  <31.572830, 35.241615, 35.683140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095549, 35.059956, 35.197002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994535, 34.826710, 35.505859>,  <30.933928, 34.686764, 35.691174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994535, 34.826710, 35.505859>,  <31.095549, 35.059956, 35.197002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994535, 34.826710, 35.505859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901346, 0.431959, 0.031422,
		-0.351858, -0.688036, -0.634667,
		-0.252531, -0.583111, 0.772146,
		30.918776, 34.651775, 35.737503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450678, 35.021500, 35.108597>,  <31.095549, 35.059956, 35.197002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450678, 35.021500, 35.108597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450489, 34.845821, 35.467953>,  <30.450377, 34.740414, 35.683567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450489, 34.845821, 35.467953>,  <30.450678, 35.021500, 35.108597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450489, 34.845821, 35.467953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935580, 0.317428, 0.154690,
		-0.353114, -0.840445, -0.411050,
		-0.000470, -0.439194, 0.898392,
		30.450348, 34.714062, 35.737469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901794, 34.457146, 35.170010>,  <30.450678, 35.021500, 35.108597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901794, 34.457146, 35.170010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942514, 34.600857, 35.541073>,  <29.966946, 34.687084, 35.763710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942514, 34.600857, 35.541073>,  <29.901794, 34.457146, 35.170010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942514, 34.600857, 35.541073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968169, 0.250120, 0.009373,
		-0.228660, -0.899087, 0.373306,
		0.101798, 0.359280, 0.927661,
		29.973053, 34.708641, 35.819370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283087, 34.140121, 35.556690>,  <29.901794, 34.457146, 35.170010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283087, 34.140121, 35.556690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413795, 34.443542, 35.782192>,  <29.492220, 34.625595, 35.917492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413795, 34.443542, 35.782192>,  <29.283087, 34.140121, 35.556690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413795, 34.443542, 35.782192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935179, 0.173301, 0.308880,
		0.136600, -0.628148, 0.766009,
		0.326773, 0.758549, 0.563758,
		29.511827, 34.671108, 35.951321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917814, 34.076180, 36.135426>,  <29.283087, 34.140121, 35.556690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917814, 34.076180, 36.135426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061060, 34.441730, 36.211929>,  <29.147007, 34.661060, 36.257832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061060, 34.441730, 36.211929>,  <28.917814, 34.076180, 36.135426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061060, 34.441730, 36.211929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898976, 0.282166, 0.335000,
		0.252181, -0.291908, 0.922602,
		0.358116, 0.913877, 0.191261,
		29.168495, 34.715893, 36.269306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751787, 34.234097, 36.881840>,  <28.917814, 34.076180, 36.135426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751787, 34.234097, 36.881840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799597, 34.585857, 36.697502>,  <28.828283, 34.796913, 36.586899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799597, 34.585857, 36.697502>,  <28.751787, 34.234097, 36.881840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799597, 34.585857, 36.697502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899305, 0.292567, 0.325046,
		0.420672, 0.375584, 0.825816,
		0.119524, 0.879398, -0.460840,
		28.835455, 34.849678, 36.559250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712816, 34.685936, 37.468048>,  <28.751787, 34.234097, 36.881840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712816, 34.685936, 37.468048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623146, 34.883770, 37.132160>,  <28.569344, 35.002472, 36.930626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623146, 34.883770, 37.132160>,  <28.712816, 34.685936, 37.468048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623146, 34.883770, 37.132160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826170, 0.360572, 0.432933,
		0.516902, 0.790805, 0.327781,
		-0.224177, 0.494587, -0.839719,
		28.555893, 35.032146, 36.880245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630342, 35.373997, 37.651291>,  <28.712816, 34.685936, 37.468048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630342, 35.373997, 37.651291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420336, 35.310715, 37.316788>,  <28.294333, 35.272747, 37.116085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420336, 35.310715, 37.316788>,  <28.630342, 35.373997, 37.651291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420336, 35.310715, 37.316788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778660, 0.485943, 0.396923,
		0.343580, 0.859553, -0.378314,
		-0.525015, -0.158204, -0.836260,
		28.262831, 35.263252, 37.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439188, 36.012463, 37.353951>,  <28.630342, 35.373997, 37.651291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439188, 36.012463, 37.353951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186275, 35.703075, 37.336197>,  <28.034529, 35.517445, 37.325542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186275, 35.703075, 37.336197>,  <28.439188, 36.012463, 37.353951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186275, 35.703075, 37.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665691, 0.513081, 0.541852,
		-0.396331, 0.372150, -0.839301,
		-0.632280, -0.773468, -0.044387,
		27.996592, 35.471035, 37.322880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781107, 36.687328, 37.530186>,  <28.439188, 36.012463, 37.353951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781107, 36.687328, 37.530186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830435, 36.593700, 37.915932>,  <28.860031, 36.537525, 38.147381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830435, 36.593700, 37.915932>,  <28.781107, 36.687328, 37.530186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830435, 36.593700, 37.915932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856043, 0.516659, 0.015937,
		-0.501979, 0.823575, 0.264087,
		0.123318, -0.234070, 0.964367,
		28.867430, 36.523479, 38.205242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815294, 37.333054, 38.038277>,  <28.781107, 36.687328, 37.530186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815294, 37.333054, 38.038277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019663, 37.010410, 38.157169>,  <29.142284, 36.816826, 38.228504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019663, 37.010410, 38.157169>,  <28.815294, 37.333054, 38.038277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019663, 37.010410, 38.157169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859245, 0.468898, -0.204527,
		0.025602, 0.359892, 0.932643,
		0.510922, -0.806605, 0.297231,
		29.172939, 36.768429, 38.246338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357388, 37.632668, 38.470547>,  <28.815294, 37.333054, 38.038277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357388, 37.632668, 38.470547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488319, 37.261932, 38.396980>,  <29.566879, 37.039490, 38.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488319, 37.261932, 38.396980>,  <29.357388, 37.632668, 38.470547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488319, 37.261932, 38.396980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944854, 0.323176, 0.052997,
		0.010319, -0.191124, 0.981512,
		0.327330, -0.926838, -0.183919,
		29.586519, 36.983879, 38.341805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683107, 37.323566, 38.972954>,  <29.357388, 37.632668, 38.470547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683107, 37.323566, 38.972954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857998, 37.134491, 38.666908>,  <29.962933, 37.021046, 38.483280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857998, 37.134491, 38.666908>,  <29.683107, 37.323566, 38.972954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857998, 37.134491, 38.666908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887686, 0.363392, 0.282770,
		0.144375, -0.802816, 0.578483,
		0.437229, -0.472687, -0.765113,
		29.989166, 36.992683, 38.437374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294630, 37.003647, 39.151176>,  <29.683107, 37.323566, 38.972954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294630, 37.003647, 39.151176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371584, 37.048206, 38.761185>,  <30.417757, 37.074944, 38.527191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371584, 37.048206, 38.761185>,  <30.294630, 37.003647, 39.151176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371584, 37.048206, 38.761185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927851, 0.302827, 0.217688,
		0.319499, -0.946512, -0.045103,
		0.192386, 0.111400, -0.974976,
		30.429300, 37.081627, 38.468693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046831, 36.859623, 38.986126>,  <30.294630, 37.003647, 39.151176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046831, 36.859623, 38.986126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905317, 37.059025, 38.669563>,  <30.820408, 37.178665, 38.479626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905317, 37.059025, 38.669563>,  <31.046831, 36.859623, 38.986126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905317, 37.059025, 38.669563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898232, 0.417006, -0.138871,
		0.260795, -0.760000, -0.595304,
		-0.353787, 0.498504, -0.791409,
		30.799181, 37.208576, 38.432140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544577, 36.767994, 38.562069>,  <31.046831, 36.859623, 38.986126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544577, 36.767994, 38.562069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345123, 37.107128, 38.489922>,  <31.225451, 37.310608, 38.446632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345123, 37.107128, 38.489922>,  <31.544577, 36.767994, 38.562069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345123, 37.107128, 38.489922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866474, 0.481709, -0.131069,
		-0.024239, -0.221643, -0.974827,
		-0.498634, 0.847839, -0.180371,
		31.195534, 37.361481, 38.435810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613684, 37.006603, 37.844090>,  <31.544577, 36.767994, 38.562069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613684, 37.006603, 37.844090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559958, 37.310402, 38.098686>,  <31.527721, 37.492680, 38.251446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559958, 37.310402, 38.098686>,  <31.613684, 37.006603, 37.844090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559958, 37.310402, 38.098686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917451, 0.338050, -0.209775,
		-0.374490, 0.555775, -0.742207,
		-0.134315, 0.759498, 0.636493,
		31.519663, 37.538250, 38.289635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374714, 37.315845, 37.686085>,  <31.613684, 37.006603, 37.844090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374714, 37.315845, 37.686085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728355, 37.410679, 37.525013>,  <32.940540, 37.467579, 37.428371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728355, 37.410679, 37.525013>,  <32.374714, 37.315845, 37.686085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728355, 37.410679, 37.525013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172442, 0.635383, 0.752697,
		0.434305, -0.734903, 0.520863,
		0.884106, 0.237081, -0.402678,
		32.993587, 37.481804, 37.404209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698074, 37.514439, 38.251827>,  <32.374714, 37.315845, 37.686085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698074, 37.514439, 38.251827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926022, 37.625282, 37.942387>,  <33.062790, 37.691788, 37.756721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926022, 37.625282, 37.942387>,  <32.698074, 37.514439, 38.251827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926022, 37.625282, 37.942387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270611, 0.825627, 0.495085,
		0.775897, -0.491480, 0.395514,
		0.569872, 0.277104, -0.773601,
		33.096981, 37.708412, 37.710304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394642, 37.607296, 38.445694>,  <32.698074, 37.514439, 38.251827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394642, 37.607296, 38.445694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347866, 37.842701, 38.125702>,  <33.319801, 37.983944, 37.933704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347866, 37.842701, 38.125702>,  <33.394642, 37.607296, 38.445694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347866, 37.842701, 38.125702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349647, 0.778334, 0.521481,
		0.929555, -0.218732, -0.296789,
		-0.116936, 0.588517, -0.799984,
		33.312786, 38.019257, 37.885708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958889, 38.049286, 38.570320>,  <33.394642, 37.607296, 38.445694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958889, 38.049286, 38.570320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729904, 38.229698, 38.296429>,  <33.592514, 38.337944, 38.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729904, 38.229698, 38.296429>,  <33.958889, 38.049286, 38.570320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729904, 38.229698, 38.296429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140150, 0.876644, 0.460275,
		0.807863, 0.167526, -0.565060,
		-0.572465, 0.451032, -0.684730,
		33.558167, 38.365009, 38.091011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366585, 38.629707, 38.416744>,  <33.958889, 38.049286, 38.570320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366585, 38.629707, 38.416744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978931, 38.675236, 38.329266>,  <33.746342, 38.702553, 38.276779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978931, 38.675236, 38.329266>,  <34.366585, 38.629707, 38.416744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978931, 38.675236, 38.329266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039555, 0.803771, 0.593623,
		0.243351, 0.583949, -0.774457,
		-0.969131, 0.113825, -0.218697,
		33.688190, 38.709385, 38.263657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354168, 39.355625, 38.317734>,  <34.366585, 38.629707, 38.416744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354168, 39.355625, 38.317734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969032, 39.250774, 38.343739>,  <33.737949, 39.187862, 38.359341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969032, 39.250774, 38.343739>,  <34.354168, 39.355625, 38.317734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969032, 39.250774, 38.343739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169754, 0.774642, 0.609192,
		-0.210049, 0.575518, -0.790354,
		-0.962841, -0.262125, 0.065017,
		33.680180, 39.172138, 38.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032364, 39.914829, 38.281181>,  <34.354168, 39.355625, 38.317734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032364, 39.914829, 38.281181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763332, 39.673290, 38.452293>,  <33.601913, 39.528366, 38.554962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763332, 39.673290, 38.452293>,  <34.032364, 39.914829, 38.281181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763332, 39.673290, 38.452293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141776, 0.672502, 0.726389,
		-0.726313, 0.427908, -0.537925,
		-0.672584, -0.603851, 0.427780,
		33.561558, 39.492134, 38.580627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494488, 40.300785, 38.453197>,  <34.032364, 39.914829, 38.281181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494488, 40.300785, 38.453197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411201, 39.990532, 38.691540>,  <33.361229, 39.804379, 38.834545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411201, 39.990532, 38.691540>,  <33.494488, 40.300785, 38.453197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411201, 39.990532, 38.691540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335457, 0.628883, 0.701409,
		-0.918758, -0.053841, -0.391133,
		-0.208212, -0.775633, 0.595853,
		33.348740, 39.757843, 38.870296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883289, 40.557964, 38.841694>,  <33.494488, 40.300785, 38.453197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883289, 40.557964, 38.841694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068687, 40.274277, 39.054176>,  <33.179924, 40.104065, 39.181664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068687, 40.274277, 39.054176>,  <32.883289, 40.557964, 38.841694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068687, 40.274277, 39.054176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257036, 0.466100, 0.846572,
		-0.848002, -0.528919, 0.033738,
		0.463493, -0.709222, 0.531205,
		33.207737, 40.061512, 39.213539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460037, 40.343521, 39.331501>,  <32.883289, 40.557964, 38.841694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460037, 40.343521, 39.331501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797962, 40.213734, 39.501686>,  <33.000717, 40.135860, 39.603798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797962, 40.213734, 39.501686>,  <32.460037, 40.343521, 39.331501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797962, 40.213734, 39.501686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280822, 0.407964, 0.868737,
		-0.455450, -0.853396, 0.253534,
		0.844810, -0.324468, 0.425460,
		33.051407, 40.116394, 39.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301228, 40.230930, 40.040184>,  <32.460037, 40.343521, 39.331501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301228, 40.230930, 40.040184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698669, 40.187881, 40.053841>,  <32.937134, 40.162052, 40.062035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698669, 40.187881, 40.053841>,  <32.301228, 40.230930, 40.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698669, 40.187881, 40.053841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020903, 0.472512, 0.881076,
		-0.110956, -0.874729, 0.471740,
		0.993605, -0.107622, 0.034143,
		32.996750, 40.155594, 40.064083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326454, 39.755665, 40.542488>,  <32.301228, 40.230930, 40.040184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326454, 39.755665, 40.542488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667492, 39.962414, 40.511684>,  <32.872112, 40.086464, 40.493202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667492, 39.962414, 40.511684>,  <32.326454, 39.755665, 40.542488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667492, 39.962414, 40.511684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021818, 0.112027, 0.993466,
		0.522123, -0.848700, 0.084236,
		0.852591, 0.516873, -0.077009,
		32.923271, 40.117477, 40.488583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768856, 39.442638, 41.035595>,  <32.326454, 39.755665, 40.542488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768856, 39.442638, 41.035595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917160, 39.807381, 40.965111>,  <33.006142, 40.026226, 40.922821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917160, 39.807381, 40.965111>,  <32.768856, 39.442638, 41.035595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917160, 39.807381, 40.965111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155149, 0.126257, 0.979790,
		0.915678, -0.390605, -0.094664,
		0.370758, 0.911859, -0.176213,
		33.028389, 40.080940, 40.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314026, 39.572842, 41.502357>,  <32.768856, 39.442638, 41.035595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314026, 39.572842, 41.502357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199604, 39.943382, 41.404335>,  <33.130951, 40.165707, 41.345520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199604, 39.943382, 41.404335>,  <33.314026, 39.572842, 41.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199604, 39.943382, 41.404335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235586, 0.179902, 0.955057,
		0.928802, 0.330928, 0.166773,
		-0.286052, 0.926349, -0.245056,
		33.113789, 40.221287, 41.330818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567116, 39.889606, 42.101044>,  <33.314026, 39.572842, 41.502357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567116, 39.889606, 42.101044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317673, 40.150131, 41.928116>,  <33.168007, 40.306446, 41.824360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317673, 40.150131, 41.928116>,  <33.567116, 39.889606, 42.101044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317673, 40.150131, 41.928116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235804, 0.370542, 0.898385,
		0.745322, 0.662185, -0.077493,
		-0.623611, 0.651313, -0.432319,
		33.130589, 40.345524, 41.798420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619381, 40.475208, 42.492062>,  <33.567116, 39.889606, 42.101044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619381, 40.475208, 42.492062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247616, 40.501892, 42.346878>,  <33.024555, 40.517902, 42.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247616, 40.501892, 42.346878>,  <33.619381, 40.475208, 42.492062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247616, 40.501892, 42.346878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340395, 0.224921, 0.912985,
		0.142545, 0.972091, -0.186336,
		-0.929415, 0.066714, -0.362956,
		32.968792, 40.521908, 42.237991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518826, 41.037888, 42.756855>,  <33.619381, 40.475208, 42.492062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518826, 41.037888, 42.756855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166908, 40.882744, 42.646927>,  <32.955757, 40.789658, 42.580971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166908, 40.882744, 42.646927>,  <33.518826, 41.037888, 42.756855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166908, 40.882744, 42.646927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403173, 0.302579, 0.863654,
		-0.251823, 0.870637, -0.422583,
		-0.879793, -0.387862, -0.274822,
		32.902969, 40.766384, 42.564480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070854, 41.576599, 42.849358>,  <33.518826, 41.037888, 42.756855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070854, 41.576599, 42.849358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825111, 41.261166, 42.859970>,  <32.677666, 41.071907, 42.866337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825111, 41.261166, 42.859970>,  <33.070854, 41.576599, 42.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825111, 41.261166, 42.859970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543947, 0.447652, 0.709739,
		-0.571563, 0.421603, -0.703965,
		-0.614360, -0.788580, 0.026532,
		32.640804, 41.024593, 42.867931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432178, 41.890339, 42.913837>,  <33.070854, 41.576599, 42.849358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432178, 41.890339, 42.913837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375195, 41.508343, 43.017910>,  <32.341003, 41.279144, 43.080353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375195, 41.508343, 43.017910>,  <32.432178, 41.890339, 42.913837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375195, 41.508343, 43.017910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464511, 0.296625, 0.834412,
		-0.874034, -0.001989, -0.485861,
		-0.142459, -0.954992, 0.260184,
		32.332458, 41.221844, 43.095966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669443, 41.826477, 43.218590>,  <32.432178, 41.890339, 42.913837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669443, 41.826477, 43.218590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885958, 41.534508, 43.385551>,  <32.015865, 41.359325, 43.485729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885958, 41.534508, 43.385551>,  <31.669443, 41.826477, 43.218590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885958, 41.534508, 43.385551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366848, 0.241673, 0.898341,
		-0.756593, -0.639383, -0.136955,
		0.541285, -0.729920, 0.417405,
		32.048344, 41.315533, 43.510773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271955, 41.688492, 43.832565>,  <31.669443, 41.826477, 43.218590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271955, 41.688492, 43.832565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609785, 41.482639, 43.891689>,  <31.812483, 41.359127, 43.927162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609785, 41.482639, 43.891689>,  <31.271955, 41.688492, 43.832565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609785, 41.482639, 43.891689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167474, 0.008303, 0.985842,
		-0.508572, -0.857372, -0.079175,
		0.844575, -0.514631, 0.147810,
		31.863157, 41.328251, 43.936031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103186, 41.166397, 44.233482>,  <31.271955, 41.688492, 43.832565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103186, 41.166397, 44.233482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495005, 41.217495, 44.295670>,  <31.730097, 41.248154, 44.332981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495005, 41.217495, 44.295670>,  <31.103186, 41.166397, 44.233482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495005, 41.217495, 44.295670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163262, 0.052958, 0.985160,
		0.117623, -0.990391, 0.072732,
		0.979546, 0.127751, 0.155464,
		31.788868, 41.255817, 44.342308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262222, 40.842331, 44.844753>,  <31.103186, 41.166397, 44.233482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262222, 40.842331, 44.844753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596273, 41.054176, 44.785336>,  <31.796705, 41.181286, 44.749683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596273, 41.054176, 44.785336>,  <31.262222, 40.842331, 44.844753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596273, 41.054176, 44.785336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024897, 0.233380, 0.972067,
		0.549490, -0.815500, 0.181716,
		0.835129, 0.529617, -0.148544,
		31.846813, 41.213062, 44.740772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585262, 40.724785, 45.350479>,  <31.262222, 40.842331, 44.844753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585262, 40.724785, 45.350479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731995, 41.073563, 45.220768>,  <31.820034, 41.282829, 45.142941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731995, 41.073563, 45.220768>,  <31.585262, 40.724785, 45.350479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731995, 41.073563, 45.220768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005648, 0.346484, 0.938039,
		0.930271, -0.345932, 0.122176,
		0.366830, 0.871940, -0.324278,
		31.842043, 41.335144, 45.123486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276783, 40.778591, 45.675388>,  <31.585262, 40.724785, 45.350479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276783, 40.778591, 45.675388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136391, 41.138638, 45.572159>,  <32.052155, 41.354668, 45.510220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136391, 41.138638, 45.572159>,  <32.276783, 40.778591, 45.675388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136391, 41.138638, 45.572159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224161, 0.348358, 0.910164,
		0.909157, 0.261598, -0.324037,
		-0.350978, 0.900118, -0.258072,
		32.031097, 41.408672, 45.494736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590813, 41.266743, 46.008747>,  <32.276783, 40.778591, 45.675388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590813, 41.266743, 46.008747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279007, 41.502842, 45.924870>,  <32.091923, 41.644501, 45.874542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279007, 41.502842, 45.924870>,  <32.590813, 41.266743, 46.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279007, 41.502842, 45.924870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169771, 0.521316, 0.836306,
		0.602942, 0.616310, -0.506579,
		-0.779512, 0.590247, -0.209692,
		32.045155, 41.679916, 45.861961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814621, 42.039982, 46.239292>,  <32.590813, 41.266743, 46.008747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814621, 42.039982, 46.239292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416752, 42.007851, 46.213451>,  <32.178032, 41.988571, 46.197945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416752, 42.007851, 46.213451>,  <32.814621, 42.039982, 46.239292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416752, 42.007851, 46.213451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101126, 0.638824, 0.762678,
		-0.019992, 0.765148, -0.643544,
		-0.994673, -0.080327, -0.064605,
		32.118351, 41.983753, 46.194069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629143, 42.727123, 46.074619>,  <32.814621, 42.039982, 46.239292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629143, 42.727123, 46.074619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331242, 42.530781, 46.255459>,  <32.152500, 42.412975, 46.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331242, 42.530781, 46.255459>,  <32.629143, 42.727123, 46.074619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331242, 42.530781, 46.255459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187327, 0.496461, 0.847605,
		-0.640506, 0.715950, -0.277791,
		-0.744755, -0.490859, 0.452103,
		32.107815, 42.383522, 46.391090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429707, 43.183548, 46.590137>,  <32.629143, 42.727123, 46.074619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429707, 43.183548, 46.590137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236549, 42.844933, 46.679749>,  <32.120655, 42.641762, 46.733517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236549, 42.844933, 46.679749>,  <32.429707, 43.183548, 46.590137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236549, 42.844933, 46.679749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017057, 0.264876, 0.964132,
		-0.875516, 0.461747, -0.142345,
		-0.482888, -0.846540, 0.224027,
		32.091682, 42.590969, 46.746956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898870, 43.408947, 47.025284>,  <32.429707, 43.183548, 46.590137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898870, 43.408947, 47.025284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913918, 43.015560, 47.096149>,  <31.922947, 42.779530, 47.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913918, 43.015560, 47.096149>,  <31.898870, 43.408947, 47.025284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913918, 43.015560, 47.096149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010016, 0.176906, 0.984177,
		-0.999242, -0.038798, -0.003196,
		0.037619, -0.983463, 0.177161,
		31.925203, 42.720520, 47.149296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266071, 43.148857, 47.358757>,  <31.898870, 43.408947, 47.025284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266071, 43.148857, 47.358757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583612, 42.934631, 47.473976>,  <31.774137, 42.806095, 47.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583612, 42.934631, 47.473976>,  <31.266071, 43.148857, 47.358757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583612, 42.934631, 47.473976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281579, 0.096105, 0.954713,
		-0.538993, -0.839008, -0.074511,
		0.793851, -0.535564, 0.288047,
		31.821768, 42.773964, 47.560390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060818, 42.703804, 47.882412>,  <31.266071, 43.148857, 47.358757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060818, 42.703804, 47.882412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458565, 42.705841, 47.924751>,  <31.697214, 42.707062, 47.950153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458565, 42.705841, 47.924751>,  <31.060818, 42.703804, 47.882412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458565, 42.705841, 47.924751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105500, -0.046427, 0.993335,
		0.009976, -0.998909, -0.045628,
		0.994369, 0.005096, 0.105848,
		31.756876, 42.707367, 47.956505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173243, 42.282925, 48.332844>,  <31.060818, 42.703804, 47.882412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173243, 42.282925, 48.332844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519657, 42.482613, 48.343887>,  <31.727507, 42.602425, 48.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519657, 42.482613, 48.343887>,  <31.173243, 42.282925, 48.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519657, 42.482613, 48.343887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035298, -0.116121, 0.992608,
		0.498735, -0.858659, -0.118186,
		0.866035, 0.499220, 0.027605,
		31.779469, 42.632378, 48.352169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587078, 41.834053, 48.759060>,  <31.173243, 42.282925, 48.332844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587078, 41.834053, 48.759060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704189, 42.216343, 48.770870>,  <31.774456, 42.445717, 48.777958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704189, 42.216343, 48.770870>,  <31.587078, 41.834053, 48.759060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704189, 42.216343, 48.770870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041055, -0.043418, 0.998213,
		0.955298, -0.291044, -0.051950,
		0.292779, 0.955724, 0.029528,
		31.792023, 42.503059, 48.779728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072422, 41.749275, 49.364788>,  <31.587078, 41.834053, 48.759060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072422, 41.749275, 49.364788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001835, 42.131451, 49.270126>,  <31.959484, 42.360756, 49.213329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001835, 42.131451, 49.270126>,  <32.072422, 41.749275, 49.364788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001835, 42.131451, 49.270126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025384, 0.244764, 0.969251,
		0.983980, 0.165031, -0.067445,
		-0.176465, 0.955435, -0.236654,
		31.948896, 42.418079, 49.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586304, 42.152908, 49.773537>,  <32.072422, 41.749275, 49.364788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586304, 42.152908, 49.773537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285404, 42.398132, 49.676968>,  <32.104866, 42.545265, 49.619026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285404, 42.398132, 49.676968>,  <32.586304, 42.152908, 49.773537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285404, 42.398132, 49.676968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063570, 0.297166, 0.952707,
		0.655809, 0.732016, -0.184569,
		-0.752245, 0.613062, -0.241418,
		32.059731, 42.582050, 49.604542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653954, 42.429783, 50.382095>,  <32.586304, 42.152908, 49.773537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653954, 42.429783, 50.382095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315544, 42.576702, 50.227520>,  <32.112499, 42.664852, 50.134773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315544, 42.576702, 50.227520>,  <32.653954, 42.429783, 50.382095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315544, 42.576702, 50.227520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246991, 0.372336, 0.894629,
		0.472482, 0.852324, -0.224286,
		-0.846024, 0.367300, -0.386438,
		32.061737, 42.686893, 50.111588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576286, 43.054394, 50.637115>,  <32.653954, 42.429783, 50.382095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576286, 43.054394, 50.637115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197792, 42.996590, 50.521358>,  <31.970695, 42.961906, 50.451904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197792, 42.996590, 50.521358>,  <32.576286, 43.054394, 50.637115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197792, 42.996590, 50.521358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321613, 0.515942, 0.793958,
		0.034574, 0.844346, -0.534681,
		-0.946240, -0.144510, -0.289392,
		31.913919, 42.953236, 50.434540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160347, 43.788658, 50.562866>,  <32.576286, 43.054394, 50.637115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160347, 43.788658, 50.562866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934942, 43.472725, 50.659710>,  <31.799698, 43.283165, 50.717815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934942, 43.472725, 50.659710>,  <32.160347, 43.788658, 50.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934942, 43.472725, 50.659710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436990, 0.533706, 0.724015,
		-0.701063, 0.302196, -0.645901,
		-0.563515, -0.789833, 0.242105,
		31.765888, 43.235775, 50.732342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321091, 43.899628, 50.525902>,  <32.160347, 43.788658, 50.562866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321091, 43.899628, 50.525902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431339, 43.631706, 50.801697>,  <31.497488, 43.470955, 50.967175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431339, 43.631706, 50.801697>,  <31.321091, 43.899628, 50.525902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431339, 43.631706, 50.801697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392733, 0.576213, 0.716756,
		-0.877379, -0.468339, -0.104237,
		0.275622, -0.669804, 0.689489,
		31.514027, 43.430763, 51.008545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821838, 43.855602, 51.012253>,  <31.321091, 43.899628, 50.525902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821838, 43.855602, 51.012253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126116, 43.703384, 51.222599>,  <31.308683, 43.612053, 51.348804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126116, 43.703384, 51.222599>,  <30.821838, 43.855602, 51.012253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126116, 43.703384, 51.222599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284916, 0.532170, 0.797256,
		-0.583237, -0.756296, 0.296397,
		0.760695, -0.380542, 0.525862,
		31.354324, 43.589222, 51.380356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578066, 43.640072, 51.593609>,  <30.821838, 43.855602, 51.012253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578066, 43.640072, 51.593609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949640, 43.766872, 51.670116>,  <31.172585, 43.842953, 51.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949640, 43.766872, 51.670116>,  <30.578066, 43.640072, 51.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949640, 43.766872, 51.670116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345661, 0.557477, 0.754810,
		0.132646, -0.767287, 0.627436,
		0.928937, 0.317002, 0.191274,
		31.228321, 43.861973, 51.727497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760338, 43.650604, 52.371029>,  <30.578066, 43.640072, 51.593609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760338, 43.650604, 52.371029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023529, 43.895473, 52.195618>,  <31.181444, 44.042397, 52.090370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023529, 43.895473, 52.195618>,  <30.760338, 43.650604, 52.371029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023529, 43.895473, 52.195618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007320, 0.587515, 0.809180,
		0.753001, -0.529214, 0.391054,
		0.657979, 0.612176, -0.438525,
		31.220922, 44.079124, 52.064060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317415, 43.673214, 52.946262>,  <30.760338, 43.650604, 52.371029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317415, 43.673214, 52.946262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297277, 44.034733, 52.776264>,  <31.285194, 44.251644, 52.674263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297277, 44.034733, 52.776264>,  <31.317415, 43.673214, 52.946262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297277, 44.034733, 52.776264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144278, 0.414493, 0.898543,
		0.988256, 0.106556, 0.109529,
		-0.050346, 0.903793, -0.424998,
		31.282173, 44.305870, 52.648766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379772, 43.237453, 53.552406>,  <31.317415, 43.673214, 52.946262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379772, 43.237453, 53.552406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700647, 43.341621, 53.767323>,  <31.893173, 43.404121, 53.896271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700647, 43.341621, 53.767323>,  <31.379772, 43.237453, 53.552406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700647, 43.341621, 53.767323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217568, -0.965493, 0.143133,
		0.556021, 0.002077, -0.831166,
		0.802187, 0.260420, 0.537287,
		31.941303, 43.419746, 53.928509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976114, 42.858757, 53.336674>,  <31.379772, 43.237453, 53.552406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976114, 42.858757, 53.336674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 42.974983, 53.705563>,  <32.139381, 43.044720, 53.926895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 42.974983, 53.705563>,  <31.976114, 42.858757, 53.336674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078156, 42.974983, 53.705563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650971, -0.756853, 0.058393,
		0.714953, 0.585444, -0.382227,
		0.255104, 0.290567, 0.922222,
		32.154686, 43.062153, 53.982227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523996, 42.602089, 52.820538>,  <31.976114, 42.858757, 53.336674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523996, 42.602089, 52.820538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631239, 42.982944, 52.879257>,  <31.695585, 43.211456, 52.914490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631239, 42.982944, 52.879257>,  <31.523996, 42.602089, 52.820538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631239, 42.982944, 52.879257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958911, 0.278419, -0.054516,
		-0.092780, -0.126156, 0.987662,
		0.268107, 0.952138, 0.146804,
		31.711672, 43.268585, 52.923298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919868, 41.939880, 52.719177>,  <31.523996, 42.602089, 52.820538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919868, 41.939880, 52.719177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568869, 41.853519, 52.547882>,  <31.358269, 41.801704, 52.445107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568869, 41.853519, 52.547882>,  <31.919868, 41.939880, 52.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568869, 41.853519, 52.547882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478195, -0.326100, -0.815468,
		0.036412, -0.920351, 0.389394,
		-0.877499, -0.215899, -0.428233,
		31.305618, 41.788750, 52.419411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853956, 41.212833, 52.411194>,  <31.919868, 41.939880, 52.719177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853956, 41.212833, 52.411194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601460, 41.427616, 52.187332>,  <31.449961, 41.556484, 52.053017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601460, 41.427616, 52.187332>,  <31.853956, 41.212833, 52.411194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601460, 41.427616, 52.187332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198469, -0.585729, -0.785831,
		-0.749761, -0.607125, 0.263168,
		-0.631243, 0.536955, -0.559653,
		31.412086, 41.588703, 52.019436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348465, 40.759315, 52.101601>,  <31.853956, 41.212833, 52.411194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348465, 40.759315, 52.101601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390228, 41.081791, 51.868652>,  <31.415285, 41.275276, 51.728882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390228, 41.081791, 51.868652>,  <31.348465, 40.759315, 52.101601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390228, 41.081791, 51.868652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201845, -0.590563, -0.781341,
		-0.973837, -0.035972, -0.224384,
		0.104406, 0.806190, -0.582372,
		31.421551, 41.323647, 51.693939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849949, 40.799946, 51.542149>,  <31.348465, 40.759315, 52.101601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849949, 40.799946, 51.542149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175468, 40.998745, 51.421665>,  <31.370781, 41.118023, 51.349377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175468, 40.998745, 51.421665>,  <30.849949, 40.799946, 51.542149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175468, 40.998745, 51.421665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160987, -0.690809, -0.704887,
		-0.558402, 0.525146, -0.642190,
		0.813800, 0.496995, -0.301208,
		31.419609, 41.147842, 51.331303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898727, 40.631374, 50.908829>,  <30.849949, 40.799946, 51.542149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898727, 40.631374, 50.908829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273071, 40.756851, 50.973026>,  <31.497679, 40.832138, 51.011543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273071, 40.756851, 50.973026>,  <30.898727, 40.631374, 50.908829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273071, 40.756851, 50.973026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340929, -0.690996, -0.637410,
		-0.089051, 0.651245, -0.753624,
		0.935862, 0.313695, 0.160495,
		31.553829, 40.850960, 51.021175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217470, 40.894703, 50.265144>,  <30.898727, 40.631374, 50.908829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217470, 40.894703, 50.265144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543169, 40.852814, 50.493542>,  <31.738588, 40.827679, 50.630581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543169, 40.852814, 50.493542>,  <31.217470, 40.894703, 50.265144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543169, 40.852814, 50.493542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489071, -0.406154, -0.771912,
		0.312749, 0.907784, -0.279493,
		0.814247, -0.104723, 0.570995,
		31.787443, 40.821396, 50.664841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790419, 41.155388, 49.879189>,  <31.217470, 40.894703, 50.265144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790419, 41.155388, 49.879189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954182, 40.900429, 50.140297>,  <32.052441, 40.747452, 50.296963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954182, 40.900429, 50.140297>,  <31.790419, 41.155388, 49.879189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954182, 40.900429, 50.140297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422178, -0.501913, -0.754883,
		0.808795, 0.584640, 0.063608,
		0.409409, -0.637400, 0.652767,
		32.077003, 40.709209, 50.336128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342339, 40.967926, 49.607224>,  <31.790419, 41.155388, 49.879189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342339, 40.967926, 49.607224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357910, 40.682468, 49.886993>,  <32.367252, 40.511192, 50.054855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357910, 40.682468, 49.886993>,  <32.342339, 40.967926, 49.607224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357910, 40.682468, 49.886993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486774, -0.597744, -0.636987,
		0.872660, 0.365258, 0.324116,
		0.038927, -0.713645, 0.699425,
		32.369587, 40.468376, 50.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015965, 40.632851, 49.496052>,  <32.342339, 40.967926, 49.607224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015965, 40.632851, 49.496052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798054, 40.372757, 49.707867>,  <32.667305, 40.216702, 49.834957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798054, 40.372757, 49.707867>,  <33.015965, 40.632851, 49.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798054, 40.372757, 49.707867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379784, -0.754309, -0.535520,
		0.747650, -0.090629, 0.657880,
		-0.544779, -0.650234, 0.529540,
		32.634621, 40.177689, 49.866730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470638, 40.096306, 49.554218>,  <33.015965, 40.632851, 49.496052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470638, 40.096306, 49.554218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125057, 39.934525, 49.674221>,  <32.917709, 39.837456, 49.746223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125057, 39.934525, 49.674221>,  <33.470638, 40.096306, 49.554218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125057, 39.934525, 49.674221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155891, -0.781299, -0.604375,
		0.478834, -0.475384, 0.738057,
		-0.863953, -0.404452, 0.300005,
		32.865871, 39.813190, 49.764221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643860, 39.360588, 49.814323>,  <33.470638, 40.096306, 49.554218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643860, 39.360588, 49.814323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273949, 39.434189, 49.681099>,  <33.052002, 39.478348, 49.601166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273949, 39.434189, 49.681099>,  <33.643860, 39.360588, 49.814323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273949, 39.434189, 49.681099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127784, -0.674295, -0.727322,
		-0.358406, -0.715172, 0.600061,
		-0.924779, 0.183999, -0.333059,
		32.996513, 39.489388, 49.581181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408459, 38.733540, 49.641479>,  <33.643860, 39.360588, 49.814323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408459, 38.733540, 49.641479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138042, 38.958912, 49.451527>,  <32.975792, 39.094135, 49.337555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138042, 38.958912, 49.451527>,  <33.408459, 38.733540, 49.641479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138042, 38.958912, 49.451527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026623, -0.625362, -0.779880,
		-0.736384, -0.539873, 0.407770,
		-0.676040, 0.563435, -0.474879,
		32.935230, 39.127941, 49.309063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953972, 38.268242, 49.381393>,  <33.408459, 38.733540, 49.641479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953972, 38.268242, 49.381393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898972, 38.601460, 49.167057>,  <32.865971, 38.801392, 49.038456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898972, 38.601460, 49.167057>,  <32.953972, 38.268242, 49.381393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898972, 38.601460, 49.167057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035742, -0.544800, -0.837804,
		-0.989857, -0.096045, 0.104684,
		-0.137498, 0.833048, -0.535841,
		32.857723, 38.851376, 49.006306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478615, 38.121380, 48.986336>,  <32.953972, 38.268242, 49.381393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478615, 38.121380, 48.986336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675774, 38.410797, 48.793034>,  <32.794071, 38.584446, 48.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675774, 38.410797, 48.793034>,  <32.478615, 38.121380, 48.986336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675774, 38.410797, 48.793034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139962, -0.614114, -0.776708,
		-0.858755, 0.315201, -0.403965,
		0.492899, 0.723542, -0.483257,
		32.823643, 38.627861, 48.648056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238739, 38.004292, 48.273048>,  <32.478615, 38.121380, 48.986336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238739, 38.004292, 48.273048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514206, 38.291992, 48.236332>,  <32.679485, 38.464611, 48.214302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514206, 38.291992, 48.236332>,  <32.238739, 38.004292, 48.273048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514206, 38.291992, 48.236332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119246, -0.237220, -0.964110,
		-0.715208, 0.653001, -0.249132,
		0.688664, 0.719247, -0.091794,
		32.720806, 38.507767, 48.208794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084778, 38.392998, 47.681877>,  <32.238739, 38.004292, 48.273048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084778, 38.392998, 47.681877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481926, 38.416809, 47.723186>,  <32.720215, 38.431095, 47.747971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481926, 38.416809, 47.723186>,  <32.084778, 38.392998, 47.681877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481926, 38.416809, 47.723186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106769, -0.058862, -0.992540,
		-0.053010, 0.996490, -0.064798,
		0.992870, 0.059533, 0.103274,
		32.779785, 38.434669, 47.754169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380272, 38.920704, 47.185417>,  <32.084778, 38.392998, 47.681877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380272, 38.920704, 47.185417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691280, 38.688419, 47.281944>,  <32.877884, 38.549049, 47.339859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691280, 38.688419, 47.281944>,  <32.380272, 38.920704, 47.185417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691280, 38.688419, 47.281944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197072, -0.139404, -0.970427,
		0.597179, 0.802085, 0.006052,
		0.777522, -0.580711, 0.241318,
		32.924538, 38.514206, 47.354340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008987, 39.179890, 46.814293>,  <32.380272, 38.920704, 47.185417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008987, 39.179890, 46.814293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064781, 38.787556, 46.868702>,  <33.098259, 38.552155, 46.901348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064781, 38.787556, 46.868702>,  <33.008987, 39.179890, 46.814293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064781, 38.787556, 46.868702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123804, -0.119012, -0.985144,
		0.982454, 0.154255, 0.104831,
		0.139488, -0.980837, 0.136021,
		33.106628, 38.493305, 46.909508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564819, 38.990795, 46.338978>,  <33.008987, 39.179890, 46.814293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564819, 38.990795, 46.338978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413269, 38.628044, 46.412754>,  <33.322338, 38.410393, 46.457020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413269, 38.628044, 46.412754>,  <33.564819, 38.990795, 46.338978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413269, 38.628044, 46.412754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154530, -0.258493, -0.953573,
		0.912454, -0.332786, 0.238077,
		-0.378877, -0.906882, 0.184438,
		33.299606, 38.355980, 46.468086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983635, 38.613781, 45.972466>,  <33.564819, 38.990795, 46.338978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983635, 38.613781, 45.972466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674019, 38.366993, 46.029343>,  <33.488251, 38.218922, 46.063469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674019, 38.366993, 46.029343>,  <33.983635, 38.613781, 45.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674019, 38.366993, 46.029343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094972, -0.335186, -0.937353,
		0.625979, -0.712040, 0.318041,
		-0.774036, -0.616968, 0.142195,
		33.441807, 38.181904, 46.072002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168686, 37.921360, 45.654781>,  <33.983635, 38.613781, 45.972466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168686, 37.921360, 45.654781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770382, 37.947941, 45.680210>,  <33.531399, 37.963890, 45.695469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770382, 37.947941, 45.680210>,  <34.168686, 37.921360, 45.654781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770382, 37.947941, 45.680210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088534, -0.505659, -0.858179,
		-0.024876, -0.860171, 0.509399,
		-0.995763, 0.066448, 0.063576,
		33.471653, 37.967876, 45.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967793, 37.386669, 45.205944>,  <34.168686, 37.921360, 45.654781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967793, 37.386669, 45.205944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620026, 37.583073, 45.227936>,  <33.411366, 37.700912, 45.241131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620026, 37.583073, 45.227936>,  <33.967793, 37.386669, 45.205944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620026, 37.583073, 45.227936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292551, -0.421926, -0.858133,
		-0.398143, -0.762167, 0.510474,
		-0.869423, 0.490999, 0.054985,
		33.359200, 37.730373, 45.244431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376545, 36.925972, 45.041531>,  <33.967793, 37.386669, 45.205944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376545, 36.925972, 45.041531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249474, 37.301193, 44.986206>,  <33.173229, 37.526325, 44.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249474, 37.301193, 44.986206>,  <33.376545, 36.925972, 45.041531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249474, 37.301193, 44.986206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247205, -0.222756, -0.943011,
		-0.915407, -0.265383, 0.302657,
		-0.317677, 0.938058, -0.138308,
		33.154171, 37.582611, 44.944714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825039, 36.772385, 44.734146>,  <33.376545, 36.925972, 45.041531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825039, 36.772385, 44.734146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876030, 37.165176, 44.678345>,  <32.906624, 37.400852, 44.644863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876030, 37.165176, 44.678345>,  <32.825039, 36.772385, 44.734146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876030, 37.165176, 44.678345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150113, -0.119926, -0.981368,
		-0.980416, 0.146045, 0.132120,
		0.127480, 0.981982, -0.139501,
		32.914272, 37.459770, 44.636494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241837, 36.968002, 44.371201>,  <32.825039, 36.772385, 44.734146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241837, 36.968002, 44.371201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508575, 37.254696, 44.289616>,  <32.668621, 37.426712, 44.240665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508575, 37.254696, 44.289616>,  <32.241837, 36.968002, 44.371201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508575, 37.254696, 44.289616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096915, -0.187970, -0.977382,
		-0.738863, 0.671534, -0.055886,
		0.666850, 0.716735, -0.203966,
		32.708630, 37.469715, 44.228424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964285, 37.434322, 43.879612>,  <32.241837, 36.968002, 44.371201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964285, 37.434322, 43.879612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358086, 37.489010, 43.835686>,  <32.594368, 37.521824, 43.809330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358086, 37.489010, 43.835686>,  <31.964285, 37.434322, 43.879612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358086, 37.489010, 43.835686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109709, -0.008317, -0.993929,
		-0.136804, 0.990575, 0.006812,
		0.984504, 0.136721, -0.109813,
		32.653439, 37.530025, 43.802742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939411, 37.902832, 43.369972>,  <31.964285, 37.434322, 43.879612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939411, 37.902832, 43.369972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290218, 37.710991, 43.381481>,  <32.500702, 37.595886, 43.388386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290218, 37.710991, 43.381481>,  <31.939411, 37.902832, 43.369972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290218, 37.710991, 43.381481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009751, -0.042105, -0.999066,
		0.480363, 0.876477, -0.032250,
		0.877016, -0.479600, 0.028772,
		32.553322, 37.567112, 43.390114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202389, 38.036217, 42.719479>,  <31.939411, 37.902832, 43.369972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202389, 38.036217, 42.719479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459724, 37.752537, 42.834827>,  <32.614124, 37.582329, 42.904037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459724, 37.752537, 42.834827>,  <32.202389, 38.036217, 42.719479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459724, 37.752537, 42.834827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175023, -0.230449, -0.957215,
		0.745309, 0.666282, -0.024130,
		0.643336, -0.709198, 0.288370,
		32.652725, 37.539776, 42.921337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702488, 38.130928, 42.345585>,  <32.202389, 38.036217, 42.719479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702488, 38.130928, 42.345585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789955, 37.755901, 42.453770>,  <32.842434, 37.530884, 42.518681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789955, 37.755901, 42.453770>,  <32.702488, 38.130928, 42.345585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789955, 37.755901, 42.453770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151532, -0.241185, -0.958576,
		0.963963, 0.250591, 0.089333,
		0.218664, -0.937568, 0.270466,
		32.855553, 37.474632, 42.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322227, 37.910683, 42.044914>,  <32.702488, 38.130928, 42.345585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322227, 37.910683, 42.044914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176632, 37.542217, 42.099998>,  <33.089275, 37.321136, 42.133049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176632, 37.542217, 42.099998>,  <33.322227, 37.910683, 42.044914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176632, 37.542217, 42.099998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221397, -0.229186, -0.947870,
		0.904708, -0.314525, 0.287364,
		-0.363989, -0.921167, 0.137711,
		33.067436, 37.265869, 42.141312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830959, 37.380264, 41.803043>,  <33.322227, 37.910683, 42.044914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830959, 37.380264, 41.803043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462162, 37.225521, 41.796494>,  <33.240883, 37.132675, 41.792564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462162, 37.225521, 41.796494>,  <33.830959, 37.380264, 41.803043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462162, 37.225521, 41.796494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112917, -0.228194, -0.967045,
		0.370373, -0.893459, 0.254077,
		-0.921995, -0.386857, -0.016370,
		33.185562, 37.109463, 41.791584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093781, 36.695755, 41.553288>,  <33.830959, 37.380264, 41.803043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093781, 36.695755, 41.553288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704029, 36.743950, 41.477322>,  <33.470177, 36.772865, 41.431744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704029, 36.743950, 41.477322>,  <34.093781, 36.695755, 41.553288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704029, 36.743950, 41.477322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060352, -0.673360, -0.736848,
		-0.216659, -0.729431, 0.648837,
		-0.974380, 0.120486, -0.189911,
		33.411716, 36.780094, 41.420349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812504, 36.042690, 41.296005>,  <34.093781, 36.695755, 41.553288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812504, 36.042690, 41.296005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498737, 36.269989, 41.196575>,  <33.310478, 36.406368, 41.136917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498737, 36.269989, 41.196575>,  <33.812504, 36.042690, 41.296005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498737, 36.269989, 41.196575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115851, -0.527956, -0.841333,
		-0.609323, -0.631155, 0.479968,
		-0.784413, 0.568248, -0.248576,
		33.263412, 36.440464, 41.122002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278683, 35.538261, 41.087776>,  <33.812504, 36.042690, 41.296005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278683, 35.538261, 41.087776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239498, 35.904484, 40.931744>,  <33.215988, 36.124218, 40.838123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239498, 35.904484, 40.931744>,  <33.278683, 35.538261, 41.087776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239498, 35.904484, 40.931744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013046, -0.393119, -0.919395,
		-0.995105, -0.084977, 0.050455,
		-0.097962, 0.915553, -0.390086,
		33.210110, 36.179150, 40.814716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699844, 35.469639, 40.601795>,  <33.278683, 35.538261, 41.087776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699844, 35.469639, 40.601795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885986, 35.806141, 40.491714>,  <32.997673, 36.008041, 40.425667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885986, 35.806141, 40.491714>,  <32.699844, 35.469639, 40.601795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885986, 35.806141, 40.491714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108505, -0.362799, -0.925529,
		-0.878447, 0.400840, -0.260111,
		0.465357, 0.841251, -0.275207,
		33.025593, 36.058517, 40.409153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415100, 35.712559, 39.990700>,  <32.699844, 35.469639, 40.601795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415100, 35.712559, 39.990700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768379, 35.900032, 39.997559>,  <32.980347, 36.012516, 40.001675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768379, 35.900032, 39.997559>,  <32.415100, 35.712559, 39.990700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768379, 35.900032, 39.997559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105908, -0.163686, -0.980811,
		-0.456880, 0.868070, -0.194205,
		0.883201, 0.468681, 0.017151,
		33.033340, 36.040638, 40.002705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387192, 36.058376, 39.482662>,  <32.415100, 35.712559, 39.990700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387192, 36.058376, 39.482662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776474, 36.028137, 39.569530>,  <33.010044, 36.009995, 39.621651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776474, 36.028137, 39.569530>,  <32.387192, 36.058376, 39.482662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776474, 36.028137, 39.569530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191327, -0.257720, -0.947087,
		0.127565, 0.963258, -0.236350,
		0.973202, -0.075595, 0.217173,
		33.068436, 36.005459, 39.634682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729118, 36.431458, 38.915340>,  <32.387192, 36.058376, 39.482662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729118, 36.431458, 38.915340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003677, 36.197964, 39.088829>,  <33.168411, 36.057869, 39.192924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003677, 36.197964, 39.088829>,  <32.729118, 36.431458, 38.915340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003677, 36.197964, 39.088829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342254, -0.266934, -0.900893,
		0.641657, 0.766813, 0.016563,
		0.686395, -0.583733, 0.433725,
		33.209595, 36.022842, 39.218948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304333, 36.651199, 38.552376>,  <32.729118, 36.431458, 38.915340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304333, 36.651199, 38.552376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405407, 36.305706, 38.726788>,  <33.466049, 36.098412, 38.831432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405407, 36.305706, 38.726788>,  <33.304333, 36.651199, 38.552376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405407, 36.305706, 38.726788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251115, -0.376666, -0.891664,
		0.934395, 0.334800, 0.121719,
		0.252681, -0.863732, 0.436027,
		33.481213, 36.046585, 38.857597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990196, 36.589993, 38.547920>,  <33.304333, 36.651199, 38.552376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990196, 36.589993, 38.547920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819965, 36.228024, 38.548935>,  <33.717827, 36.010841, 38.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819965, 36.228024, 38.548935>,  <33.990196, 36.589993, 38.547920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819965, 36.228024, 38.548935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456326, -0.217026, -0.862940,
		0.781443, -0.366087, 0.505300,
		-0.425574, -0.904920, 0.002538,
		33.692291, 35.956547, 38.549698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534088, 36.099541, 38.369343>,  <33.990196, 36.589993, 38.547920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534088, 36.099541, 38.369343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181671, 35.928520, 38.288380>,  <33.970222, 35.825909, 38.239803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181671, 35.928520, 38.288380>,  <34.534088, 36.099541, 38.369343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181671, 35.928520, 38.288380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313701, -0.207810, -0.926503,
		0.354068, -0.879780, 0.317213,
		-0.881038, -0.427554, -0.202409,
		33.917358, 35.800255, 38.227657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478195, 35.310432, 38.251080>,  <34.534088, 36.099541, 38.369343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478195, 35.310432, 38.251080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203030, 35.524441, 38.054905>,  <34.037930, 35.652847, 37.937202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203030, 35.524441, 38.054905>,  <34.478195, 35.310432, 38.251080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203030, 35.524441, 38.054905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314345, -0.389427, -0.865756,
		-0.654190, -0.749729, 0.099709,
		-0.687912, 0.535026, -0.490433,
		33.996655, 35.684948, 37.907776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172806, 34.951141, 38.381477>,  <34.478195, 35.310432, 38.251080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172806, 34.951141, 38.381477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564289, 35.032860, 38.373520>,  <35.799179, 35.081890, 38.368748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564289, 35.032860, 38.373520>,  <35.172806, 34.951141, 38.381477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564289, 35.032860, 38.373520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020631, -0.001491, 0.999786,
		0.204220, -0.978908, -0.005674,
		0.978707, 0.204294, -0.019892,
		35.857903, 35.094147, 38.367554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470322, 34.443565, 38.900307>,  <35.172806, 34.951141, 38.381477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470322, 34.443565, 38.900307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726574, 34.748615, 38.864567>,  <35.880325, 34.931644, 38.843121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726574, 34.748615, 38.864567>,  <35.470322, 34.443565, 38.900307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726574, 34.748615, 38.864567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216092, -0.067401, 0.974044,
		0.736811, -0.643316, -0.207977,
		0.640636, 0.762628, -0.089354,
		35.918766, 34.977406, 38.837761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114338, 34.279530, 39.305065>,  <35.470322, 34.443565, 38.900307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114338, 34.279530, 39.305065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096027, 34.677437, 39.268524>,  <36.085041, 34.916180, 39.246601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096027, 34.677437, 39.268524>,  <36.114338, 34.279530, 39.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096027, 34.677437, 39.268524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198762, 0.098691, 0.975066,
		0.978978, 0.026473, -0.202239,
		-0.045772, 0.994766, -0.091354,
		36.082294, 34.975868, 39.241119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761974, 34.489758, 39.599823>,  <36.114338, 34.279530, 39.305065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761974, 34.489758, 39.599823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554932, 34.831909, 39.591801>,  <36.430706, 35.037201, 39.586987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554932, 34.831909, 39.591801>,  <36.761974, 34.489758, 39.599823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554932, 34.831909, 39.591801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049040, 0.053056, 0.997387,
		0.854211, 0.515272, -0.069410,
		-0.517608, 0.855383, -0.020052,
		36.399651, 35.088524, 39.585785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191887, 34.915016, 39.933327>,  <36.761974, 34.489758, 39.599823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191887, 34.915016, 39.933327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831642, 35.087154, 39.957691>,  <36.615498, 35.190437, 39.972309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831642, 35.087154, 39.957691>,  <37.191887, 34.915016, 39.933327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831642, 35.087154, 39.957691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138034, 0.150310, 0.978955,
		0.412132, 0.890062, -0.194773,
		-0.900607, 0.430344, 0.060912,
		36.561459, 35.216259, 39.975964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219025, 35.540768, 40.379730>,  <37.191887, 34.915016, 39.933327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219025, 35.540768, 40.379730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828453, 35.454433, 40.379589>,  <36.594109, 35.402634, 40.379505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828453, 35.454433, 40.379589>,  <37.219025, 35.540768, 40.379730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828453, 35.454433, 40.379589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066196, 0.297900, 0.952299,
		-0.205437, 0.929876, -0.305166,
		-0.976429, -0.215838, -0.000354,
		36.535522, 35.389683, 40.379482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908367, 36.101849, 40.567150>,  <37.219025, 35.540768, 40.379730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908367, 36.101849, 40.567150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631794, 35.828136, 40.659828>,  <36.465851, 35.663910, 40.715435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631794, 35.828136, 40.659828>,  <36.908367, 36.101849, 40.567150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631794, 35.828136, 40.659828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037468, 0.286307, 0.957405,
		-0.721471, 0.670660, -0.172322,
		-0.691430, -0.684283, 0.231691,
		36.424366, 35.622852, 40.729336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293842, 36.404518, 40.882687>,  <36.908367, 36.101849, 40.567150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293842, 36.404518, 40.882687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283398, 36.028111, 41.017628>,  <36.277130, 35.802265, 41.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283398, 36.028111, 41.017628>,  <36.293842, 36.404518, 40.882687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283398, 36.028111, 41.017628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111332, 0.332634, 0.936461,
		-0.993440, 0.062007, 0.096081,
		-0.026108, -0.941015, 0.337356,
		36.275566, 35.745808, 41.118835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845043, 36.359024, 41.479782>,  <36.293842, 36.404518, 40.882687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845043, 36.359024, 41.479782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065521, 36.026646, 41.509998>,  <36.197807, 35.827217, 41.528126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065521, 36.026646, 41.509998>,  <35.845043, 36.359024, 41.479782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065521, 36.026646, 41.509998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133405, 0.177135, 0.975103,
		-0.823640, -0.527398, 0.208489,
		0.551198, -0.830948, 0.075538,
		36.230881, 35.777363, 41.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764740, 36.146759, 42.113899>,  <35.845043, 36.359024, 41.479782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764740, 36.146759, 42.113899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063511, 35.896107, 42.024963>,  <36.242775, 35.745716, 41.971603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063511, 35.896107, 42.024963>,  <35.764740, 36.146759, 42.113899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063511, 35.896107, 42.024963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303980, 0.024418, 0.952366,
		-0.591351, -0.778935, 0.208721,
		0.746927, -0.626630, -0.222341,
		36.287590, 35.708118, 41.958260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755756, 35.761967, 42.734753>,  <35.764740, 36.146759, 42.113899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755756, 35.761967, 42.734753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111568, 35.725941, 42.555584>,  <36.325054, 35.704327, 42.448082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111568, 35.725941, 42.555584>,  <35.755756, 35.761967, 42.734753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111568, 35.725941, 42.555584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455663, 0.246539, 0.855330,
		0.033393, -0.964938, 0.260342,
		0.889526, -0.090066, -0.447919,
		36.378426, 35.698921, 42.421207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216629, 35.235794, 43.166142>,  <35.755756, 35.761967, 42.734753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216629, 35.235794, 43.166142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437634, 35.480076, 42.939243>,  <36.570236, 35.626644, 42.803104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437634, 35.480076, 42.939243>,  <36.216629, 35.235794, 43.166142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437634, 35.480076, 42.939243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564484, 0.226562, 0.793743,
		0.613258, -0.758756, -0.219553,
		0.552515, 0.610704, -0.567246,
		36.603390, 35.663288, 42.769070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480904, 35.253582, 43.815735>,  <36.216629, 35.235794, 43.166142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480904, 35.253582, 43.815735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696198, 35.582115, 43.740131>,  <36.825375, 35.779236, 43.694767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696198, 35.582115, 43.740131>,  <36.480904, 35.253582, 43.815735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696198, 35.582115, 43.740131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057493, 0.259527, 0.964023,
		0.840834, -0.507999, 0.186905,
		0.538230, 0.821330, -0.189013,
		36.857666, 35.828514, 43.683426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129047, 35.216690, 44.143654>,  <36.480904, 35.253582, 43.815735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129047, 35.216690, 44.143654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036961, 35.602154, 44.089462>,  <36.981709, 35.833431, 44.056946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036961, 35.602154, 44.089462>,  <37.129047, 35.216690, 44.143654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036961, 35.602154, 44.089462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092656, 0.116880, 0.988815,
		0.968718, 0.240196, 0.062381,
		-0.230219, 0.963662, -0.135479,
		36.967896, 35.891251, 44.048817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482853, 35.597767, 44.799923>,  <37.129047, 35.216690, 44.143654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482853, 35.597767, 44.799923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257015, 35.883190, 44.633999>,  <37.121513, 36.054443, 44.534443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257015, 35.883190, 44.633999>,  <37.482853, 35.597767, 44.799923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257015, 35.883190, 44.633999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219772, 0.354464, 0.908876,
		0.795573, 0.604308, -0.043307,
		-0.564592, 0.713559, -0.414812,
		37.087639, 36.097260, 44.509556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723385, 36.354805, 45.082413>,  <37.482853, 35.597767, 44.799923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723385, 36.354805, 45.082413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348503, 36.365868, 44.943344>,  <37.123573, 36.372505, 44.859905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348503, 36.365868, 44.943344>,  <37.723385, 36.354805, 45.082413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348503, 36.365868, 44.943344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283701, 0.519366, 0.806085,
		0.202863, 0.854104, -0.478908,
		-0.937209, 0.027658, -0.347670,
		37.067341, 36.374165, 44.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413322, 37.027782, 45.181976>,  <37.723385, 36.354805, 45.082413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413322, 37.027782, 45.181976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104843, 36.775887, 45.144714>,  <36.919754, 36.624748, 45.122356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104843, 36.775887, 45.144714>,  <37.413322, 37.027782, 45.181976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104843, 36.775887, 45.144714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433874, 0.412875, 0.800804,
		-0.465839, 0.657996, -0.591638,
		-0.771198, -0.629742, -0.093154,
		36.873482, 36.586964, 45.116768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830833, 37.437824, 45.086876>,  <37.413322, 37.027782, 45.181976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830833, 37.437824, 45.086876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712933, 37.079308, 45.219406>,  <36.642193, 36.864197, 45.298923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712933, 37.079308, 45.219406>,  <36.830833, 37.437824, 45.086876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712933, 37.079308, 45.219406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535475, 0.442098, 0.719595,
		-0.791446, 0.034689, -0.610254,
		-0.294754, -0.896296, 0.331322,
		36.624508, 36.810417, 45.318802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108711, 37.595913, 45.318474>,  <36.830833, 37.437824, 45.086876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108711, 37.595913, 45.318474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207050, 37.245834, 45.485126>,  <36.266052, 37.035786, 45.585117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207050, 37.245834, 45.485126>,  <36.108711, 37.595913, 45.318474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207050, 37.245834, 45.485126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459646, 0.273165, 0.845048,
		-0.853397, -0.399255, -0.335126,
		0.245845, -0.875201, 0.416635,
		36.280804, 36.983273, 45.610115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499943, 37.424030, 45.762299>,  <36.108711, 37.595913, 45.318474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499943, 37.424030, 45.762299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784447, 37.180466, 45.902779>,  <35.955147, 37.034328, 45.987068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784447, 37.180466, 45.902779>,  <35.499943, 37.424030, 45.762299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784447, 37.180466, 45.902779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347714, 0.129448, 0.928622,
		-0.610907, -0.782608, -0.119655,
		0.711258, -0.608907, 0.351205,
		35.997826, 36.997795, 46.008141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211365, 36.914352, 46.165661>,  <35.499943, 37.424030, 45.762299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211365, 36.914352, 46.165661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594055, 36.928181, 46.281235>,  <35.823669, 36.936478, 46.350578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594055, 36.928181, 46.281235>,  <35.211365, 36.914352, 46.165661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594055, 36.928181, 46.281235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290169, 0.187952, 0.938337,
		-0.021863, -0.981569, 0.189851,
		0.956726, 0.034574, 0.288930,
		35.881073, 36.938553, 46.367912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291836, 36.538136, 46.937702>,  <35.211365, 36.914352, 46.165661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291836, 36.538136, 46.937702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552624, 36.824314, 46.837242>,  <35.709095, 36.996021, 46.776966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552624, 36.824314, 46.837242>,  <35.291836, 36.538136, 46.937702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552624, 36.824314, 46.837242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237347, 0.507143, 0.828536,
		0.720144, -0.480566, 0.500449,
		0.651965, 0.715446, -0.251155,
		35.748215, 37.038948, 46.761894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583691, 36.711361, 47.592194>,  <35.291836, 36.538136, 46.937702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583691, 36.711361, 47.592194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675705, 37.032333, 47.371941>,  <35.730911, 37.224915, 47.239788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675705, 37.032333, 47.371941>,  <35.583691, 36.711361, 47.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675705, 37.032333, 47.371941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084726, 0.580170, 0.810076,
		0.969488, -0.139690, 0.201444,
		0.230031, 0.802427, -0.550633,
		35.744713, 37.273060, 47.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090382, 36.995476, 47.828278>,  <35.583691, 36.711361, 47.592194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090382, 36.995476, 47.828278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916714, 37.294636, 47.627422>,  <35.812511, 37.474133, 47.506908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916714, 37.294636, 47.627422>,  <36.090382, 36.995476, 47.828278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916714, 37.294636, 47.627422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236082, 0.443467, 0.864640,
		0.869345, 0.493947, -0.015975,
		-0.434171, 0.747899, -0.502138,
		35.786461, 37.519005, 47.476780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231277, 37.657227, 48.167835>,  <36.090382, 36.995476, 47.828278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231277, 37.657227, 48.167835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921097, 37.759979, 47.937122>,  <35.734989, 37.821629, 47.798695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921097, 37.759979, 47.937122>,  <36.231277, 37.657227, 48.167835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921097, 37.759979, 47.937122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319259, 0.628600, 0.709180,
		0.544740, 0.734082, -0.405441,
		-0.775456, 0.256878, -0.576786,
		35.688461, 37.837044, 47.764088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126705, 38.424534, 48.084446>,  <36.231277, 37.657227, 48.167835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126705, 38.424534, 48.084446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763466, 38.314060, 47.958542>,  <35.545521, 38.247776, 47.882999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763466, 38.314060, 47.958542>,  <36.126705, 38.424534, 48.084446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763466, 38.314060, 47.958542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382620, 0.852697, 0.355682,
		0.170156, 0.443427, -0.880011,
		-0.908102, -0.276188, -0.314756,
		35.491035, 38.231205, 47.864117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831615, 39.078804, 47.845406>,  <36.126705, 38.424534, 48.084446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831615, 39.078804, 47.845406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559387, 38.815784, 47.974682>,  <35.396049, 38.657974, 48.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559387, 38.815784, 47.974682>,  <35.831615, 39.078804, 47.845406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559387, 38.815784, 47.974682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304226, 0.654895, 0.691779,
		-0.666536, 0.372480, -0.645746,
		-0.680570, -0.657549, 0.323193,
		35.355217, 38.618519, 48.071640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263138, 39.507706, 48.005234>,  <35.831615, 39.078804, 47.845406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263138, 39.507706, 48.005234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186485, 39.168453, 48.202805>,  <35.140495, 38.964901, 48.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186485, 39.168453, 48.202805>,  <35.263138, 39.507706, 48.005234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186485, 39.168453, 48.202805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445384, 0.523594, 0.726280,
		-0.874592, -0.080809, -0.478078,
		-0.191628, -0.848127, 0.493923,
		35.128998, 38.914017, 48.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650486, 39.628540, 48.468082>,  <35.263138, 39.507706, 48.005234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650486, 39.628540, 48.468082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849655, 39.315781, 48.618126>,  <34.969154, 39.128124, 48.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849655, 39.315781, 48.618126>,  <34.650486, 39.628540, 48.468082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849655, 39.315781, 48.618126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264415, 0.275069, 0.924349,
		-0.825929, -0.559438, -0.069783,
		0.497921, -0.781899, 0.375112,
		34.999031, 39.081211, 48.730659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217464, 39.329590, 48.996986>,  <34.650486, 39.628540, 48.468082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217464, 39.329590, 48.996986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575512, 39.160591, 49.053917>,  <34.790340, 39.059193, 49.088074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575512, 39.160591, 49.053917>,  <34.217464, 39.329590, 48.996986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575512, 39.160591, 49.053917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081085, 0.159637, 0.983840,
		-0.438387, -0.892197, 0.108636,
		0.895121, -0.422494, 0.142327,
		34.844048, 39.033844, 49.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142349, 38.825542, 49.601860>,  <34.217464, 39.329590, 48.996986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142349, 38.825542, 49.601860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528625, 38.923176, 49.566387>,  <34.760391, 38.981758, 49.545101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528625, 38.923176, 49.566387>,  <34.142349, 38.825542, 49.601860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528625, 38.923176, 49.566387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024564, 0.254117, 0.966862,
		0.258581, -0.935855, 0.239398,
		0.965677, 0.244132, -0.088698,
		34.818333, 38.996403, 49.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282177, 38.668373, 50.195030>,  <34.142349, 38.825542, 49.601860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282177, 38.668373, 50.195030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585701, 38.898746, 50.073364>,  <34.767815, 39.036968, 50.000366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585701, 38.898746, 50.073364>,  <34.282177, 38.668373, 50.195030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585701, 38.898746, 50.073364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185468, 0.256601, 0.948556,
		0.624351, -0.776183, 0.087894,
		0.758807, 0.575930, -0.304166,
		34.813343, 39.071526, 49.982113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792912, 38.584476, 50.780296>,  <34.282177, 38.668373, 50.195030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792912, 38.584476, 50.780296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875042, 38.921093, 50.580437>,  <34.924320, 39.123062, 50.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875042, 38.921093, 50.580437>,  <34.792912, 38.584476, 50.780296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875042, 38.921093, 50.580437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276609, 0.439816, 0.854429,
		0.938791, -0.313646, -0.142470,
		0.205328, 0.841539, -0.499653,
		34.936642, 39.173553, 50.430542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368744, 38.825916, 51.136276>,  <34.792912, 38.584476, 50.780296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368744, 38.825916, 51.136276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213062, 39.135326, 50.936207>,  <35.119652, 39.320972, 50.816166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213062, 39.135326, 50.936207>,  <35.368744, 38.825916, 51.136276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213062, 39.135326, 50.936207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232804, 0.607962, 0.759069,
		0.891247, 0.178993, -0.416703,
		-0.389207, 0.773527, -0.500174,
		35.096302, 39.367386, 50.786156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895210, 39.300640, 51.219204>,  <35.368744, 38.825916, 51.136276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895210, 39.300640, 51.219204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567623, 39.516243, 51.140450>,  <35.371071, 39.645603, 51.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567623, 39.516243, 51.140450>,  <35.895210, 39.300640, 51.219204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567623, 39.516243, 51.140450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268856, 0.663523, 0.698178,
		0.506960, 0.518852, -0.688320,
		-0.818967, 0.539008, -0.196884,
		35.321934, 39.677944, 51.081383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099567, 40.005005, 51.105034>,  <35.895210, 39.300640, 51.219204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099567, 40.005005, 51.105034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713917, 40.024384, 51.209427>,  <35.482525, 40.036011, 51.272064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713917, 40.024384, 51.209427>,  <36.099567, 40.005005, 51.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713917, 40.024384, 51.209427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248302, 0.512199, 0.822191,
		-0.093841, 0.857499, -0.505854,
		-0.964126, 0.048450, 0.260984,
		35.424679, 40.038918, 51.287724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967339, 40.721451, 51.302486>,  <36.099567, 40.005005, 51.105034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967339, 40.721451, 51.302486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613052, 40.578445, 51.420940>,  <35.400482, 40.492641, 51.492012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613052, 40.578445, 51.420940>,  <35.967339, 40.721451, 51.302486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613052, 40.578445, 51.420940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116614, 0.788794, 0.603495,
		-0.449341, 0.499992, -0.740338,
		-0.885716, -0.357509, 0.296131,
		35.347336, 40.471191, 51.509781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577938, 41.302128, 51.392609>,  <35.967339, 40.721451, 51.302486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577938, 41.302128, 51.392609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407917, 41.018742, 51.617962>,  <35.305904, 40.848709, 51.753174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407917, 41.018742, 51.617962>,  <35.577938, 41.302128, 51.392609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407917, 41.018742, 51.617962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263339, 0.692274, 0.671870,
		-0.866016, 0.137218, -0.480819,
		-0.425051, -0.708469, 0.563385,
		35.280403, 40.806202, 51.786976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636211, 41.789249, 50.877861>,  <35.577938, 41.302128, 51.392609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636211, 41.789249, 50.877861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935413, 42.042431, 50.798000>,  <36.114933, 42.194340, 50.750084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935413, 42.042431, 50.798000>,  <35.636211, 41.789249, 50.877861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935413, 42.042431, 50.798000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241912, -0.540136, -0.806060,
		-0.618034, 0.554640, -0.557143,
		0.748006, 0.632952, -0.199648,
		36.159817, 42.232315, 50.738106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630901, 41.877163, 50.238731>,  <35.636211, 41.789249, 50.877861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630901, 41.877163, 50.238731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014576, 41.977772, 50.290405>,  <36.244781, 42.038139, 50.321411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014576, 41.977772, 50.290405>,  <35.630901, 41.877163, 50.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014576, 41.977772, 50.290405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235219, -0.456214, -0.858220,
		-0.156927, 0.853583, -0.496760,
		0.959190, 0.251525, 0.129187,
		36.302334, 42.053230, 50.329163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773769, 41.964001, 49.535076>,  <35.630901, 41.877163, 50.238731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773769, 41.964001, 49.535076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134254, 41.976921, 49.707947>,  <36.350544, 41.984673, 49.811668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134254, 41.976921, 49.707947>,  <35.773769, 41.964001, 49.535076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134254, 41.976921, 49.707947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409191, -0.391956, -0.823974,
		0.142776, 0.919417, -0.366453,
		0.901209, 0.032305, 0.432179,
		36.404617, 41.986614, 49.837601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176708, 42.140144, 48.969402>,  <35.773769, 41.964001, 49.535076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176708, 42.140144, 48.969402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400146, 41.992275, 49.266403>,  <36.534210, 41.903553, 49.444603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400146, 41.992275, 49.266403>,  <36.176708, 42.140144, 48.969402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400146, 41.992275, 49.266403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593421, -0.447319, -0.669147,
		0.579500, 0.814401, -0.030501,
		0.558597, -0.369671, 0.742504,
		36.567726, 41.881374, 49.489155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811924, 42.250923, 48.755680>,  <36.176708, 42.140144, 48.969402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811924, 42.250923, 48.755680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836491, 41.954865, 49.023533>,  <36.851231, 41.777229, 49.184246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836491, 41.954865, 49.023533>,  <36.811924, 42.250923, 48.755680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836491, 41.954865, 49.023533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562919, -0.528334, -0.635598,
		0.824227, 0.415989, 0.384192,
		0.061420, -0.740147, 0.669635,
		36.854916, 41.732822, 49.224422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492218, 42.127922, 48.890030>,  <36.811924, 42.250923, 48.755680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492218, 42.127922, 48.890030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304474, 41.780849, 48.955551>,  <37.191830, 41.572605, 48.994865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304474, 41.780849, 48.955551>,  <37.492218, 42.127922, 48.890030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304474, 41.780849, 48.955551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606914, -0.451747, -0.653896,
		0.641373, -0.207494, 0.738638,
		-0.469357, -0.867681, 0.163807,
		37.163666, 41.520546, 49.004692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044823, 41.645691, 48.891731>,  <37.492218, 42.127922, 48.890030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044823, 41.645691, 48.891731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705971, 41.439384, 48.840572>,  <37.502659, 41.315601, 48.809879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705971, 41.439384, 48.840572>,  <38.044823, 41.645691, 48.891731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705971, 41.439384, 48.840572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450761, -0.570016, -0.686947,
		0.281405, -0.639581, 0.715365,
		-0.847128, -0.515769, -0.127892,
		37.451832, 41.284653, 48.802204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091709, 40.881081, 48.998791>,  <38.044823, 41.645691, 48.891731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091709, 40.881081, 48.998791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767570, 40.915741, 48.766987>,  <37.573086, 40.936539, 48.627907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767570, 40.915741, 48.766987>,  <38.091709, 40.881081, 48.998791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767570, 40.915741, 48.766987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276813, -0.815069, -0.508957,
		-0.516440, -0.572847, 0.636503,
		-0.810349, 0.086653, -0.579506,
		37.524467, 40.941738, 48.593136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010025, 40.217144, 48.813293>,  <38.091709, 40.881081, 48.998791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010025, 40.217144, 48.813293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764221, 40.413944, 48.566616>,  <37.616737, 40.532024, 48.418610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764221, 40.413944, 48.566616>,  <38.010025, 40.217144, 48.813293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764221, 40.413944, 48.566616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222591, -0.641813, -0.733845,
		-0.756857, -0.588225, 0.284885,
		-0.614509, 0.492003, -0.616694,
		37.579868, 40.561546, 48.381607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594124, 39.698513, 48.572788>,  <38.010025, 40.217144, 48.813293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594124, 39.698513, 48.572788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566929, 39.994907, 48.305561>,  <37.550613, 40.172745, 48.145226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566929, 39.994907, 48.305561>,  <37.594124, 39.698513, 48.572788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566929, 39.994907, 48.305561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150945, -0.654273, -0.741042,
		-0.986202, -0.151223, -0.067366,
		-0.067987, 0.740985, -0.668071,
		37.546532, 40.217201, 48.105141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194824, 39.423946, 48.097275>,  <37.594124, 39.698513, 48.572788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194824, 39.423946, 48.097275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358864, 39.739738, 47.914612>,  <37.457287, 39.929214, 47.805016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358864, 39.739738, 47.914612>,  <37.194824, 39.423946, 48.097275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358864, 39.739738, 47.914612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073552, -0.527695, -0.846244,
		-0.909072, 0.313453, -0.274473,
		0.410096, 0.789484, -0.456657,
		37.481892, 39.976585, 47.777615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800938, 39.404594, 47.465092>,  <37.194824, 39.423946, 48.097275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800938, 39.404594, 47.465092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153904, 39.585987, 47.414978>,  <37.365685, 39.694824, 47.384911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153904, 39.585987, 47.414978>,  <36.800938, 39.404594, 47.465092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153904, 39.585987, 47.414978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198359, -0.600088, -0.774950,
		-0.426609, 0.658976, -0.619480,
		0.882416, 0.453480, -0.125289,
		37.418629, 39.722031, 47.377392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853676, 39.682137, 46.803753>,  <36.800938, 39.404594, 47.465092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853676, 39.682137, 46.803753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245152, 39.645512, 46.877274>,  <37.480038, 39.623539, 46.921387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245152, 39.645512, 46.877274>,  <36.853676, 39.682137, 46.803753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245152, 39.645512, 46.877274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138405, -0.367105, -0.919825,
		0.151693, 0.925663, -0.346609,
		0.978690, -0.091558, 0.183804,
		37.538757, 39.618046, 46.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164906, 39.943104, 46.250336>,  <36.853676, 39.682137, 46.803753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164906, 39.943104, 46.250336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465466, 39.733574, 46.410835>,  <37.645802, 39.607857, 46.507133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465466, 39.733574, 46.410835>,  <37.164906, 39.943104, 46.250336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465466, 39.733574, 46.410835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369648, -0.169553, -0.913571,
		0.546584, 0.834781, 0.066228,
		0.751403, -0.523824, 0.401250,
		37.690887, 39.576427, 46.531212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745140, 40.172745, 45.923836>,  <37.164906, 39.943104, 46.250336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745140, 40.172745, 45.923836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889839, 39.846073, 46.103691>,  <37.976658, 39.650070, 46.211605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889839, 39.846073, 46.103691>,  <37.745140, 40.172745, 45.923836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889839, 39.846073, 46.103691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494602, -0.240707, -0.835122,
		0.790256, 0.524498, 0.316854,
		0.361751, -0.816677, 0.449638,
		37.998363, 39.601070, 46.238583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473080, 40.153957, 45.784840>,  <37.745140, 40.172745, 45.923836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473080, 40.153957, 45.784840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355865, 39.783108, 45.878288>,  <38.285538, 39.560600, 45.934357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355865, 39.783108, 45.878288>,  <38.473080, 40.153957, 45.784840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355865, 39.783108, 45.878288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145780, -0.284814, -0.947433,
		0.944923, -0.243572, 0.218616,
		-0.293033, -0.927121, 0.233620,
		38.267956, 39.504971, 45.948376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025227, 39.632687, 45.658344>,  <38.473080, 40.153957, 45.784840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025227, 39.632687, 45.658344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679859, 39.431217, 45.646870>,  <38.472637, 39.310337, 45.639984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679859, 39.431217, 45.646870>,  <39.025227, 39.632687, 45.658344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679859, 39.431217, 45.646870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323951, -0.509947, -0.796875,
		0.386737, -0.697329, 0.603463,
		-0.863418, -0.503674, -0.028685,
		38.420834, 39.280117, 45.638264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153042, 38.917347, 45.353653>,  <39.025227, 39.632687, 45.658344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153042, 38.917347, 45.353653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756721, 38.940720, 45.304829>,  <38.518929, 38.954742, 45.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756721, 38.940720, 45.304829>,  <39.153042, 38.917347, 45.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756721, 38.940720, 45.304829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068120, -0.563997, -0.822962,
		-0.116925, -0.823707, 0.554829,
		-0.990802, 0.058430, -0.122057,
		38.459480, 38.958248, 45.268211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007572, 38.317589, 45.102596>,  <39.153042, 38.917347, 45.353653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007572, 38.317589, 45.102596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684792, 38.533211, 45.006065>,  <38.491123, 38.662586, 44.948147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684792, 38.533211, 45.006065>,  <39.007572, 38.317589, 45.102596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684792, 38.533211, 45.006065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017756, -0.430562, -0.902386,
		-0.590346, -0.723900, 0.357016,
		-0.806955, 0.539059, -0.241326,
		38.442703, 38.694927, 44.933666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483135, 37.881840, 44.819836>,  <39.007572, 38.317589, 45.102596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483135, 37.881840, 44.819836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371075, 38.239437, 44.679958>,  <38.303841, 38.453995, 44.596031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371075, 38.239437, 44.679958>,  <38.483135, 37.881840, 44.819836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371075, 38.239437, 44.679958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066996, -0.381605, -0.921895,
		-0.957616, -0.234839, 0.166800,
		-0.280149, 0.893996, -0.349697,
		38.287029, 38.507637, 44.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767586, 37.865013, 44.510780>,  <38.483135, 37.881840, 44.819836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767586, 37.865013, 44.510780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973148, 38.170361, 44.354233>,  <38.096485, 38.353569, 44.260303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973148, 38.170361, 44.354233>,  <37.767586, 37.865013, 44.510780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973148, 38.170361, 44.354233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000621, -0.455890, -0.890036,
		-0.857846, 0.457639, -0.233811,
		0.513907, 0.763369, -0.391367,
		38.127319, 38.399372, 44.236824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331730, 38.191792, 43.918949>,  <37.767586, 37.865013, 44.510780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331730, 38.191792, 43.918949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710560, 38.299652, 43.849277>,  <37.937859, 38.364368, 43.807476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710560, 38.299652, 43.849277>,  <37.331730, 38.191792, 43.918949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710560, 38.299652, 43.849277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020295, -0.491209, -0.870805,
		-0.320371, 0.828253, -0.459739,
		0.947075, 0.269651, -0.174178,
		37.994682, 38.380547, 43.797024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355373, 38.615284, 43.215187>,  <37.331730, 38.191792, 43.918949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355373, 38.615284, 43.215187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726498, 38.498363, 43.307896>,  <37.949173, 38.428211, 43.363522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726498, 38.498363, 43.307896>,  <37.355373, 38.615284, 43.215187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726498, 38.498363, 43.307896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093215, -0.419937, -0.902754,
		0.361208, 0.859193, -0.362376,
		0.927815, -0.292302, 0.231774,
		38.004841, 38.410671, 43.377426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597324, 38.885380, 42.642654>,  <37.355373, 38.615284, 43.215187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597324, 38.885380, 42.642654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865097, 38.634293, 42.801563>,  <38.025761, 38.483639, 42.896908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865097, 38.634293, 42.801563>,  <37.597324, 38.885380, 42.642654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865097, 38.634293, 42.801563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160713, -0.399735, -0.902432,
		0.725278, 0.667965, -0.166714,
		0.669435, -0.627721, 0.397270,
		38.065926, 38.445976, 42.920746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119667, 38.801914, 42.204163>,  <37.597324, 38.885380, 42.642654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119667, 38.801914, 42.204163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180351, 38.456539, 42.396603>,  <38.216763, 38.249313, 42.512066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180351, 38.456539, 42.396603>,  <38.119667, 38.801914, 42.204163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180351, 38.456539, 42.396603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255849, -0.435839, -0.862894,
		0.954738, 0.253998, 0.154789,
		0.151710, -0.863441, 0.481097,
		38.225864, 38.197506, 42.540932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619099, 38.545479, 41.868668>,  <38.119667, 38.801914, 42.204163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619099, 38.545479, 41.868668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469650, 38.228027, 42.060738>,  <38.379982, 38.037556, 42.175980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469650, 38.228027, 42.060738>,  <38.619099, 38.545479, 41.868668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469650, 38.228027, 42.060738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203145, -0.575098, -0.792461,
		0.905065, -0.198532, 0.376088,
		-0.373616, -0.793629, 0.480170,
		38.357567, 37.989937, 42.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027744, 38.030964, 41.740993>,  <38.619099, 38.545479, 41.868668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027744, 38.030964, 41.740993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712635, 37.814522, 41.858715>,  <38.523571, 37.684654, 41.929348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712635, 37.814522, 41.858715>,  <39.027744, 38.030964, 41.740993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712635, 37.814522, 41.858715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180088, -0.659246, -0.730043,
		0.589053, -0.522107, 0.616783,
		-0.787773, -0.541109, 0.294306,
		38.476303, 37.652187, 41.947006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282627, 37.348885, 41.673683>,  <39.027744, 38.030964, 41.740993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282627, 37.348885, 41.673683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884403, 37.320488, 41.698395>,  <38.645470, 37.303452, 41.713223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884403, 37.320488, 41.698395>,  <39.282627, 37.348885, 41.673683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884403, 37.320488, 41.698395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019954, -0.482318, -0.875769,
		0.091967, -0.873115, 0.478761,
		-0.995562, -0.070989, 0.061779,
		38.585735, 37.299191, 41.716930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182400, 36.689171, 41.528122>,  <39.282627, 37.348885, 41.673683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182400, 36.689171, 41.528122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842579, 36.882561, 41.443729>,  <38.638687, 36.998596, 41.393093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842579, 36.882561, 41.443729>,  <39.182400, 36.689171, 41.528122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842579, 36.882561, 41.443729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029272, -0.442556, -0.896263,
		-0.526697, -0.755243, 0.390125,
		-0.849549, 0.483479, -0.210986,
		38.587715, 37.027603, 41.380432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724598, 36.212437, 41.176735>,  <39.182400, 36.689171, 41.528122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724598, 36.212437, 41.176735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570171, 36.562737, 41.060795>,  <38.477516, 36.772919, 40.991230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570171, 36.562737, 41.060795>,  <38.724598, 36.212437, 41.176735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570171, 36.562737, 41.060795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097736, -0.273608, -0.956863,
		-0.917279, -0.397741, 0.020038,
		-0.386066, 0.875752, -0.289849,
		38.454353, 36.825462, 40.973839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231953, 36.011375, 40.706257>,  <38.724598, 36.212437, 41.176735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231953, 36.011375, 40.706257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316765, 36.391499, 40.615070>,  <38.367653, 36.619572, 40.560360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316765, 36.391499, 40.615070>,  <38.231953, 36.011375, 40.706257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316765, 36.391499, 40.615070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147168, -0.261658, -0.953874,
		-0.966119, 0.168697, -0.195333,
		0.212026, 0.950303, -0.227966,
		38.380371, 36.676590, 40.546680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964710, 36.093395, 40.053303>,  <38.231953, 36.011375, 40.706257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964710, 36.093395, 40.053303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193249, 36.417870, 40.103168>,  <38.330372, 36.612553, 40.133087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193249, 36.417870, 40.103168>,  <37.964710, 36.093395, 40.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193249, 36.417870, 40.103168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133075, 0.058317, -0.989389,
		-0.809847, 0.581875, -0.074629,
		0.571349, 0.811184, 0.124661,
		38.364655, 36.661224, 40.140568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741310, 36.530903, 39.509666>,  <37.964710, 36.093395, 40.053303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741310, 36.530903, 39.509666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101624, 36.655037, 39.631180>,  <38.317810, 36.729519, 39.704090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101624, 36.655037, 39.631180>,  <37.741310, 36.530903, 39.509666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101624, 36.655037, 39.631180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298357, 0.066055, -0.952166,
		-0.315559, 0.948329, -0.033091,
		0.900780, 0.310338, 0.303785,
		38.371857, 36.748138, 39.722317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763607, 37.142662, 39.072712>,  <37.741310, 36.530903, 39.509666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763607, 37.142662, 39.072712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124207, 37.062786, 39.226299>,  <38.340565, 37.014862, 39.318451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124207, 37.062786, 39.226299>,  <37.763607, 37.142662, 39.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124207, 37.062786, 39.226299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409744, 0.108154, -0.905766,
		0.139344, 0.973872, 0.179322,
		0.901495, -0.199689, 0.383968,
		38.394653, 37.002880, 39.341488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220112, 37.739555, 38.962181>,  <37.763607, 37.142662, 39.072712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220112, 37.739555, 38.962181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470402, 37.430676, 39.006332>,  <38.620575, 37.245350, 39.032822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470402, 37.430676, 39.006332>,  <38.220112, 37.739555, 38.962181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470402, 37.430676, 39.006332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369272, 0.168598, -0.913900,
		0.687100, 0.612609, 0.390646,
		0.625725, -0.772195, 0.110376,
		38.658119, 37.199017, 39.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927685, 37.982460, 38.939087>,  <38.220112, 37.739555, 38.962181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927685, 37.982460, 38.939087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883823, 37.603558, 38.818634>,  <38.857506, 37.376217, 38.746361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883823, 37.603558, 38.818634>,  <38.927685, 37.982460, 38.939087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883823, 37.603558, 38.818634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467010, 0.218341, -0.856871,
		0.877427, -0.234592, 0.418436,
		-0.109653, -0.947256, -0.301135,
		38.850929, 37.319382, 38.728294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469696, 37.923157, 38.482647>,  <38.927685, 37.982460, 38.939087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469696, 37.923157, 38.482647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288700, 37.574574, 38.406952>,  <39.180103, 37.365425, 38.361534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288700, 37.574574, 38.406952>,  <39.469696, 37.923157, 38.482647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288700, 37.574574, 38.406952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518861, -0.084692, -0.850653,
		0.725281, -0.483103, 0.490488,
		-0.452493, -0.871458, -0.189238,
		39.152950, 37.313137, 38.350182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951515, 37.390739, 38.440163>,  <39.469696, 37.923157, 38.482647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951515, 37.390739, 38.440163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642845, 37.244606, 38.231911>,  <39.457645, 37.156925, 38.106960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642845, 37.244606, 38.231911>,  <39.951515, 37.390739, 38.440163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642845, 37.244606, 38.231911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592094, -0.113706, -0.797807,
		0.232268, -0.923905, 0.304056,
		-0.771671, -0.365335, -0.520628,
		39.411343, 37.135006, 38.075722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239384, 36.831799, 37.959949>,  <39.951515, 37.390739, 38.440163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239384, 36.831799, 37.959949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878246, 36.877811, 37.794231>,  <39.661564, 36.905418, 37.694801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878246, 36.877811, 37.794231>,  <40.239384, 36.831799, 37.959949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878246, 36.877811, 37.794231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386072, -0.207267, -0.898882,
		-0.189261, -0.971499, 0.142723,
		-0.902845, 0.115022, -0.414296,
		39.607395, 36.912323, 37.669941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253822, 36.362743, 37.497303>,  <40.239384, 36.831799, 37.959949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253822, 36.362743, 37.497303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970222, 36.619846, 37.381248>,  <39.800060, 36.774109, 37.311615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970222, 36.619846, 37.381248>,  <40.253822, 36.362743, 37.497303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970222, 36.619846, 37.381248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333677, -0.056687, -0.940981,
		-0.621268, -0.763971, -0.174281,
		-0.709003, 0.642755, -0.290138,
		39.757523, 36.812672, 37.294209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965504, 36.161263, 36.854637>,  <40.253822, 36.362743, 37.497303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965504, 36.161263, 36.854637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956352, 36.557823, 36.906166>,  <39.950863, 36.795761, 36.937084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956352, 36.557823, 36.906166>,  <39.965504, 36.161263, 36.854637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956352, 36.557823, 36.906166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489586, 0.123455, -0.863171,
		-0.871655, 0.043321, -0.488202,
		-0.022878, 0.991404, 0.128819,
		39.949490, 36.855244, 36.944813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614094, 36.509193, 36.247864>,  <39.965504, 36.161263, 36.854637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614094, 36.509193, 36.247864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884281, 36.737213, 36.434959>,  <40.046394, 36.874023, 36.547218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884281, 36.737213, 36.434959>,  <39.614094, 36.509193, 36.247864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884281, 36.737213, 36.434959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503891, 0.106282, -0.857203,
		-0.538359, 0.814709, -0.215451,
		0.675473, 0.570047, 0.467743,
		40.086922, 36.908226, 36.575283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897232, 37.090698, 35.742908>,  <39.614094, 36.509193, 36.247864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897232, 37.090698, 35.742908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161022, 37.040230, 36.039333>,  <40.319294, 37.009949, 36.217190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161022, 37.040230, 36.039333>,  <39.897232, 37.090698, 35.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161022, 37.040230, 36.039333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732891, -0.111389, -0.671165,
		0.167227, 0.985735, 0.019010,
		0.659474, -0.126169, 0.741064,
		40.358864, 37.002380, 36.261654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484932, 37.628395, 35.667759>,  <39.897232, 37.090698, 35.742908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484932, 37.628395, 35.667759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592213, 37.297459, 35.865173>,  <40.656582, 37.098896, 35.983624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592213, 37.297459, 35.865173>,  <40.484932, 37.628395, 35.667759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592213, 37.297459, 35.865173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668517, -0.209036, -0.713715,
		0.693650, 0.521360, 0.497024,
		0.268206, -0.827338, 0.493536,
		40.672676, 37.049259, 36.013233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254280, 37.555305, 35.937862>,  <40.484932, 37.628395, 35.667759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254280, 37.555305, 35.937862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075630, 37.215725, 35.824863>,  <40.968441, 37.011974, 35.757065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075630, 37.215725, 35.824863>,  <41.254280, 37.555305, 35.937862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075630, 37.215725, 35.824863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742796, -0.175803, -0.646024,
		0.498782, -0.498367, 0.709117,
		-0.446622, -0.848955, -0.282498,
		40.941643, 36.961037, 35.740112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786789, 37.097607, 35.840874>,  <41.254280, 37.555305, 35.937862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786789, 37.097607, 35.840874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491810, 36.962326, 35.607021>,  <41.314823, 36.881157, 35.466709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491810, 36.962326, 35.607021>,  <41.786789, 37.097607, 35.840874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491810, 36.962326, 35.607021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674921, -0.401648, -0.619000,
		-0.025469, -0.851059, 0.524453,
		-0.737450, -0.338198, -0.584627,
		41.270576, 36.860867, 35.431633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135727, 36.591728, 35.313374>,  <41.786789, 37.097607, 35.840874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135727, 36.591728, 35.313374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766636, 36.620285, 35.161861>,  <41.545181, 36.637417, 35.070953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766636, 36.620285, 35.161861>,  <42.135727, 36.591728, 35.313374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766636, 36.620285, 35.161861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302714, -0.474125, -0.826782,
		-0.238613, -0.877558, 0.415878,
		-0.922728, 0.071389, -0.378782,
		41.489819, 36.641701, 35.048225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763939, 36.897636, 35.484974>,  <42.135727, 36.591728, 35.313374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763939, 36.897636, 35.484974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091827, 36.790691, 35.282360>,  <43.288559, 36.726524, 35.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091827, 36.790691, 35.282360>,  <42.763939, 36.897636, 35.484974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091827, 36.790691, 35.282360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255155, 0.621314, -0.740854,
		0.512791, 0.736539, 0.441085,
		0.819720, -0.267358, -0.506536,
		43.337742, 36.710484, 35.130398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890865, 37.483368, 35.078350>,  <42.763939, 36.897636, 35.484974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890865, 37.483368, 35.078350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113510, 37.206341, 34.894817>,  <43.247097, 37.040123, 34.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113510, 37.206341, 34.894817>,  <42.890865, 37.483368, 35.078350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113510, 37.206341, 34.894817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141999, 0.464852, -0.873927,
		0.818544, 0.551595, 0.160400,
		0.556617, -0.692571, -0.458828,
		43.280495, 36.998569, 34.757168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456970, 37.827816, 34.808514>,  <42.890865, 37.483368, 35.078350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456970, 37.827816, 34.808514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390663, 37.488667, 34.607067>,  <43.350880, 37.285175, 34.486198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390663, 37.488667, 34.607067>,  <43.456970, 37.827816, 34.808514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390663, 37.488667, 34.607067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140610, 0.525788, -0.838913,
		0.976089, -0.068253, -0.206379,
		-0.165770, -0.847873, -0.503619,
		43.340931, 37.234306, 34.455982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794384, 37.988701, 34.186241>,  <43.456970, 37.827816, 34.808514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794384, 37.988701, 34.186241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565014, 37.668415, 34.116917>,  <43.427391, 37.476242, 34.075321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565014, 37.668415, 34.116917>,  <43.794384, 37.988701, 34.186241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565014, 37.668415, 34.116917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241561, 0.367394, -0.898148,
		0.782838, -0.473151, -0.404094,
		-0.573422, -0.800718, -0.173315,
		43.392986, 37.428200, 34.064922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061661, 37.600391, 33.549038>,  <43.794384, 37.988701, 34.186241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061661, 37.600391, 33.549038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675892, 37.510963, 33.605465>,  <43.444431, 37.457306, 33.639320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675892, 37.510963, 33.605465>,  <44.061661, 37.600391, 33.549038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675892, 37.510963, 33.605465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199895, 0.267552, -0.942580,
		0.172989, -0.937247, -0.302724,
		-0.964425, -0.223569, 0.141067,
		43.386566, 37.443893, 33.647785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757973, 37.274410, 32.951584>,  <44.061661, 37.600391, 33.549038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757973, 37.274410, 32.951584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437180, 37.421143, 33.140163>,  <43.244705, 37.509182, 33.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437180, 37.421143, 33.140163>,  <43.757973, 37.274410, 32.951584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437180, 37.421143, 33.140163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366138, 0.321732, -0.873173,
		-0.471984, -0.872884, -0.123714,
		-0.801982, 0.366827, 0.471448,
		43.196587, 37.531189, 33.281597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170208, 37.092014, 32.498779>,  <43.757973, 37.274410, 32.951584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170208, 37.092014, 32.498779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018192, 37.374149, 32.738136>,  <42.926983, 37.543430, 32.881752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018192, 37.374149, 32.738136>,  <43.170208, 37.092014, 32.498779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018192, 37.374149, 32.738136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406531, 0.453729, -0.793008,
		-0.830845, -0.544638, 0.114307,
		-0.380038, 0.705336, 0.598391,
		42.904182, 37.585751, 32.917652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543098, 37.177006, 32.280041>,  <43.170208, 37.092014, 32.498779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543098, 37.177006, 32.280041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533070, 37.503437, 32.511002>,  <42.527054, 37.699295, 32.649578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533070, 37.503437, 32.511002>,  <42.543098, 37.177006, 32.280041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533070, 37.503437, 32.511002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514697, 0.484611, -0.707275,
		-0.857005, -0.314920, 0.407881,
		-0.025071, 0.816074, 0.577403,
		42.525547, 37.748260, 32.684223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902229, 37.430229, 32.182549>,  <42.543098, 37.177006, 32.280041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902229, 37.430229, 32.182549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079750, 37.745880, 32.352402>,  <42.186260, 37.935272, 32.454315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079750, 37.745880, 32.352402>,  <41.902229, 37.430229, 32.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079750, 37.745880, 32.352402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506797, 0.611818, -0.607318,
		-0.739054, 0.054322, 0.671453,
		0.443798, 0.789131, 0.424636,
		42.212891, 37.982620, 32.479794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332279, 37.904411, 32.475674>,  <41.902229, 37.430229, 32.182549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332279, 37.904411, 32.475674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 38.100517, 32.421982>,  <41.883430, 38.218182, 32.389767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 38.100517, 32.421982>,  <41.332279, 37.904411, 32.475674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676750, 38.100517, 32.421982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451888, 0.617487, -0.643823,
		-0.232758, 0.615102, 0.753309,
		0.861174, 0.490266, -0.134232,
		41.935104, 38.247597, 32.381714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119087, 38.571156, 32.414261>,  <41.332279, 37.904411, 32.475674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119087, 38.571156, 32.414261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481529, 38.557228, 32.245609>,  <41.698994, 38.548870, 32.144421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481529, 38.557228, 32.245609>,  <41.119087, 38.571156, 32.414261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481529, 38.557228, 32.245609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335078, 0.549345, -0.765469,
		0.258270, 0.834870, 0.486095,
		0.906101, -0.034818, -0.421626,
		41.753361, 38.546783, 32.119122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413971, 39.279095, 32.382599>,  <41.119087, 38.571156, 32.414261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413971, 39.279095, 32.382599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599640, 39.059238, 32.104767>,  <41.711040, 38.927322, 31.938068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599640, 39.059238, 32.104767>,  <41.413971, 39.279095, 32.382599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599640, 39.059238, 32.104767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332278, 0.618849, -0.711771,
		0.821060, 0.561174, 0.104616,
		0.464169, -0.549645, -0.694577,
		41.738892, 38.894344, 31.896393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742985, 39.741016, 31.937185>,  <41.413971, 39.279095, 32.382599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742985, 39.741016, 31.937185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742485, 39.412762, 31.708607>,  <41.742184, 39.215809, 31.571461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742485, 39.412762, 31.708607>,  <41.742985, 39.741016, 31.937185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742485, 39.412762, 31.708607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163049, 0.563966, -0.809542,
		0.986617, 0.092163, -0.134508,
		-0.001249, -0.820639, -0.571445,
		41.742111, 39.166569, 31.537172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150570, 39.900494, 31.451853>,  <41.742985, 39.741016, 31.937185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150570, 39.900494, 31.451853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938438, 39.599236, 31.296146>,  <41.811161, 39.418480, 31.202723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938438, 39.599236, 31.296146>,  <42.150570, 39.900494, 31.451853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938438, 39.599236, 31.296146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160016, 0.539821, -0.826431,
		0.832554, -0.375992, -0.406798,
		-0.530329, -0.753143, -0.389265,
		41.779339, 39.373291, 31.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396118, 39.830910, 30.790251>,  <42.150570, 39.900494, 31.451853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396118, 39.830910, 30.790251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053486, 39.626198, 30.763859>,  <41.847908, 39.503372, 30.748024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053486, 39.626198, 30.763859>,  <42.396118, 39.830910, 30.790251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053486, 39.626198, 30.763859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178714, 0.414182, -0.892477,
		0.484080, -0.752685, -0.446242,
		-0.856579, -0.511780, -0.065982,
		41.796513, 39.472664, 30.744064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405296, 39.602753, 30.061939>,  <42.396118, 39.830910, 30.790251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405296, 39.602753, 30.061939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030785, 39.573410, 30.199348>,  <41.806080, 39.555805, 30.281794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030785, 39.573410, 30.199348>,  <42.405296, 39.602753, 30.061939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030785, 39.573410, 30.199348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340135, 0.433591, -0.834450,
		-0.087735, -0.898119, -0.430912,
		-0.936275, -0.073358, 0.343523,
		41.749901, 39.551403, 30.302404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937325, 39.125965, 29.569687>,  <42.405296, 39.602753, 30.061939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937325, 39.125965, 29.569687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736744, 39.398373, 29.783138>,  <41.616394, 39.561817, 29.911209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736744, 39.398373, 29.783138>,  <41.937325, 39.125965, 29.569687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736744, 39.398373, 29.783138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326141, 0.422486, -0.845658,
		-0.801362, -0.598093, 0.010253,
		-0.501450, 0.681022, 0.533626,
		41.586308, 39.602680, 29.943226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326935, 39.311405, 29.188757>,  <41.937325, 39.125965, 29.569687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326935, 39.311405, 29.188757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306297, 39.617161, 29.445829>,  <41.293915, 39.800613, 29.600073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306297, 39.617161, 29.445829>,  <41.326935, 39.311405, 29.188757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306297, 39.617161, 29.445829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289086, 0.604556, -0.742254,
		-0.955912, -0.224086, 0.189784,
		-0.051594, 0.764393, 0.642683,
		41.290821, 39.846478, 29.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559254, 39.505829, 29.177128>,  <41.326935, 39.311405, 29.188757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559254, 39.505829, 29.177128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725212, 39.838669, 29.324354>,  <40.824787, 40.038372, 29.412689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725212, 39.838669, 29.324354>,  <40.559254, 39.505829, 29.177128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725212, 39.838669, 29.324354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471024, 0.542528, -0.695557,
		-0.778458, 0.115218, 0.617032,
		0.414898, 0.832099, 0.368065,
		40.849682, 40.088299, 29.434774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027031, 40.045967, 29.346556>,  <40.559254, 39.505829, 29.177128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027031, 40.045967, 29.346556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381592, 40.204258, 29.250483>,  <40.594330, 40.299232, 29.192839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381592, 40.204258, 29.250483>,  <40.027031, 40.045967, 29.346556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381592, 40.204258, 29.250483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456000, 0.657114, -0.600220,
		-0.079694, 0.641562, 0.762920,
		0.886404, 0.395726, -0.240185,
		40.647514, 40.322975, 29.178427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976456, 40.772720, 29.403683>,  <40.027031, 40.045967, 29.346556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976456, 40.772720, 29.403683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272518, 40.692612, 29.146914>,  <40.450153, 40.644547, 28.992851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272518, 40.692612, 29.146914>,  <39.976456, 40.772720, 29.403683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272518, 40.692612, 29.146914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419499, 0.608562, -0.673552,
		0.525543, 0.767818, 0.366416,
		0.740153, -0.200269, -0.641924,
		40.494564, 40.632530, 28.954336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217728, 41.366543, 29.139952>,  <39.976456, 40.772720, 29.403683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217728, 41.366543, 29.139952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336552, 41.116390, 28.851328>,  <40.407848, 40.966297, 28.678154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336552, 41.116390, 28.851328>,  <40.217728, 41.366543, 29.139952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336552, 41.116390, 28.851328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441029, 0.580373, -0.684588,
		0.846905, 0.521594, -0.103406,
		0.297063, -0.625386, -0.721559,
		40.425671, 40.928776, 28.634861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505154, 41.848007, 28.684155>,  <40.217728, 41.366543, 29.139952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505154, 41.848007, 28.684155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399506, 41.531830, 28.463089>,  <40.336117, 41.342121, 28.330450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399506, 41.531830, 28.463089>,  <40.505154, 41.848007, 28.684155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399506, 41.531830, 28.463089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350366, 0.612498, -0.708583,
		0.898602, 0.006484, -0.438718,
		-0.264119, -0.790445, -0.552663,
		40.320271, 41.294697, 28.297291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700359, 41.900093, 27.932880>,  <40.505154, 41.848007, 28.684155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700359, 41.900093, 27.932880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393440, 41.644249, 27.951456>,  <40.209290, 41.490742, 27.962601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393440, 41.644249, 27.951456>,  <40.700359, 41.900093, 27.932880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393440, 41.644249, 27.951456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469651, 0.511146, -0.719832,
		0.436671, -0.574137, -0.692593,
		-0.767299, -0.639607, 0.046441,
		40.163250, 41.452366, 27.965387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222649, 42.432167, 28.285116>,  <40.700359, 41.900093, 27.932880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222649, 42.432167, 28.285116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312782, 42.133236, 28.035084>,  <41.366863, 41.953876, 27.885065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312782, 42.133236, 28.035084>,  <41.222649, 42.432167, 28.285116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312782, 42.133236, 28.035084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600999, 0.611589, -0.514546,
		0.766827, -0.259727, 0.586957,
		0.225335, -0.747329, -0.625079,
		41.380383, 41.909039, 27.847561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880989, 42.498817, 28.075569>,  <41.222649, 42.432167, 28.285116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880989, 42.498817, 28.075569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757359, 42.299286, 27.751682>,  <41.683182, 42.179565, 27.557350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757359, 42.299286, 27.751682>,  <41.880989, 42.498817, 28.075569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757359, 42.299286, 27.751682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556261, 0.595758, -0.579350,
		0.771394, -0.629474, 0.093349,
		-0.309073, -0.498834, -0.809716,
		41.664639, 42.149635, 27.508768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836773, 42.030605, 28.680641>,  <41.880989, 42.498817, 28.075569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836773, 42.030605, 28.680641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123268, 42.237347, 28.493084>,  <42.295166, 42.361393, 28.380550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123268, 42.237347, 28.493084>,  <41.836773, 42.030605, 28.680641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123268, 42.237347, 28.493084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662265, -0.291593, 0.690202,
		0.220008, -0.804882, -0.551145,
		0.716241, 0.516854, -0.468893,
		42.338142, 42.392403, 28.352417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386589, 41.581497, 28.422729>,  <41.836773, 42.030605, 28.680641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386589, 41.581497, 28.422729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523392, 41.951542, 28.488693>,  <42.605473, 42.173569, 28.528271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523392, 41.951542, 28.488693>,  <42.386589, 41.581497, 28.422729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523392, 41.951542, 28.488693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681752, -0.365049, 0.633998,
		0.646722, -0.104401, -0.755547,
		0.342002, 0.925116, 0.164909,
		42.625992, 42.229076, 28.538166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148197, 41.693439, 28.256693>,  <42.386589, 41.581497, 28.422729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148197, 41.693439, 28.256693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075104, 41.982933, 28.522871>,  <43.031250, 42.156628, 28.682579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075104, 41.982933, 28.522871>,  <43.148197, 41.693439, 28.256693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075104, 41.982933, 28.522871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686856, -0.390305, 0.613099,
		0.703448, 0.569098, -0.425781,
		-0.182729, 0.723733, 0.665447,
		43.020287, 42.200054, 28.722506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783710, 41.903912, 28.535423>,  <43.148197, 41.693439, 28.256693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783710, 41.903912, 28.535423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526928, 42.002777, 28.825747>,  <43.372856, 42.062096, 28.999941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526928, 42.002777, 28.825747>,  <43.783710, 41.903912, 28.535423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526928, 42.002777, 28.825747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620208, -0.389184, 0.681086,
		0.450811, 0.887382, 0.096549,
		-0.641958, 0.247161, 0.725811,
		43.334339, 42.076927, 29.043489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105103, 41.619011, 29.144732>,  <43.783710, 41.903912, 28.535423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105103, 41.619011, 29.144732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801731, 41.839909, 29.283182>,  <43.619709, 41.972446, 29.366253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801731, 41.839909, 29.283182>,  <44.105103, 41.619011, 29.144732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801731, 41.839909, 29.283182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223686, -0.278257, 0.934097,
		0.612165, 0.785873, 0.087509,
		-0.758432, 0.552247, 0.346128,
		43.574200, 42.005581, 29.387020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367161, 42.167450, 29.639439>,  <44.105103, 41.619011, 29.144732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367161, 42.167450, 29.639439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003326, 42.024315, 29.723923>,  <43.785027, 41.938435, 29.774612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003326, 42.024315, 29.723923>,  <44.367161, 42.167450, 29.639439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003326, 42.024315, 29.723923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295959, -0.201137, 0.933784,
		-0.291664, 0.911863, 0.288857,
		-0.909583, -0.357841, 0.211209,
		43.730453, 41.916962, 29.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330685, 42.368145, 30.401352>,  <44.367161, 42.167450, 29.639439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330685, 42.368145, 30.401352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075256, 42.078091, 30.298283>,  <43.921997, 41.904057, 30.236441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075256, 42.078091, 30.298283>,  <44.330685, 42.368145, 30.401352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075256, 42.078091, 30.298283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249321, -0.511716, 0.822183,
		-0.728054, 0.460781, 0.507561,
		-0.638573, -0.725140, -0.257675,
		43.883686, 41.860550, 30.220980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842831, 42.350056, 31.009066>,  <44.330685, 42.368145, 30.401352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842831, 42.350056, 31.009066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823750, 41.998550, 30.819120>,  <43.812302, 41.787647, 30.705154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823750, 41.998550, 30.819120>,  <43.842831, 42.350056, 31.009066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823750, 41.998550, 30.819120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023090, -0.476245, 0.879009,
		-0.998595, 0.030965, 0.043008,
		-0.047701, -0.878767, -0.474861,
		43.809441, 41.734921, 30.676662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484409, 41.861015, 31.480413>,  <43.842831, 42.350056, 31.009066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484409, 41.861015, 31.480413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665478, 41.626503, 31.211679>,  <43.774120, 41.485794, 31.050440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665478, 41.626503, 31.211679>,  <43.484409, 41.861015, 31.480413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665478, 41.626503, 31.211679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123341, -0.705036, 0.698363,
		-0.883106, -0.398993, -0.246837,
		0.452671, -0.586284, -0.671834,
		43.801277, 41.450619, 31.010130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346523, 41.166073, 31.633583>,  <43.484409, 41.861015, 31.480413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346523, 41.166073, 31.633583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682331, 41.162754, 31.416273>,  <43.883816, 41.160763, 31.285887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682331, 41.162754, 31.416273>,  <43.346523, 41.166073, 31.633583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682331, 41.162754, 31.416273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418347, -0.628150, 0.656059,
		-0.346697, -0.778049, -0.523872,
		0.839516, -0.008293, -0.543272,
		43.934185, 41.160267, 31.253292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467659, 40.451286, 31.664154>,  <43.346523, 41.166073, 31.633583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467659, 40.451286, 31.664154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809158, 40.637482, 31.570839>,  <44.014057, 40.749199, 31.514851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809158, 40.637482, 31.570839>,  <43.467659, 40.451286, 31.664154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809158, 40.637482, 31.570839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492522, -0.576646, 0.651845,
		0.168904, -0.671414, -0.721578,
		0.853753, 0.465492, -0.233288,
		44.065285, 40.777130, 31.500853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927151, 39.905773, 31.585640>,  <43.467659, 40.451286, 31.664154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927151, 39.905773, 31.585640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170189, 40.215549, 31.656147>,  <44.316010, 40.401417, 31.698452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170189, 40.215549, 31.656147>,  <43.927151, 39.905773, 31.585640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170189, 40.215549, 31.656147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596339, -0.591403, 0.542792,
		0.524608, -0.224679, -0.821162,
		0.607591, 0.774443, 0.176270,
		44.352467, 40.447884, 31.709028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638523, 39.727833, 31.386532>,  <43.927151, 39.905773, 31.585640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638523, 39.727833, 31.386532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670933, 40.019314, 31.658539>,  <44.690380, 40.194202, 31.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670933, 40.019314, 31.658539>,  <44.638523, 39.727833, 31.386532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670933, 40.019314, 31.658539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673860, -0.542760, 0.501323,
		0.734403, 0.417617, -0.535022,
		0.081027, 0.728703, 0.680020,
		44.695240, 40.237926, 31.862545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352745, 39.720821, 31.606031>,  <44.638523, 39.727833, 31.386532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352745, 39.720821, 31.606031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143192, 39.915073, 31.885950>,  <45.017460, 40.031624, 32.053902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143192, 39.915073, 31.885950>,  <45.352745, 39.720821, 31.606031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143192, 39.915073, 31.885950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459666, -0.530481, 0.712248,
		0.717116, 0.694806, 0.054682,
		-0.523882, 0.485629, 0.699795,
		44.986027, 40.060760, 32.095890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833767, 39.944721, 32.069252>,  <45.352745, 39.720821, 31.606031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833767, 39.944721, 32.069252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485252, 39.988533, 32.260609>,  <45.276142, 40.014820, 32.375423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485252, 39.988533, 32.260609>,  <45.833767, 39.944721, 32.069252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485252, 39.988533, 32.260609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350877, -0.542514, 0.763258,
		0.343134, 0.832876, 0.434255,
		-0.871289, 0.109529, 0.478392,
		45.223866, 40.021393, 32.404125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047131, 40.214821, 32.766277>,  <45.833767, 39.944721, 32.069252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047131, 40.214821, 32.766277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698120, 40.019520, 32.759369>,  <45.488712, 39.902340, 32.755222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698120, 40.019520, 32.759369>,  <46.047131, 40.214821, 32.766277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698120, 40.019520, 32.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311054, -0.582433, 0.751011,
		-0.376743, 0.649908, 0.660064,
		-0.872531, -0.488254, -0.017271,
		45.436359, 39.873043, 32.754189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927925, 40.139385, 33.424892>,  <46.047131, 40.214821, 32.766277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927925, 40.139385, 33.424892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688068, 39.861900, 33.265297>,  <45.544155, 39.695408, 33.169540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688068, 39.861900, 33.265297>,  <45.927925, 40.139385, 33.424892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688068, 39.861900, 33.265297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367200, -0.681493, 0.633033,
		-0.711053, 0.233083, 0.663382,
		-0.599639, -0.693714, -0.398989,
		45.508175, 39.653786, 33.145599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768345, 39.688328, 34.027809>,  <45.927925, 40.139385, 33.424892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768345, 39.688328, 34.027809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660500, 39.465710, 33.713470>,  <45.595791, 39.332138, 33.524868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660500, 39.465710, 33.713470>,  <45.768345, 39.688328, 34.027809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660500, 39.465710, 33.713470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222664, -0.829986, 0.511413,
		-0.936872, -0.037096, 0.347700,
		-0.269615, -0.556549, -0.785851,
		45.579617, 39.298744, 33.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385853, 39.080551, 34.321030>,  <45.768345, 39.688328, 34.027809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385853, 39.080551, 34.321030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486771, 38.960770, 33.952969>,  <45.547321, 38.888901, 33.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486771, 38.960770, 33.952969>,  <45.385853, 39.080551, 34.321030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486771, 38.960770, 33.952969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148761, -0.927604, 0.342666,
		-0.956147, -0.223335, -0.189482,
		0.252294, -0.299452, -0.920150,
		45.562458, 38.870934, 33.676922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974339, 38.473549, 34.150898>,  <45.385853, 39.080551, 34.321030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974339, 38.473549, 34.150898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294155, 38.430882, 33.914471>,  <45.486046, 38.405281, 33.772614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294155, 38.430882, 33.914471>,  <44.974339, 38.473549, 34.150898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294155, 38.430882, 33.914471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159579, -0.911003, 0.380273,
		-0.579027, -0.398365, -0.711360,
		0.799538, -0.106671, -0.591067,
		45.534016, 38.398880, 33.737152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900936, 37.808929, 33.856155>,  <44.974339, 38.473549, 34.150898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900936, 37.808929, 33.856155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288258, 37.890694, 33.798748>,  <45.520653, 37.939751, 33.764305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288258, 37.890694, 33.798748>,  <44.900936, 37.808929, 33.856155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288258, 37.890694, 33.798748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241230, -0.914306, 0.325349,
		-0.064714, -0.349659, -0.934639,
		0.968308, 0.204408, -0.143517,
		45.578751, 37.952015, 33.755692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174049, 37.321804, 33.426186>,  <44.900936, 37.808929, 33.856155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174049, 37.321804, 33.426186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514095, 37.442066, 33.599117>,  <45.718124, 37.514225, 33.702877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514095, 37.442066, 33.599117>,  <45.174049, 37.321804, 33.426186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514095, 37.442066, 33.599117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193516, -0.941909, 0.274515,
		0.489753, -0.149706, -0.858912,
		0.850114, 0.300658, 0.432333,
		45.769131, 37.532265, 33.728817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752602, 36.981361, 33.122070>,  <45.174049, 37.321804, 33.426186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752602, 36.981361, 33.122070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879940, 37.074707, 33.489590>,  <45.956345, 37.130714, 33.710102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879940, 37.074707, 33.489590>,  <45.752602, 36.981361, 33.122070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879940, 37.074707, 33.489590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293718, -0.945812, 0.138457,
		0.901323, 0.225790, -0.369643,
		0.318350, 0.233365, 0.918800,
		45.975445, 37.144718, 33.765228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468899, 36.782898, 33.092056>,  <45.752602, 36.981361, 33.122070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468899, 36.782898, 33.092056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358017, 36.820225, 33.474564>,  <46.291489, 36.842621, 33.704067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358017, 36.820225, 33.474564>,  <46.468899, 36.782898, 33.092056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358017, 36.820225, 33.474564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182969, -0.971932, 0.147886,
		0.943229, 0.215962, 0.252347,
		-0.277202, 0.093318, 0.956269,
		46.274857, 36.848221, 33.761444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916077, 36.265717, 33.463264>,  <46.468899, 36.782898, 33.092056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916077, 36.265717, 33.463264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605171, 36.362717, 33.695488>,  <46.418629, 36.420918, 33.834820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605171, 36.362717, 33.695488>,  <46.916077, 36.265717, 33.463264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605171, 36.362717, 33.695488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038180, -0.902854, 0.428248,
		0.628010, 0.355029, 0.692501,
		-0.777268, 0.242504, 0.580556,
		46.371990, 36.435467, 33.869656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128784, 36.092388, 34.142799>,  <46.916077, 36.265717, 33.463264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128784, 36.092388, 34.142799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730293, 36.097851, 34.108509>,  <46.491199, 36.101128, 34.087933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730293, 36.097851, 34.108509>,  <47.128784, 36.092388, 34.142799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730293, 36.097851, 34.108509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050599, -0.893806, 0.445590,
		-0.070539, 0.448245, 0.891123,
		-0.996225, 0.013659, -0.085729,
		46.431427, 36.101948, 34.082790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854954, 35.983528, 34.824089>,  <47.128784, 36.092388, 34.142799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854954, 35.983528, 34.824089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596409, 35.835899, 34.556957>,  <46.441280, 35.747322, 34.396679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596409, 35.835899, 34.556957>,  <46.854954, 35.983528, 34.824089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596409, 35.835899, 34.556957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035947, -0.888993, 0.456507,
		-0.762184, 0.271062, 0.587878,
		-0.646361, -0.369075, -0.667833,
		46.402500, 35.725178, 34.356606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.244568, 35.700970, 35.339489>,  <46.854954, 35.983528, 34.824089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.244568, 35.700970, 35.339489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232479, 35.310852, 35.251957>,  <47.225227, 35.076782, 35.199436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232479, 35.310852, 35.251957>,  <47.244568, 35.700970, 35.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.232479, 35.310852, 35.251957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814757, 0.102787, -0.570619,
		0.579015, -0.195539, 0.791522,
		-0.030220, -0.975294, -0.218832,
		47.223412, 35.018265, 35.186306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.940754, 35.291237, 35.477467>,  <47.244568, 35.700970, 35.339489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.940754, 35.291237, 35.477467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712578, 35.166004, 35.173737>,  <47.575672, 35.090862, 34.991497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712578, 35.166004, 35.173737>,  <47.940754, 35.291237, 35.477467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712578, 35.166004, 35.173737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762219, 0.142616, -0.631413,
		0.305978, -0.938957, 0.157285,
		-0.570438, -0.313084, -0.759328,
		47.541447, 35.072079, 34.945938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.187279, 34.705872, 35.042305>,  <47.940754, 35.291237, 35.477467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.187279, 34.705872, 35.042305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.987247, 35.007431, 34.871864>,  <47.867229, 35.188366, 34.769600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.987247, 35.007431, 34.871864>,  <48.187279, 34.705872, 35.042305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.987247, 35.007431, 34.871864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849790, 0.332506, -0.409019,
		-0.166679, -0.566634, -0.806935,
		-0.500075, 0.753900, -0.426098,
		47.837227, 35.233601, 34.744034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.240742, 43.878265, 42.788372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866154, 43.756805, 42.858589>,  <34.641399, 43.683929, 42.900719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866154, 43.756805, 42.858589>,  <35.240742, 43.878265, 42.788372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866154, 43.756805, 42.858589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026291, -0.438312, -0.898438,
		0.349752, -0.845979, 0.402484,
		-0.936473, -0.303649, 0.175542,
		34.585213, 43.665710, 42.911251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227108, 43.198212, 42.893097>,  <35.240742, 43.878265, 42.788372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227108, 43.198212, 42.893097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.881924, 43.310051, 42.724751>,  <34.674812, 43.377155, 42.623745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.881924, 43.310051, 42.724751>,  <35.227108, 43.198212, 42.893097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881924, 43.310051, 42.724751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210221, -0.558745, -0.802254,
		-0.459463, -0.780787, 0.423398,
		-0.862961, 0.279598, -0.420861,
		34.623035, 43.393932, 42.598492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967201, 42.586361, 42.595112>,  <35.227108, 43.198212, 42.893097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967201, 42.586361, 42.595112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760185, 42.873196, 42.408379>,  <34.635975, 43.045296, 42.296337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760185, 42.873196, 42.408379>,  <34.967201, 42.586361, 42.595112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760185, 42.873196, 42.408379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031185, -0.529417, -0.847788,
		-0.855092, -0.453321, 0.251631,
		-0.517538, 0.717089, -0.466837,
		34.604923, 43.088322, 42.268326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488476, 42.163078, 42.335163>,  <34.967201, 42.586361, 42.595112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488476, 42.163078, 42.335163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456264, 42.494343, 42.113297>,  <34.436939, 42.693104, 41.980175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456264, 42.494343, 42.113297>,  <34.488476, 42.163078, 42.335163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456264, 42.494343, 42.113297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041153, -0.553239, -0.832005,
		-0.995903, -0.089823, 0.010467,
		-0.080524, 0.828166, -0.554669,
		34.432106, 42.742794, 41.946896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049526, 42.059174, 41.859463>,  <34.488476, 42.163078, 42.335163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049526, 42.059174, 41.859463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.244606, 42.371258, 41.702782>,  <34.361652, 42.558506, 41.608772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.244606, 42.371258, 41.702782>,  <34.049526, 42.059174, 41.859463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244606, 42.371258, 41.702782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271440, -0.561953, -0.781364,
		-0.829741, 0.274748, -0.485843,
		0.487699, 0.780207, -0.391698,
		34.390915, 42.605320, 41.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872108, 42.005344, 41.238846>,  <34.049526, 42.059174, 41.859463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872108, 42.005344, 41.238846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221313, 42.200195, 41.229443>,  <34.430836, 42.317104, 41.223801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221313, 42.200195, 41.229443>,  <33.872108, 42.005344, 41.238846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221313, 42.200195, 41.229443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277634, -0.536037, -0.797235,
		-0.400955, 0.689472, -0.603211,
		0.873015, 0.487128, -0.023506,
		34.483219, 42.346333, 41.222389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756763, 42.346855, 40.622330>,  <33.872108, 42.005344, 41.238846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756763, 42.346855, 40.622330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145226, 42.376198, 40.713089>,  <34.378304, 42.393803, 40.767544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145226, 42.376198, 40.713089>,  <33.756763, 42.346855, 40.622330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145226, 42.376198, 40.713089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237943, -0.360697, -0.901821,
		0.015683, 0.929793, -0.367748,
		0.971152, 0.073360, 0.226895,
		34.436573, 42.398205, 40.781158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020725, 42.466103, 39.888676>,  <33.756763, 42.346855, 40.622330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020725, 42.466103, 39.888676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340801, 42.370876, 40.108868>,  <34.532845, 42.313740, 40.240982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340801, 42.370876, 40.108868>,  <34.020725, 42.466103, 39.888676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340801, 42.370876, 40.108868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468182, -0.325699, -0.821417,
		0.374839, 0.915011, -0.149164,
		0.800188, -0.238063, 0.550477,
		34.580856, 42.299458, 40.274010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518311, 42.830154, 39.649139>,  <34.020725, 42.466103, 39.888676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518311, 42.830154, 39.649139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653709, 42.499809, 39.829529>,  <34.734947, 42.301601, 39.937763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653709, 42.499809, 39.829529>,  <34.518311, 42.830154, 39.649139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653709, 42.499809, 39.829529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239457, -0.387881, -0.890061,
		0.909991, 0.409267, 0.066464,
		0.338492, -0.825862, 0.450970,
		34.755257, 42.252052, 39.964821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223869, 42.695469, 39.321873>,  <34.518311, 42.830154, 39.649139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223869, 42.695469, 39.321873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100338, 42.366592, 39.513130>,  <35.026218, 42.169266, 39.627884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100338, 42.366592, 39.513130>,  <35.223869, 42.695469, 39.321873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100338, 42.366592, 39.513130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114323, -0.531166, -0.839520,
		0.944222, -0.204604, 0.258035,
		-0.308829, -0.822192, 0.478147,
		35.007690, 42.119934, 39.656574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807159, 42.309021, 39.167919>,  <35.223869, 42.695469, 39.321873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807159, 42.309021, 39.167919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.543854, 42.029163, 39.279045>,  <35.385872, 41.861248, 39.345722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.543854, 42.029163, 39.279045>,  <35.807159, 42.309021, 39.167919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543854, 42.029163, 39.279045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333565, -0.601936, -0.725539,
		0.674850, -0.384926, 0.629611,
		-0.658265, -0.699646, 0.277818,
		35.346375, 41.819271, 39.362389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154812, 41.608387, 39.241589>,  <35.807159, 42.309021, 39.167919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154812, 41.608387, 39.241589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768040, 41.549362, 39.158382>,  <35.535976, 41.513947, 39.108459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768040, 41.549362, 39.158382>,  <36.154812, 41.608387, 39.241589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768040, 41.549362, 39.158382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254830, -0.592288, -0.764367,
		-0.010413, -0.792098, 0.610305,
		-0.966930, -0.147564, -0.208018,
		35.477962, 41.505093, 39.095978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162094, 40.830120, 39.177437>,  <36.154812, 41.608387, 39.241589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162094, 40.830120, 39.177437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 40.962463, 39.005562>,  <35.624382, 41.041870, 38.902435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 40.962463, 39.005562>,  <36.162094, 40.830120, 39.177437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826023, 40.962463, 39.005562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282400, -0.409502, -0.867501,
		-0.462987, -0.850197, 0.250616,
		-0.840175, 0.330868, -0.429690,
		35.573971, 41.061722, 38.876656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870998, 40.212296, 38.955711>,  <36.162094, 40.830120, 39.177437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870998, 40.212296, 38.955711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681393, 40.486080, 38.734142>,  <35.567631, 40.650349, 38.601200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681393, 40.486080, 38.734142>,  <35.870998, 40.212296, 38.955711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681393, 40.486080, 38.734142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284040, -0.476593, -0.831974,
		-0.833446, -0.551703, 0.031498,
		-0.474014, 0.684459, -0.553920,
		35.539188, 40.691418, 38.567966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424290, 39.856651, 38.471706>,  <35.870998, 40.212296, 38.955711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424290, 39.856651, 38.471706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501312, 40.212875, 38.306866>,  <35.547527, 40.426609, 38.207962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501312, 40.212875, 38.306866>,  <35.424290, 39.856651, 38.471706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501312, 40.212875, 38.306866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213737, -0.447944, -0.868137,
		-0.957725, 0.079085, -0.276601,
		0.192558, 0.890557, -0.412104,
		35.559078, 40.480042, 38.183235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060249, 39.818352, 37.853218>,  <35.424290, 39.856651, 38.471706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060249, 39.818352, 37.853218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.317406, 40.115635, 37.779095>,  <35.471699, 40.294003, 37.734623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.317406, 40.115635, 37.779095>,  <35.060249, 39.818352, 37.853218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317406, 40.115635, 37.779095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122075, -0.338249, -0.933105,
		-0.756167, 0.577264, -0.308184,
		0.642891, 0.743205, -0.185304,
		35.510273, 40.338596, 37.723503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869911, 40.089027, 37.186577>,  <35.060249, 39.818352, 37.853218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869911, 40.089027, 37.186577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251682, 40.185234, 37.257252>,  <35.480747, 40.242958, 37.299656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251682, 40.185234, 37.257252>,  <34.869911, 40.089027, 37.186577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251682, 40.185234, 37.257252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235556, -0.243610, -0.940833,
		-0.183240, 0.939579, -0.289162,
		0.954430, 0.240512, 0.176685,
		35.538010, 40.257389, 37.310257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060898, 40.351891, 36.570747>,  <34.869911, 40.089027, 37.186577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060898, 40.351891, 36.570747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.401058, 40.262157, 36.761112>,  <35.605156, 40.208317, 36.875332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.401058, 40.262157, 36.761112>,  <35.060898, 40.351891, 36.570747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401058, 40.262157, 36.761112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409757, -0.284989, -0.866533,
		0.330019, 0.931910, -0.150435,
		0.850404, -0.224330, 0.475909,
		35.656178, 40.194859, 36.903885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611557, 40.487526, 36.121136>,  <35.060898, 40.351891, 36.570747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611557, 40.487526, 36.121136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.827015, 40.274094, 36.381950>,  <35.956291, 40.146034, 36.538441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.827015, 40.274094, 36.381950>,  <35.611557, 40.487526, 36.121136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827015, 40.274094, 36.381950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636167, -0.249836, -0.729982,
		0.552407, 0.808005, 0.204874,
		0.538644, -0.533582, 0.652038,
		35.988609, 40.114017, 36.577560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389622, 40.743732, 36.290363>,  <35.611557, 40.487526, 36.121136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389622, 40.743732, 36.290363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349861, 40.352779, 36.365025>,  <36.326004, 40.118206, 36.409821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349861, 40.352779, 36.365025>,  <36.389622, 40.743732, 36.290363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349861, 40.352779, 36.365025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785470, -0.192229, -0.588290,
		0.610865, 0.088137, 0.786813,
		-0.099399, -0.977384, 0.186655,
		36.320042, 40.059563, 36.421021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101151, 40.519093, 36.446091>,  <36.389622, 40.743732, 36.290363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101151, 40.519093, 36.446091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888180, 40.197445, 36.340321>,  <36.760399, 40.004456, 36.276859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888180, 40.197445, 36.340321>,  <37.101151, 40.519093, 36.446091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888180, 40.197445, 36.340321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710415, -0.254628, -0.656106,
		0.460254, -0.537180, 0.706826,
		-0.532424, -0.804116, -0.264428,
		36.728451, 39.956211, 36.260994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588554, 40.013115, 36.357918>,  <37.101151, 40.519093, 36.446091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588554, 40.013115, 36.357918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282639, 39.844017, 36.163437>,  <37.099091, 39.742558, 36.046749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282639, 39.844017, 36.163437>,  <37.588554, 40.013115, 36.357918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282639, 39.844017, 36.163437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639120, -0.402463, -0.655400,
		0.081388, -0.811981, 0.577982,
		-0.764788, -0.422742, -0.486197,
		37.053204, 39.717194, 36.017578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890583, 39.377457, 36.060677>,  <37.588554, 40.013115, 36.357918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890583, 39.377457, 36.060677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283848, 39.348923, 36.127964>,  <38.519806, 39.331802, 36.168335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283848, 39.348923, 36.127964>,  <37.890583, 39.377457, 36.060677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283848, 39.348923, 36.127964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126427, 0.399092, 0.908153,
		-0.131922, -0.914131, 0.383354,
		0.983165, -0.071339, 0.168220,
		38.578796, 39.327522, 36.178429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002415, 38.848835, 36.714317>,  <37.890583, 39.377457, 36.060677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002415, 38.848835, 36.714317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317104, 39.088161, 36.653542>,  <38.505920, 39.231758, 36.617077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317104, 39.088161, 36.653542>,  <38.002415, 38.848835, 36.714317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317104, 39.088161, 36.653542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089712, 0.132700, 0.987088,
		0.610748, -0.790198, 0.050723,
		0.786726, 0.598312, -0.151937,
		38.553123, 39.267654, 36.607960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505692, 38.596882, 37.140728>,  <38.002415, 38.848835, 36.714317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505692, 38.596882, 37.140728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616520, 38.973888, 37.066017>,  <38.683018, 39.200092, 37.021191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616520, 38.973888, 37.066017>,  <38.505692, 38.596882, 37.140728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616520, 38.973888, 37.066017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328379, 0.089799, 0.940268,
		0.902994, -0.321857, -0.284623,
		0.277072, 0.942520, -0.186779,
		38.699642, 39.256645, 37.009983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948242, 38.621658, 37.593487>,  <38.505692, 38.596882, 37.140728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948242, 38.621658, 37.593487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889877, 39.005856, 37.498695>,  <38.854858, 39.236374, 37.441822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889877, 39.005856, 37.498695>,  <38.948242, 38.621658, 37.593487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889877, 39.005856, 37.498695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231700, 0.266055, 0.935698,
		0.961783, 0.081619, -0.261366,
		-0.145908, 0.960496, -0.236976,
		38.846104, 39.294006, 37.427601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436337, 38.998878, 37.928616>,  <38.948242, 38.621658, 37.593487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436337, 38.998878, 37.928616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152302, 39.270397, 37.853775>,  <38.981880, 39.433308, 37.808872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152302, 39.270397, 37.853775>,  <39.436337, 38.998878, 37.928616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152302, 39.270397, 37.853775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162005, 0.416106, 0.894768,
		0.685220, 0.605055, -0.405441,
		-0.710091, 0.678796, -0.187102,
		38.939274, 39.474037, 37.797646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636307, 39.619785, 38.289028>,  <39.436337, 38.998878, 37.928616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636307, 39.619785, 38.289028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253323, 39.706375, 38.212711>,  <39.023533, 39.758327, 38.166920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253323, 39.706375, 38.212711>,  <39.636307, 39.619785, 38.289028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253323, 39.706375, 38.212711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064662, 0.483420, 0.872997,
		0.281215, 0.848200, -0.448860,
		-0.957464, 0.216476, -0.190791,
		38.966084, 39.771317, 38.155476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579811, 40.365696, 38.467560>,  <39.636307, 39.619785, 38.289028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579811, 40.365696, 38.467560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206120, 40.223175, 38.474148>,  <38.981907, 40.137661, 38.478100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206120, 40.223175, 38.474148>,  <39.579811, 40.365696, 38.467560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206120, 40.223175, 38.474148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203612, 0.570637, 0.795560,
		-0.292855, 0.739880, -0.605651,
		-0.934226, -0.356302, 0.016465,
		38.925850, 40.116283, 38.479088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120106, 40.928612, 38.429031>,  <39.579811, 40.365696, 38.467560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120106, 40.928612, 38.429031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884205, 40.649391, 38.591473>,  <38.742664, 40.481861, 38.688938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884205, 40.649391, 38.591473>,  <39.120106, 40.928612, 38.429031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884205, 40.649391, 38.591473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384145, 0.684811, 0.619247,
		-0.710371, 0.209197, -0.672019,
		-0.589751, -0.698048, 0.406108,
		38.707279, 40.439976, 38.713306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410603, 41.240364, 38.521255>,  <39.120106, 40.928612, 38.429031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410603, 41.240364, 38.521255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432026, 40.934536, 38.778179>,  <38.444881, 40.751038, 38.932335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432026, 40.934536, 38.778179>,  <38.410603, 41.240364, 38.521255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432026, 40.934536, 38.778179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299429, 0.601336, 0.740768,
		-0.952614, -0.232002, -0.196727,
		0.053561, -0.764572, 0.642309,
		38.448093, 40.705166, 38.970871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821106, 41.238503, 38.833931>,  <38.410603, 41.240364, 38.521255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821106, 41.238503, 38.833931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079426, 41.049442, 39.073776>,  <38.234417, 40.936005, 39.217686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079426, 41.049442, 39.073776>,  <37.821106, 41.238503, 38.833931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079426, 41.049442, 39.073776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184170, 0.665722, 0.723115,
		-0.740960, -0.577420, 0.342876,
		0.645801, -0.472652, 0.599617,
		38.273167, 40.907646, 39.253662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507626, 41.296654, 39.369881>,  <37.821106, 41.238503, 38.833931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507626, 41.296654, 39.369881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849739, 41.186958, 39.545734>,  <38.055008, 41.121143, 39.651249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849739, 41.186958, 39.545734>,  <37.507626, 41.296654, 39.369881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849739, 41.186958, 39.545734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222744, 0.571479, 0.789808,
		-0.467839, -0.773438, 0.427693,
		0.855285, -0.274237, 0.439638,
		38.106323, 41.104687, 39.677628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343208, 41.057720, 39.964958>,  <37.507626, 41.296654, 39.369881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343208, 41.057720, 39.964958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731373, 41.123146, 40.036007>,  <37.964272, 41.162403, 40.078636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731373, 41.123146, 40.036007>,  <37.343208, 41.057720, 39.964958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731373, 41.123146, 40.036007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228270, 0.381625, 0.895687,
		0.078716, -0.909730, 0.407669,
		0.970410, 0.163564, 0.177624,
		38.022495, 41.172215, 40.089294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421207, 40.879372, 40.615547>,  <37.343208, 41.057720, 39.964958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421207, 40.879372, 40.615547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745026, 41.096306, 40.525646>,  <37.939316, 41.226467, 40.471706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745026, 41.096306, 40.525646>,  <37.421207, 40.879372, 40.615547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745026, 41.096306, 40.525646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130592, 0.539619, 0.831719,
		0.572356, -0.643958, 0.507668,
		0.809539, 0.542337, -0.224758,
		37.987888, 41.259007, 40.458218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925858, 40.798542, 41.191891>,  <37.421207, 40.879372, 40.615547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925858, 40.798542, 41.191891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983459, 41.150486, 41.010731>,  <38.018021, 41.361652, 40.902035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983459, 41.150486, 41.010731>,  <37.925858, 40.798542, 41.191891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983459, 41.150486, 41.010731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079138, 0.466442, 0.881005,
		0.986408, -0.091024, 0.136798,
		0.144001, 0.879856, -0.452899,
		38.026661, 41.414444, 40.874863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286304, 41.188313, 41.682457>,  <37.925858, 40.798542, 41.191891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286304, 41.188313, 41.682457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164940, 41.460537, 41.415691>,  <38.092121, 41.623871, 41.255630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164940, 41.460537, 41.415691>,  <38.286304, 41.188313, 41.682457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164940, 41.460537, 41.415691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307347, 0.592601, 0.744555,
		0.901932, 0.430879, 0.029369,
		-0.303409, 0.680565, -0.666915,
		38.073917, 41.664707, 41.215618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507801, 41.808598, 42.029568>,  <38.286304, 41.188313, 41.682457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507801, 41.808598, 42.029568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258064, 41.946575, 41.749222>,  <38.108223, 42.029362, 41.581013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258064, 41.946575, 41.749222>,  <38.507801, 41.808598, 42.029568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258064, 41.946575, 41.749222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208832, 0.790861, 0.575264,
		0.752719, 0.505525, -0.421733,
		-0.624342, 0.344940, -0.700866,
		38.070763, 42.050056, 41.538963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651894, 42.624168, 42.028370>,  <38.507801, 41.808598, 42.029568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651894, 42.624168, 42.028370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293858, 42.580219, 41.855515>,  <38.079037, 42.553848, 41.751801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293858, 42.580219, 41.855515>,  <38.651894, 42.624168, 42.028370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293858, 42.580219, 41.855515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378541, 0.699411, 0.606243,
		0.235632, 0.706224, -0.667626,
		-0.895089, -0.109874, -0.432139,
		38.025330, 42.547256, 41.725872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498409, 43.365032, 41.848694>,  <38.651894, 42.624168, 42.028370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498409, 43.365032, 41.848694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185760, 43.116577, 41.871510>,  <37.998169, 42.967503, 41.885197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185760, 43.116577, 41.871510>,  <38.498409, 43.365032, 41.848694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185760, 43.116577, 41.871510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496293, 0.674692, 0.546336,
		-0.377833, 0.398722, -0.835621,
		-0.781624, -0.621137, 0.057038,
		37.951275, 42.930237, 41.888622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.024837, 43.750435, 42.033821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124428, 43.367081, 42.089691>,  <37.184181, 43.137070, 42.123215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124428, 43.367081, 42.089691>,  <37.024837, 43.750435, 42.033821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124428, 43.367081, 42.089691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446403, 0.014425, 0.894715,
		-0.859496, -0.285115, -0.424235,
		0.248977, -0.958384, 0.139675,
		37.199120, 43.079567, 42.131592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444565, 43.408550, 42.225151>,  <37.024837, 43.750435, 42.033821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444565, 43.408550, 42.225151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751190, 43.201439, 42.377090>,  <36.935165, 43.077171, 42.468254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751190, 43.201439, 42.377090>,  <36.444565, 43.408550, 42.225151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751190, 43.201439, 42.377090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356617, 0.148684, 0.922343,
		-0.534051, -0.842493, -0.070674,
		0.766560, -0.517782, 0.379852,
		36.981159, 43.046104, 42.491047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214809, 42.853683, 42.815254>,  <36.444565, 43.408550, 42.225151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214809, 42.853683, 42.815254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599216, 42.942738, 42.880821>,  <36.829861, 42.996170, 42.920162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599216, 42.942738, 42.880821>,  <36.214809, 42.853683, 42.815254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599216, 42.942738, 42.880821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195230, 0.126659, 0.972544,
		0.195765, -0.966638, 0.165188,
		0.961021, 0.222640, 0.163921,
		36.887524, 43.009529, 42.929996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312862, 42.563171, 43.432510>,  <36.214809, 42.853683, 42.815254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312862, 42.563171, 43.432510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622215, 42.816463, 43.420502>,  <36.807827, 42.968437, 43.413296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622215, 42.816463, 43.420502>,  <36.312862, 42.563171, 43.432510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622215, 42.816463, 43.420502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113520, 0.184932, 0.976173,
		0.623693, -0.751546, 0.214908,
		0.773382, 0.633228, -0.030025,
		36.854229, 43.006432, 43.411495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516735, 42.478226, 44.094513>,  <36.312862, 42.563171, 43.432510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516735, 42.478226, 44.094513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717552, 42.799892, 43.967224>,  <36.838043, 42.992893, 43.890850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717552, 42.799892, 43.967224>,  <36.516735, 42.478226, 44.094513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717552, 42.799892, 43.967224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107365, 0.423059, 0.899719,
		0.858151, -0.417533, 0.298734,
		0.502045, 0.804169, -0.318220,
		36.868164, 43.041142, 43.871758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975777, 42.642994, 44.628807>,  <36.516735, 42.478226, 44.094513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975777, 42.642994, 44.628807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978554, 42.978462, 44.410969>,  <36.980221, 43.179745, 44.280266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978554, 42.978462, 44.410969>,  <36.975777, 42.642994, 44.628807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978554, 42.978462, 44.410969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145939, 0.539626, 0.829160,
		0.989269, 0.073724, 0.126140,
		0.006939, 0.838671, -0.544594,
		36.980637, 43.230064, 44.247589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362560, 43.182507, 44.941273>,  <36.975777, 42.642994, 44.628807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362560, 43.182507, 44.941273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145386, 43.410191, 44.694302>,  <37.015083, 43.546803, 44.546120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145386, 43.410191, 44.694302>,  <37.362560, 43.182507, 44.941273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145386, 43.410191, 44.694302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040106, 0.716819, 0.696105,
		0.838817, 0.402702, -0.366357,
		-0.542934, 0.569212, -0.617430,
		36.982506, 43.580956, 44.509071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730598, 43.760803, 44.875919>,  <37.362560, 43.182507, 44.941273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730598, 43.760803, 44.875919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349781, 43.850231, 44.792370>,  <37.121292, 43.903889, 44.742241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349781, 43.850231, 44.792370>,  <37.730598, 43.760803, 44.875919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349781, 43.850231, 44.792370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024962, 0.623655, 0.781301,
		0.304941, 0.749047, -0.588167,
		-0.952044, 0.223569, -0.208876,
		37.064167, 43.917301, 44.729706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680355, 44.488686, 44.818867>,  <37.730598, 43.760803, 44.875919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680355, 44.488686, 44.818867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.312027, 44.353966, 44.897507>,  <37.091030, 44.273136, 44.944691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.312027, 44.353966, 44.897507>,  <37.680355, 44.488686, 44.818867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312027, 44.353966, 44.897507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066690, 0.632703, 0.771518,
		-0.384236, 0.697320, -0.605068,
		-0.920823, -0.336797, 0.196603,
		37.035782, 44.252926, 44.956490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347107, 45.129868, 45.051582>,  <37.680355, 44.488686, 44.818867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347107, 45.129868, 45.051582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143208, 44.815807, 45.192261>,  <37.020866, 44.627369, 45.276669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143208, 44.815807, 45.192261>,  <37.347107, 45.129868, 45.051582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143208, 44.815807, 45.192261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092290, 0.456344, 0.885005,
		-0.855360, 0.418671, -0.305081,
		-0.509747, -0.785153, 0.351699,
		36.990284, 44.580261, 45.297771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889679, 45.463951, 45.433681>,  <37.347107, 45.129868, 45.051582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889679, 45.463951, 45.433681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862644, 45.090359, 45.574024>,  <36.846424, 44.866203, 45.658230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862644, 45.090359, 45.574024>,  <36.889679, 45.463951, 45.433681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862644, 45.090359, 45.574024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033929, 0.349309, 0.936393,
		-0.997136, 0.075195, 0.008079,
		-0.067590, -0.933986, 0.350860,
		36.842369, 44.810162, 45.679283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303505, 45.412655, 45.831467>,  <36.889679, 45.463951, 45.433681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303505, 45.412655, 45.831467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534237, 45.113842, 45.963654>,  <36.672676, 44.934555, 46.042965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534237, 45.113842, 45.963654>,  <36.303505, 45.412655, 45.831467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534237, 45.113842, 45.963654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226044, 0.242780, 0.943378,
		-0.784965, -0.618869, -0.028819,
		0.576831, -0.747033, 0.330466,
		36.707287, 44.889732, 46.062794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937469, 45.177010, 46.365585>,  <36.303505, 45.412655, 45.831467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937469, 45.177010, 46.365585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290081, 45.004204, 46.441769>,  <36.501648, 44.900520, 46.487480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290081, 45.004204, 46.441769>,  <35.937469, 45.177010, 46.365585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290081, 45.004204, 46.441769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135908, 0.154138, 0.978657,
		-0.452150, -0.888598, 0.077163,
		0.881526, -0.432013, 0.190461,
		36.554539, 44.874599, 46.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836315, 44.685524, 46.867668>,  <35.937469, 45.177010, 46.365585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836315, 44.685524, 46.867668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220985, 44.787514, 46.908020>,  <36.451786, 44.848709, 46.932232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220985, 44.787514, 46.908020>,  <35.836315, 44.685524, 46.867668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220985, 44.787514, 46.908020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105207, 0.003351, 0.994445,
		0.253220, -0.966942, 0.030048,
		0.961671, 0.254975, 0.100880,
		36.509487, 44.864006, 46.938286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090191, 44.289169, 47.373417>,  <35.836315, 44.685524, 46.867668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090191, 44.289169, 47.373417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353725, 44.588787, 47.345501>,  <36.511848, 44.768559, 47.328751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353725, 44.588787, 47.345501>,  <36.090191, 44.289169, 47.373417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353725, 44.588787, 47.345501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049042, 0.135343, 0.989584,
		0.750685, -0.648553, 0.125904,
		0.658838, 0.749040, -0.069794,
		36.551376, 44.813499, 47.324562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525887, 44.199986, 47.912964>,  <36.090191, 44.289169, 47.373417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525887, 44.199986, 47.912964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561523, 44.591751, 47.840504>,  <36.582905, 44.826809, 47.797028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561523, 44.591751, 47.840504>,  <36.525887, 44.199986, 47.912964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561523, 44.591751, 47.840504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007250, 0.181228, 0.983415,
		0.995997, -0.088932, 0.009046,
		0.089096, 0.979412, -0.181147,
		36.588253, 44.885574, 47.786160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085182, 44.256741, 48.180046>,  <36.525887, 44.199986, 47.912964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085182, 44.256741, 48.180046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.912350, 44.616436, 48.152699>,  <36.808651, 44.832253, 48.136288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.912350, 44.616436, 48.152699>,  <37.085182, 44.256741, 48.180046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912350, 44.616436, 48.152699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063095, 0.105769, 0.992387,
		0.899626, 0.424475, -0.102438,
		-0.432078, 0.899241, -0.068371,
		36.782726, 44.886208, 48.132187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474148, 44.688370, 48.719845>,  <37.085182, 44.256741, 48.180046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474148, 44.688370, 48.719845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120823, 44.859764, 48.643780>,  <36.908829, 44.962601, 48.598141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120823, 44.859764, 48.643780>,  <37.474148, 44.688370, 48.719845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120823, 44.859764, 48.643780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072827, 0.275289, 0.958599,
		0.463093, 0.860591, -0.211961,
		-0.883313, 0.428484, -0.190159,
		36.855827, 44.988308, 48.586731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440781, 45.374771, 49.133465>,  <37.474148, 44.688370, 48.719845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440781, 45.374771, 49.133465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067825, 45.265530, 49.038750>,  <36.844051, 45.199986, 48.981922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067825, 45.265530, 49.038750>,  <37.440781, 45.374771, 49.133465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067825, 45.265530, 49.038750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301525, 0.226390, 0.926191,
		-0.199344, 0.934965, -0.293432,
		-0.932386, -0.273108, -0.236786,
		36.788109, 45.183598, 48.967712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985577, 45.877754, 49.447392>,  <37.440781, 45.374771, 49.133465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985577, 45.877754, 49.447392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716640, 45.591278, 49.372532>,  <36.555279, 45.419392, 49.327614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716640, 45.591278, 49.372532>,  <36.985577, 45.877754, 49.447392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716640, 45.591278, 49.372532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495230, 0.247278, 0.832827,
		-0.550184, 0.652629, -0.520935,
		-0.672343, -0.716190, -0.187154,
		36.514938, 45.376419, 49.316387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347469, 46.204597, 49.499630>,  <36.985577, 45.877754, 49.447392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347469, 46.204597, 49.499630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280991, 45.817780, 49.576794>,  <36.241104, 45.585690, 49.623093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280991, 45.817780, 49.576794>,  <36.347469, 46.204597, 49.499630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280991, 45.817780, 49.576794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381841, 0.243476, 0.891581,
		-0.909163, 0.074514, -0.409719,
		-0.166192, -0.967040, 0.192907,
		36.231133, 45.527668, 49.634666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554199, 46.177925, 49.856342>,  <36.347469, 46.204597, 49.499630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554199, 46.177925, 49.856342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744579, 45.837013, 49.943138>,  <35.858807, 45.632465, 49.995216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744579, 45.837013, 49.943138>,  <35.554199, 46.177925, 49.856342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744579, 45.837013, 49.943138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100079, 0.192641, 0.976153,
		-0.873761, -0.486314, 0.006391,
		0.475948, -0.852284, 0.216991,
		35.887363, 45.581329, 50.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216492, 45.889763, 50.448967>,  <35.554199, 46.177925, 49.856342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216492, 45.889763, 50.448967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585613, 45.735676, 50.451653>,  <35.807087, 45.643223, 50.453262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585613, 45.735676, 50.451653>,  <35.216492, 45.889763, 50.448967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585613, 45.735676, 50.451653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074437, 0.195355, 0.977904,
		-0.378017, -0.901911, 0.208948,
		0.922802, -0.385218, 0.006712,
		35.862453, 45.620110, 50.453667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438641, 45.654560, 50.744915>,  <35.216492, 45.889763, 50.448967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438641, 45.654560, 50.744915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144722, 45.447552, 50.920296>,  <33.968369, 45.323345, 51.025524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144722, 45.447552, 50.920296>,  <34.438641, 45.654560, 50.744915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144722, 45.447552, 50.920296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112454, -0.544512, -0.831180,
		0.668898, -0.660056, 0.341909,
		-0.734799, -0.517525, 0.438449,
		33.924282, 45.292294, 51.051830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510807, 44.881496, 50.682472>,  <34.438641, 45.654560, 50.744915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510807, 44.881496, 50.682472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119007, 44.958515, 50.658806>,  <33.883926, 45.004726, 50.644604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119007, 44.958515, 50.658806>,  <34.510807, 44.881496, 50.682472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119007, 44.958515, 50.658806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087013, -0.669378, -0.737808,
		-0.181665, -0.717537, 0.672412,
		-0.979503, 0.192543, -0.059168,
		33.825157, 45.016277, 50.641056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122940, 44.266331, 50.729847>,  <34.510807, 44.881496, 50.682472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122940, 44.266331, 50.729847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889149, 44.526875, 50.536301>,  <33.748875, 44.683201, 50.420174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889149, 44.526875, 50.536301>,  <34.122940, 44.266331, 50.729847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889149, 44.526875, 50.536301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086776, -0.542727, -0.835415,
		-0.806759, -0.530266, 0.260687,
		-0.584474, 0.651357, -0.483864,
		33.713806, 44.722282, 50.391140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713470, 43.850712, 50.357178>,  <34.122940, 44.266331, 50.729847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713470, 43.850712, 50.357178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707230, 44.212780, 50.187271>,  <33.703484, 44.430019, 50.085327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707230, 44.212780, 50.187271>,  <33.713470, 43.850712, 50.357178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707230, 44.212780, 50.187271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119702, -0.420069, -0.899563,
		-0.992687, -0.064881, -0.101796,
		-0.015603, 0.905170, -0.424763,
		33.702549, 44.484329, 50.059841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265724, 43.793072, 49.709824>,  <33.713470, 43.850712, 50.357178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265724, 43.793072, 49.709824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503494, 44.112793, 49.674576>,  <33.646156, 44.304626, 49.653427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503494, 44.112793, 49.674576>,  <33.265724, 43.793072, 49.709824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503494, 44.112793, 49.674576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150789, -0.218430, -0.964132,
		-0.789885, 0.559820, -0.250367,
		0.594428, 0.799306, -0.088121,
		33.681824, 44.352585, 49.648140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925915, 44.204185, 49.314068>,  <33.265724, 43.793072, 49.709824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925915, 44.204185, 49.314068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308075, 44.318573, 49.284595>,  <33.537373, 44.387207, 49.266911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308075, 44.318573, 49.284595>,  <32.925915, 44.204185, 49.314068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308075, 44.318573, 49.284595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048354, -0.094642, -0.994336,
		-0.291324, 0.953553, -0.076593,
		0.955401, 0.285971, -0.073679,
		33.594696, 44.404366, 49.262493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973724, 44.452198, 48.675518>,  <32.925915, 44.204185, 49.314068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973724, 44.452198, 48.675518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.362934, 44.426880, 48.764256>,  <33.596462, 44.411690, 48.817497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.362934, 44.426880, 48.764256>,  <32.973724, 44.452198, 48.675518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362934, 44.426880, 48.764256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200750, -0.241511, -0.949406,
		0.113666, 0.968332, -0.222291,
		0.973026, -0.063291, 0.221844,
		33.654842, 44.407894, 48.830811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322388, 44.984306, 48.312584>,  <32.973724, 44.452198, 48.675518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322388, 44.984306, 48.312584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564735, 44.670616, 48.366131>,  <33.710144, 44.482403, 48.398258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564735, 44.670616, 48.366131>,  <33.322388, 44.984306, 48.312584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564735, 44.670616, 48.366131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158353, -0.046026, -0.986309,
		0.779646, 0.618773, 0.096298,
		0.605869, -0.784221, 0.133868,
		33.746494, 44.435349, 48.406292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726734, 44.992695, 47.747025>,  <33.322388, 44.984306, 48.312584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726734, 44.992695, 47.747025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840965, 44.637394, 47.890938>,  <33.909504, 44.424213, 47.977287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840965, 44.637394, 47.890938>,  <33.726734, 44.992695, 47.747025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840965, 44.637394, 47.890938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167500, -0.323378, -0.931327,
		0.943603, 0.326233, 0.056433,
		0.285580, -0.888256, 0.359785,
		33.926640, 44.370918, 47.998875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276169, 44.786263, 47.355858>,  <33.726734, 44.992695, 47.747025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276169, 44.786263, 47.355858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156425, 44.433262, 47.500946>,  <34.084579, 44.221462, 47.588001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156425, 44.433262, 47.500946>,  <34.276169, 44.786263, 47.355858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156425, 44.433262, 47.500946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158978, -0.420977, -0.893031,
		0.940802, -0.209673, 0.266323,
		-0.299360, -0.882505, 0.362723,
		34.066616, 44.168510, 47.609764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780506, 44.385078, 47.144871>,  <34.276169, 44.786263, 47.355858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780506, 44.385078, 47.144871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470436, 44.145035, 47.223839>,  <34.284393, 44.001007, 47.271217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470436, 44.145035, 47.223839>,  <34.780506, 44.385078, 47.144871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470436, 44.145035, 47.223839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105281, -0.430837, -0.896267,
		0.622915, -0.673978, 0.397153,
		-0.775173, -0.600111, 0.197418,
		34.237885, 43.965000, 47.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018970, 43.706539, 47.111549>,  <34.780506, 44.385078, 47.144871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018970, 43.706539, 47.111549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625790, 43.724472, 47.040234>,  <34.389881, 43.735229, 46.997444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625790, 43.724472, 47.040234>,  <35.018970, 43.706539, 47.111549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625790, 43.724472, 47.040234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137743, -0.462719, -0.875739,
		-0.121759, -0.885371, 0.448657,
		-0.982955, 0.044830, -0.178294,
		34.330902, 43.737923, 46.986744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941650, 43.229107, 46.570625>,  <35.018970, 43.706539, 47.111549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941650, 43.229107, 46.570625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599270, 43.435444, 46.556496>,  <34.393841, 43.559246, 46.548019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599270, 43.435444, 46.556496>,  <34.941650, 43.229107, 46.570625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599270, 43.435444, 46.556496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012762, -0.089375, -0.995916,
		-0.516894, -0.852008, 0.083084,
		-0.855954, 0.515844, -0.035324,
		34.342484, 43.590199, 46.545898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568428, 42.948162, 45.992409>,  <34.941650, 43.229107, 46.570625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568428, 42.948162, 45.992409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397511, 43.302822, 46.063148>,  <34.294960, 43.515617, 46.105591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397511, 43.302822, 46.063148>,  <34.568428, 42.948162, 45.992409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397511, 43.302822, 46.063148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159400, 0.118662, -0.980057,
		-0.889949, -0.446965, 0.090627,
		-0.427297, 0.886646, 0.176849,
		34.269321, 43.568817, 46.116203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921886, 42.982147, 45.721199>,  <34.568428, 42.948162, 45.992409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921886, 42.982147, 45.721199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031433, 43.366074, 45.745670>,  <34.097160, 43.596432, 45.760353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031433, 43.366074, 45.745670>,  <33.921886, 42.982147, 45.721199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031433, 43.366074, 45.745670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072389, 0.084001, -0.993833,
		-0.959040, 0.267746, 0.092485,
		0.273864, 0.959821, 0.061179,
		34.113594, 43.654018, 45.764023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475735, 43.308254, 45.384106>,  <33.921886, 42.982147, 45.721199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475735, 43.308254, 45.384106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.800343, 43.540100, 45.354488>,  <33.995110, 43.679207, 45.336720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.800343, 43.540100, 45.354488>,  <33.475735, 43.308254, 45.384106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800343, 43.540100, 45.354488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124749, 0.048069, -0.991023,
		-0.570849, 0.813474, 0.111315,
		0.811523, 0.579611, -0.074040,
		34.043800, 43.713982, 45.332275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352402, 43.647583, 44.811375>,  <33.475735, 43.308254, 45.384106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352402, 43.647583, 44.811375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718937, 43.790981, 44.882702>,  <33.938858, 43.877022, 44.925499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718937, 43.790981, 44.882702>,  <33.352402, 43.647583, 44.811375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718937, 43.790981, 44.882702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140346, 0.129524, -0.981594,
		-0.374996, 0.924502, 0.068375,
		0.916341, 0.358497, 0.178321,
		33.993839, 43.898529, 44.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434372, 44.227047, 44.485439>,  <33.352402, 43.647583, 44.811375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434372, 44.227047, 44.485439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802242, 44.071529, 44.507450>,  <34.022964, 43.978218, 44.520657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802242, 44.071529, 44.507450>,  <33.434372, 44.227047, 44.485439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802242, 44.071529, 44.507450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054507, -0.012372, -0.998437,
		0.388870, 0.921240, 0.009814,
		0.919679, -0.388797, 0.055025,
		34.078144, 43.954891, 44.523956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727318, 44.556599, 43.931412>,  <33.434372, 44.227047, 44.485439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727318, 44.556599, 43.931412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990604, 44.262211, 43.994778>,  <34.148579, 44.085579, 44.032799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990604, 44.262211, 43.994778>,  <33.727318, 44.556599, 43.931412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990604, 44.262211, 43.994778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250757, 0.015923, -0.967919,
		0.709837, 0.676827, 0.195030,
		0.658220, -0.735970, 0.158416,
		34.188068, 44.041420, 44.042301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362923, 44.756157, 43.623039>,  <33.727318, 44.556599, 43.931412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362923, 44.756157, 43.623039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345844, 44.358166, 43.659245>,  <34.335598, 44.119370, 43.680969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345844, 44.358166, 43.659245>,  <34.362923, 44.756157, 43.623039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345844, 44.358166, 43.659245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105245, -0.094572, -0.989939,
		0.993529, -0.032738, 0.108754,
		-0.042693, -0.994980, 0.090514,
		34.333035, 44.059673, 43.686398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820518, 44.519115, 43.087585>,  <34.362923, 44.756157, 43.623039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820518, 44.519115, 43.087585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626419, 44.181194, 43.177780>,  <34.509960, 43.978443, 43.231899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626419, 44.181194, 43.177780>,  <34.820518, 44.519115, 43.087585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626419, 44.181194, 43.177780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012144, -0.264376, -0.964343,
		0.874291, -0.465210, 0.138548,
		-0.485251, -0.844799, 0.225492,
		34.480843, 43.927753, 43.245426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.751640, 40.611019, 28.452938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.380306, 40.613876, 28.601612>,  <41.157505, 40.615589, 28.690817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.380306, 40.613876, 28.601612>,  <41.751640, 40.611019, 28.452938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380306, 40.613876, 28.601612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356500, -0.266366, 0.895520,
		0.105398, 0.963845, 0.244731,
		-0.928331, 0.007139, 0.371686,
		41.101807, 40.616016, 28.713118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775879, 40.956367, 29.163954>,  <41.751640, 40.611019, 28.452938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775879, 40.956367, 29.163954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431492, 40.753284, 29.176353>,  <41.224861, 40.631435, 29.183792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431492, 40.753284, 29.176353>,  <41.775879, 40.956367, 29.163954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431492, 40.753284, 29.176353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241624, -0.354596, 0.903260,
		-0.447605, 0.785169, 0.427972,
		-0.860969, -0.507712, 0.030997,
		41.173203, 40.600971, 29.185652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509789, 41.143707, 29.834585>,  <41.775879, 40.956367, 29.163954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509789, 41.143707, 29.834585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.311497, 40.814472, 29.723751>,  <41.192520, 40.616932, 29.657251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.311497, 40.814472, 29.723751>,  <41.509789, 41.143707, 29.834585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311497, 40.814472, 29.723751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341982, -0.478274, 0.808889,
		-0.798310, 0.306233, 0.518577,
		-0.495731, -0.823089, -0.277085,
		41.162777, 40.567547, 29.640625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133251, 40.889637, 30.425310>,  <41.509789, 41.143707, 29.834585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133251, 40.889637, 30.425310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185722, 40.569061, 30.191906>,  <41.217205, 40.376717, 30.051863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185722, 40.569061, 30.191906>,  <41.133251, 40.889637, 30.425310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185722, 40.569061, 30.191906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196841, -0.555821, 0.807661,
		-0.971621, -0.220805, 0.084845,
		0.131177, -0.801441, -0.583511,
		41.225075, 40.328629, 30.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801620, 40.328663, 30.690371>,  <41.133251, 40.889637, 30.425310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801620, 40.328663, 30.690371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033741, 40.100307, 30.458052>,  <41.173016, 39.963295, 30.318661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033741, 40.100307, 30.458052>,  <40.801620, 40.328663, 30.690371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033741, 40.100307, 30.458052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173130, -0.610383, 0.772954,
		-0.795783, -0.549104, -0.255371,
		0.580306, -0.570891, -0.580799,
		41.207832, 39.929039, 30.283812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563530, 39.690346, 30.823233>,  <40.801620, 40.328663, 30.690371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563530, 39.690346, 30.823233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928276, 39.646275, 30.665066>,  <41.147125, 39.619831, 30.570166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928276, 39.646275, 30.665066>,  <40.563530, 39.690346, 30.823233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928276, 39.646275, 30.665066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181465, -0.755858, 0.629086,
		-0.368192, -0.645398, -0.669250,
		0.911869, -0.110179, -0.395418,
		41.201836, 39.613220, 30.546440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666424, 38.920120, 30.638788>,  <40.563530, 39.690346, 30.823233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666424, 38.920120, 30.638788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026852, 39.088722, 30.679581>,  <41.243111, 39.189884, 30.704056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026852, 39.088722, 30.679581>,  <40.666424, 38.920120, 30.638788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026852, 39.088722, 30.679581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302489, -0.779396, 0.548673,
		0.310750, -0.463547, -0.829794,
		0.901074, 0.421504, 0.101980,
		41.297173, 39.215172, 30.710175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047955, 38.360394, 30.701061>,  <40.666424, 38.920120, 30.638788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047955, 38.360394, 30.701061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.270950, 38.668461, 30.825027>,  <41.404747, 38.853302, 30.899406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.270950, 38.668461, 30.825027>,  <41.047955, 38.360394, 30.701061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270950, 38.668461, 30.825027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471099, -0.600868, 0.645774,
		0.683571, -0.214013, -0.697803,
		0.557491, 0.770167, 0.309915,
		41.438198, 38.899509, 30.918001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750362, 38.108231, 30.766499>,  <41.047955, 38.360394, 30.701061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750362, 38.108231, 30.766499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735390, 38.424633, 31.010765>,  <41.726406, 38.614475, 31.157326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735390, 38.424633, 31.010765>,  <41.750362, 38.108231, 30.766499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735390, 38.424633, 31.010765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552523, -0.492807, 0.672204,
		0.832657, 0.362566, -0.418604,
		-0.037427, 0.791004, 0.610665,
		41.724163, 38.661934, 31.193964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366947, 38.138184, 31.008738>,  <41.750362, 38.108231, 30.766499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366947, 38.138184, 31.008738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163876, 38.365463, 31.267784>,  <42.042034, 38.501831, 31.423212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163876, 38.365463, 31.267784>,  <42.366947, 38.138184, 31.008738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163876, 38.365463, 31.267784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508530, -0.409147, 0.757625,
		0.695455, 0.713963, -0.081232,
		-0.507681, 0.568204, 0.647615,
		42.011570, 38.535923, 31.462069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852173, 38.494587, 31.473186>,  <42.366947, 38.138184, 31.008738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852173, 38.494587, 31.473186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515602, 38.521973, 31.687595>,  <42.313660, 38.538406, 31.816240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515602, 38.521973, 31.687595>,  <42.852173, 38.494587, 31.473186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515602, 38.521973, 31.687595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508287, -0.236452, 0.828091,
		0.183440, 0.969228, 0.164156,
		-0.841424, 0.068466, 0.536021,
		42.263176, 38.542511, 31.848402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080730, 38.839790, 32.031281>,  <42.852173, 38.494587, 31.473186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080730, 38.839790, 32.031281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726006, 38.692684, 32.143215>,  <42.513168, 38.604420, 32.210377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726006, 38.692684, 32.143215>,  <43.080730, 38.839790, 32.031281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726006, 38.692684, 32.143215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405378, -0.328353, 0.853143,
		-0.221870, 0.870019, 0.440272,
		-0.886816, -0.367763, 0.279835,
		42.459961, 38.582355, 32.227165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992134, 39.016453, 32.716801>,  <43.080730, 38.839790, 32.031281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992134, 39.016453, 32.716801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750340, 38.703720, 32.655685>,  <42.605263, 38.516083, 32.619019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750340, 38.703720, 32.655685>,  <42.992134, 39.016453, 32.716801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750340, 38.703720, 32.655685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288988, -0.393944, 0.872522,
		-0.742351, 0.483273, 0.464072,
		-0.604484, -0.781828, -0.152785,
		42.568993, 38.469173, 32.609852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699341, 38.943493, 33.295971>,  <42.992134, 39.016453, 32.716801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699341, 38.943493, 33.295971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637764, 38.587101, 33.125107>,  <42.600819, 38.373268, 33.022591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637764, 38.587101, 33.125107>,  <42.699341, 38.943493, 33.295971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637764, 38.587101, 33.125107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335504, -0.453759, 0.825554,
		-0.929376, -0.016227, 0.368778,
		-0.153940, -0.890976, -0.427157,
		42.591583, 38.319809, 32.996960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454857, 38.508911, 33.770424>,  <42.699341, 38.943493, 33.295971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454857, 38.508911, 33.770424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598194, 38.242737, 33.508495>,  <42.684196, 38.083035, 33.351337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598194, 38.242737, 33.508495>,  <42.454857, 38.508911, 33.770424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598194, 38.242737, 33.508495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160334, -0.647114, 0.745343,
		-0.919718, -0.372081, -0.125199,
		0.358346, -0.665431, -0.654820,
		42.705700, 38.043106, 33.312050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161278, 37.826878, 33.921253>,  <42.454857, 38.508911, 33.770424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161278, 37.826878, 33.921253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493706, 37.741199, 33.715946>,  <42.693165, 37.689793, 33.592762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493706, 37.741199, 33.715946>,  <42.161278, 37.826878, 33.921253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493706, 37.741199, 33.715946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203772, -0.741420, 0.639354,
		-0.517489, -0.635938, -0.572527,
		0.831073, -0.214193, -0.513264,
		42.743027, 37.676941, 33.561966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162983, 37.126175, 33.850498>,  <42.161278, 37.826878, 33.921253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162983, 37.126175, 33.850498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539383, 37.235836, 33.771141>,  <42.765224, 37.301632, 33.723526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539383, 37.235836, 33.771141>,  <42.162983, 37.126175, 33.850498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539383, 37.235836, 33.771141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330825, -0.621841, 0.709837,
		0.071233, -0.733591, -0.675848,
		0.941000, 0.274151, -0.198395,
		42.821682, 37.318081, 33.711624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560318, 36.517811, 33.723404>,  <42.162983, 37.126175, 33.850498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560318, 36.517811, 33.723404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821629, 36.794415, 33.846722>,  <42.978413, 36.960377, 33.920712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821629, 36.794415, 33.846722>,  <42.560318, 36.517811, 33.723404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821629, 36.794415, 33.846722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442251, -0.679026, 0.585951,
		0.614529, -0.246445, -0.749412,
		0.653275, 0.691512, 0.308291,
		43.017612, 37.001869, 33.939209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155075, 36.117710, 33.824764>,  <42.560318, 36.517811, 33.723404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155075, 36.117710, 33.824764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.235924, 36.461781, 34.012062>,  <43.284431, 36.668221, 34.124439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.235924, 36.461781, 34.012062>,  <43.155075, 36.117710, 33.824764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235924, 36.461781, 34.012062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579846, -0.490408, 0.650599,
		0.789256, 0.140007, -0.597890,
		0.202122, 0.860173, 0.468240,
		43.296562, 36.719833, 34.152534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936218, 36.147148, 34.034962>,  <43.155075, 36.117710, 33.824764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936218, 36.147148, 34.034962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.728172, 36.403214, 34.261120>,  <43.603344, 36.556854, 34.396812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.728172, 36.403214, 34.261120>,  <43.936218, 36.147148, 34.034962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728172, 36.403214, 34.261120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410376, -0.393247, 0.822769,
		0.749044, 0.659962, -0.058172,
		-0.520120, 0.640162, 0.565392,
		43.572136, 36.595261, 34.430737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416203, 36.430996, 34.442181>,  <43.936218, 36.147148, 34.034962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416203, 36.430996, 34.442181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077900, 36.490520, 34.647141>,  <43.874920, 36.526237, 34.770115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077900, 36.490520, 34.647141>,  <44.416203, 36.430996, 34.442181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077900, 36.490520, 34.647141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454300, -0.302807, 0.837807,
		0.279835, 0.941362, 0.188494,
		-0.845757, 0.148814, 0.512396,
		43.824173, 36.535164, 34.800858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118748, 36.162579, 34.191425>,  <44.416203, 36.430996, 34.442181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118748, 36.162579, 34.191425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516769, 36.131134, 34.215733>,  <45.755581, 36.112267, 34.230316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516769, 36.131134, 34.215733>,  <45.118748, 36.162579, 34.191425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516769, 36.131134, 34.215733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088988, 0.977121, -0.193171,
		-0.044192, 0.197623, 0.979281,
		0.995052, -0.078608, 0.060767,
		45.815285, 36.107552, 34.233963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381100, 36.635006, 34.729717>,  <45.118748, 36.162579, 34.191425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381100, 36.635006, 34.729717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665291, 36.570007, 34.455837>,  <45.835808, 36.531006, 34.291508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665291, 36.570007, 34.455837>,  <45.381100, 36.635006, 34.729717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665291, 36.570007, 34.455837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118612, 0.986706, -0.111096,
		0.693650, -0.002282, 0.720309,
		0.710480, -0.162499, -0.684699,
		45.878433, 36.521259, 34.250427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857281, 37.123428, 35.003670>,  <45.381100, 36.635006, 34.729717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857281, 37.123428, 35.003670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998974, 37.022278, 34.643543>,  <46.083992, 36.961586, 34.427467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998974, 37.022278, 34.643543>,  <45.857281, 37.123428, 35.003670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998974, 37.022278, 34.643543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220876, 0.958129, -0.182214,
		0.908697, -0.134312, 0.395258,
		0.354235, -0.252880, -0.900316,
		46.105244, 36.946415, 34.373447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420578, 37.588551, 34.871143>,  <45.857281, 37.123428, 35.003670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420578, 37.588551, 34.871143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.275024, 37.452633, 34.524242>,  <46.187691, 37.371082, 34.316101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.275024, 37.452633, 34.524242>,  <46.420578, 37.588551, 34.871143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275024, 37.452633, 34.524242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095084, 0.912672, -0.397479,
		0.926579, -0.227097, -0.299796,
		-0.363881, -0.339791, -0.867256,
		46.165859, 37.350697, 34.264065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832447, 37.961327, 34.360905>,  <46.420578, 37.588551, 34.871143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832447, 37.961327, 34.360905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512600, 37.836136, 34.155903>,  <46.320690, 37.761021, 34.032902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512600, 37.836136, 34.155903>,  <46.832447, 37.961327, 34.360905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512600, 37.836136, 34.155903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008626, 0.847371, -0.530932,
		0.600448, -0.428963, -0.674872,
		-0.799617, -0.312976, -0.512502,
		46.272717, 37.742245, 34.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840343, 38.143227, 33.574654>,  <46.832447, 37.961327, 34.360905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840343, 38.143227, 33.574654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452030, 38.093075, 33.656498>,  <46.219044, 38.062984, 33.705605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452030, 38.093075, 33.656498>,  <46.840343, 38.143227, 33.574654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452030, 38.093075, 33.656498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221469, 0.796428, -0.562720,
		-0.092407, -0.591593, -0.800924,
		-0.970780, -0.125380, 0.204615,
		46.160797, 38.055462, 33.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561119, 38.436447, 32.990234>,  <46.840343, 38.143227, 33.574654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561119, 38.436447, 32.990234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.232304, 38.417435, 33.217216>,  <46.035015, 38.406025, 33.353405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.232304, 38.417435, 33.217216>,  <46.561119, 38.436447, 32.990234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.232304, 38.417435, 33.217216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361409, 0.813632, -0.455398,
		-0.440049, -0.579434, -0.686012,
		-0.822034, -0.047534, 0.567451,
		45.985695, 38.403175, 33.387451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002975, 38.551147, 32.477028>,  <46.561119, 38.436447, 32.990234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002975, 38.551147, 32.477028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857624, 38.637150, 32.839626>,  <45.770412, 38.688751, 33.057186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857624, 38.637150, 32.839626>,  <46.002975, 38.551147, 32.477028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857624, 38.637150, 32.839626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406915, 0.838663, -0.362029,
		-0.838081, -0.500418, -0.217261,
		-0.363374, 0.215003, 0.906495,
		45.748611, 38.701653, 33.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311020, 38.643036, 32.427975>,  <46.002975, 38.551147, 32.477028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311020, 38.643036, 32.427975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393074, 38.846485, 32.762451>,  <45.442307, 38.968555, 32.963139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393074, 38.846485, 32.762451>,  <45.311020, 38.643036, 32.427975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393074, 38.846485, 32.762451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587264, 0.747439, -0.310575,
		-0.782970, -0.427357, 0.452021,
		0.205131, 0.508627, 0.836194,
		45.454613, 38.999073, 33.013309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631653, 38.779991, 32.765766>,  <45.311020, 38.643036, 32.427975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631653, 38.779991, 32.765766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907513, 39.050747, 32.868687>,  <45.073029, 39.213200, 32.930439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907513, 39.050747, 32.868687>,  <44.631653, 38.779991, 32.765766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907513, 39.050747, 32.868687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565045, 0.725236, -0.393392,
		-0.452885, 0.125918, 0.882632,
		0.689651, 0.676888, 0.257299,
		45.114407, 39.253815, 32.945877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306961, 39.377373, 33.101669>,  <44.631653, 38.779991, 32.765766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306961, 39.377373, 33.101669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.651825, 39.530712, 32.969173>,  <44.858746, 39.622715, 32.889675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.651825, 39.530712, 32.969173>,  <44.306961, 39.377373, 33.101669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651825, 39.530712, 32.969173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502161, 0.733272, -0.458417,
		0.067154, 0.561565, 0.824703,
		0.862163, 0.383350, -0.331238,
		44.910473, 39.645718, 32.869801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096325, 40.027390, 33.045475>,  <44.306961, 39.377373, 33.101669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096325, 40.027390, 33.045475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447411, 40.024418, 32.853825>,  <44.658062, 40.022636, 32.738834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447411, 40.024418, 32.853825>,  <44.096325, 40.027390, 33.045475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447411, 40.024418, 32.853825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290686, 0.786632, -0.544712,
		0.380940, 0.617377, 0.688281,
		0.877716, -0.007429, -0.479123,
		44.710724, 40.022190, 32.710087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258446, 40.799675, 32.844692>,  <44.096325, 40.027390, 33.045475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258446, 40.799675, 32.844692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476601, 40.564117, 32.606110>,  <44.607494, 40.422783, 32.462959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476601, 40.564117, 32.606110>,  <44.258446, 40.799675, 32.844692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476601, 40.564117, 32.606110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207740, 0.594435, -0.776847,
		0.812035, 0.547588, 0.201858,
		0.545383, -0.588893, -0.596458,
		44.640217, 40.387451, 32.427174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840157, 41.282078, 32.641739>,  <44.258446, 40.799675, 32.844692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840157, 41.282078, 32.641739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797699, 40.971889, 32.392780>,  <44.772224, 40.785774, 32.243404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797699, 40.971889, 32.392780>,  <44.840157, 41.282078, 32.641739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797699, 40.971889, 32.392780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156283, 0.631160, -0.759745,
		0.981992, 0.016628, -0.188187,
		-0.106143, -0.775474, -0.622393,
		44.765858, 40.739246, 32.206062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055248, 41.518253, 31.950081>,  <44.840157, 41.282078, 32.641739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055248, 41.518253, 31.950081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870285, 41.171459, 31.875771>,  <44.759308, 40.963383, 31.831184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870285, 41.171459, 31.875771>,  <45.055248, 41.518253, 31.950081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870285, 41.171459, 31.875771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418605, 0.398162, -0.816233,
		0.781633, -0.299665, -0.547038,
		-0.462407, -0.866988, -0.185775,
		44.731564, 40.911362, 31.820038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227692, 41.414494, 31.239307>,  <45.055248, 41.518253, 31.950081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227692, 41.414494, 31.239307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891491, 41.211739, 31.315849>,  <44.689770, 41.090088, 31.361774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891491, 41.211739, 31.315849>,  <45.227692, 41.414494, 31.239307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891491, 41.211739, 31.315849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360815, 0.260194, -0.895607,
		0.404181, -0.821807, -0.401586,
		-0.840506, -0.506886, 0.191355,
		44.639339, 41.059673, 31.373257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043419, 41.076626, 30.537140>,  <45.227692, 41.414494, 31.239307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043419, 41.076626, 30.537140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707268, 41.091537, 30.753429>,  <44.505577, 41.100487, 30.883204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707268, 41.091537, 30.753429>,  <45.043419, 41.076626, 30.537140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707268, 41.091537, 30.753429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530353, 0.149198, -0.834545,
		-0.111790, -0.988104, -0.105609,
		-0.840374, 0.037284, 0.540723,
		44.455154, 41.102722, 30.915646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487057, 40.748997, 30.204754>,  <45.043419, 41.076626, 30.537140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487057, 40.748997, 30.204754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243702, 40.952480, 30.448420>,  <44.097691, 41.074570, 30.594618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243702, 40.952480, 30.448420>,  <44.487057, 40.748997, 30.204754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243702, 40.952480, 30.448420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353490, 0.513522, -0.781882,
		-0.710572, -0.691018, -0.132594,
		-0.608385, 0.508713, 0.609162,
		44.061188, 41.105095, 30.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786236, 40.566067, 30.049368>,  <44.487057, 40.748997, 30.204754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786236, 40.566067, 30.049368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795628, 40.919861, 30.235760>,  <43.801262, 41.132137, 30.347595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795628, 40.919861, 30.235760>,  <43.786236, 40.566067, 30.049368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795628, 40.919861, 30.235760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464737, 0.422343, -0.778232,
		-0.885137, -0.198283, 0.420970,
		0.023484, 0.884483, 0.465981,
		43.802673, 41.185207, 30.375553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085068, 40.809666, 30.121994>,  <43.786236, 40.566067, 30.049368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085068, 40.809666, 30.121994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.323990, 41.130440, 30.126600>,  <43.467342, 41.322903, 30.129364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.323990, 41.130440, 30.126600>,  <43.085068, 40.809666, 30.121994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323990, 41.130440, 30.126600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503570, 0.386172, -0.772845,
		-0.624218, 0.455822, 0.634491,
		0.597302, 0.801934, 0.011517,
		43.503181, 41.371021, 30.130056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625061, 41.261990, 29.933603>,  <43.085068, 40.809666, 30.121994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625061, 41.261990, 29.933603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.984646, 41.429928, 29.883642>,  <43.200397, 41.530693, 29.853666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.984646, 41.429928, 29.883642>,  <42.625061, 41.261990, 29.933603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984646, 41.429928, 29.883642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354855, 0.530847, -0.769597,
		-0.256811, 0.736157, 0.626195,
		0.898958, 0.419849, -0.124901,
		43.254333, 41.555882, 29.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.300919, 41.450638, 40.189220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909145, 41.370506, 40.179623>,  <38.674080, 41.322426, 40.173866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909145, 41.370506, 40.179623>,  <39.300919, 41.450638, 40.189220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909145, 41.370506, 40.179623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161934, -0.709574, -0.685772,
		0.120358, -0.675554, 0.727421,
		-0.979434, -0.200332, -0.023992,
		38.615314, 41.310406, 40.172424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337074, 40.744507, 40.074284>,  <39.300919, 41.450638, 40.189220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337074, 40.744507, 40.074284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967838, 40.859901, 39.972553>,  <38.746296, 40.929138, 39.911514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967838, 40.859901, 39.972553>,  <39.337074, 40.744507, 40.074284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967838, 40.859901, 39.972553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026221, -0.706963, -0.706764,
		-0.383693, -0.645737, 0.660154,
		-0.923088, 0.288490, -0.254325,
		38.690910, 40.946449, 39.896255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975937, 40.078682, 39.976833>,  <39.337074, 40.744507, 40.074284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975937, 40.078682, 39.976833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772720, 40.354397, 39.770233>,  <38.650791, 40.519825, 39.646271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772720, 40.354397, 39.770233>,  <38.975937, 40.078682, 39.976833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772720, 40.354397, 39.770233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176989, -0.670404, -0.720578,
		-0.842951, -0.274670, 0.462591,
		-0.508045, 0.689285, -0.516505,
		38.620308, 40.561184, 39.615280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427628, 39.676365, 39.717499>,  <38.975937, 40.078682, 39.976833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427628, 39.676365, 39.717499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451019, 39.999268, 39.482578>,  <38.465054, 40.193008, 39.341625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451019, 39.999268, 39.482578>,  <38.427628, 39.676365, 39.717499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451019, 39.999268, 39.482578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113811, -0.579077, -0.807290,
		-0.991780, 0.114054, 0.058008,
		0.058483, 0.807256, -0.587297,
		38.468563, 40.241444, 39.306389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973026, 39.497551, 39.138180>,  <38.427628, 39.676365, 39.717499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973026, 39.497551, 39.138180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193970, 39.805302, 39.009830>,  <38.326534, 39.989952, 38.932823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193970, 39.805302, 39.009830>,  <37.973026, 39.497551, 39.138180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193970, 39.805302, 39.009830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012052, -0.377507, -0.925928,
		-0.833522, 0.515308, -0.199246,
		0.552355, 0.769380, -0.320871,
		38.359676, 40.036118, 38.913570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651321, 39.841103, 38.522549>,  <37.973026, 39.497551, 39.138180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651321, 39.841103, 38.522549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043442, 39.918987, 38.509270>,  <38.278713, 39.965717, 38.501305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043442, 39.918987, 38.509270>,  <37.651321, 39.841103, 38.522549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043442, 39.918987, 38.509270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044244, -0.380250, -0.923825,
		-0.192503, 0.904155, -0.381373,
		0.980299, 0.194712, -0.033196,
		38.337532, 39.977402, 38.499310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777431, 40.086437, 37.870537>,  <37.651321, 39.841103, 38.522549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777431, 40.086437, 37.870537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152260, 39.991562, 37.973011>,  <38.377159, 39.934635, 38.034496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152260, 39.991562, 37.973011>,  <37.777431, 40.086437, 37.870537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152260, 39.991562, 37.973011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236530, -0.108416, -0.965557,
		0.256795, 0.965395, -0.045492,
		0.937075, -0.237190, 0.256186,
		38.433384, 39.920406, 38.049866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247879, 40.565746, 37.664074>,  <37.777431, 40.086437, 37.870537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247879, 40.565746, 37.664074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406738, 40.199379, 37.687290>,  <38.502052, 39.979557, 37.701221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406738, 40.199379, 37.687290>,  <38.247879, 40.565746, 37.664074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406738, 40.199379, 37.687290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016982, -0.055900, -0.998292,
		0.917598, 0.397455, -0.006647,
		0.397148, -0.915917, 0.058044,
		38.525883, 39.924603, 37.704704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428623, 40.523407, 37.096653>,  <38.247879, 40.565746, 37.664074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428623, 40.523407, 37.096653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565853, 40.164051, 37.206341>,  <38.648190, 39.948437, 37.272156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565853, 40.164051, 37.206341>,  <38.428623, 40.523407, 37.096653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565853, 40.164051, 37.206341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190182, -0.219458, -0.956906,
		0.919855, 0.380440, 0.095568,
		0.343072, -0.898390, 0.274222,
		38.668774, 39.894535, 37.288609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979244, 40.483643, 36.603912>,  <38.428623, 40.523407, 37.096653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979244, 40.483643, 36.603912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907776, 40.118046, 36.749622>,  <38.864895, 39.898689, 36.837048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907776, 40.118046, 36.749622>,  <38.979244, 40.483643, 36.603912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907776, 40.118046, 36.749622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129900, -0.388903, -0.912075,
		0.975296, -0.115645, 0.188214,
		-0.178673, -0.913992, 0.364273,
		38.854176, 39.843849, 36.858906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562702, 40.086498, 36.511299>,  <38.979244, 40.483643, 36.603912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562702, 40.086498, 36.511299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265759, 39.820202, 36.541473>,  <39.087593, 39.660423, 36.559578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265759, 39.820202, 36.541473>,  <39.562702, 40.086498, 36.511299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265759, 39.820202, 36.541473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343013, -0.474359, -0.810757,
		0.575536, -0.575999, 0.580503,
		-0.742361, -0.665740, 0.075436,
		39.043049, 39.620480, 36.564102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853199, 39.331627, 36.476162>,  <39.562702, 40.086498, 36.511299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853199, 39.331627, 36.476162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463707, 39.318283, 36.386066>,  <39.230011, 39.310276, 36.332008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463707, 39.318283, 36.386066>,  <39.853199, 39.331627, 36.476162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463707, 39.318283, 36.386066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202697, -0.577640, -0.790725,
		-0.103725, -0.815609, 0.569230,
		-0.973733, -0.033363, -0.225237,
		39.171589, 39.308273, 36.318497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461586, 38.673298, 36.497608>,  <39.853199, 39.331627, 36.476162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461586, 38.673298, 36.497608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359497, 38.933609, 36.211575>,  <39.298244, 39.089794, 36.039955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359497, 38.933609, 36.211575>,  <39.461586, 38.673298, 36.497608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359497, 38.933609, 36.211575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433755, -0.583917, -0.686220,
		-0.864128, -0.485313, -0.133248,
		-0.255226, 0.650778, -0.715086,
		39.282928, 39.128841, 35.997047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378101, 37.857189, 36.731194>,  <39.461586, 38.673298, 36.497608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378101, 37.857189, 36.731194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426193, 37.460114, 36.735569>,  <39.455048, 37.221870, 36.738194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426193, 37.460114, 36.735569>,  <39.378101, 37.857189, 36.731194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426193, 37.460114, 36.735569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402508, -0.038672, 0.914600,
		-0.907488, -0.114360, -0.404213,
		0.120225, -0.992687, 0.010937,
		39.462261, 37.162308, 36.738850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765804, 37.490051, 36.860325>,  <39.378101, 37.857189, 36.731194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765804, 37.490051, 36.860325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060028, 37.260857, 37.004898>,  <39.236561, 37.123341, 37.091640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060028, 37.260857, 37.004898>,  <38.765804, 37.490051, 36.860325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060028, 37.260857, 37.004898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490776, -0.082922, 0.867331,
		-0.467002, -0.815356, -0.342204,
		0.735559, -0.572991, 0.361432,
		39.280697, 37.088959, 37.113327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396542, 37.037716, 37.225529>,  <38.765804, 37.490051, 36.860325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396542, 37.037716, 37.225529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772118, 37.001228, 37.358238>,  <38.997463, 36.979336, 37.437862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772118, 37.001228, 37.358238>,  <38.396542, 37.037716, 37.225529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772118, 37.001228, 37.358238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343894, -0.280910, 0.896006,
		0.011469, -0.955389, -0.295125,
		0.938938, -0.091216, 0.331775,
		39.053799, 36.973862, 37.457771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360313, 36.502739, 37.579575>,  <38.396542, 37.037716, 37.225529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360313, 36.502739, 37.579575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668560, 36.714596, 37.721348>,  <38.853508, 36.841709, 37.806412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668560, 36.714596, 37.721348>,  <38.360313, 36.502739, 37.579575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668560, 36.714596, 37.721348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327568, -0.147882, 0.933183,
		0.546666, -0.835231, 0.059533,
		0.770620, 0.529641, 0.354437,
		38.899746, 36.873489, 37.827679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730213, 36.105095, 38.098919>,  <38.360313, 36.502739, 37.579575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730213, 36.105095, 38.098919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843361, 36.483677, 38.161163>,  <38.911247, 36.710827, 38.198509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843361, 36.483677, 38.161163>,  <38.730213, 36.105095, 38.098919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843361, 36.483677, 38.161163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117941, -0.126687, 0.984906,
		0.951880, -0.296951, 0.075789,
		0.282867, 0.946451, 0.155613,
		38.928223, 36.767612, 38.207848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327927, 36.131371, 38.634617>,  <38.730213, 36.105095, 38.098919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327927, 36.131371, 38.634617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129757, 36.478741, 38.642445>,  <39.010853, 36.687164, 38.647141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129757, 36.478741, 38.642445>,  <39.327927, 36.131371, 38.634617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129757, 36.478741, 38.642445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098646, 0.033870, 0.994546,
		0.863030, 0.494655, -0.102447,
		-0.495427, 0.868429, 0.019565,
		38.981129, 36.739269, 38.648315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457092, 36.148571, 39.364361>,  <39.327927, 36.131371, 38.634617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457092, 36.148571, 39.364361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215839, 36.444138, 39.244205>,  <39.071087, 36.621479, 39.172112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215839, 36.444138, 39.244205>,  <39.457092, 36.148571, 39.364361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215839, 36.444138, 39.244205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206408, 0.219188, 0.953600,
		0.770475, 0.637146, 0.020320,
		-0.603129, 0.738919, -0.300391,
		39.034901, 36.665813, 39.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684990, 36.756207, 39.706730>,  <39.457092, 36.148571, 39.364361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684990, 36.756207, 39.706730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301193, 36.812683, 39.609203>,  <39.070915, 36.846569, 39.550690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301193, 36.812683, 39.609203>,  <39.684990, 36.756207, 39.706730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301193, 36.812683, 39.609203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203651, 0.250453, 0.946467,
		0.194698, 0.957778, -0.211553,
		-0.959489, 0.141192, -0.243815,
		39.013348, 36.855042, 39.536060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511990, 37.251736, 40.100006>,  <39.684990, 36.756207, 39.706730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511990, 37.251736, 40.100006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156879, 37.115940, 39.975681>,  <38.943813, 37.034462, 39.901085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156879, 37.115940, 39.975681>,  <39.511990, 37.251736, 40.100006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156879, 37.115940, 39.975681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385539, 0.179592, 0.905045,
		-0.251435, 0.923306, -0.290323,
		-0.887773, -0.339491, -0.310814,
		38.890549, 37.014091, 39.882439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059994, 37.718887, 40.219151>,  <39.511990, 37.251736, 40.100006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059994, 37.718887, 40.219151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825230, 37.396545, 40.187809>,  <38.684372, 37.203140, 40.169003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825230, 37.396545, 40.187809>,  <39.059994, 37.718887, 40.219151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825230, 37.396545, 40.187809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490402, 0.276815, 0.826365,
		-0.644239, 0.523427, -0.557657,
		-0.586909, -0.805852, -0.078355,
		38.649158, 37.154789, 40.164303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423100, 37.967842, 40.247604>,  <39.059994, 37.718887, 40.219151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423100, 37.967842, 40.247604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395378, 37.581768, 40.348492>,  <38.378746, 37.350124, 40.409023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395378, 37.581768, 40.348492>,  <38.423100, 37.967842, 40.247604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395378, 37.581768, 40.348492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479422, 0.253941, 0.840041,
		-0.874844, -0.062703, -0.480329,
		-0.069302, -0.965185, 0.252220,
		38.374588, 37.292213, 40.424156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748989, 37.832184, 40.526035>,  <38.423100, 37.967842, 40.247604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748989, 37.832184, 40.526035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981407, 37.541439, 40.672493>,  <38.120857, 37.366993, 40.760368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981407, 37.541439, 40.672493>,  <37.748989, 37.832184, 40.526035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981407, 37.541439, 40.672493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330934, 0.200009, 0.922214,
		-0.743552, -0.657018, -0.124329,
		0.581044, -0.726859, 0.366147,
		38.155720, 37.323380, 40.782337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419350, 37.573978, 41.029980>,  <37.748989, 37.832184, 40.526035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419350, 37.573978, 41.029980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762814, 37.405514, 41.146824>,  <37.968891, 37.304436, 41.216930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762814, 37.405514, 41.146824>,  <37.419350, 37.573978, 41.029980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762814, 37.405514, 41.146824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152168, 0.334756, 0.929937,
		-0.489444, -0.842946, 0.223352,
		0.858656, -0.421165, 0.292113,
		38.020409, 37.279163, 41.234459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272987, 37.286060, 41.675457>,  <37.419350, 37.573978, 41.029980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272987, 37.286060, 41.675457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671570, 37.262604, 41.699547>,  <37.910721, 37.248528, 41.714001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671570, 37.262604, 41.699547>,  <37.272987, 37.286060, 41.675457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671570, 37.262604, 41.699547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044862, 0.234888, 0.970987,
		-0.071091, -0.970252, 0.231426,
		0.996461, -0.058646, 0.060226,
		37.970509, 37.245010, 41.717613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369541, 36.983315, 42.241642>,  <37.272987, 37.286060, 41.675457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369541, 36.983315, 42.241642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711590, 37.180180, 42.176464>,  <37.916817, 37.298298, 42.137356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711590, 37.180180, 42.176464>,  <37.369541, 36.983315, 42.241642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711590, 37.180180, 42.176464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061722, 0.408719, 0.910571,
		0.514747, -0.768587, 0.379880,
		0.855117, 0.492161, -0.162948,
		37.968124, 37.327827, 42.127579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589783, 36.299194, 42.227436>,  <37.369541, 36.983315, 42.241642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589783, 36.299194, 42.227436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280430, 36.098961, 42.383022>,  <37.094818, 35.978821, 42.476376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280430, 36.098961, 42.383022>,  <37.589783, 36.299194, 42.227436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280430, 36.098961, 42.383022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205151, -0.382928, -0.900710,
		0.599831, -0.776389, 0.193453,
		-0.773380, -0.500587, 0.388969,
		37.048416, 35.948784, 42.499714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532761, 35.661091, 41.857868>,  <37.589783, 36.299194, 42.227436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532761, 35.661091, 41.857868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172806, 35.670326, 42.032074>,  <36.956833, 35.675869, 42.136597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172806, 35.670326, 42.032074>,  <37.532761, 35.661091, 41.857868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172806, 35.670326, 42.032074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415737, -0.347192, -0.840607,
		0.131800, -0.937510, 0.322032,
		-0.899884, 0.023089, 0.435518,
		36.902840, 35.677254, 42.162731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297947, 34.933834, 41.926178>,  <37.532761, 35.661091, 41.857868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297947, 34.933834, 41.926178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990299, 35.187748, 41.896515>,  <36.805710, 35.340096, 41.878716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990299, 35.187748, 41.896515>,  <37.297947, 34.933834, 41.926178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990299, 35.187748, 41.896515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374436, -0.541600, -0.752640,
		-0.517933, -0.551101, 0.654242,
		-0.769118, 0.634789, -0.074161,
		36.759563, 35.378185, 41.874268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777229, 34.571949, 41.592041>,  <37.297947, 34.933834, 41.926178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777229, 34.571949, 41.592041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607697, 34.934055, 41.580246>,  <36.505978, 35.151318, 41.573170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607697, 34.934055, 41.580246>,  <36.777229, 34.571949, 41.592041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607697, 34.934055, 41.580246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339988, -0.189179, -0.921206,
		-0.839511, -0.380409, 0.387957,
		-0.423829, 0.905262, -0.029484,
		36.480549, 35.205635, 41.571400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069057, 34.529297, 41.437386>,  <36.777229, 34.571949, 41.592041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069057, 34.529297, 41.437386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139416, 34.908134, 41.330002>,  <36.181629, 35.135437, 41.265572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139416, 34.908134, 41.330002>,  <36.069057, 34.529297, 41.437386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139416, 34.908134, 41.330002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378252, -0.186756, -0.906669,
		-0.908839, 0.261023, 0.325391,
		0.175893, 0.947095, -0.268464,
		36.192184, 35.192265, 41.249462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611423, 34.629395, 40.895218>,  <36.069057, 34.529297, 41.437386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611423, 34.629395, 40.895218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800980, 34.979179, 40.853741>,  <35.914711, 35.189049, 40.828854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800980, 34.979179, 40.853741>,  <35.611423, 34.629395, 40.895218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800980, 34.979179, 40.853741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086263, -0.071089, -0.993733,
		-0.876350, 0.479863, 0.041745,
		0.473888, 0.874459, -0.103693,
		35.943146, 35.241516, 40.822632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227264, 35.091610, 40.402092>,  <35.611423, 34.629395, 40.895218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227264, 35.091610, 40.402092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617245, 35.180347, 40.395630>,  <35.851231, 35.233589, 40.391754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617245, 35.180347, 40.395630>,  <35.227264, 35.091610, 40.402092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617245, 35.180347, 40.395630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002592, -0.061289, -0.998117,
		-0.222416, 0.973154, -0.059179,
		0.974949, 0.221844, -0.016154,
		35.909729, 35.246902, 40.390785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403709, 35.730492, 40.040848>,  <35.227264, 35.091610, 40.402092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403709, 35.730492, 40.040848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744713, 35.521564, 40.032761>,  <35.949314, 35.396210, 40.027908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744713, 35.521564, 40.032761>,  <35.403709, 35.730492, 40.040848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744713, 35.521564, 40.032761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009443, 0.054056, -0.998493,
		0.522621, 0.851037, 0.051015,
		0.852513, -0.522315, -0.020214,
		36.000465, 35.364868, 40.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676315, 36.135201, 39.542870>,  <35.403709, 35.730492, 40.040848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676315, 36.135201, 39.542870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906269, 35.808987, 39.569469>,  <36.044239, 35.613258, 39.585430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906269, 35.808987, 39.569469>,  <35.676315, 36.135201, 39.542870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906269, 35.808987, 39.569469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225451, 0.079745, -0.970985,
		0.786564, 0.573194, 0.229706,
		0.574881, -0.815530, 0.066502,
		36.078735, 35.564327, 39.589420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338860, 36.252056, 39.196922>,  <35.676315, 36.135201, 39.542870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338860, 36.252056, 39.196922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263321, 35.859264, 39.199997>,  <36.217999, 35.623589, 39.201839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263321, 35.859264, 39.199997>,  <36.338860, 36.252056, 39.196922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263321, 35.859264, 39.199997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198690, -0.045871, -0.978988,
		0.961696, -0.183352, 0.203772,
		-0.188847, -0.981977, 0.007683,
		36.206665, 35.564671, 39.202301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873688, 35.901096, 38.855358>,  <36.338860, 36.252056, 39.196922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873688, 35.901096, 38.855358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575996, 35.634365, 38.840061>,  <36.397381, 35.474327, 38.830883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575996, 35.634365, 38.840061>,  <36.873688, 35.901096, 38.855358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575996, 35.634365, 38.840061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122699, -0.080213, -0.989197,
		0.656560, -0.740879, 0.141516,
		-0.744227, -0.666831, -0.038241,
		36.352730, 35.434315, 38.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165989, 35.447086, 38.379162>,  <36.873688, 35.901096, 38.855358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165989, 35.447086, 38.379162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773247, 35.371407, 38.373951>,  <36.537601, 35.326000, 38.370823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773247, 35.371407, 38.373951>,  <37.165989, 35.447086, 38.379162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773247, 35.371407, 38.373951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078951, -0.345342, -0.935150,
		0.172429, -0.919208, 0.354013,
		-0.981853, -0.189197, -0.013026,
		36.478691, 35.314648, 38.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.114151, 36.926136, 46.614643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722893, 36.892448, 46.538605>,  <36.488136, 36.872234, 46.492981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722893, 36.892448, 46.538605>,  <37.114151, 36.926136, 46.614643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722893, 36.892448, 46.538605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207852, -0.419782, -0.883505,
		-0.005391, -0.903709, 0.428114,
		-0.978145, -0.084222, -0.190100,
		36.429451, 36.867184, 46.481575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010338, 36.257938, 46.383881>,  <37.114151, 36.926136, 46.614643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010338, 36.257938, 46.383881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676575, 36.455605, 46.286259>,  <36.476318, 36.574203, 46.227684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676575, 36.455605, 46.286259>,  <37.010338, 36.257938, 46.383881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676575, 36.455605, 46.286259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077541, -0.333155, -0.939678,
		-0.545669, -0.802997, 0.239668,
		-0.834406, 0.494169, -0.244058,
		36.426254, 36.603855, 46.213043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522152, 35.804310, 46.169563>,  <37.010338, 36.257938, 46.383881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522152, 35.804310, 46.169563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454269, 36.159149, 45.997860>,  <36.413540, 36.372051, 45.894840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454269, 36.159149, 45.997860>,  <36.522152, 35.804310, 46.169563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454269, 36.159149, 45.997860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242125, -0.384690, -0.890724,
		-0.955288, -0.255096, -0.149503,
		-0.169708, 0.887096, -0.429255,
		36.403358, 36.425278, 45.869083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163494, 35.635410, 45.541740>,  <36.522152, 35.804310, 46.169563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163494, 35.635410, 45.541740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.319298, 35.997398, 45.473267>,  <36.412781, 36.214592, 45.432182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.319298, 35.997398, 45.473267>,  <36.163494, 35.635410, 45.541740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319298, 35.997398, 45.473267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225966, -0.274081, -0.934783,
		-0.892873, 0.325424, -0.311251,
		0.389509, 0.904974, -0.171185,
		36.436150, 36.268890, 45.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843182, 35.891533, 44.873379>,  <36.163494, 35.635410, 45.541740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843182, 35.891533, 44.873379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180824, 36.091480, 44.950951>,  <36.383411, 36.211449, 44.997494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180824, 36.091480, 44.950951>,  <35.843182, 35.891533, 44.873379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180824, 36.091480, 44.950951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276225, -0.095426, -0.956344,
		-0.459542, 0.860827, -0.218627,
		0.844109, 0.499871, 0.193929,
		36.434055, 36.241440, 45.009129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850166, 36.490482, 44.393600>,  <35.843182, 35.891533, 44.873379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850166, 36.490482, 44.393600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224518, 36.454704, 44.529915>,  <36.449127, 36.433239, 44.611702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224518, 36.454704, 44.529915>,  <35.850166, 36.490482, 44.393600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224518, 36.454704, 44.529915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351827, 0.185679, -0.917464,
		0.018784, 0.978531, 0.205241,
		0.935876, -0.089443, 0.340786,
		36.505280, 36.427872, 44.632153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259521, 36.927128, 43.971443>,  <35.850166, 36.490482, 44.393600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259521, 36.927128, 43.971443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518055, 36.671680, 44.138496>,  <36.673176, 36.518410, 44.238728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518055, 36.671680, 44.138496>,  <36.259521, 36.927128, 43.971443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518055, 36.671680, 44.138496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481748, -0.082929, -0.872377,
		0.591752, 0.765040, 0.254055,
		0.646335, -0.638621, 0.417629,
		36.711956, 36.480095, 44.263786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836800, 37.183678, 43.866505>,  <36.259521, 36.927128, 43.971443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836800, 37.183678, 43.866505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883980, 36.789524, 43.915680>,  <36.912289, 36.553032, 43.945183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883980, 36.789524, 43.915680>,  <36.836800, 37.183678, 43.866505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883980, 36.789524, 43.915680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349176, -0.074739, -0.934072,
		0.929604, 0.153100, 0.335256,
		0.117949, -0.985380, 0.122936,
		36.919365, 36.493912, 43.952560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445053, 37.014896, 43.545811>,  <36.836800, 37.183678, 43.866505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445053, 37.014896, 43.545811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252018, 36.666348, 43.581184>,  <37.136196, 36.457218, 43.602409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252018, 36.666348, 43.581184>,  <37.445053, 37.014896, 43.545811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252018, 36.666348, 43.581184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328829, -0.273842, -0.903815,
		0.811774, -0.407093, 0.418685,
		-0.482591, -0.871370, 0.088434,
		37.107243, 36.404938, 43.607716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861347, 36.970798, 42.876297>,  <37.445053, 37.014896, 43.545811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861347, 36.970798, 42.876297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009659, 37.281300, 42.672356>,  <38.098644, 37.467602, 42.549992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009659, 37.281300, 42.672356>,  <37.861347, 36.970798, 42.876297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009659, 37.281300, 42.672356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103461, 0.511043, 0.853306,
		0.922942, -0.369134, 0.109169,
		0.370774, 0.776257, -0.509854,
		38.120892, 37.514175, 42.519398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542770, 37.134430, 43.217228>,  <37.861347, 36.970798, 42.876297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542770, 37.134430, 43.217228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431911, 37.461838, 43.015945>,  <38.365395, 37.658283, 42.895176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431911, 37.461838, 43.015945>,  <38.542770, 37.134430, 43.217228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431911, 37.461838, 43.015945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063413, 0.538162, 0.840452,
		0.958731, 0.201022, -0.201057,
		-0.277151, 0.818518, -0.503206,
		38.348766, 37.707394, 42.864983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044418, 37.576359, 43.410126>,  <38.542770, 37.134430, 43.217228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044418, 37.576359, 43.410126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744915, 37.807823, 43.280807>,  <38.565212, 37.946701, 43.203217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744915, 37.807823, 43.280807>,  <39.044418, 37.576359, 43.410126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744915, 37.807823, 43.280807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205927, 0.666675, 0.716336,
		0.630047, 0.469785, -0.618338,
		-0.748755, 0.578659, -0.323295,
		38.520290, 37.981422, 43.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265171, 38.197060, 43.533016>,  <39.044418, 37.576359, 43.410126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265171, 38.197060, 43.533016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875095, 38.271805, 43.485531>,  <38.641052, 38.316650, 43.457039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875095, 38.271805, 43.485531>,  <39.265171, 38.197060, 43.533016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875095, 38.271805, 43.485531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021179, 0.612533, 0.790161,
		0.220365, 0.768041, -0.601292,
		-0.975187, 0.186858, -0.118714,
		38.582539, 38.327862, 43.449917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147083, 39.020596, 43.565983>,  <39.265171, 38.197060, 43.533016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147083, 39.020596, 43.565983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819382, 38.805740, 43.646282>,  <38.622761, 38.676826, 43.694462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819382, 38.805740, 43.646282>,  <39.147083, 39.020596, 43.565983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819382, 38.805740, 43.646282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212741, 0.609812, 0.763460,
		-0.532501, 0.582763, -0.613865,
		-0.819258, -0.537137, 0.200747,
		38.573605, 38.644600, 43.706505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522640, 39.478565, 43.635719>,  <39.147083, 39.020596, 43.565983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522640, 39.478565, 43.635719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406895, 39.154976, 43.840401>,  <38.337448, 38.960823, 43.963207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406895, 39.154976, 43.840401>,  <38.522640, 39.478565, 43.635719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406895, 39.154976, 43.840401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202680, 0.574228, 0.793211,
		-0.935516, 0.125816, -0.330123,
		-0.289364, -0.808970, 0.511699,
		38.320084, 38.912285, 43.993912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046391, 39.721024, 44.171188>,  <38.522640, 39.478565, 43.635719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046391, 39.721024, 44.171188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122684, 39.352394, 44.306435>,  <38.168461, 39.131218, 44.387581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122684, 39.352394, 44.306435>,  <38.046391, 39.721024, 44.171188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122684, 39.352394, 44.306435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232323, 0.292274, 0.927686,
		-0.953753, -0.255496, -0.158355,
		0.190737, -0.921574, 0.338115,
		38.179905, 39.075924, 44.407867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425785, 39.431625, 44.653423>,  <38.046391, 39.721024, 44.171188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425785, 39.431625, 44.653423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740730, 39.198162, 44.732830>,  <37.929695, 39.058083, 44.780476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740730, 39.198162, 44.732830>,  <37.425785, 39.431625, 44.653423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740730, 39.198162, 44.732830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144304, 0.138581, 0.979782,
		-0.599369, -0.800086, 0.024888,
		0.787358, -0.583660, 0.198517,
		37.976936, 39.023064, 44.792385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171936, 38.992134, 45.080601>,  <37.425785, 39.431625, 44.653423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171936, 38.992134, 45.080601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566608, 38.995430, 45.145588>,  <37.803410, 38.997410, 45.184582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566608, 38.995430, 45.145588>,  <37.171936, 38.992134, 45.080601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566608, 38.995430, 45.145588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162678, 0.044391, 0.985680,
		0.000903, -0.998980, 0.045139,
		0.986679, 0.008233, 0.162472,
		37.862614, 38.997902, 45.194328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353096, 38.503513, 45.719891>,  <37.171936, 38.992134, 45.080601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353096, 38.503513, 45.719891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678322, 38.734909, 45.693726>,  <37.873459, 38.873745, 45.678028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678322, 38.734909, 45.693726>,  <37.353096, 38.503513, 45.719891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678322, 38.734909, 45.693726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193507, -0.162569, 0.967536,
		0.549072, -0.799328, -0.244120,
		0.813065, 0.578486, -0.065413,
		37.922241, 38.908455, 45.674103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793404, 38.301304, 46.269299>,  <37.353096, 38.503513, 45.719891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793404, 38.301304, 46.269299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.934635, 38.661686, 46.168415>,  <38.019375, 38.877914, 46.107887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.934635, 38.661686, 46.168415>,  <37.793404, 38.301304, 46.269299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934635, 38.661686, 46.168415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082696, 0.298566, 0.950799,
		0.931933, -0.314849, 0.179922,
		0.353076, 0.900960, -0.252207,
		38.040558, 38.931973, 46.092754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363537, 38.438187, 46.692871>,  <37.793404, 38.301304, 46.269299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363537, 38.438187, 46.692871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240078, 38.789558, 46.546944>,  <38.166004, 39.000381, 46.459389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240078, 38.789558, 46.546944>,  <38.363537, 38.438187, 46.692871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240078, 38.789558, 46.546944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145042, 0.335593, 0.930774,
		0.940053, 0.340195, 0.023830,
		-0.308647, 0.878433, -0.364818,
		38.147484, 39.053089, 46.437500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718224, 38.926418, 47.127354>,  <38.363537, 38.438187, 46.692871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718224, 38.926418, 47.127354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408749, 39.111946, 46.954716>,  <38.223064, 39.223263, 46.851131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408749, 39.111946, 46.954716>,  <38.718224, 38.926418, 47.127354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408749, 39.111946, 46.954716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203405, 0.463317, 0.862533,
		0.600027, 0.755122, -0.264120,
		-0.773689, 0.463819, -0.431598,
		38.176643, 39.251091, 46.825237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764999, 39.602703, 47.352959>,  <38.718224, 38.926418, 47.127354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764999, 39.602703, 47.352959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392010, 39.620419, 47.209557>,  <38.168217, 39.631046, 47.123516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392010, 39.620419, 47.209557>,  <38.764999, 39.602703, 47.352959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392010, 39.620419, 47.209557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257232, 0.615370, 0.745085,
		0.253609, 0.786994, -0.562427,
		-0.932477, 0.044286, -0.358503,
		38.112267, 39.633705, 47.102005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.603771, 42.561470, 45.058708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732149, 42.216080, 45.214352>,  <31.809175, 42.008846, 45.307739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732149, 42.216080, 45.214352>,  <31.603771, 42.561470, 45.058708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732149, 42.216080, 45.214352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332689, -0.281876, -0.899924,
		0.886742, 0.418280, 0.196801,
		0.320947, -0.863474, 0.389108,
		31.828434, 41.957039, 45.331085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283154, 42.427078, 44.724854>,  <31.603771, 42.561470, 45.058708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283154, 42.427078, 44.724854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170666, 42.068600, 44.862110>,  <32.103172, 41.853512, 44.944462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170666, 42.068600, 44.862110>,  <32.283154, 42.427078, 44.724854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170666, 42.068600, 44.862110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324842, -0.425359, -0.844718,
		0.902992, -0.126084, 0.410741,
		-0.281218, -0.896199, 0.343138,
		32.086300, 41.799740, 44.965050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817444, 42.047989, 44.663746>,  <32.283154, 42.427078, 44.724854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817444, 42.047989, 44.663746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514515, 41.786793, 44.666950>,  <32.332756, 41.630074, 44.668873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514515, 41.786793, 44.666950>,  <32.817444, 42.047989, 44.663746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514515, 41.786793, 44.666950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296565, -0.354832, -0.886647,
		0.581815, -0.669103, 0.462377,
		-0.757324, -0.652990, 0.008014,
		32.287319, 41.590897, 44.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046822, 41.482021, 44.317654>,  <32.817444, 42.047989, 44.663746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046822, 41.482021, 44.317654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656395, 41.396503, 44.333611>,  <32.422138, 41.345192, 44.343185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656395, 41.396503, 44.333611>,  <33.046822, 41.482021, 44.317654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656395, 41.396503, 44.333611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090381, -0.565573, -0.819731,
		0.197818, -0.796503, 0.571358,
		-0.976063, -0.213797, 0.039891,
		32.363575, 41.332363, 44.345577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024975, 40.706593, 44.191563>,  <33.046822, 41.482021, 44.317654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024975, 40.706593, 44.191563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.665462, 40.867348, 44.121494>,  <32.449757, 40.963799, 44.079453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.665462, 40.867348, 44.121494>,  <33.024975, 40.706593, 44.191563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665462, 40.867348, 44.121494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117565, -0.605884, -0.786818,
		-0.422343, -0.686582, 0.591804,
		-0.898780, 0.401883, -0.175173,
		32.395828, 40.987911, 44.068943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546787, 40.163277, 43.907372>,  <33.024975, 40.706593, 44.191563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546787, 40.163277, 43.907372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389107, 40.509476, 43.783745>,  <32.294498, 40.717194, 43.709568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389107, 40.509476, 43.783745>,  <32.546787, 40.163277, 43.907372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389107, 40.509476, 43.783745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163339, -0.396921, -0.903202,
		-0.904394, -0.305558, 0.297835,
		-0.394197, 0.865499, -0.309063,
		32.270847, 40.769127, 43.691025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066574, 39.946571, 43.433144>,  <32.546787, 40.163277, 43.907372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066574, 39.946571, 43.433144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163471, 40.325153, 43.347782>,  <32.221611, 40.552303, 43.296566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163471, 40.325153, 43.347782>,  <32.066574, 39.946571, 43.433144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163471, 40.325153, 43.347782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007524, -0.218115, -0.975894,
		-0.970185, 0.238013, -0.045717,
		0.242247, 0.946454, -0.213402,
		32.236145, 40.609089, 43.283760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837303, 39.974094, 42.814735>,  <32.066574, 39.946571, 43.433144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837303, 39.974094, 42.814735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064388, 40.302345, 42.840874>,  <32.200642, 40.499294, 42.856556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064388, 40.302345, 42.840874>,  <31.837303, 39.974094, 42.814735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064388, 40.302345, 42.840874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331932, -0.155548, -0.930390,
		-0.753340, 0.549886, -0.360699,
		0.567715, 0.820628, 0.065344,
		32.234703, 40.548534, 42.860477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701572, 40.265919, 42.180336>,  <31.837303, 39.974094, 42.814735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701572, 40.265919, 42.180336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051044, 40.438046, 42.271118>,  <32.260727, 40.541321, 42.325588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051044, 40.438046, 42.271118>,  <31.701572, 40.265919, 42.180336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051044, 40.438046, 42.271118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328220, -0.177031, -0.927864,
		-0.359099, 0.885148, -0.295908,
		0.873681, 0.430318, 0.226952,
		32.313148, 40.567142, 42.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853140, 40.624809, 41.615303>,  <31.701572, 40.265919, 42.180336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853140, 40.624809, 41.615303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210094, 40.630333, 41.795727>,  <32.424267, 40.633648, 41.903980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210094, 40.630333, 41.795727>,  <31.853140, 40.624809, 41.615303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210094, 40.630333, 41.795727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450008, -0.101889, -0.887193,
		0.033710, 0.994700, -0.097137,
		0.892388, 0.013805, 0.451058,
		32.477810, 40.634476, 41.931046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245724, 41.165314, 41.240692>,  <31.853140, 40.624809, 41.615303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245724, 41.165314, 41.240692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522827, 40.934391, 41.413574>,  <32.689087, 40.795837, 41.517303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522827, 40.934391, 41.413574>,  <32.245724, 41.165314, 41.240692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522827, 40.934391, 41.413574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431024, -0.149049, -0.889945,
		0.578194, 0.802807, 0.145579,
		0.692756, -0.577309, 0.432208,
		32.730656, 40.761200, 41.543236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892292, 41.373291, 40.928116>,  <32.245724, 41.165314, 41.240692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892292, 41.373291, 40.928116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957077, 41.006596, 41.074184>,  <32.995949, 40.786579, 41.161827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957077, 41.006596, 41.074184>,  <32.892292, 41.373291, 40.928116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957077, 41.006596, 41.074184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451910, -0.260067, -0.853313,
		0.877238, 0.303229, 0.372164,
		0.161962, -0.916743, 0.365172,
		33.005665, 40.731571, 41.183735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449272, 41.267178, 40.603764>,  <32.892292, 41.373291, 40.928116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449272, 41.267178, 40.603764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324352, 40.902882, 40.711849>,  <33.249401, 40.684303, 40.776699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324352, 40.902882, 40.711849>,  <33.449272, 41.267178, 40.603764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324352, 40.902882, 40.711849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396422, -0.383426, -0.834167,
		0.863318, -0.153394, 0.480783,
		-0.312301, -0.910744, 0.270210,
		33.230663, 40.629658, 40.792912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958443, 40.911213, 40.289326>,  <33.449272, 41.267178, 40.603764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958443, 40.911213, 40.289326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656643, 40.666676, 40.384819>,  <33.475563, 40.519955, 40.442116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656643, 40.666676, 40.384819>,  <33.958443, 40.911213, 40.289326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656643, 40.666676, 40.384819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204785, -0.564890, -0.799351,
		0.623539, -0.554217, 0.551401,
		-0.754495, -0.611345, 0.238736,
		33.430294, 40.483273, 40.456440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702354, 40.966789, 40.282978>,  <33.958443, 40.911213, 40.289326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702354, 40.966789, 40.282978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817917, 41.290035, 40.077656>,  <34.887257, 41.483982, 39.954464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817917, 41.290035, 40.077656>,  <34.702354, 40.966789, 40.282978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817917, 41.290035, 40.077656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090314, 0.556786, 0.825732,
		0.953087, -0.192202, 0.233844,
		0.288908, 0.808114, -0.513307,
		34.904591, 41.532471, 39.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252327, 41.258385, 40.603630>,  <34.702354, 40.966789, 40.282978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252327, 41.258385, 40.603630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.083305, 41.552670, 40.391899>,  <34.981892, 41.729240, 40.264862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.083305, 41.552670, 40.391899>,  <35.252327, 41.258385, 40.603630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083305, 41.552670, 40.391899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188264, 0.500040, 0.845291,
		0.886571, 0.456831, -0.072785,
		-0.422550, 0.735708, -0.529326,
		34.956539, 41.773380, 40.233101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573708, 41.851929, 40.956921>,  <35.252327, 41.258385, 40.603630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573708, 41.851929, 40.956921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.271099, 42.012997, 40.750801>,  <35.089535, 42.109638, 40.627129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.271099, 42.012997, 40.750801>,  <35.573708, 41.851929, 40.956921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271099, 42.012997, 40.750801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146780, 0.663298, 0.733820,
		0.637285, 0.630786, -0.442694,
		-0.756521, 0.402673, -0.515296,
		35.044144, 42.133801, 40.596210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703529, 42.532780, 40.902351>,  <35.573708, 41.851929, 40.956921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703529, 42.532780, 40.902351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308670, 42.472767, 40.880371>,  <35.071754, 42.436760, 40.867184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308670, 42.472767, 40.880371>,  <35.703529, 42.532780, 40.902351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308670, 42.472767, 40.880371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146936, 0.717303, 0.681093,
		-0.062772, 0.680416, -0.730133,
		-0.987152, -0.150037, -0.054951,
		35.012524, 42.427757, 40.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581364, 43.084850, 41.323200>,  <35.703529, 42.532780, 40.902351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581364, 43.084850, 41.323200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224854, 42.938457, 41.216103>,  <35.010948, 42.850624, 41.151844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224854, 42.938457, 41.216103>,  <35.581364, 43.084850, 41.323200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224854, 42.938457, 41.216103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445954, 0.600419, 0.663794,
		-0.082176, 0.711026, -0.698348,
		-0.891276, -0.365979, -0.267745,
		34.957470, 42.828663, 41.135780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970596, 43.595955, 41.060589>,  <35.581364, 43.084850, 41.323200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970596, 43.595955, 41.060589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784122, 43.282452, 41.224735>,  <34.672237, 43.094349, 41.323223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784122, 43.282452, 41.224735>,  <34.970596, 43.595955, 41.060589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784122, 43.282452, 41.224735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475442, 0.613126, 0.630897,
		-0.746073, 0.099013, -0.658462,
		-0.466187, -0.783756, 0.410362,
		34.644268, 43.047325, 41.347843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284615, 43.813271, 41.217319>,  <34.970596, 43.595955, 41.060589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284615, 43.813271, 41.217319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312279, 43.490788, 41.452347>,  <34.328876, 43.297298, 41.593365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312279, 43.490788, 41.452347>,  <34.284615, 43.813271, 41.217319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312279, 43.490788, 41.452347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577586, 0.447865, 0.682503,
		-0.813395, -0.386573, -0.434684,
		0.069158, -0.806212, 0.587571,
		34.333027, 43.248924, 41.628616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768551, 43.839043, 41.705414>,  <34.284615, 43.813271, 41.217319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768551, 43.839043, 41.705414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006931, 43.574635, 41.887794>,  <34.149960, 43.415989, 41.997223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006931, 43.574635, 41.887794>,  <33.768551, 43.839043, 41.705414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006931, 43.574635, 41.887794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413710, 0.233912, 0.879846,
		-0.688249, -0.712978, -0.134071,
		0.595950, -0.661020, 0.455956,
		34.185715, 43.376328, 42.024582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403393, 43.635189, 42.334297>,  <33.768551, 43.839043, 41.705414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403393, 43.635189, 42.334297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772923, 43.504124, 42.413471>,  <33.994640, 43.425484, 42.460976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772923, 43.504124, 42.413471>,  <33.403393, 43.635189, 42.334297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772923, 43.504124, 42.413471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128146, 0.222524, 0.966469,
		-0.360726, -0.918214, 0.163584,
		0.923827, -0.327668, 0.197936,
		34.050072, 43.405823, 42.472851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342949, 43.365891, 43.052864>,  <33.403393, 43.635189, 42.334297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342949, 43.365891, 43.052864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728325, 43.462788, 43.007065>,  <33.959549, 43.520927, 42.979584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728325, 43.462788, 43.007065>,  <33.342949, 43.365891, 43.052864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728325, 43.462788, 43.007065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017796, 0.368531, 0.929445,
		0.267345, -0.897499, 0.350745,
		0.963437, 0.242241, -0.114497,
		34.017357, 43.535461, 42.972717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689022, 42.921684, 43.547344>,  <33.342949, 43.365891, 43.052864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689022, 42.921684, 43.547344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944981, 43.215126, 43.455818>,  <34.098557, 43.391193, 43.400902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944981, 43.215126, 43.455818>,  <33.689022, 42.921684, 43.547344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944981, 43.215126, 43.455818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195017, 0.132979, 0.971743,
		0.743304, -0.666437, -0.057973,
		0.639896, 0.733606, -0.228811,
		34.136951, 43.435207, 43.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351093, 42.765827, 43.822784>,  <33.689022, 42.921684, 43.547344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351093, 42.765827, 43.822784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323448, 43.163273, 43.787125>,  <34.306862, 43.401741, 43.765728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323448, 43.163273, 43.787125>,  <34.351093, 42.765827, 43.822784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323448, 43.163273, 43.787125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245257, 0.103542, 0.963913,
		0.966991, 0.044756, -0.250848,
		-0.069115, 0.993618, -0.089148,
		34.302715, 43.461357, 43.760380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924454, 42.988949, 44.254906>,  <34.351093, 42.765827, 43.822784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924454, 42.988949, 44.254906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.692677, 43.309101, 44.193409>,  <34.553612, 43.501194, 44.156509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.692677, 43.309101, 44.193409>,  <34.924454, 42.988949, 44.254906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692677, 43.309101, 44.193409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195696, 0.319752, 0.927072,
		0.791169, 0.507100, -0.341910,
		-0.579444, 0.800380, -0.153741,
		34.518845, 43.549213, 44.147285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251122, 43.557617, 44.427731>,  <34.924454, 42.988949, 44.254906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251122, 43.557617, 44.427731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880779, 43.697247, 44.485603>,  <34.658573, 43.781025, 44.520329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880779, 43.697247, 44.485603>,  <35.251122, 43.557617, 44.427731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880779, 43.697247, 44.485603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223064, 0.195843, 0.954928,
		0.305008, 0.916401, -0.259189,
		-0.925858, 0.349077, 0.144682,
		34.603024, 43.801971, 44.529007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797634, 44.086033, 44.442261>,  <35.251122, 43.557617, 44.427731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797634, 44.086033, 44.442261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186104, 44.044323, 44.528000>,  <36.419186, 44.019299, 44.579445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186104, 44.044323, 44.528000>,  <35.797634, 44.086033, 44.442261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186104, 44.044323, 44.528000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162401, -0.368790, -0.915216,
		0.174485, 0.923645, -0.341225,
		0.971175, -0.104276, 0.214349,
		36.477455, 44.013039, 44.592304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212986, 44.313061, 43.821499>,  <35.797634, 44.086033, 44.442261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212986, 44.313061, 43.821499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474121, 44.088940, 44.025410>,  <36.630802, 43.954468, 44.147755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474121, 44.088940, 44.025410>,  <36.212986, 44.313061, 43.821499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474121, 44.088940, 44.025410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327209, -0.398362, -0.856879,
		0.683186, 0.726202, -0.076728,
		0.652833, -0.560301, 0.509776,
		36.669971, 43.920849, 44.178341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831573, 44.284996, 43.512928>,  <36.212986, 44.313061, 43.821499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831573, 44.284996, 43.512928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.870529, 43.970394, 43.756870>,  <36.893902, 43.781631, 43.903236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.870529, 43.970394, 43.756870>,  <36.831573, 44.284996, 43.512928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870529, 43.970394, 43.756870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374312, -0.538832, -0.754685,
		0.922175, 0.301771, 0.241926,
		0.097385, -0.786508, 0.609854,
		36.899746, 43.734444, 43.939827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547512, 44.147491, 43.511993>,  <36.831573, 44.284996, 43.512928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547512, 44.147491, 43.511993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.323833, 43.825577, 43.591610>,  <37.189625, 43.632427, 43.639381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.323833, 43.825577, 43.591610>,  <37.547512, 44.147491, 43.511993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323833, 43.825577, 43.591610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340640, -0.441935, -0.829854,
		0.755818, -0.396253, 0.521271,
		-0.559200, -0.804784, 0.199043,
		37.156075, 43.584141, 43.651321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951569, 43.669079, 43.348640>,  <37.547512, 44.147491, 43.511993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951569, 43.669079, 43.348640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.597095, 43.483929, 43.356903>,  <37.384411, 43.372837, 43.361862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.597095, 43.483929, 43.356903>,  <37.951569, 43.669079, 43.348640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597095, 43.483929, 43.356903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248475, -0.512396, -0.822016,
		0.391080, -0.723322, 0.569089,
		-0.886181, -0.462879, 0.020661,
		37.331242, 43.345066, 43.363102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175644, 42.967808, 43.133358>,  <37.951569, 43.669079, 43.348640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175644, 42.967808, 43.133358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783619, 43.003857, 43.062527>,  <37.548405, 43.025486, 43.020027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783619, 43.003857, 43.062527>,  <38.175644, 42.967808, 43.133358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783619, 43.003857, 43.062527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093219, -0.578504, -0.810336,
		-0.175468, -0.810686, 0.558569,
		-0.980062, 0.090118, -0.177081,
		37.489601, 43.030891, 43.009403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909584, 42.264458, 42.971123>,  <38.175644, 42.967808, 43.133358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909584, 42.264458, 42.971123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627697, 42.498508, 42.810623>,  <37.458565, 42.638939, 42.714321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627697, 42.498508, 42.810623>,  <37.909584, 42.264458, 42.971123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627697, 42.498508, 42.810623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131855, -0.447684, -0.884417,
		-0.697131, -0.676169, 0.238337,
		-0.704715, 0.585128, -0.401251,
		37.416283, 42.674046, 42.690247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383194, 41.880199, 42.544769>,  <37.909584, 42.264458, 42.971123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383194, 41.880199, 42.544769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.384392, 42.259480, 42.417702>,  <37.385109, 42.487045, 42.341461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.384392, 42.259480, 42.417702>,  <37.383194, 41.880199, 42.544769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384392, 42.259480, 42.417702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045326, -0.317477, -0.947182,
		-0.998968, -0.011566, -0.043927,
		0.002991, 0.948196, -0.317673,
		37.385288, 42.543938, 42.322399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974133, 41.984692, 41.938564>,  <37.383194, 41.880199, 42.544769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974133, 41.984692, 41.938564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.239033, 42.283913, 41.921398>,  <37.397972, 42.463448, 41.911098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.239033, 42.283913, 41.921398>,  <36.974133, 41.984692, 41.938564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239033, 42.283913, 41.921398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278762, -0.299139, -0.912583,
		-0.695500, 0.592393, -0.406633,
		0.662247, 0.748056, -0.042914,
		37.437706, 42.508327, 41.908524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797668, 42.398258, 41.346828>,  <36.974133, 41.984692, 41.938564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797668, 42.398258, 41.346828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182442, 42.440945, 41.447460>,  <37.413307, 42.466557, 41.507839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182442, 42.440945, 41.447460>,  <36.797668, 42.398258, 41.346828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182442, 42.440945, 41.447460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273169, -0.401258, -0.874283,
		0.007648, 0.909728, -0.415136,
		0.961936, 0.106715, 0.251578,
		37.471024, 42.472958, 41.522934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118935, 42.360912, 40.691269>,  <36.797668, 42.398258, 41.346828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118935, 42.360912, 40.691269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410023, 42.285831, 40.955147>,  <37.584675, 42.240784, 41.113472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410023, 42.285831, 40.955147>,  <37.118935, 42.360912, 40.691269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410023, 42.285831, 40.955147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573394, -0.361294, -0.735314,
		0.376362, 0.913365, -0.155294,
		0.727717, -0.187699, 0.659695,
		37.628338, 42.229523, 41.153057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813175, 42.549461, 40.341187>,  <37.118935, 42.360912, 40.691269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813175, 42.549461, 40.341187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883236, 42.287518, 40.635258>,  <37.925274, 42.130352, 40.811699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883236, 42.287518, 40.635258>,  <37.813175, 42.549461, 40.341187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883236, 42.287518, 40.635258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497884, -0.585285, -0.639964,
		0.849372, 0.478122, 0.223530,
		0.175152, -0.654859, 0.735174,
		37.935783, 42.091061, 40.855808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463676, 42.551941, 40.385651>,  <37.813175, 42.549461, 40.341187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463676, 42.551941, 40.385651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288223, 42.213120, 40.505714>,  <38.182953, 42.009827, 40.577755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288223, 42.213120, 40.505714>,  <38.463676, 42.551941, 40.385651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288223, 42.213120, 40.505714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540107, -0.515435, -0.665291,
		0.718253, -0.129698, 0.683587,
		-0.438631, -0.847057, 0.300162,
		38.156635, 41.959003, 40.595764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970970, 42.085293, 40.271076>,  <38.463676, 42.551941, 40.385651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970970, 42.085293, 40.271076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662739, 41.833153, 40.308743>,  <38.477798, 41.681870, 40.331341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662739, 41.833153, 40.308743>,  <38.970970, 42.085293, 40.271076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662739, 41.833153, 40.308743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491624, -0.681902, -0.541585,
		0.405597, -0.371042, 0.835355,
		-0.770582, -0.630347, 0.094164,
		38.431564, 41.644051, 40.336990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.192307, 30.199587, 36.565033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.142101, 30.018221, 36.917999>,  <32.111977, 29.909401, 37.129780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.142101, 30.018221, 36.917999>,  <32.192307, 30.199587, 36.565033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142101, 30.018221, 36.917999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991983, 0.070522, -0.104860,
		-0.014685, -0.888506, -0.458630,
		-0.125512, -0.453413, 0.882419,
		32.104446, 29.882196, 37.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764931, 29.644798, 36.425453>,  <32.192307, 30.199587, 36.565033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764931, 29.644798, 36.425453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713722, 29.712830, 36.816284>,  <31.682997, 29.753649, 37.050781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713722, 29.712830, 36.816284>,  <31.764931, 29.644798, 36.425453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713722, 29.712830, 36.816284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987206, -0.116277, -0.109109,
		0.095056, -0.978547, 0.182785,
		-0.128022, 0.170075, 0.977080,
		31.675316, 29.763853, 37.109409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352062, 29.138861, 36.584824>,  <31.764931, 29.644798, 36.425453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352062, 29.138861, 36.584824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.323896, 29.429140, 36.858585>,  <31.306997, 29.603308, 37.022842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.323896, 29.429140, 36.858585>,  <31.352062, 29.138861, 36.584824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323896, 29.429140, 36.858585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994495, 0.002304, -0.104761,
		-0.077602, -0.688009, 0.721541,
		-0.070414, 0.725699, 0.684400,
		31.302773, 29.646851, 37.063904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673002, 29.071262, 36.857185>,  <31.352062, 29.138861, 36.584824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673002, 29.071262, 36.857185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.767067, 29.436090, 36.991543>,  <30.823505, 29.654987, 37.072159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.767067, 29.436090, 36.991543>,  <30.673002, 29.071262, 36.857185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767067, 29.436090, 36.991543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967747, 0.251845, -0.006321,
		-0.090360, -0.323578, 0.941877,
		0.235162, 0.912070, 0.335899,
		30.837616, 29.709711, 37.092312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040735, 29.326513, 37.263466>,  <30.673002, 29.071262, 36.857185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040735, 29.326513, 37.263466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228403, 29.672716, 37.193287>,  <30.341003, 29.880438, 37.151180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228403, 29.672716, 37.193287>,  <30.040735, 29.326513, 37.263466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228403, 29.672716, 37.193287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881250, 0.471731, -0.029468,
		0.057258, 0.168436, 0.984048,
		0.469170, 0.865505, -0.175444,
		30.369154, 29.932367, 37.140656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796419, 29.927347, 37.720158>,  <30.040735, 29.326513, 37.263466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796419, 29.927347, 37.720158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944916, 30.088362, 37.385460>,  <30.034014, 30.184971, 37.184639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944916, 30.088362, 37.385460>,  <29.796419, 29.927347, 37.720158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944916, 30.088362, 37.385460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836768, 0.535652, -0.113565,
		0.402491, 0.742322, 0.535686,
		0.371243, 0.402536, -0.836746,
		30.056288, 30.209122, 37.134438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491514, 30.507879, 37.794579>,  <29.796419, 29.927347, 37.720158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491514, 30.507879, 37.794579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640919, 30.543619, 37.425255>,  <29.730560, 30.565063, 37.203659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640919, 30.543619, 37.425255>,  <29.491514, 30.507879, 37.794579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640919, 30.543619, 37.425255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739178, 0.630038, -0.238051,
		0.560452, 0.771407, 0.301371,
		0.373509, 0.089350, -0.923313,
		29.752972, 30.570425, 37.148262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544668, 31.171852, 37.690247>,  <29.491514, 30.507879, 37.794579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544668, 31.171852, 37.690247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542027, 31.012049, 37.323563>,  <29.540442, 30.916166, 37.103554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542027, 31.012049, 37.323563>,  <29.544668, 31.171852, 37.690247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542027, 31.012049, 37.323563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732148, 0.626340, -0.267690,
		0.681114, 0.669397, -0.296634,
		-0.006603, -0.399507, -0.916707,
		29.540045, 30.892197, 37.048550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697584, 31.660702, 37.139332>,  <29.544668, 31.171852, 37.690247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697584, 31.660702, 37.139332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476130, 31.383518, 36.954594>,  <29.343256, 31.217209, 36.843750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476130, 31.383518, 36.954594>,  <29.697584, 31.660702, 37.139332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476130, 31.383518, 36.954594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600571, 0.716434, -0.355015,
		0.576889, 0.080820, -0.812814,
		-0.553636, -0.692957, -0.461842,
		29.310040, 31.175631, 36.816040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489283, 32.016144, 36.673695>,  <29.697584, 31.660702, 37.139332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489283, 32.016144, 36.673695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268089, 31.689463, 36.607719>,  <29.135374, 31.493454, 36.568134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268089, 31.689463, 36.607719>,  <29.489283, 32.016144, 36.673695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268089, 31.689463, 36.607719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687361, 0.559048, -0.463680,
		0.470895, -0.143038, -0.870516,
		-0.552984, -0.816703, -0.164934,
		29.102194, 31.444452, 36.558239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305822, 32.027668, 35.979931>,  <29.489283, 32.016144, 36.673695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305822, 32.027668, 35.979931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035877, 31.804890, 36.173580>,  <28.873911, 31.671225, 36.289772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035877, 31.804890, 36.173580>,  <29.305822, 32.027668, 35.979931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035877, 31.804890, 36.173580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735269, 0.563303, -0.376922,
		-0.062786, -0.610333, -0.789653,
		-0.674862, -0.556942, 0.484126,
		28.833418, 31.637808, 36.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776478, 31.840576, 35.466648>,  <29.305822, 32.027668, 35.979931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776478, 31.840576, 35.466648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611408, 31.780746, 35.826054>,  <28.512367, 31.744848, 36.041698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611408, 31.780746, 35.826054>,  <28.776478, 31.840576, 35.466648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611408, 31.780746, 35.826054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743352, 0.625392, -0.237301,
		-0.526430, -0.765840, -0.369270,
		-0.412673, -0.149575, 0.898515,
		28.487606, 31.735874, 36.095608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077658, 31.815737, 35.267311>,  <28.776478, 31.840576, 35.466648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077658, 31.815737, 35.267311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126780, 31.899971, 35.655243>,  <28.156254, 31.950512, 35.888000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126780, 31.899971, 35.655243>,  <28.077658, 31.815737, 35.267311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126780, 31.899971, 35.655243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624030, 0.776254, -0.089535,
		-0.771690, -0.594208, 0.226741,
		0.122806, 0.210587, 0.969831,
		28.163622, 31.963146, 35.946194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417604, 32.021576, 35.573074>,  <28.077658, 31.815737, 35.267311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417604, 32.021576, 35.573074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650057, 32.170307, 35.862637>,  <27.789528, 32.259544, 36.036373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650057, 32.170307, 35.862637>,  <27.417604, 32.021576, 35.573074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650057, 32.170307, 35.862637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618542, 0.779868, 0.095975,
		-0.528862, -0.503538, 0.683195,
		0.581129, 0.371827, 0.723902,
		27.824396, 32.281857, 36.079807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951889, 32.351044, 36.097183>,  <27.417604, 32.021576, 35.573074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951889, 32.351044, 36.097183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315874, 32.507141, 36.153290>,  <27.534266, 32.600800, 36.186954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315874, 32.507141, 36.153290>,  <26.951889, 32.351044, 36.097183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315874, 32.507141, 36.153290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397029, 0.917518, 0.022998,
		-0.119722, -0.076617, 0.989847,
		0.909964, 0.390244, 0.140266,
		27.588863, 32.624214, 36.195370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844749, 32.886494, 36.459553>,  <26.951889, 32.351044, 36.097183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844749, 32.886494, 36.459553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211462, 32.981392, 36.331039>,  <27.431490, 33.038330, 36.253929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211462, 32.981392, 36.331039>,  <26.844749, 32.886494, 36.459553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211462, 32.981392, 36.331039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295387, 0.944209, -0.145658,
		0.268805, 0.228441, 0.935713,
		0.916783, 0.237244, -0.321286,
		27.486496, 33.052567, 36.234653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160313, 33.265629, 36.929573>,  <26.844749, 32.886494, 36.459553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160313, 33.265629, 36.929573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332693, 33.363842, 36.582241>,  <27.436121, 33.422768, 36.373840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332693, 33.363842, 36.582241>,  <27.160313, 33.265629, 36.929573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332693, 33.363842, 36.582241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235983, 0.959449, 0.154176,
		0.870973, 0.138469, 0.471415,
		0.430950, 0.245529, -0.868330,
		27.461979, 33.437500, 36.321743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545208, 33.768429, 37.093521>,  <27.160313, 33.265629, 36.929573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545208, 33.768429, 37.093521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540880, 33.822441, 36.697208>,  <27.538284, 33.854847, 36.459419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540880, 33.822441, 36.697208>,  <27.545208, 33.768429, 37.093521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540880, 33.822441, 36.697208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046121, 0.989853, 0.134401,
		0.998877, -0.044242, -0.016935,
		-0.010817, 0.135031, -0.990782,
		27.537636, 33.862949, 36.399975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991961, 34.252628, 37.039970>,  <27.545208, 33.768429, 37.093521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991961, 34.252628, 37.039970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.785339, 34.253658, 36.697468>,  <27.661367, 34.254276, 36.491966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.785339, 34.253658, 36.697468>,  <27.991961, 34.252628, 37.039970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785339, 34.253658, 36.697468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238554, 0.959971, 0.146794,
		0.822355, 0.280089, -0.495260,
		-0.516551, 0.002571, -0.856253,
		27.630375, 34.254429, 36.440594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127853, 34.785526, 36.415382>,  <27.991961, 34.252628, 37.039970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127853, 34.785526, 36.415382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.737919, 34.696484, 36.410652>,  <27.503958, 34.643059, 36.407814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.737919, 34.696484, 36.410652>,  <28.127853, 34.785526, 36.415382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737919, 34.696484, 36.410652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222826, 0.971468, 0.081236,
		-0.006597, 0.081827, -0.996625,
		-0.974836, -0.222610, -0.011824,
		27.445469, 34.629700, 36.407104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743446, 35.084888, 35.887928>,  <28.127853, 34.785526, 36.415382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743446, 35.084888, 35.887928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891428, 35.188957, 36.244678>,  <27.980217, 35.251400, 36.458729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891428, 35.188957, 36.244678>,  <27.743446, 35.084888, 35.887928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891428, 35.188957, 36.244678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914767, 0.065671, -0.398608,
		-0.162276, 0.963327, -0.213700,
		0.369955, 0.260171, 0.891877,
		28.002415, 35.267010, 36.512241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277344, 35.563282, 35.687740>,  <27.743446, 35.084888, 35.887928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277344, 35.563282, 35.687740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355850, 35.444374, 36.061501>,  <28.402954, 35.373032, 36.285759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355850, 35.444374, 36.061501>,  <28.277344, 35.563282, 35.687740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355850, 35.444374, 36.061501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977021, -0.021504, -0.212057,
		0.083131, 0.954552, 0.286215,
		0.196265, -0.297266, 0.934405,
		28.414730, 35.355194, 36.341824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914572, 35.936138, 35.952045>,  <28.277344, 35.563282, 35.687740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914572, 35.936138, 35.952045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890312, 35.578045, 36.128628>,  <28.875757, 35.363190, 36.234577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890312, 35.578045, 36.128628>,  <28.914572, 35.936138, 35.952045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890312, 35.578045, 36.128628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978629, -0.140390, -0.150252,
		0.196487, 0.422906, 0.884615,
		-0.060649, -0.895232, 0.441453,
		28.872118, 35.309475, 36.261063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552540, 35.928677, 36.325310>,  <28.914572, 35.936138, 35.952045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552540, 35.928677, 36.325310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445368, 35.543404, 36.316425>,  <29.381063, 35.312241, 36.311096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445368, 35.543404, 36.316425>,  <29.552540, 35.928677, 36.325310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445368, 35.543404, 36.316425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961742, -0.266021, -0.065465,
		0.057146, -0.038901, 0.997608,
		-0.267931, -0.963182, -0.022211,
		29.364988, 35.254448, 36.309761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051220, 35.616638, 36.710026>,  <29.552540, 35.928677, 36.325310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051220, 35.616638, 36.710026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904408, 35.319469, 36.486111>,  <29.816320, 35.141171, 36.351761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904408, 35.319469, 36.486111>,  <30.051220, 35.616638, 36.710026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904408, 35.319469, 36.486111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923981, -0.360686, -0.127140,
		-0.107452, -0.563896, 0.818825,
		-0.367033, -0.742917, -0.559786,
		29.794298, 35.096596, 36.318176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069603, 34.925255, 37.058208>,  <30.051220, 35.616638, 36.710026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069603, 34.925255, 37.058208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060623, 34.870171, 36.662121>,  <30.055235, 34.837120, 36.424469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060623, 34.870171, 36.662121>,  <30.069603, 34.925255, 37.058208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060623, 34.870171, 36.662121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893669, -0.446769, 0.041870,
		-0.448165, -0.883988, 0.133094,
		-0.022449, -0.137707, -0.990219,
		30.053888, 34.828857, 36.365055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584642, 34.360901, 36.978149>,  <30.069603, 34.925255, 37.058208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584642, 34.360901, 36.978149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528278, 34.441570, 36.590443>,  <30.494459, 34.489971, 36.357819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528278, 34.441570, 36.590443>,  <30.584642, 34.360901, 36.978149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528278, 34.441570, 36.590443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893748, -0.395221, -0.212165,
		-0.425862, -0.896174, -0.124555,
		-0.140910, 0.201674, -0.969263,
		30.486006, 34.502071, 36.299664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475657, 33.771645, 36.592773>,  <30.584642, 34.360901, 36.978149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475657, 33.771645, 36.592773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616255, 34.034435, 36.325989>,  <30.700615, 34.192108, 36.165916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616255, 34.034435, 36.325989>,  <30.475657, 33.771645, 36.592773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616255, 34.034435, 36.325989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841595, -0.533805, -0.082279,
		-0.410082, -0.532390, -0.740536,
		0.351497, 0.656973, -0.666961,
		30.721704, 34.231525, 36.125900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852053, 33.422379, 36.072437>,  <30.475657, 33.771645, 36.592773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852053, 33.422379, 36.072437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990217, 33.787617, 35.985775>,  <31.073116, 34.006760, 35.933777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990217, 33.787617, 35.985775>,  <30.852053, 33.422379, 36.072437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990217, 33.787617, 35.985775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870641, -0.397960, -0.289158,
		-0.350249, -0.088749, -0.932442,
		0.345412, 0.913100, -0.216654,
		31.093842, 34.061546, 35.920780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187681, 33.350548, 35.387146>,  <30.852053, 33.422379, 36.072437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187681, 33.350548, 35.387146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.346462, 33.671062, 35.566196>,  <31.441730, 33.863373, 35.673626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.346462, 33.671062, 35.566196>,  <31.187681, 33.350548, 35.387146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346462, 33.671062, 35.566196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917811, -0.350354, -0.186749,
		0.007186, 0.484963, -0.874505,
		0.396953, 0.801288, 0.447622,
		31.465548, 33.911449, 35.700481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726725, 33.425968, 34.965939>,  <31.187681, 33.350548, 35.387146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726725, 33.425968, 34.965939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.799788, 33.657825, 35.283592>,  <31.843626, 33.796940, 35.474186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.799788, 33.657825, 35.283592>,  <31.726725, 33.425968, 34.965939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799788, 33.657825, 35.283592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976821, -0.198687, -0.079655,
		0.111613, 0.790280, -0.602495,
		0.182657, 0.579639, 0.794138,
		31.854584, 33.831718, 35.521835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280735, 33.771645, 34.710041>,  <31.726725, 33.425968, 34.965939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280735, 33.771645, 34.710041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.262016, 33.753407, 35.109188>,  <32.250786, 33.742462, 35.348675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.262016, 33.753407, 35.109188>,  <32.280735, 33.771645, 34.710041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262016, 33.753407, 35.109188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918448, -0.394748, 0.025036,
		0.392763, 0.917657, 0.060354,
		-0.046799, -0.045599, 0.997863,
		32.247978, 33.739727, 35.408546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920422, 33.898888, 34.992641>,  <32.280735, 33.771645, 34.710041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920422, 33.898888, 34.992641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777023, 33.723148, 35.322113>,  <32.690983, 33.617702, 35.519798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777023, 33.723148, 35.322113>,  <32.920422, 33.898888, 34.992641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777023, 33.723148, 35.322113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875245, -0.465072, 0.132871,
		0.324694, 0.768557, 0.551266,
		-0.358498, -0.439350, 0.823681,
		32.669476, 33.591343, 35.569218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452057, 33.883682, 35.366787>,  <32.920422, 33.898888, 34.992641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452057, 33.883682, 35.366787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.205444, 33.618603, 35.536831>,  <33.057476, 33.459553, 35.638855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.205444, 33.618603, 35.536831>,  <33.452057, 33.883682, 35.366787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205444, 33.618603, 35.536831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751597, -0.656204, 0.067073,
		0.234508, 0.360863, 0.902654,
		-0.616529, -0.662703, 0.425108,
		33.020485, 33.419792, 35.664364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898838, 33.603008, 35.836544>,  <33.452057, 33.883682, 35.366787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898838, 33.603008, 35.836544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.593548, 33.348537, 35.791344>,  <33.410374, 33.195854, 35.764225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.593548, 33.348537, 35.791344>,  <33.898838, 33.603008, 35.836544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593548, 33.348537, 35.791344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629861, -0.771541, 0.089444,
		-0.144083, -0.002906, 0.989561,
		-0.763227, -0.636173, -0.112996,
		33.364578, 33.157684, 35.757446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075272, 33.120377, 36.398354>,  <33.898838, 33.603008, 35.836544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075272, 33.120377, 36.398354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812813, 32.943550, 36.153713>,  <33.655338, 32.837456, 36.006927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812813, 32.943550, 36.153713>,  <34.075272, 33.120377, 36.398354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812813, 32.943550, 36.153713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389871, -0.892496, 0.226828,
		-0.646123, -0.089612, 0.757955,
		-0.656145, -0.442063, -0.611599,
		33.615971, 32.810932, 35.970234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835144, 32.513317, 36.720730>,  <34.075272, 33.120377, 36.398354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835144, 32.513317, 36.720730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.789780, 32.445244, 36.329185>,  <33.762562, 32.404400, 36.094257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.789780, 32.445244, 36.329185>,  <33.835144, 32.513317, 36.720730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789780, 32.445244, 36.329185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498282, -0.862104, 0.092150,
		-0.859566, -0.477300, 0.182568,
		-0.113410, -0.170179, -0.978865,
		33.755756, 32.394192, 36.035526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750057, 31.817862, 36.608135>,  <33.835144, 32.513317, 36.720730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750057, 31.817862, 36.608135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.849773, 31.934793, 36.238834>,  <33.909603, 32.004951, 36.017254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.849773, 31.934793, 36.238834>,  <33.750057, 31.817862, 36.608135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849773, 31.934793, 36.238834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592901, -0.799867, -0.093172,
		-0.765716, -0.524171, -0.372724,
		0.249292, 0.292332, -0.923253,
		33.924561, 32.022491, 35.961857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757099, 31.230936, 36.237900>,  <33.750057, 31.817862, 36.608135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757099, 31.230936, 36.237900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975689, 31.486168, 36.020931>,  <34.106842, 31.639307, 35.890751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975689, 31.486168, 36.020931>,  <33.757099, 31.230936, 36.237900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975689, 31.486168, 36.020931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717744, -0.690564, -0.089241,
		-0.431519, -0.340551, -0.835354,
		0.546474, 0.638080, -0.542421,
		34.139629, 31.677591, 35.858204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998432, 30.921389, 35.776470>,  <33.757099, 31.230936, 36.237900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998432, 30.921389, 35.776470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256847, 31.224691, 35.741421>,  <34.411896, 31.406673, 35.720390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256847, 31.224691, 35.741421>,  <33.998432, 30.921389, 35.776470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256847, 31.224691, 35.741421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742471, -0.650890, -0.158364,
		-0.177113, 0.037254, -0.983485,
		0.646040, 0.758258, -0.087621,
		34.450661, 31.452169, 35.715134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550983, 30.677380, 35.322380>,  <33.998432, 30.921389, 35.776470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550983, 30.677380, 35.322380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737541, 30.995598, 35.477085>,  <34.849476, 31.186529, 35.569908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737541, 30.995598, 35.477085>,  <34.550983, 30.677380, 35.322380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737541, 30.995598, 35.477085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865597, -0.500539, -0.014242,
		0.182260, 0.341423, -0.922069,
		0.466394, 0.795544, 0.386763,
		34.877460, 31.234261, 35.593113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121471, 30.806669, 34.867321>,  <34.550983, 30.677380, 35.322380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121471, 30.806669, 34.867321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.199238, 30.945240, 35.234406>,  <35.245899, 31.028383, 35.454655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.199238, 30.945240, 35.234406>,  <35.121471, 30.806669, 34.867321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199238, 30.945240, 35.234406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856761, -0.515547, 0.013109,
		0.477664, 0.783709, -0.397036,
		0.194417, 0.346427, 0.917709,
		35.257565, 31.049168, 35.509720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.607231, 40.310005, 47.276318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230091, 40.177273, 47.264198>,  <38.003807, 40.097633, 47.256927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230091, 40.177273, 47.264198>,  <38.607231, 40.310005, 47.276318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230091, 40.177273, 47.264198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254900, 0.659697, 0.706983,
		-0.214611, 0.674304, -0.706581,
		-0.942851, -0.331834, -0.030302,
		37.947235, 40.077724, 47.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198807, 40.852058, 47.229488>,  <38.607231, 40.310005, 47.276318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198807, 40.852058, 47.229488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943584, 40.588116, 47.388218>,  <37.790451, 40.429749, 47.483456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943584, 40.588116, 47.388218>,  <38.198807, 40.852058, 47.229488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943584, 40.588116, 47.388218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339034, 0.703480, 0.624637,
		-0.691331, 0.264017, -0.672575,
		-0.638058, -0.659857, 0.396826,
		37.752167, 40.390160, 47.507267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525063, 41.198769, 47.255898>,  <38.198807, 40.852058, 47.229488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525063, 41.198769, 47.255898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520588, 40.890625, 47.510902>,  <37.517902, 40.705738, 47.663906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520588, 40.890625, 47.510902>,  <37.525063, 41.198769, 47.255898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520588, 40.890625, 47.510902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405682, 0.586224, 0.701259,
		-0.913946, -0.250780, -0.319080,
		-0.011191, -0.770358, 0.637514,
		37.517231, 40.659519, 47.702156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878380, 41.268982, 47.558708>,  <37.525063, 41.198769, 47.255898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878380, 41.268982, 47.558708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108604, 41.044193, 47.796337>,  <37.246738, 40.909321, 47.938911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108604, 41.044193, 47.796337>,  <36.878380, 41.268982, 47.558708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108604, 41.044193, 47.796337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330675, 0.504476, 0.797595,
		-0.747918, -0.655510, 0.104528,
		0.575563, -0.561970, 0.594067,
		37.281273, 40.875603, 47.974556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404991, 41.003036, 47.981895>,  <36.878380, 41.268982, 47.558708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404991, 41.003036, 47.981895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763248, 40.979847, 48.158287>,  <36.978203, 40.965931, 48.264122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763248, 40.979847, 48.158287>,  <36.404991, 41.003036, 47.981895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763248, 40.979847, 48.158287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384741, 0.396439, 0.833553,
		-0.223147, -0.916229, 0.332763,
		0.895645, -0.057977, 0.440975,
		37.031940, 40.962456, 48.290581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315941, 40.641415, 48.646824>,  <36.404991, 41.003036, 47.981895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315941, 40.641415, 48.646824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667225, 40.829109, 48.683849>,  <36.877995, 40.941727, 48.706066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667225, 40.829109, 48.683849>,  <36.315941, 40.641415, 48.646824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667225, 40.829109, 48.683849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241737, 0.268488, 0.932458,
		0.412691, -0.841268, 0.349220,
		0.878208, 0.469236, 0.092563,
		36.930687, 40.969879, 48.711617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611378, 40.450695, 49.361443>,  <36.315941, 40.641415, 48.646824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611378, 40.450695, 49.361443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794189, 40.789089, 49.251583>,  <36.903877, 40.992126, 49.185665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794189, 40.789089, 49.251583>,  <36.611378, 40.450695, 49.361443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794189, 40.789089, 49.251583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305448, 0.439288, 0.844824,
		0.835360, -0.302216, 0.459172,
		0.457028, 0.845985, -0.274652,
		36.931297, 41.042885, 49.169186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925083, 40.718826, 49.961597>,  <36.611378, 40.450695, 49.361443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925083, 40.718826, 49.961597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906765, 41.046505, 49.732925>,  <36.895775, 41.243114, 49.595722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906765, 41.046505, 49.732925>,  <36.925083, 40.718826, 49.961597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906765, 41.046505, 49.732925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288887, 0.536964, 0.792600,
		0.956267, 0.201449, 0.212064,
		-0.045797, 0.819200, -0.571677,
		36.893024, 41.292263, 49.561424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317551, 41.173561, 50.289951>,  <36.925083, 40.718826, 49.961597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317551, 41.173561, 50.289951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072300, 41.389824, 50.059555>,  <36.925152, 41.519581, 49.921318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072300, 41.389824, 50.059555>,  <37.317551, 41.173561, 50.289951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072300, 41.389824, 50.059555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263490, 0.547409, 0.794302,
		0.744749, 0.638775, -0.193172,
		-0.613125, 0.540656, -0.575993,
		36.888363, 41.552021, 49.886757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365780, 41.665188, 50.641945>,  <37.317551, 41.173561, 50.289951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365780, 41.665188, 50.641945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078171, 41.757370, 50.379677>,  <36.905605, 41.812679, 50.222317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078171, 41.757370, 50.379677>,  <37.365780, 41.665188, 50.641945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078171, 41.757370, 50.379677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320753, 0.726896, 0.607240,
		0.616543, 0.646925, -0.448734,
		-0.719022, 0.230457, -0.655666,
		36.862465, 41.826508, 50.182976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493839, 42.351051, 50.478825>,  <37.365780, 41.665188, 50.641945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493839, 42.351051, 50.478825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109982, 42.246559, 50.437180>,  <36.879665, 42.183865, 50.412193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109982, 42.246559, 50.437180>,  <37.493839, 42.351051, 50.478825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109982, 42.246559, 50.437180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277017, 0.814426, 0.509874,
		-0.048400, 0.518140, -0.853925,
		-0.959645, -0.261230, -0.104116,
		36.822086, 42.168190, 50.405945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216999, 43.004440, 50.540627>,  <37.493839, 42.351051, 50.478825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216999, 43.004440, 50.540627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882847, 42.789906, 50.588772>,  <36.682358, 42.661186, 50.617657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882847, 42.789906, 50.588772>,  <37.216999, 43.004440, 50.540627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882847, 42.789906, 50.588772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391016, 0.733725, 0.555656,
		-0.386331, 0.417120, -0.822654,
		-0.835377, -0.536338, 0.120360,
		36.632233, 42.629005, 50.624882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512867, 43.398880, 50.257309>,  <37.216999, 43.004440, 50.540627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512867, 43.398880, 50.257309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472744, 43.167778, 50.581318>,  <36.448669, 43.029118, 50.775723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472744, 43.167778, 50.581318>,  <36.512867, 43.398880, 50.257309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472744, 43.167778, 50.581318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185755, 0.810689, 0.555228,
		-0.977462, -0.094770, -0.188643,
		-0.100312, -0.577755, 0.810022,
		36.442650, 42.994450, 50.824326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952267, 43.720505, 50.539780>,  <36.512867, 43.398880, 50.257309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952267, 43.720505, 50.539780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155689, 43.510284, 50.812592>,  <36.277740, 43.384151, 50.976280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155689, 43.510284, 50.812592>,  <35.952267, 43.720505, 50.539780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155689, 43.510284, 50.812592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021822, 0.783991, 0.620389,
		-0.860753, -0.330385, 0.387233,
		0.508554, -0.525552, 0.682032,
		36.308254, 43.352619, 51.017200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169334, 44.344307, 50.278709>,  <35.952267, 43.720505, 50.539780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169334, 44.344307, 50.278709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094322, 44.727100, 50.190155>,  <36.049316, 44.956776, 50.137024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094322, 44.727100, 50.190155>,  <36.169334, 44.344307, 50.278709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094322, 44.727100, 50.190155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012748, -0.222990, -0.974737,
		-0.982177, -0.185611, 0.029616,
		-0.187526, 0.956987, -0.221382,
		36.038063, 45.014198, 50.123741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716183, 44.344532, 49.682091>,  <36.169334, 44.344307, 50.278709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716183, 44.344532, 49.682091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898991, 44.700314, 49.682697>,  <36.008675, 44.913784, 49.683060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898991, 44.700314, 49.682697>,  <35.716183, 44.344532, 49.682091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898991, 44.700314, 49.682697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070100, -0.034320, -0.996949,
		-0.886692, 0.455728, -0.078035,
		0.457016, 0.889457, 0.001515,
		36.036095, 44.967152, 49.683151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687286, 44.480881, 48.991093>,  <35.716183, 44.344532, 49.682091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687286, 44.480881, 48.991093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917465, 44.792133, 49.091778>,  <36.055573, 44.978886, 49.152191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917465, 44.792133, 49.091778>,  <35.687286, 44.480881, 48.991093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917465, 44.792133, 49.091778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366150, 0.030085, -0.930069,
		-0.731293, 0.627376, -0.267602,
		0.575452, 0.778135, 0.251715,
		36.090099, 45.025574, 49.167294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569489, 45.024242, 48.534386>,  <35.687286, 44.480881, 48.991093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569489, 45.024242, 48.534386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931145, 45.082687, 48.694977>,  <36.148140, 45.117752, 48.791332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931145, 45.082687, 48.694977>,  <35.569489, 45.024242, 48.534386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931145, 45.082687, 48.694977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398491, 0.050462, -0.915783,
		-0.154062, 0.987981, -0.012598,
		0.904140, 0.146108, 0.401476,
		36.202385, 45.126518, 48.815418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791161, 45.484077, 48.150841>,  <35.569489, 45.024242, 48.534386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791161, 45.484077, 48.150841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137550, 45.365982, 48.312294>,  <36.345387, 45.295124, 48.409164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137550, 45.365982, 48.312294>,  <35.791161, 45.484077, 48.150841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137550, 45.365982, 48.312294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431224, 0.032134, -0.901672,
		0.253241, 0.954882, 0.155143,
		0.865976, -0.295242, 0.403631,
		36.397343, 45.277409, 48.433384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290840, 46.068207, 47.954639>,  <35.791161, 45.484077, 48.150841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290840, 46.068207, 47.954639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432667, 45.696159, 47.992935>,  <36.517761, 45.472931, 48.015911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432667, 45.696159, 47.992935>,  <36.290840, 46.068207, 47.954639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432667, 45.696159, 47.992935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420728, 0.067260, -0.904690,
		0.835029, 0.361050, 0.415174,
		0.354563, -0.930118, 0.095740,
		36.539036, 45.417126, 48.021656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793949, 46.037289, 47.412067>,  <36.290840, 46.068207, 47.954639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793949, 46.037289, 47.412067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804871, 45.654079, 47.526226>,  <36.811424, 45.424156, 47.594723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804871, 45.654079, 47.526226>,  <36.793949, 46.037289, 47.412067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804871, 45.654079, 47.526226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346908, -0.258680, -0.901521,
		0.937502, 0.123619, 0.325282,
		0.027301, -0.958020, 0.285398,
		36.813061, 45.366673, 47.611847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458717, 45.709667, 47.243908>,  <36.793949, 46.037289, 47.412067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458717, 45.709667, 47.243908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166759, 45.437801, 47.273033>,  <36.991585, 45.274681, 47.290508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166759, 45.437801, 47.273033>,  <37.458717, 45.709667, 47.243908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166759, 45.437801, 47.273033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247849, -0.362424, -0.898454,
		0.637038, -0.637734, 0.432988,
		-0.729899, -0.679665, 0.072816,
		36.947788, 45.233902, 47.294876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761593, 45.131508, 46.984154>,  <37.458717, 45.709667, 47.243908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761593, 45.131508, 46.984154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369282, 45.054028, 46.974724>,  <37.133896, 45.007538, 46.969067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369282, 45.054028, 46.974724>,  <37.761593, 45.131508, 46.984154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369282, 45.054028, 46.974724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083863, -0.309353, -0.947242,
		0.176188, -0.931011, 0.319651,
		-0.980778, -0.193700, -0.023573,
		37.075050, 44.995918, 46.967651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745140, 44.386909, 46.816029>,  <37.761593, 45.131508, 46.984154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745140, 44.386909, 46.816029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394505, 44.546749, 46.708755>,  <37.184124, 44.642651, 46.644394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394505, 44.546749, 46.708755>,  <37.745140, 44.386909, 46.816029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394505, 44.546749, 46.708755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222229, -0.158179, -0.962078,
		-0.426863, -0.902941, 0.049855,
		-0.876585, 0.399596, -0.268180,
		37.131531, 44.666630, 46.628300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556595, 43.950737, 46.411808>,  <37.745140, 44.386909, 46.816029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556595, 43.950737, 46.411808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298183, 44.242447, 46.321651>,  <37.143135, 44.417473, 46.267559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298183, 44.242447, 46.321651>,  <37.556595, 43.950737, 46.411808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298183, 44.242447, 46.321651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164427, -0.421304, -0.891889,
		-0.745392, -0.539127, 0.392088,
		-0.646030, 0.729277, -0.225389,
		37.104374, 44.461231, 46.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018921, 43.660526, 46.223167>,  <37.556595, 43.950737, 46.411808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018921, 43.660526, 46.223167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965595, 44.017746, 46.051270>,  <36.933601, 44.232079, 45.948132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965595, 44.017746, 46.051270>,  <37.018921, 43.660526, 46.223167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965595, 44.017746, 46.051270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167384, -0.447677, -0.878389,
		-0.976837, -0.045168, 0.209165,
		-0.133313, 0.893054, -0.429747,
		36.925602, 44.285664, 45.922344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386726, 43.555542, 45.782295>,  <37.018921, 43.660526, 46.223167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386726, 43.555542, 45.782295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578945, 43.873497, 45.634117>,  <36.694275, 44.064270, 45.545208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578945, 43.873497, 45.634117>,  <36.386726, 43.555542, 45.782295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578945, 43.873497, 45.634117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009082, -0.417884, -0.908455,
		-0.876924, 0.439916, -0.193592,
		0.480543, 0.794888, -0.370448,
		36.723106, 44.111965, 45.522984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911438, 43.844685, 45.278378>,  <36.386726, 43.555542, 45.782295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911438, 43.844685, 45.278378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289043, 43.942654, 45.189972>,  <36.515606, 44.001434, 45.136929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289043, 43.942654, 45.189972>,  <35.911438, 43.844685, 45.278378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289043, 43.942654, 45.189972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062062, -0.526131, -0.848136,
		-0.324011, 0.814370, -0.481476,
		0.944016, 0.244924, -0.221014,
		36.572247, 44.016132, 45.123669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254387, 44.135647, 45.015251>,  <35.911438, 43.844685, 45.278378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254387, 44.135647, 45.015251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863216, 44.052155, 45.011375>,  <34.628513, 44.002060, 45.009052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863216, 44.052155, 45.011375>,  <35.254387, 44.135647, 45.015251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863216, 44.052155, 45.011375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080669, 0.334358, 0.938987,
		-0.192760, 0.919040, -0.343815,
		-0.977924, -0.208735, -0.009687,
		34.569839, 43.989532, 45.008469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900543, 44.713161, 45.239830>,  <35.254387, 44.135647, 45.015251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900543, 44.713161, 45.239830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644402, 44.410210, 45.290943>,  <34.490715, 44.228439, 45.321609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644402, 44.410210, 45.290943>,  <34.900543, 44.713161, 45.239830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644402, 44.410210, 45.290943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129689, 0.270590, 0.953919,
		-0.757052, 0.594274, -0.271497,
		-0.640353, -0.757377, 0.127780,
		34.452297, 44.182995, 45.329277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330856, 44.985611, 45.673283>,  <34.900543, 44.713161, 45.239830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330856, 44.985611, 45.673283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287811, 44.590004, 45.713814>,  <34.261986, 44.352638, 45.738132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287811, 44.590004, 45.713814>,  <34.330856, 44.985611, 45.673283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287811, 44.590004, 45.713814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240613, 0.124794, 0.962565,
		-0.964637, 0.079201, -0.251400,
		-0.107609, -0.989016, 0.101324,
		34.255527, 44.293301, 45.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940029, 44.882412, 46.307285>,  <34.330856, 44.985611, 45.673283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940029, 44.882412, 46.307285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006680, 44.493969, 46.238953>,  <34.046669, 44.260902, 46.197952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006680, 44.493969, 46.238953>,  <33.940029, 44.882412, 46.307285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006680, 44.493969, 46.238953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241057, -0.208119, 0.947933,
		-0.956101, -0.116766, -0.268770,
		0.166623, -0.971109, -0.170835,
		34.056667, 44.202637, 46.187702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367359, 44.452614, 46.536118>,  <33.940029, 44.882412, 46.307285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367359, 44.452614, 46.536118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650524, 44.170124, 46.531876>,  <33.820423, 44.000629, 46.529331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650524, 44.170124, 46.531876>,  <33.367359, 44.452614, 46.536118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650524, 44.170124, 46.531876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191598, -0.206470, 0.959510,
		-0.679816, -0.677217, -0.281473,
		0.707912, -0.706221, -0.010608,
		33.862896, 43.958260, 46.528694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075642, 43.802040, 46.791515>,  <33.367359, 44.452614, 46.536118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075642, 43.802040, 46.791515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467690, 43.756630, 46.856609>,  <33.702919, 43.729382, 46.895664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467690, 43.756630, 46.856609>,  <33.075642, 43.802040, 46.791515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467690, 43.756630, 46.856609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158818, 0.042770, 0.986381,
		-0.118942, -0.992614, 0.023889,
		0.980117, -0.113528, 0.162732,
		33.761726, 43.722572, 46.905430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035568, 43.358784, 47.360046>,  <33.075642, 43.802040, 46.791515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035568, 43.358784, 47.360046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399437, 43.524361, 47.346516>,  <33.617760, 43.623707, 47.338398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399437, 43.524361, 47.346516>,  <33.035568, 43.358784, 47.360046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399437, 43.524361, 47.346516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011565, 0.106659, 0.994228,
		0.415166, -0.904031, 0.101813,
		0.909672, 0.413947, -0.033826,
		33.672340, 43.648544, 47.336369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083817, 42.737209, 47.911369>,  <33.035568, 43.358784, 47.360046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083817, 42.737209, 47.911369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684353, 42.740192, 47.931850>,  <32.444675, 42.741982, 47.944138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684353, 42.740192, 47.931850>,  <33.083817, 42.737209, 47.911369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684353, 42.740192, 47.931850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049041, -0.451910, -0.890714,
		0.016498, -0.892032, 0.451670,
		-0.998661, 0.007455, 0.051202,
		32.384754, 42.742428, 47.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861942, 42.071178, 47.634132>,  <33.083817, 42.737209, 47.911369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861942, 42.071178, 47.634132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525093, 42.286888, 47.635281>,  <32.322983, 42.416313, 47.635967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525093, 42.286888, 47.635281>,  <32.861942, 42.071178, 47.634132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525093, 42.286888, 47.635281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241464, -0.372302, -0.896151,
		-0.482206, -0.755362, 0.443740,
		-0.842124, 0.539276, 0.002866,
		32.272457, 42.448669, 47.636139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233677, 41.515007, 47.565460>,  <32.861942, 42.071178, 47.634132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233677, 41.515007, 47.565460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124416, 41.875107, 47.429848>,  <32.058861, 42.091167, 47.348480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124416, 41.875107, 47.429848>,  <32.233677, 41.515007, 47.565460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124416, 41.875107, 47.429848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197807, -0.397463, -0.896044,
		-0.941415, -0.177690, 0.286642,
		-0.273147, 0.900250, -0.339030,
		32.042473, 42.145184, 47.328140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633354, 41.408257, 47.149635>,  <32.233677, 41.515007, 47.565460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633354, 41.408257, 47.149635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771248, 41.762825, 47.026081>,  <31.853985, 41.975567, 46.951946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771248, 41.762825, 47.026081>,  <31.633354, 41.408257, 47.149635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771248, 41.762825, 47.026081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294058, -0.210518, -0.932315,
		-0.891452, 0.412233, 0.188087,
		0.344736, 0.886423, -0.308887,
		31.874668, 42.028751, 46.933414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002050, 41.780727, 46.788418>,  <31.633354, 41.408257, 47.149635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002050, 41.780727, 46.788418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340300, 41.952595, 46.661732>,  <31.543249, 42.055714, 46.585720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340300, 41.952595, 46.661732>,  <31.002050, 41.780727, 46.788418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340300, 41.952595, 46.661732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261920, -0.183005, -0.947580,
		-0.465105, 0.884248, -0.042214,
		0.845621, 0.429667, -0.316719,
		31.593987, 42.081493, 46.566715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860006, 41.946114, 46.111530>,  <31.002050, 41.780727, 46.788418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860006, 41.946114, 46.111530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257439, 41.985725, 46.133404>,  <31.495897, 42.009495, 46.146526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257439, 41.985725, 46.133404>,  <30.860006, 41.946114, 46.111530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257439, 41.985725, 46.133404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068857, -0.145880, -0.986903,
		-0.089758, 0.984333, -0.151763,
		0.993581, 0.099032, 0.054685,
		31.555513, 42.015434, 46.149811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149128, 42.606525, 45.675507>,  <30.860006, 41.946114, 46.111530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149128, 42.606525, 45.675507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402409, 42.298958, 45.710869>,  <31.554377, 42.114418, 45.732086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402409, 42.298958, 45.710869>,  <31.149128, 42.606525, 45.675507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402409, 42.298958, 45.710869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091549, -0.039015, -0.995036,
		0.768552, 0.638154, 0.045689,
		0.633204, -0.768920, 0.088407,
		31.592369, 42.068283, 45.737392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.317619, 39.584576, 52.153366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200806, 39.966805, 52.137390>,  <35.130718, 40.196144, 52.127804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200806, 39.966805, 52.137390>,  <35.317619, 39.584576, 52.153366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200806, 39.966805, 52.137390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398523, -0.159542, -0.903175,
		-0.869424, -0.247837, 0.427410,
		-0.292030, 0.955575, -0.039941,
		35.113197, 40.253475, 52.125408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514660, 39.586887, 52.036907>,  <35.317619, 39.584576, 52.153366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514660, 39.586887, 52.036907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.752567, 39.876705, 51.897606>,  <34.895313, 40.050598, 51.814026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.752567, 39.876705, 51.897606>,  <34.514660, 39.586887, 52.036907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752567, 39.876705, 51.897606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320437, -0.183628, -0.929301,
		-0.737273, 0.664312, 0.122957,
		0.594767, 0.724549, -0.348254,
		34.930996, 40.094070, 51.793129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102482, 39.992180, 51.507957>,  <34.514660, 39.586887, 52.036907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102482, 39.992180, 51.507957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.491024, 40.026451, 51.419304>,  <34.724152, 40.047016, 51.366112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.491024, 40.026451, 51.419304>,  <34.102482, 39.992180, 51.507957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491024, 40.026451, 51.419304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198529, -0.219925, -0.955102,
		-0.130577, 0.971747, -0.196616,
		0.971358, 0.085680, -0.221637,
		34.782433, 40.052155, 51.352814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226307, 40.305065, 50.872475>,  <34.102482, 39.992180, 51.507957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226307, 40.305065, 50.872475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579334, 40.123928, 50.923080>,  <34.791153, 40.015247, 50.953445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579334, 40.123928, 50.923080>,  <34.226307, 40.305065, 50.872475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579334, 40.123928, 50.923080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055845, -0.368130, -0.928096,
		0.466851, 0.812045, -0.350190,
		0.882571, -0.452839, 0.126513,
		34.844105, 39.988075, 50.961033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698559, 40.498478, 50.319637>,  <34.226307, 40.305065, 50.872475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698559, 40.498478, 50.319637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854626, 40.150745, 50.440987>,  <34.948265, 39.942104, 50.513798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854626, 40.150745, 50.440987>,  <34.698559, 40.498478, 50.319637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854626, 40.150745, 50.440987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057494, -0.351846, -0.934290,
		0.918948, 0.347086, -0.187260,
		0.390166, -0.869331, 0.303373,
		34.971676, 39.889946, 50.531998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375751, 40.331680, 49.916214>,  <34.698559, 40.498478, 50.319637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375751, 40.331680, 49.916214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259014, 39.980389, 50.067760>,  <35.188972, 39.769615, 50.158688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259014, 39.980389, 50.067760>,  <35.375751, 40.331680, 49.916214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259014, 39.980389, 50.067760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140836, -0.431250, -0.891173,
		0.946041, -0.206724, 0.249543,
		-0.291842, -0.878230, 0.378866,
		35.171463, 39.716919, 50.181419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751022, 39.849930, 49.601704>,  <35.375751, 40.331680, 49.916214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751022, 39.849930, 49.601704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.465305, 39.602947, 49.733479>,  <35.293873, 39.454758, 49.812542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.465305, 39.602947, 49.733479>,  <35.751022, 39.849930, 49.601704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465305, 39.602947, 49.733479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136578, -0.584663, -0.799697,
		0.686389, -0.526226, 0.501953,
		-0.714294, -0.617459, 0.329435,
		35.251019, 39.417709, 49.832310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076023, 39.252132, 49.570446>,  <35.751022, 39.849930, 49.601704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076023, 39.252132, 49.570446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684509, 39.171352, 49.556648>,  <35.449600, 39.122887, 49.548370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684509, 39.171352, 49.556648>,  <36.076023, 39.252132, 49.570446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684509, 39.171352, 49.556648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156369, -0.627593, -0.762677,
		0.132370, -0.751894, 0.645859,
		-0.978789, -0.201948, -0.034499,
		35.390873, 39.110767, 49.546299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051456, 38.519070, 49.429310>,  <36.076023, 39.252132, 49.570446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051456, 38.519070, 49.429310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.704098, 38.687672, 49.324837>,  <35.495682, 38.788834, 49.262154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.704098, 38.687672, 49.324837>,  <36.051456, 38.519070, 49.429310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704098, 38.687672, 49.324837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026761, -0.565789, -0.824115,
		-0.495144, -0.708671, 0.502611,
		-0.868399, 0.421506, -0.261182,
		35.443577, 38.814125, 49.246483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494518, 38.096783, 49.337944>,  <36.051456, 38.519070, 49.429310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494518, 38.096783, 49.337944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378082, 38.393261, 49.095989>,  <35.308220, 38.571148, 48.950817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378082, 38.393261, 49.095989>,  <35.494518, 38.096783, 49.337944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378082, 38.393261, 49.095989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208513, -0.666221, -0.716011,
		-0.933696, -0.082297, 0.348480,
		-0.291090, 0.741199, -0.604889,
		35.290756, 38.615620, 48.914524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963257, 37.824070, 48.984436>,  <35.494518, 38.096783, 49.337944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963257, 37.824070, 48.984436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026886, 38.160217, 48.777180>,  <35.065063, 38.361908, 48.652824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026886, 38.160217, 48.777180>,  <34.963257, 37.824070, 48.984436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026886, 38.160217, 48.777180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197149, -0.487215, -0.850738,
		-0.967382, 0.237480, 0.088176,
		0.159072, 0.840372, -0.518141,
		35.074608, 38.412331, 48.621738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436066, 37.802822, 48.486446>,  <34.963257, 37.824070, 48.984436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436066, 37.802822, 48.486446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735477, 38.028397, 48.346920>,  <34.915127, 38.163742, 48.263203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735477, 38.028397, 48.346920>,  <34.436066, 37.802822, 48.486446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735477, 38.028397, 48.346920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085166, -0.603451, -0.792839,
		-0.657605, 0.563759, -0.499731,
		0.748533, 0.563936, -0.348819,
		34.960037, 38.197578, 48.242275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023838, 38.287212, 48.076351>,  <34.436066, 37.802822, 48.486446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023838, 38.287212, 48.076351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642925, 38.348862, 47.970974>,  <33.414379, 38.385853, 47.907749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642925, 38.348862, 47.970974>,  <34.023838, 38.287212, 48.076351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642925, 38.348862, 47.970974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127186, 0.584235, 0.801557,
		0.277455, 0.796815, -0.536754,
		-0.952283, 0.154128, -0.263443,
		33.357239, 38.395100, 47.891941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906666, 38.992439, 48.002876>,  <34.023838, 38.287212, 48.076351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906666, 38.992439, 48.002876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.550529, 38.834579, 48.093693>,  <33.336849, 38.739864, 48.148182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.550529, 38.834579, 48.093693>,  <33.906666, 38.992439, 48.002876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550529, 38.834579, 48.093693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073709, 0.617033, 0.783478,
		-0.449292, 0.680826, -0.578457,
		-0.890339, -0.394648, 0.227045,
		33.283428, 38.716187, 48.161808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519176, 39.633728, 48.192284>,  <33.906666, 38.992439, 48.002876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519176, 39.633728, 48.192284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.277744, 39.335140, 48.304337>,  <33.132885, 39.155987, 48.371571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.277744, 39.335140, 48.304337>,  <33.519176, 39.633728, 48.192284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277744, 39.335140, 48.304337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251493, 0.511668, 0.821552,
		-0.756598, 0.425421, -0.496564,
		-0.603581, -0.746467, 0.280137,
		33.096668, 39.111198, 48.388378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804543, 39.853081, 48.183384>,  <33.519176, 39.633728, 48.192284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804543, 39.853081, 48.183384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805779, 39.553993, 48.448986>,  <32.806519, 39.374542, 48.608349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805779, 39.553993, 48.448986>,  <32.804543, 39.853081, 48.183384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805779, 39.553993, 48.448986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322278, 0.627838, 0.708488,
		-0.946640, -0.216184, -0.239035,
		0.003089, -0.747719, 0.664008,
		32.806705, 39.329678, 48.648190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154694, 39.921421, 48.623474>,  <32.804543, 39.853081, 48.183384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154694, 39.921421, 48.623474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.389812, 39.683815, 48.843163>,  <32.530884, 39.541252, 48.974976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.389812, 39.683815, 48.843163>,  <32.154694, 39.921421, 48.623474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389812, 39.683815, 48.843163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324874, 0.448426, 0.832689,
		-0.740915, -0.667877, 0.070602,
		0.587794, -0.594015, 0.549222,
		32.566151, 39.505611, 49.007931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694551, 39.637604, 49.199322>,  <32.154694, 39.921421, 48.623474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694551, 39.637604, 49.199322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.082600, 39.610676, 49.292564>,  <32.315430, 39.594521, 49.348511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.082600, 39.610676, 49.292564>,  <31.694551, 39.637604, 49.199322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082600, 39.610676, 49.292564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179078, 0.449582, 0.875104,
		-0.163708, -0.890699, 0.424094,
		0.970119, -0.067315, 0.233105,
		32.373634, 39.590481, 49.362495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723196, 39.244656, 49.883629>,  <31.694551, 39.637604, 49.199322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723196, 39.244656, 49.883629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.065369, 39.446613, 49.837479>,  <32.270672, 39.567787, 49.809788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.065369, 39.446613, 49.837479>,  <31.723196, 39.244656, 49.883629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065369, 39.446613, 49.837479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095733, 0.373082, 0.922846,
		0.508989, -0.778387, 0.367482,
		0.855433, 0.504899, -0.115377,
		32.321999, 39.598083, 49.802864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028416, 39.216637, 50.465401>,  <31.723196, 39.244656, 49.883629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028416, 39.216637, 50.465401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.211475, 39.523190, 50.285084>,  <32.321312, 39.707123, 50.176895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.211475, 39.523190, 50.285084>,  <32.028416, 39.216637, 50.465401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211475, 39.523190, 50.285084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284555, 0.606580, 0.742354,
		0.842368, -0.211465, 0.495681,
		0.457652, 0.766384, -0.450790,
		32.348770, 39.753105, 50.149845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357059, 39.510357, 50.968903>,  <32.028416, 39.216637, 50.465401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357059, 39.510357, 50.968903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.354782, 39.808666, 50.702431>,  <32.353416, 39.987652, 50.542549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.354782, 39.808666, 50.702431>,  <32.357059, 39.510357, 50.968903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354782, 39.808666, 50.702431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319613, 0.629889, 0.707875,
		0.947531, 0.216948, 0.234774,
		-0.005691, 0.745771, -0.666179,
		32.353073, 40.032398, 50.502579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723724, 40.014374, 51.326035>,  <32.357059, 39.510357, 50.968903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723724, 40.014374, 51.326035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533653, 40.231964, 51.049400>,  <32.419609, 40.362518, 50.883419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533653, 40.231964, 51.049400>,  <32.723724, 40.014374, 51.326035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533653, 40.231964, 51.049400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153572, 0.722655, 0.673933,
		0.866383, 0.426448, -0.259852,
		-0.475181, 0.543978, -0.691586,
		32.391098, 40.395157, 50.841923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819511, 40.668892, 51.470608>,  <32.723724, 40.014374, 51.326035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819511, 40.668892, 51.470608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.513851, 40.711563, 51.216145>,  <32.330456, 40.737167, 51.063469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.513851, 40.711563, 51.216145>,  <32.819511, 40.668892, 51.470608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513851, 40.711563, 51.216145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363879, 0.743028, 0.561695,
		0.532602, 0.660703, -0.528967,
		-0.764151, 0.106680, -0.636154,
		32.284607, 40.743568, 51.025299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773685, 41.329544, 51.172440>,  <32.819511, 40.668892, 51.470608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773685, 41.329544, 51.172440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400238, 41.200954, 51.109192>,  <32.176170, 41.123798, 51.071243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400238, 41.200954, 51.109192>,  <32.773685, 41.329544, 51.172440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400238, 41.200954, 51.109192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357805, 0.814560, 0.456583,
		-0.017986, 0.482851, -0.875518,
		-0.933623, -0.321477, -0.158116,
		32.120152, 41.104511, 51.061756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347107, 41.829502, 50.862827>,  <32.773685, 41.329544, 51.172440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347107, 41.829502, 50.862827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.081985, 41.603333, 51.059189>,  <31.922913, 41.467628, 51.177006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.081985, 41.603333, 51.059189>,  <32.347107, 41.829502, 50.862827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081985, 41.603333, 51.059189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394953, 0.820967, 0.412341,
		-0.636167, 0.079414, -0.767454,
		-0.662800, -0.565426, 0.490907,
		31.883146, 41.433704, 51.206463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783234, 42.202026, 50.715458>,  <32.347107, 41.829502, 50.862827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783234, 42.202026, 50.715458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.720957, 41.966652, 51.032825>,  <31.683592, 41.825428, 51.223244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.720957, 41.966652, 51.032825>,  <31.783234, 42.202026, 50.715458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720957, 41.966652, 51.032825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392654, 0.773892, 0.496904,
		-0.906412, -0.234174, -0.351538,
		-0.155690, -0.588433, 0.793415,
		31.674250, 41.790123, 51.270851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961065, 42.222431, 50.752323>,  <31.783234, 42.202026, 50.715458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961065, 42.222431, 50.752323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.186689, 42.552723, 50.753487>,  <31.322063, 42.750896, 50.754185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.186689, 42.552723, 50.753487>,  <30.961065, 42.222431, 50.752323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186689, 42.552723, 50.753487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226462, -0.151306, -0.962196,
		-0.794072, 0.543396, -0.272341,
		0.564061, 0.825728, 0.002911,
		31.355907, 42.800442, 50.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702511, 42.598228, 50.151329>,  <30.961065, 42.222431, 50.752323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702511, 42.598228, 50.151329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.070618, 42.738117, 50.221535>,  <31.291481, 42.822048, 50.263657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.070618, 42.738117, 50.221535>,  <30.702511, 42.598228, 50.151329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070618, 42.738117, 50.221535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254967, -0.195692, -0.946941,
		-0.296815, 0.916189, -0.269255,
		0.920268, 0.349718, 0.175514,
		31.346699, 42.843033, 50.274189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859262, 43.155769, 49.742805>,  <30.702511, 42.598228, 50.151329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859262, 43.155769, 49.742805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213772, 42.995930, 49.836479>,  <31.426477, 42.900028, 49.892685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213772, 42.995930, 49.836479>,  <30.859262, 43.155769, 49.742805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213772, 42.995930, 49.836479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169828, -0.190045, -0.966975,
		0.430904, 0.896776, -0.100569,
		0.886273, -0.399595, 0.234188,
		31.479654, 42.876053, 49.906734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067616, 43.240749, 49.133400>,  <30.859262, 43.155769, 49.742805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067616, 43.240749, 49.133400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365524, 43.040283, 49.309650>,  <31.544270, 42.920006, 49.415401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365524, 43.040283, 49.309650>,  <31.067616, 43.240749, 49.133400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365524, 43.040283, 49.309650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421807, -0.158114, -0.892793,
		0.517103, 0.850786, 0.093635,
		0.744771, -0.501162, 0.440628,
		31.588955, 42.889935, 49.441837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626463, 43.657711, 49.060062>,  <31.067616, 43.240749, 49.133400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626463, 43.657711, 49.060062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748468, 43.281548, 49.120201>,  <31.821672, 43.055851, 49.156284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748468, 43.281548, 49.120201>,  <31.626463, 43.657711, 49.060062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748468, 43.281548, 49.120201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376287, -0.026020, -0.926138,
		0.874856, 0.339060, 0.345926,
		0.305016, -0.940405, 0.150348,
		31.839973, 42.999428, 49.165306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260368, 43.684677, 48.754326>,  <31.626463, 43.657711, 49.060062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260368, 43.684677, 48.754326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152359, 43.300114, 48.775429>,  <32.087555, 43.069374, 48.788090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152359, 43.300114, 48.775429>,  <32.260368, 43.684677, 48.754326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152359, 43.300114, 48.775429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270891, -0.128434, -0.954003,
		0.923962, -0.243311, 0.295117,
		-0.270023, -0.961407, 0.052757,
		32.071354, 43.011692, 48.791256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874130, 43.301826, 48.487720>,  <32.260368, 43.684677, 48.754326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874130, 43.301826, 48.487720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524677, 43.112694, 48.441765>,  <32.315006, 42.999214, 48.414192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524677, 43.112694, 48.441765>,  <32.874130, 43.301826, 48.487720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524677, 43.112694, 48.441765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222304, -0.177819, -0.958625,
		0.432839, -0.863024, 0.260460,
		-0.873631, -0.472831, -0.114887,
		32.262589, 42.970844, 48.407299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616165, 43.114403, 48.224773>,  <32.874130, 43.301826, 48.487720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616165, 43.114403, 48.224773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737118, 43.433826, 48.016594>,  <33.809689, 43.625481, 47.891685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737118, 43.433826, 48.016594>,  <33.616165, 43.114403, 48.224773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737118, 43.433826, 48.016594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160725, 0.495476, 0.853623,
		0.939539, -0.341767, 0.021473,
		0.302380, 0.798561, -0.520450,
		33.827831, 43.673393, 47.860458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243359, 43.239895, 48.518963>,  <33.616165, 43.114403, 48.224773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243359, 43.239895, 48.518963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.142445, 43.594727, 48.364330>,  <34.081898, 43.807625, 48.271549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.142445, 43.594727, 48.364330>,  <34.243359, 43.239895, 48.518963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142445, 43.594727, 48.364330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248560, 0.445507, 0.860082,
		0.935185, 0.120895, -0.332886,
		-0.252283, 0.887078, -0.386582,
		34.066761, 43.860851, 48.248356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827068, 43.669567, 48.601013>,  <34.243359, 43.239895, 48.518963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827068, 43.669567, 48.601013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.488590, 43.881577, 48.579033>,  <34.285503, 44.008781, 48.565845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.488590, 43.881577, 48.579033>,  <34.827068, 43.669567, 48.601013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488590, 43.881577, 48.579033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178155, 0.378592, 0.908256,
		0.502201, 0.758777, -0.414791,
		-0.846200, 0.530025, -0.054949,
		34.234730, 44.040585, 48.562550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877316, 44.176720, 49.069538>,  <34.827068, 43.669567, 48.601013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877316, 44.176720, 49.069538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.498459, 44.279675, 48.992928>,  <34.271145, 44.341446, 48.946960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.498459, 44.279675, 48.992928>,  <34.877316, 44.176720, 49.069538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498459, 44.279675, 48.992928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079752, 0.389355, 0.917629,
		0.310758, 0.884395, -0.348245,
		-0.947137, 0.257387, -0.191528,
		34.214317, 44.356892, 48.935471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775047, 44.960957, 49.149780>,  <34.877316, 44.176720, 49.069538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775047, 44.960957, 49.149780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428082, 44.765484, 49.187279>,  <34.219902, 44.648201, 49.209778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428082, 44.765484, 49.187279>,  <34.775047, 44.960957, 49.149780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428082, 44.765484, 49.187279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185742, 0.492776, 0.850101,
		-0.461620, 0.719976, -0.518209,
		-0.867414, -0.488677, 0.093746,
		34.167858, 44.618881, 49.215401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300884, 45.459156, 49.443241>,  <34.775047, 44.960957, 49.149780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300884, 45.459156, 49.443241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126785, 45.108433, 49.525002>,  <34.022327, 44.897999, 49.574059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126785, 45.108433, 49.525002>,  <34.300884, 45.459156, 49.443241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126785, 45.108433, 49.525002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389596, 0.388100, 0.835221,
		-0.811652, 0.283891, -0.510517,
		-0.435243, -0.876804, 0.204399,
		33.996212, 44.845390, 49.586323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558483, 45.690716, 49.529987>,  <34.300884, 45.459156, 49.443241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558483, 45.690716, 49.529987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627533, 45.337883, 49.705318>,  <33.668961, 45.126183, 49.810516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627533, 45.337883, 49.705318>,  <33.558483, 45.690716, 49.529987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627533, 45.337883, 49.705318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444194, 0.327478, 0.833936,
		-0.879144, -0.338659, -0.335286,
		0.172621, -0.882082, 0.438331,
		33.679317, 45.073257, 49.836819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005394, 45.609379, 49.834789>,  <33.558483, 45.690716, 49.529987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005394, 45.609379, 49.834789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.238716, 45.338470, 50.014149>,  <33.378708, 45.175926, 50.121765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.238716, 45.338470, 50.014149>,  <33.005394, 45.609379, 49.834789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238716, 45.338470, 50.014149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426189, 0.214746, 0.878776,
		-0.691463, -0.703693, -0.163385,
		0.583303, -0.677274, 0.448395,
		33.413708, 45.135288, 50.148666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620514, 45.516312, 50.420479>,  <33.005394, 45.609379, 49.834789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620514, 45.516312, 50.420479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.977757, 45.356602, 50.503361>,  <33.192104, 45.260777, 50.553089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.977757, 45.356602, 50.503361>,  <32.620514, 45.516312, 50.420479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977757, 45.356602, 50.503361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229810, -0.008999, 0.973194,
		-0.386712, -0.916785, -0.099796,
		0.893108, -0.399279, 0.207206,
		33.245689, 45.236816, 50.565521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.939758, 39.329994, 35.448135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290462, 39.406490, 35.624641>,  <36.500885, 39.452389, 35.730545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290462, 39.406490, 35.624641>,  <35.939758, 39.329994, 35.448135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290462, 39.406490, 35.624641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472527, 0.171898, 0.864390,
		0.089452, -0.966374, 0.241079,
		0.876765, 0.191238, 0.441261,
		36.553493, 39.463863, 35.757019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048168, 38.888844, 35.982372>,  <35.939758, 39.329994, 35.448135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048168, 38.888844, 35.982372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267471, 39.207504, 36.084167>,  <36.399052, 39.398701, 36.145245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267471, 39.207504, 36.084167>,  <36.048168, 38.888844, 35.982372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267471, 39.207504, 36.084167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495173, 0.064001, 0.866434,
		0.673960, -0.601040, 0.429569,
		0.548254, 0.796653, 0.254484,
		36.431946, 39.446499, 36.160511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410046, 38.791237, 36.767761>,  <36.048168, 38.888844, 35.982372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410046, 38.791237, 36.767761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374985, 39.176754, 36.667030>,  <36.353951, 39.408066, 36.606594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374985, 39.176754, 36.667030>,  <36.410046, 38.791237, 36.767761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374985, 39.176754, 36.667030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332742, 0.209951, 0.919349,
		0.938936, 0.164374, 0.302293,
		-0.087650, 0.963796, -0.251824,
		36.348690, 39.465893, 36.591484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554562, 39.270844, 37.363758>,  <36.410046, 38.791237, 36.767761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554562, 39.270844, 37.363758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392899, 39.547222, 37.124012>,  <36.295898, 39.713051, 36.980164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392899, 39.547222, 37.124012>,  <36.554562, 39.270844, 37.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392899, 39.547222, 37.124012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441164, 0.426768, 0.789458,
		0.801267, 0.583488, 0.132338,
		-0.404162, 0.690949, -0.599369,
		36.271648, 39.754505, 36.944202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818260, 39.923267, 37.489059>,  <36.554562, 39.270844, 37.363758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818260, 39.923267, 37.489059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461964, 39.984341, 37.317822>,  <36.248184, 40.020985, 37.215080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461964, 39.984341, 37.317822>,  <36.818260, 39.923267, 37.489059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461964, 39.984341, 37.317822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315597, 0.470012, 0.824310,
		0.327071, 0.869353, -0.370473,
		-0.890743, 0.152688, -0.428092,
		36.194740, 40.030148, 37.189392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767483, 40.682171, 37.528904>,  <36.818260, 39.923267, 37.489059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767483, 40.682171, 37.528904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393394, 40.579857, 37.430977>,  <36.168941, 40.518471, 37.372223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393394, 40.579857, 37.430977>,  <36.767483, 40.682171, 37.528904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393394, 40.579857, 37.430977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349556, 0.557111, 0.753284,
		-0.056288, 0.790065, -0.610434,
		-0.935223, -0.255782, -0.244814,
		36.112827, 40.503124, 37.357533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411667, 41.290245, 37.489723>,  <36.767483, 40.682171, 37.528904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411667, 41.290245, 37.489723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141834, 41.002598, 37.556435>,  <35.979935, 40.830009, 37.596462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141834, 41.002598, 37.556435>,  <36.411667, 41.290245, 37.489723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141834, 41.002598, 37.556435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364444, 0.520892, 0.771914,
		-0.641969, 0.459936, -0.613461,
		-0.674578, -0.719118, 0.166776,
		35.939461, 40.786861, 37.606468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716103, 41.616867, 37.648762>,  <36.411667, 41.290245, 37.489723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716103, 41.616867, 37.648762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644859, 41.254616, 37.802700>,  <35.602112, 41.037266, 37.895061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644859, 41.254616, 37.802700>,  <35.716103, 41.616867, 37.648762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644859, 41.254616, 37.802700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371572, 0.424043, 0.825907,
		-0.911159, 0.004105, -0.412034,
		-0.178111, -0.905633, 0.384845,
		35.591427, 40.982925, 37.918152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983185, 41.641293, 37.917351>,  <35.716103, 41.616867, 37.648762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983185, 41.641293, 37.917351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161915, 41.347271, 38.121326>,  <35.269154, 41.170856, 38.243713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161915, 41.347271, 38.121326>,  <34.983185, 41.641293, 37.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161915, 41.347271, 38.121326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290232, 0.420075, 0.859827,
		-0.846237, -0.532190, -0.025640,
		0.446821, -0.735059, 0.509942,
		35.295959, 41.126755, 38.274307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484966, 41.498951, 38.403591>,  <34.983185, 41.641293, 37.917351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484966, 41.498951, 38.403591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843014, 41.374516, 38.531338>,  <35.057842, 41.299854, 38.607986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843014, 41.374516, 38.531338>,  <34.484966, 41.498951, 38.403591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843014, 41.374516, 38.531338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171753, 0.420426, 0.890923,
		-0.411425, -0.852330, 0.322899,
		0.895115, -0.311089, 0.319364,
		35.111549, 41.281189, 38.627148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249817, 41.051292, 38.886406>,  <34.484966, 41.498951, 38.403591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249817, 41.051292, 38.886406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620937, 41.171703, 38.974560>,  <34.843609, 41.243950, 39.027454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620937, 41.171703, 38.974560>,  <34.249817, 41.051292, 38.886406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620937, 41.171703, 38.974560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335292, 0.413727, 0.846409,
		0.163613, -0.859192, 0.484788,
		0.927798, 0.301029, 0.220390,
		34.899277, 41.262012, 39.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363903, 40.963379, 39.626236>,  <34.249817, 41.051292, 38.886406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363903, 40.963379, 39.626236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655891, 41.229343, 39.562958>,  <34.831085, 41.388924, 39.524990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655891, 41.229343, 39.562958>,  <34.363903, 40.963379, 39.626236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655891, 41.229343, 39.562958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241870, 0.467796, 0.850098,
		0.639247, -0.582286, 0.502302,
		0.729974, 0.664914, -0.158200,
		34.874886, 41.428818, 39.515499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258385, 40.270992, 40.086269>,  <34.363903, 40.963379, 39.626236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258385, 40.270992, 40.086269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863747, 40.205925, 40.081116>,  <33.626965, 40.166885, 40.078022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863747, 40.205925, 40.081116>,  <34.258385, 40.270992, 40.086269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863747, 40.205925, 40.081116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120592, -0.673658, -0.729139,
		0.109926, -0.720920, 0.684245,
		-0.986597, -0.162666, -0.012885,
		33.567768, 40.157124, 40.077251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139439, 39.528843, 40.057354>,  <34.258385, 40.270992, 40.086269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139439, 39.528843, 40.057354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800949, 39.705311, 39.937840>,  <33.597855, 39.811192, 39.866131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800949, 39.705311, 39.937840>,  <34.139439, 39.528843, 40.057354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800949, 39.705311, 39.937840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011925, -0.576301, -0.817151,
		-0.532687, -0.687933, 0.492943,
		-0.846228, 0.441164, -0.298785,
		33.547081, 39.837662, 39.848202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759529, 39.042561, 39.813499>,  <34.139439, 39.528843, 40.057354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759529, 39.042561, 39.813499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580544, 39.353977, 39.637478>,  <33.473152, 39.540825, 39.531864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580544, 39.353977, 39.637478>,  <33.759529, 39.042561, 39.813499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580544, 39.353977, 39.637478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244796, -0.579902, -0.777038,
		-0.860143, -0.239977, 0.450071,
		-0.447469, 0.778540, -0.440054,
		33.446304, 39.587540, 39.505463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152061, 38.729652, 39.635246>,  <33.759529, 39.042561, 39.813499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152061, 38.729652, 39.635246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217838, 39.048183, 39.402416>,  <33.257305, 39.239304, 39.262718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217838, 39.048183, 39.402416>,  <33.152061, 38.729652, 39.635246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217838, 39.048183, 39.402416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171159, -0.558124, -0.811913,
		-0.971423, 0.233143, 0.044519,
		0.164444, 0.796331, -0.582079,
		33.267170, 39.287083, 39.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607494, 38.726021, 39.139664>,  <33.152061, 38.729652, 39.635246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607494, 38.726021, 39.139664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898216, 38.947239, 38.976742>,  <33.072647, 39.079971, 38.878990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898216, 38.947239, 38.976742>,  <32.607494, 38.726021, 39.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898216, 38.947239, 38.976742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070368, -0.529929, -0.845118,
		-0.683232, 0.642895, -0.346237,
		0.726802, 0.553048, -0.407304,
		33.116257, 39.113152, 38.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438755, 39.084686, 38.569061>,  <32.607494, 38.726021, 39.139664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438755, 39.084686, 38.569061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833675, 39.061493, 38.509911>,  <33.070629, 39.047577, 38.474422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833675, 39.061493, 38.509911>,  <32.438755, 39.084686, 38.569061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833675, 39.061493, 38.509911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158562, -0.414107, -0.896311,
		-0.009268, 0.908380, -0.418044,
		0.987306, -0.057979, -0.147873,
		33.129868, 39.044098, 38.465549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466137, 38.993420, 37.905289>,  <32.438755, 39.084686, 38.569061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466137, 38.993420, 37.905289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848335, 38.916344, 37.994640>,  <33.077656, 38.870098, 38.048252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848335, 38.916344, 37.994640>,  <32.466137, 38.993420, 37.905289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848335, 38.916344, 37.994640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061602, -0.610178, -0.789866,
		0.288503, 0.768474, -0.571152,
		0.955495, -0.192694, 0.223377,
		33.134983, 38.858536, 38.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801289, 39.056267, 37.299416>,  <32.466137, 38.993420, 37.905289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801289, 39.056267, 37.299416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007244, 38.819382, 37.547344>,  <33.130817, 38.677250, 37.696102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007244, 38.819382, 37.547344>,  <32.801289, 39.056267, 37.299416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007244, 38.819382, 37.547344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041085, -0.705143, -0.707873,
		0.856275, 0.389938, -0.338736,
		0.514884, -0.592217, 0.619817,
		33.161709, 38.641716, 37.733288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147655, 38.650261, 36.788628>,  <32.801289, 39.056267, 37.299416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147655, 38.650261, 36.788628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209156, 38.455956, 37.132812>,  <33.246056, 38.339371, 37.339325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209156, 38.455956, 37.132812>,  <33.147655, 38.650261, 36.788628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209156, 38.455956, 37.132812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198822, -0.837798, -0.508493,
		0.967901, 0.249259, -0.032229,
		0.153747, -0.485763, 0.860463,
		33.255280, 38.310226, 37.390953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782265, 38.311024, 36.766537>,  <33.147655, 38.650261, 36.788628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782265, 38.311024, 36.766537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560993, 38.110973, 37.033031>,  <33.428230, 37.990944, 37.192928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560993, 38.110973, 37.033031>,  <33.782265, 38.311024, 36.766537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560993, 38.110973, 37.033031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346330, -0.865419, -0.362085,
		0.757662, 0.030441, 0.651937,
		-0.553177, -0.500124, 0.666237,
		33.395039, 37.960938, 37.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145737, 37.667355, 36.996727>,  <33.782265, 38.311024, 36.766537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145737, 37.667355, 36.996727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755814, 37.612492, 37.067081>,  <33.521858, 37.579575, 37.109295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755814, 37.612492, 37.067081>,  <34.145737, 37.667355, 36.996727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755814, 37.612492, 37.067081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072660, -0.940833, -0.330990,
		0.210879, -0.309872, 0.927097,
		-0.974808, -0.137162, 0.175887,
		33.463371, 37.571342, 37.119846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076485, 37.065285, 37.180962>,  <34.145737, 37.667355, 36.996727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076485, 37.065285, 37.180962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702869, 37.148575, 37.064884>,  <33.478699, 37.198551, 36.995239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702869, 37.148575, 37.064884>,  <34.076485, 37.065285, 37.180962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702869, 37.148575, 37.064884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167888, -0.973085, -0.157861,
		-0.315255, -0.098728, 0.943857,
		-0.934039, 0.208229, -0.290195,
		33.422657, 37.211044, 36.977825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392994, 36.903507, 37.593342>,  <34.076485, 37.065285, 37.180962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392994, 36.903507, 37.593342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316898, 36.871422, 37.201962>,  <33.271240, 36.852169, 36.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316898, 36.871422, 37.201962>,  <33.392994, 36.903507, 37.593342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316898, 36.871422, 37.201962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211383, -0.969933, 0.120615,
		-0.958710, 0.229775, 0.167566,
		-0.190242, -0.080214, -0.978455,
		33.259827, 36.847359, 36.908424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882858, 36.512173, 37.610756>,  <33.392994, 36.903507, 37.593342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882858, 36.512173, 37.610756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037575, 36.464451, 37.244987>,  <33.130405, 36.435818, 37.025528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037575, 36.464451, 37.244987>,  <32.882858, 36.512173, 37.610756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037575, 36.464451, 37.244987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126367, -0.989099, 0.075597,
		-0.913467, 0.086312, -0.397653,
		0.386793, -0.119305, -0.914417,
		33.153614, 36.428658, 36.970661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638882, 35.999924, 37.348461>,  <32.882858, 36.512173, 37.610756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638882, 35.999924, 37.348461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974213, 35.985481, 37.130875>,  <33.175411, 35.976814, 37.000324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974213, 35.985481, 37.130875>,  <32.638882, 35.999924, 37.348461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974213, 35.985481, 37.130875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028452, -0.993546, 0.109803,
		-0.544421, -0.107528, -0.831892,
		0.838330, -0.036110, -0.543967,
		33.225712, 35.974648, 36.967686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455894, 35.242737, 37.485767>,  <32.638882, 35.999924, 37.348461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455894, 35.242737, 37.485767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248322, 35.545582, 37.644505>,  <32.123779, 35.727291, 37.739746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248322, 35.545582, 37.644505>,  <32.455894, 35.242737, 37.485767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248322, 35.545582, 37.644505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637128, 0.033064, 0.770048,
		0.569895, 0.652443, -0.499538,
		-0.518930, 0.757116, 0.396847,
		32.092644, 35.772717, 37.763557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911251, 34.988430, 37.934761>,  <32.455894, 35.242737, 37.485767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911251, 34.988430, 37.934761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048420, 35.129684, 38.282944>,  <33.130722, 35.214436, 38.491856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048420, 35.129684, 38.282944>,  <32.911251, 34.988430, 37.934761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048420, 35.129684, 38.282944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838850, 0.301928, -0.452958,
		-0.422772, 0.885513, -0.192691,
		0.342921, 0.353137, 0.870459,
		33.151295, 35.235626, 38.544083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525276, 34.649467, 38.109688>,  <32.911251, 34.988430, 37.934761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525276, 34.649467, 38.109688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636898, 35.032005, 38.144424>,  <33.703873, 35.261528, 38.165264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636898, 35.032005, 38.144424>,  <33.525276, 34.649467, 38.109688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636898, 35.032005, 38.144424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459944, 0.053728, 0.886321,
		0.842959, -0.287274, 0.454856,
		0.279055, 0.956340, 0.086840,
		33.720615, 35.318909, 38.170475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372765, 34.663551, 38.802433>,  <33.525276, 34.649467, 38.109688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372765, 34.663551, 38.802433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476768, 35.041336, 38.722042>,  <33.539169, 35.268005, 38.673805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476768, 35.041336, 38.722042>,  <33.372765, 34.663551, 38.802433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476768, 35.041336, 38.722042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214095, 0.259346, 0.941755,
		0.941572, -0.201836, 0.269636,
		0.260010, 0.944458, -0.200981,
		33.554771, 35.324673, 38.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686016, 34.876663, 39.373863>,  <33.372765, 34.663551, 38.802433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686016, 34.876663, 39.373863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653336, 35.240456, 39.210812>,  <33.633728, 35.458733, 39.112980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653336, 35.240456, 39.210812>,  <33.686016, 34.876663, 39.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653336, 35.240456, 39.210812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039832, 0.405688, 0.913143,
		0.995860, 0.090845, 0.003079,
		-0.081705, 0.909486, -0.407627,
		33.628822, 35.513302, 39.088524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079597, 35.199257, 39.717789>,  <33.686016, 34.876663, 39.373863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079597, 35.199257, 39.717789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814892, 35.456409, 39.563503>,  <33.656067, 35.610699, 39.470932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814892, 35.456409, 39.563503>,  <34.079597, 35.199257, 39.717789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814892, 35.456409, 39.563503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118818, 0.418049, 0.900621,
		0.740237, 0.641829, -0.200264,
		-0.661764, 0.642877, -0.385716,
		33.616364, 35.649273, 39.447788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314369, 35.798126, 40.004929>,  <34.079597, 35.199257, 39.717789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314369, 35.798126, 40.004929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949219, 35.874386, 39.860535>,  <33.730129, 35.920143, 39.773899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949219, 35.874386, 39.860535>,  <34.314369, 35.798126, 40.004929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949219, 35.874386, 39.860535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178288, 0.609275, 0.772656,
		0.367244, 0.769699, -0.522202,
		-0.912877, 0.190651, -0.360981,
		33.675354, 35.931580, 39.752239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245823, 36.636238, 40.057316>,  <34.314369, 35.798126, 40.004929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245823, 36.636238, 40.057316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885017, 36.464878, 40.035950>,  <33.668533, 36.362064, 40.023129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885017, 36.464878, 40.035950>,  <34.245823, 36.636238, 40.057316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885017, 36.464878, 40.035950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332772, 0.611118, 0.718191,
		-0.275027, 0.665591, -0.693793,
		-0.902010, -0.428397, -0.053417,
		33.614414, 36.336361, 40.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691006, 37.153095, 40.108143>,  <34.245823, 36.636238, 40.057316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691006, 37.153095, 40.108143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498516, 36.819199, 40.215199>,  <33.383022, 36.618858, 40.279430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498516, 36.819199, 40.215199>,  <33.691006, 37.153095, 40.108143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498516, 36.819199, 40.215199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470078, 0.503433, 0.724970,
		-0.739901, 0.223060, -0.634658,
		-0.481220, -0.834745, 0.267635,
		33.354149, 36.568775, 40.295490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078327, 37.387199, 40.409103>,  <33.691006, 37.153095, 40.108143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078327, 37.387199, 40.409103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086803, 37.006283, 40.530880>,  <33.091888, 36.777733, 40.603947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086803, 37.006283, 40.530880>,  <33.078327, 37.387199, 40.409103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086803, 37.006283, 40.530880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420484, 0.267784, 0.866882,
		-0.907052, -0.146383, -0.394751,
		0.021189, -0.952294, 0.304446,
		33.093159, 36.720596, 40.622215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435280, 37.286037, 40.690845>,  <33.078327, 37.387199, 40.409103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435280, 37.286037, 40.690845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682667, 37.005119, 40.831863>,  <32.831097, 36.836571, 40.916473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682667, 37.005119, 40.831863>,  <32.435280, 37.286037, 40.690845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682667, 37.005119, 40.831863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283863, 0.218674, 0.933597,
		-0.732751, -0.677470, -0.064113,
		0.618464, -0.702294, 0.352542,
		32.868206, 36.794430, 40.937626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107784, 36.970528, 41.286575>,  <32.435280, 37.286037, 40.690845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107784, 36.970528, 41.286575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483627, 36.852310, 41.355610>,  <32.709133, 36.781380, 41.397030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483627, 36.852310, 41.355610>,  <32.107784, 36.970528, 41.286575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483627, 36.852310, 41.355610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167566, 0.042436, 0.984947,
		-0.298418, -0.954386, -0.009649,
		0.939611, -0.295543, 0.172587,
		32.765511, 36.763649, 41.407387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072731, 36.471104, 41.829586>,  <32.107784, 36.970528, 41.286575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072731, 36.471104, 41.829586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429939, 36.651096, 41.827663>,  <32.644264, 36.759094, 41.826508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429939, 36.651096, 41.827663>,  <32.072731, 36.471104, 41.829586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429939, 36.651096, 41.827663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092774, 0.194552, 0.976495,
		0.440345, -0.871586, 0.215486,
		0.893023, 0.449986, -0.004809,
		32.697845, 36.786091, 41.826221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464844, 36.161690, 42.451622>,  <32.072731, 36.471104, 41.829586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464844, 36.161690, 42.451622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666122, 36.489807, 42.342869>,  <32.786888, 36.686676, 42.277615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666122, 36.489807, 42.342869>,  <32.464844, 36.161690, 42.451622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666122, 36.489807, 42.342869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140899, 0.232532, 0.962328,
		0.852610, -0.522546, 0.001431,
		0.503194, 0.820289, -0.271886,
		32.817081, 36.735893, 42.261303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834194, 36.248608, 42.990353>,  <32.464844, 36.161690, 42.451622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834194, 36.248608, 42.990353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882591, 36.620125, 42.850235>,  <32.911629, 36.843037, 42.766167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882591, 36.620125, 42.850235>,  <32.834194, 36.248608, 42.990353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882591, 36.620125, 42.850235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083436, 0.342120, 0.935945,
		0.989141, -0.142465, -0.036103,
		0.120988, 0.928794, -0.350292,
		32.918888, 36.898762, 42.745148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387856, 36.535717, 43.263428>,  <32.834194, 36.248608, 42.990353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387856, 36.535717, 43.263428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158600, 36.847431, 43.162064>,  <33.021046, 37.034462, 43.101246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158600, 36.847431, 43.162064>,  <33.387856, 36.535717, 43.263428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158600, 36.847431, 43.162064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085947, 0.364705, 0.927148,
		0.814937, 0.509607, -0.276005,
		-0.573142, 0.779289, -0.253413,
		32.986656, 37.081219, 43.086040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777859, 37.157719, 43.379173>,  <33.387856, 36.535717, 43.263428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777859, 37.157719, 43.379173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395050, 37.270866, 43.404743>,  <33.165363, 37.338757, 43.420086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395050, 37.270866, 43.404743>,  <33.777859, 37.157719, 43.379173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395050, 37.270866, 43.404743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206408, 0.509566, 0.835307,
		0.203714, 0.812604, -0.546055,
		-0.957025, 0.282874, 0.063922,
		33.107941, 37.355728, 43.423920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907455, 37.774578, 43.695370>,  <33.777859, 37.157719, 43.379173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907455, 37.774578, 43.695370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516045, 37.698444, 43.727020>,  <33.281200, 37.652763, 43.746010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516045, 37.698444, 43.727020>,  <33.907455, 37.774578, 43.695370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516045, 37.698444, 43.727020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007388, 0.415994, 0.909337,
		-0.205997, 0.889224, -0.408467,
		-0.978525, -0.190339, 0.079124,
		33.222488, 37.641342, 43.750759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711140, 38.297089, 44.106461>,  <33.907455, 37.774578, 43.695370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711140, 38.297089, 44.106461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399261, 38.047127, 44.122341>,  <33.212135, 37.897152, 44.131870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399261, 38.047127, 44.122341>,  <33.711140, 38.297089, 44.106461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399261, 38.047127, 44.122341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171807, 0.274482, 0.946119,
		-0.602129, 0.730862, -0.321374,
		-0.779694, -0.624900, 0.039706,
		33.165352, 37.859657, 44.134254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171577, 38.712276, 44.430790>,  <33.711140, 38.297089, 44.106461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171577, 38.712276, 44.430790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086716, 38.325584, 44.487949>,  <33.035797, 38.093567, 44.522243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086716, 38.325584, 44.487949>,  <33.171577, 38.712276, 44.430790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086716, 38.325584, 44.487949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184356, 0.183192, 0.965636,
		-0.959689, 0.178521, -0.217088,
		-0.212155, -0.966732, 0.142896,
		33.023067, 38.035564, 44.530819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620636, 38.762157, 44.840504>,  <33.171577, 38.712276, 44.430790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620636, 38.762157, 44.840504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777657, 38.396709, 44.882835>,  <32.871868, 38.177441, 44.908234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777657, 38.396709, 44.882835>,  <32.620636, 38.762157, 44.840504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777657, 38.396709, 44.882835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000321, 0.115206, 0.993342,
		-0.919729, -0.389907, 0.045518,
		0.392555, -0.913619, 0.105833,
		32.895424, 38.122623, 44.914585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265926, 38.522575, 45.451225>,  <32.620636, 38.762157, 44.840504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265926, 38.522575, 45.451225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579300, 38.278927, 45.401905>,  <32.767326, 38.132740, 45.372314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579300, 38.278927, 45.401905>,  <32.265926, 38.522575, 45.451225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579300, 38.278927, 45.401905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080001, -0.097903, 0.991975,
		-0.616300, -0.787014, -0.027971,
		0.783437, -0.609117, -0.123300,
		32.814331, 38.096191, 45.364914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175800, 37.990086, 45.845566>,  <32.265926, 38.522575, 45.451225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175800, 37.990086, 45.845566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570827, 37.984161, 45.782963>,  <32.807842, 37.980606, 45.745399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570827, 37.984161, 45.782963>,  <32.175800, 37.990086, 45.845566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570827, 37.984161, 45.782963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155859, -0.037919, 0.987051,
		-0.020544, -0.999171, -0.035140,
		0.987566, -0.014801, -0.156509,
		32.867096, 37.979717, 45.736012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396732, 37.447952, 46.184860>,  <32.175800, 37.990086, 45.845566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396732, 37.447952, 46.184860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707539, 37.696987, 46.147694>,  <32.894024, 37.846409, 46.125393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707539, 37.696987, 46.147694>,  <32.396732, 37.447952, 46.184860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707539, 37.696987, 46.147694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178092, -0.075840, 0.981087,
		0.603762, -0.778869, -0.169807,
		0.777016, 0.622584, -0.092921,
		32.940643, 37.883762, 46.119816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824993, 37.210136, 46.772099>,  <32.396732, 37.447952, 46.184860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824993, 37.210136, 46.772099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952950, 37.573315, 46.663795>,  <33.029724, 37.791222, 46.598812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952950, 37.573315, 46.663795>,  <32.824993, 37.210136, 46.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952950, 37.573315, 46.663795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043043, 0.271553, 0.961461,
		0.946476, -0.319217, 0.047786,
		0.319891, 0.907942, -0.270758,
		33.048916, 37.845699, 46.582569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401146, 37.263748, 47.129658>,  <32.824993, 37.210136, 46.772099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401146, 37.263748, 47.129658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290665, 37.643253, 47.068264>,  <33.224377, 37.870956, 47.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290665, 37.643253, 47.068264>,  <33.401146, 37.263748, 47.129658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290665, 37.643253, 47.068264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121515, 0.192893, 0.973666,
		0.953386, 0.250278, -0.168567,
		-0.276203, 0.948764, -0.153489,
		33.207806, 37.927883, 47.022217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755135, 37.618221, 47.724255>,  <33.401146, 37.263748, 47.129658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755135, 37.618221, 47.724255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512131, 37.903576, 47.584530>,  <33.366329, 38.074787, 47.500694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512131, 37.903576, 47.584530>,  <33.755135, 37.618221, 47.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512131, 37.903576, 47.584530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071198, 0.389085, 0.918446,
		0.791114, 0.582836, -0.185582,
		-0.607511, 0.713383, -0.349307,
		33.329876, 38.117592, 47.479736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328278, 38.039810, 47.399120>,  <33.755135, 37.618221, 47.724255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328278, 38.039810, 47.399120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689560, 38.114185, 47.553856>,  <34.906330, 38.158810, 47.646698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689560, 38.114185, 47.553856>,  <34.328278, 38.039810, 47.399120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689560, 38.114185, 47.553856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427953, -0.458861, -0.778654,
		0.032726, 0.868835, -0.494019,
		0.903208, 0.185935, 0.386838,
		34.960522, 38.169968, 47.669907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785744, 38.331863, 46.976971>,  <34.328278, 38.039810, 47.399120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785744, 38.331863, 46.976971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070435, 38.181942, 47.214619>,  <35.241249, 38.091988, 47.357208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070435, 38.181942, 47.214619>,  <34.785744, 38.331863, 46.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070435, 38.181942, 47.214619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450035, -0.406118, -0.795322,
		0.539370, 0.833421, -0.120369,
		0.711722, -0.374803, 0.594116,
		35.283951, 38.069500, 47.392853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462337, 38.475861, 46.648891>,  <34.785744, 38.331863, 46.976971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462337, 38.475861, 46.648891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552929, 38.185741, 46.908936>,  <35.607285, 38.011669, 47.064964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552929, 38.185741, 46.908936>,  <35.462337, 38.475861, 46.648891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552929, 38.185741, 46.908936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648428, -0.385781, -0.656289,
		0.726807, 0.570189, 0.382932,
		0.226481, -0.725298, 0.650114,
		35.620872, 37.968151, 47.103970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193413, 38.407181, 46.608578>,  <35.462337, 38.475861, 46.648891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193413, 38.407181, 46.608578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040993, 38.062756, 46.743263>,  <35.949539, 37.856102, 46.824074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040993, 38.062756, 46.743263>,  <36.193413, 38.407181, 46.608578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040993, 38.062756, 46.743263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594102, -0.507092, -0.624420,
		0.708409, -0.037891, 0.704785,
		-0.381051, -0.861059, 0.336717,
		35.926678, 37.804440, 46.844276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758549, 37.889420, 46.586258>,  <36.193413, 38.407181, 46.608578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758549, 37.889420, 46.586258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455364, 37.631809, 46.627693>,  <36.273453, 37.477245, 46.652554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455364, 37.631809, 46.627693>,  <36.758549, 37.889420, 46.586258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455364, 37.631809, 46.627693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533465, -0.703397, -0.469732,
		0.375382, -0.300777, 0.876711,
		-0.757960, -0.644024, 0.103589,
		36.227978, 37.438602, 46.658772>
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
