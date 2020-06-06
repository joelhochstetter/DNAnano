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
	<24.535078, 34.918041, 35.061653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211508, 35.126648, 35.170208>,  <24.017365, 35.251812, 35.235340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211508, 35.126648, 35.170208>,  <24.535078, 34.918041, 35.061653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211508, 35.126648, 35.170208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494694, -0.354378, -0.793532,
		-0.317658, -0.776172, 0.544656,
		-0.808932, 0.521510, 0.271397,
		23.968830, 35.283104, 35.251625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474705, 34.482090, 35.731987>,  <24.535078, 34.918041, 35.061653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474705, 34.482090, 35.731987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218042, 34.175293, 35.732033>,  <24.064045, 33.991215, 35.732059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218042, 34.175293, 35.732033>,  <24.474705, 34.482090, 35.731987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218042, 34.175293, 35.732033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059773, -0.050156, -0.996951,
		0.764660, -0.639693, 0.078028,
		-0.641656, -0.766992, 0.000116,
		24.025545, 33.945194, 35.732067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781216, 34.126606, 35.029049>,  <24.474705, 34.482090, 35.731987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781216, 34.126606, 35.029049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985296, 34.093536, 34.686619>,  <25.107744, 34.073692, 34.481163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985296, 34.093536, 34.686619>,  <24.781216, 34.126606, 35.029049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985296, 34.093536, 34.686619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833411, -0.198311, 0.515848,
		-0.212419, -0.976646, -0.032271,
		0.510201, -0.082681, -0.856072,
		25.138357, 34.068733, 34.429798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334270, 33.577183, 35.308056>,  <24.781216, 34.126606, 35.029049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334270, 33.577183, 35.308056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455042, 33.747139, 34.966694>,  <25.527504, 33.849113, 34.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455042, 33.747139, 34.966694>,  <25.334270, 33.577183, 35.308056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455042, 33.747139, 34.966694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882656, 0.213657, 0.418651,
		0.360219, -0.879668, -0.310526,
		0.301928, 0.424893, -0.853408,
		25.545620, 33.874607, 34.710670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974224, 33.337658, 35.052063>,  <25.334270, 33.577183, 35.308056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974224, 33.337658, 35.052063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987066, 33.719116, 34.932381>,  <25.994772, 33.947990, 34.860569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987066, 33.719116, 34.932381>,  <25.974224, 33.337658, 35.052063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987066, 33.719116, 34.932381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884300, 0.112417, 0.453183,
		0.465813, -0.279139, -0.839702,
		0.032104, 0.953648, -0.299208,
		25.996698, 34.005211, 34.842617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563963, 33.604149, 35.088539>,  <25.974224, 33.337658, 35.052063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563963, 33.604149, 35.088539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476788, 33.968838, 34.949249>,  <26.424482, 34.187653, 34.865677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476788, 33.968838, 34.949249>,  <26.563963, 33.604149, 35.088539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476788, 33.968838, 34.949249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963829, 0.257151, 0.070056,
		0.153418, -0.320360, -0.934790,
		-0.217939, 0.911725, -0.348224,
		26.411406, 34.242355, 34.844784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905548, 33.239590, 34.512474>,  <26.563963, 33.604149, 35.088539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905548, 33.239590, 34.512474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173975, 33.019501, 34.313705>,  <27.335032, 32.887447, 34.194447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173975, 33.019501, 34.313705>,  <26.905548, 33.239590, 34.512474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173975, 33.019501, 34.313705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497556, 0.831123, -0.248340,
		0.549641, -0.080591, 0.831504,
		0.671068, -0.550218, -0.496918,
		27.375296, 32.854435, 34.164631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675833, 33.277996, 34.812710>,  <26.905548, 33.239590, 34.512474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675833, 33.277996, 34.812710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653164, 33.200203, 34.421001>,  <27.639563, 33.153526, 34.185978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653164, 33.200203, 34.421001>,  <27.675833, 33.277996, 34.812710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653164, 33.200203, 34.421001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458107, 0.866431, -0.198585,
		0.887088, -0.459864, 0.039991,
		-0.056672, -0.194482, -0.979268,
		27.636162, 33.141857, 34.127220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391657, 33.260162, 34.444672>,  <27.675833, 33.277996, 34.812710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391657, 33.260162, 34.444672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116528, 33.358940, 34.171638>,  <27.951450, 33.418205, 34.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116528, 33.358940, 34.171638>,  <28.391657, 33.260162, 34.444672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116528, 33.358940, 34.171638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413935, 0.905908, -0.089378,
		0.596288, -0.344022, -0.725320,
		-0.687822, 0.246940, -0.682585,
		27.910181, 33.433022, 33.966862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827097, 33.611713, 33.873077>,  <28.391657, 33.260162, 34.444672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827097, 33.611713, 33.873077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440449, 33.701458, 33.823589>,  <28.208460, 33.755306, 33.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440449, 33.701458, 33.823589>,  <28.827097, 33.611713, 33.873077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440449, 33.701458, 33.823589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247064, 0.944106, -0.218228,
		0.067839, -0.241509, -0.968024,
		-0.966622, 0.224360, -0.123715,
		28.150463, 33.768764, 33.786476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761505, 34.078945, 33.206848>,  <28.827097, 33.611713, 33.873077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761505, 34.078945, 33.206848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456091, 34.128628, 33.460331>,  <28.272842, 34.158436, 33.612423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456091, 34.128628, 33.460331>,  <28.761505, 34.078945, 33.206848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456091, 34.128628, 33.460331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090702, 0.992228, -0.085192,
		-0.639366, -0.007569, -0.768865,
		-0.763534, 0.124206, 0.633710,
		28.227030, 34.165890, 33.650444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176548, 34.528496, 32.970638>,  <28.761505, 34.078945, 33.206848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176548, 34.528496, 32.970638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256363, 34.543846, 33.362293>,  <28.304253, 34.553059, 33.597286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256363, 34.543846, 33.362293>,  <28.176548, 34.528496, 32.970638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256363, 34.543846, 33.362293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322377, 0.941036, -0.102583,
		-0.925342, 0.336121, 0.175401,
		0.199540, 0.038379, 0.979138,
		28.316225, 34.555359, 33.656036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923342, 35.131897, 33.338612>,  <28.176548, 34.528496, 32.970638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923342, 35.131897, 33.338612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255896, 35.003624, 33.520142>,  <28.455427, 34.926659, 33.629059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255896, 35.003624, 33.520142>,  <27.923342, 35.131897, 33.338612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255896, 35.003624, 33.520142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269903, 0.946913, 0.174664,
		-0.485749, -0.022723, 0.873803,
		0.831385, -0.320685, 0.453829,
		28.505310, 34.907417, 33.656292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892181, 35.553806, 34.002777>,  <27.923342, 35.131897, 33.338612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892181, 35.553806, 34.002777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260546, 35.415974, 33.929905>,  <28.481564, 35.333275, 33.886181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260546, 35.415974, 33.929905>,  <27.892181, 35.553806, 34.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260546, 35.415974, 33.929905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365644, 0.925629, 0.097548,
		0.135014, -0.156444, 0.978415,
		0.920910, -0.344581, -0.182176,
		28.536819, 35.312599, 33.875252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058098, 35.028049, 34.443501>,  <27.892181, 35.553806, 34.002777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058098, 35.028049, 34.443501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734436, 35.013111, 34.208939>,  <27.540239, 35.004147, 34.068203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734436, 35.013111, 34.208939>,  <28.058098, 35.028049, 34.443501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734436, 35.013111, 34.208939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272048, -0.908384, -0.317535,
		-0.520821, -0.416466, 0.745185,
		-0.809157, -0.037347, -0.586404,
		27.491690, 35.001907, 34.033016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646189, 34.388805, 34.584629>,  <28.058098, 35.028049, 34.443501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646189, 34.388805, 34.584629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539495, 34.484608, 34.211216>,  <27.475479, 34.542088, 33.987167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539495, 34.484608, 34.211216>,  <27.646189, 34.388805, 34.584629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539495, 34.484608, 34.211216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076794, -0.960268, -0.268305,
		-0.960714, -0.143249, 0.237716,
		-0.266706, 0.239509, -0.933544,
		27.459475, 34.556458, 33.931156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076700, 33.946434, 34.363743>,  <27.646189, 34.388805, 34.584629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076700, 33.946434, 34.363743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317062, 34.066177, 34.067284>,  <27.461279, 34.138023, 33.889408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317062, 34.066177, 34.067284>,  <27.076700, 33.946434, 34.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317062, 34.066177, 34.067284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038995, -0.937097, -0.346883,
		-0.798370, 0.179542, -0.574778,
		0.600904, 0.299354, -0.741149,
		27.497334, 34.155983, 33.844940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803328, 33.828445, 33.638016>,  <27.076700, 33.946434, 34.363743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803328, 33.828445, 33.638016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202589, 33.828354, 33.662296>,  <27.442146, 33.828297, 33.676865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202589, 33.828354, 33.662296>,  <26.803328, 33.828445, 33.638016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202589, 33.828354, 33.662296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009568, -0.986891, -0.161105,
		0.059947, 0.161389, -0.985069,
		0.998156, -0.000233, 0.060705,
		27.502035, 33.828285, 33.680508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048334, 33.401409, 33.023453>,  <26.803328, 33.828445, 33.638016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048334, 33.401409, 33.023453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335354, 33.436188, 33.299877>,  <27.507566, 33.457054, 33.465733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335354, 33.436188, 33.299877>,  <27.048334, 33.401409, 33.023453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335354, 33.436188, 33.299877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113405, -0.993523, 0.007246,
		0.687212, 0.073170, -0.722763,
		0.717551, 0.086944, 0.691058,
		27.550619, 33.462273, 33.507195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548660, 32.908436, 32.834270>,  <27.048334, 33.401409, 33.023453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548660, 32.908436, 32.834270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603039, 32.950130, 33.228359>,  <27.635666, 32.975147, 33.464813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603039, 32.950130, 33.228359>,  <27.548660, 32.908436, 32.834270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603039, 32.950130, 33.228359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073616, -0.990638, 0.114964,
		0.987977, -0.088156, -0.127001,
		0.135947, 0.104232, 0.985218,
		27.643824, 32.981400, 33.523926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917288, 32.359764, 33.017689>,  <27.548660, 32.908436, 32.834270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917288, 32.359764, 33.017689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766083, 32.484467, 33.366383>,  <27.675360, 32.559288, 33.575600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766083, 32.484467, 33.366383>,  <27.917288, 32.359764, 33.017689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766083, 32.484467, 33.366383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196778, -0.947138, 0.253391,
		0.904646, -0.075752, 0.419377,
		-0.378013, 0.311754, 0.871731,
		27.652679, 32.577991, 33.627903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280218, 33.116039, 33.092087>,  <27.917288, 32.359764, 33.017689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280218, 33.116039, 33.092087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257967, 33.031265, 33.482365>,  <28.244616, 32.980400, 33.716534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257967, 33.031265, 33.482365>,  <28.280218, 33.116039, 33.092087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257967, 33.031265, 33.482365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419963, -0.881598, -0.215443,
		0.905835, -0.421742, -0.039965,
		-0.055629, -0.211940, 0.975698,
		28.241278, 32.967682, 33.775074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710337, 32.458118, 33.267567>,  <28.280218, 33.116039, 33.092087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710337, 32.458118, 33.267567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379625, 32.544373, 33.475388>,  <28.181198, 32.596127, 33.600082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379625, 32.544373, 33.475388>,  <28.710337, 32.458118, 33.267567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379625, 32.544373, 33.475388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441929, -0.820440, -0.362736,
		0.348045, -0.529508, 0.773619,
		-0.826779, 0.215636, 0.519555,
		28.131592, 32.609062, 33.631252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231010, 32.165421, 32.850979>,  <28.710337, 32.458118, 33.267567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231010, 32.165421, 32.850979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609577, 32.036816, 32.863144>,  <29.836718, 31.959652, 32.870441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609577, 32.036816, 32.863144>,  <29.231010, 32.165421, 32.850979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609577, 32.036816, 32.863144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274926, -0.851518, -0.446468,
		0.169441, 0.414183, -0.894283,
		0.946417, -0.321512, 0.030412,
		29.893503, 31.940363, 32.872269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499392, 31.940226, 32.146252>,  <29.231010, 32.165421, 32.850979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499392, 31.940226, 32.146252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707403, 31.763468, 32.438633>,  <29.832211, 31.657413, 32.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707403, 31.763468, 32.438633>,  <29.499392, 31.940226, 32.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707403, 31.763468, 32.438633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022303, -0.848456, -0.528795,
		0.853857, 0.291292, -0.431367,
		0.520030, -0.441895, 0.730956,
		29.863413, 31.630899, 32.657921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085938, 31.577080, 31.854662>,  <29.499392, 31.940226, 32.146252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085938, 31.577080, 31.854662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003365, 31.392769, 32.199932>,  <29.953821, 31.282183, 32.407093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003365, 31.392769, 32.199932>,  <30.085938, 31.577080, 31.854662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003365, 31.392769, 32.199932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074704, -0.887023, -0.455642,
		0.975605, -0.029577, 0.217532,
		-0.206432, -0.460777, 0.863175,
		29.941435, 31.254536, 32.458885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696243, 31.052891, 32.136795>,  <30.085938, 31.577080, 31.854662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696243, 31.052891, 32.136795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312963, 30.968212, 32.213776>,  <30.082996, 30.917406, 32.259964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312963, 30.968212, 32.213776>,  <30.696243, 31.052891, 32.136795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312963, 30.968212, 32.213776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050964, -0.788217, -0.613283,
		0.281525, -0.577839, 0.766058,
		-0.958200, -0.211696, 0.192454,
		30.025503, 30.904703, 32.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604351, 30.429752, 32.594402>,  <30.696243, 31.052891, 32.136795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604351, 30.429752, 32.594402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327576, 30.502880, 32.315033>,  <30.161510, 30.546757, 32.147411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327576, 30.502880, 32.315033>,  <30.604351, 30.429752, 32.594402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327576, 30.502880, 32.315033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348421, -0.762730, -0.544836,
		-0.632315, -0.620339, 0.464066,
		-0.691940, 0.182817, -0.698424,
		30.119993, 30.557726, 32.105507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139751, 29.980621, 32.431011>,  <30.604351, 30.429752, 32.594402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139751, 29.980621, 32.431011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289141, 30.144848, 32.098278>,  <30.378775, 30.243383, 31.898638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289141, 30.144848, 32.098278>,  <30.139751, 29.980621, 32.431011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289141, 30.144848, 32.098278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505618, -0.841907, -0.188528,
		-0.777732, -0.350180, -0.522022,
		0.373476, 0.410568, -0.831835,
		30.401184, 30.268019, 31.848728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215719, 29.524199, 31.862465>,  <30.139751, 29.980621, 32.431011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215719, 29.524199, 31.862465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496368, 29.795214, 31.774220>,  <30.664757, 29.957823, 31.721272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496368, 29.795214, 31.774220>,  <30.215719, 29.524199, 31.862465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496368, 29.795214, 31.774220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563078, -0.716932, -0.411038,
		-0.436658, 0.164171, -0.884521,
		0.701621, 0.677538, -0.220613,
		30.706856, 29.998474, 31.708036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323944, 29.411245, 31.178162>,  <30.215719, 29.524199, 31.862465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323944, 29.411245, 31.178162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651995, 29.601826, 31.304895>,  <30.848825, 29.716175, 31.380936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651995, 29.601826, 31.304895>,  <30.323944, 29.411245, 31.178162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651995, 29.601826, 31.304895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562203, -0.773965, -0.291386,
		0.106386, 0.417098, -0.902614,
		0.820128, 0.476453, 0.316832,
		30.898033, 29.744762, 31.399944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261600, 29.459957, 30.414577>,  <30.323944, 29.411245, 31.178162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261600, 29.459957, 30.414577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046871, 29.123163, 30.436052>,  <29.918034, 28.921087, 30.448938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046871, 29.123163, 30.436052>,  <30.261600, 29.459957, 30.414577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046871, 29.123163, 30.436052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064327, -0.104297, -0.992464,
		0.841238, -0.529326, 0.110151,
		-0.536825, -0.841984, 0.053689,
		29.885824, 28.870567, 30.452160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501757, 29.013000, 29.958347>,  <30.261600, 29.459957, 30.414577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501757, 29.013000, 29.958347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151958, 28.834105, 30.033426>,  <29.942080, 28.726767, 30.078474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151958, 28.834105, 30.033426>,  <30.501757, 29.013000, 29.958347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151958, 28.834105, 30.033426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001083, -0.385178, -0.922841,
		0.485031, -0.807225, 0.336353,
		-0.874496, -0.447242, 0.187698,
		29.889610, 28.699932, 30.089735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538261, 28.280851, 29.906481>,  <30.501757, 29.013000, 29.958347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538261, 28.280851, 29.906481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155556, 28.367428, 29.828754>,  <29.925932, 28.419373, 29.782118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155556, 28.367428, 29.828754>,  <30.538261, 28.280851, 29.906481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155556, 28.367428, 29.828754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071086, -0.473807, -0.877755,
		-0.282048, -0.853617, 0.437935,
		-0.956763, 0.216438, -0.194317,
		29.868526, 28.432360, 29.770460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255386, 28.119349, 30.184132>,  <30.538261, 28.280851, 29.906481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255386, 28.119349, 30.184132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067232, 28.100893, 29.831631>,  <30.954340, 28.089819, 29.620131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067232, 28.100893, 29.831631>,  <31.255386, 28.119349, 30.184132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067232, 28.100893, 29.831631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430564, -0.859699, 0.274832,
		-0.770293, 0.508714, 0.384525,
		-0.470387, -0.046139, -0.881254,
		30.926117, 28.087051, 29.567255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516897, 28.129885, 30.846571>,  <31.255386, 28.119349, 30.184132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516897, 28.129885, 30.846571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534506, 27.749117, 30.967840>,  <31.545071, 27.520657, 31.040602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534506, 27.749117, 30.967840>,  <31.516897, 28.129885, 30.846571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534506, 27.749117, 30.967840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238016, -0.284734, -0.928588,
		0.970263, 0.113040, 0.214036,
		0.044024, -0.951919, 0.303172,
		31.547712, 27.463541, 31.058792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910810, 28.618708, 30.701900>,  <31.516897, 28.129885, 30.846571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910810, 28.618708, 30.701900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193893, 28.543240, 30.974239>,  <31.363743, 28.497959, 31.137642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193893, 28.543240, 30.974239>,  <30.910810, 28.618708, 30.701900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193893, 28.543240, 30.974239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057330, 0.975841, 0.210826,
		-0.704175, -0.110171, 0.701427,
		0.707708, -0.188671, 0.680847,
		31.406206, 28.486639, 31.178493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770912, 28.784903, 31.508411>,  <30.910810, 28.618708, 30.701900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770912, 28.784903, 31.508411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155565, 28.821360, 31.404909>,  <31.386356, 28.843235, 31.342808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155565, 28.821360, 31.404909>,  <30.770912, 28.784903, 31.508411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155565, 28.821360, 31.404909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060542, 0.990448, 0.123881,
		0.267576, -0.103462, 0.957966,
		0.961633, 0.091145, -0.258757,
		31.444056, 28.848703, 31.327282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260225, 29.037792, 32.026577>,  <30.770912, 28.784903, 31.508411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260225, 29.037792, 32.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406015, 29.145254, 31.669930>,  <31.493490, 29.209730, 31.455942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406015, 29.145254, 31.669930>,  <31.260225, 29.037792, 32.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406015, 29.145254, 31.669930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088714, 0.963143, 0.253940,
		0.926977, -0.013456, 0.374876,
		0.364476, 0.268653, -0.891618,
		31.515358, 29.225851, 31.402445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793325, 29.505251, 32.055943>,  <31.260225, 29.037792, 32.026577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793325, 29.505251, 32.055943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636383, 29.580740, 31.695845>,  <31.542217, 29.626034, 31.479786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636383, 29.580740, 31.695845>,  <31.793325, 29.505251, 32.055943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636383, 29.580740, 31.695845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171698, 0.946495, 0.273251,
		0.903646, 0.261781, -0.338959,
		-0.392355, 0.188724, -0.900245,
		31.518677, 29.637358, 31.425772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001274, 30.274252, 31.748173>,  <31.793325, 29.505251, 32.055943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001274, 30.274252, 31.748173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652588, 30.124014, 31.622292>,  <31.443375, 30.033871, 31.546762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652588, 30.124014, 31.622292>,  <32.001274, 30.274252, 31.748173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652588, 30.124014, 31.622292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469089, 0.825302, 0.314376,
		0.141646, 0.421670, -0.895617,
		-0.871718, -0.375594, -0.314702,
		31.391073, 30.011335, 31.527882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565647, 30.904284, 31.472284>,  <32.001274, 30.274252, 31.748173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565647, 30.904284, 31.472284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285257, 30.625448, 31.532557>,  <31.117023, 30.458147, 31.568720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285257, 30.625448, 31.532557>,  <31.565647, 30.904284, 31.472284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285257, 30.625448, 31.532557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689334, 0.716420, 0.107519,
		-0.182902, -0.028503, -0.982718,
		-0.700975, -0.697086, 0.150683,
		31.074965, 30.416323, 31.577761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047144, 31.005989, 30.962479>,  <31.565647, 30.904284, 31.472284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047144, 31.005989, 30.962479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913149, 30.842560, 31.302092>,  <30.832752, 30.744503, 31.505859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913149, 30.842560, 31.302092>,  <31.047144, 31.005989, 30.962479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913149, 30.842560, 31.302092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776966, 0.629533, -0.003608,
		-0.533018, -0.660876, -0.528332,
		-0.334986, -0.408572, 0.849030,
		30.812653, 30.719988, 31.556801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268520, 30.890326, 30.883158>,  <31.047144, 31.005989, 30.962479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268520, 30.890326, 30.883158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255527, 31.230021, 30.672354>,  <30.247732, 31.433838, 30.545872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255527, 31.230021, 30.672354>,  <30.268520, 30.890326, 30.883158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255527, 31.230021, 30.672354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968706, -0.103071, -0.225797,
		-0.246075, -0.517851, -0.819315,
		-0.032481, 0.849239, -0.527009,
		30.245783, 31.484793, 30.514252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419119, 30.750013, 30.263964>,  <30.268520, 30.890326, 30.883158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419119, 30.750013, 30.263964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525177, 31.129438, 30.333166>,  <30.588812, 31.357094, 30.374687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525177, 31.129438, 30.333166>,  <30.419119, 30.750013, 30.263964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525177, 31.129438, 30.333166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938757, -0.213002, -0.270859,
		-0.220075, 0.234228, -0.946945,
		0.265144, 0.948561, 0.173007,
		30.604721, 31.414007, 30.385069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767782, 31.089464, 29.704494>,  <30.419119, 30.750013, 30.263964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767782, 31.089464, 29.704494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909298, 31.253918, 30.040543>,  <30.994207, 31.352589, 30.242172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909298, 31.253918, 30.040543>,  <30.767782, 31.089464, 29.704494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909298, 31.253918, 30.040543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935204, -0.169918, -0.310680,
		0.015022, 0.895600, -0.444607,
		0.353791, 0.411131, 0.840121,
		31.015436, 31.377256, 30.292580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321190, 31.516937, 29.508495>,  <30.767782, 31.089464, 29.704494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321190, 31.516937, 29.508495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392624, 31.407656, 29.886589>,  <31.435484, 31.342087, 30.113445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392624, 31.407656, 29.886589>,  <31.321190, 31.516937, 29.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392624, 31.407656, 29.886589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892816, -0.358738, -0.272371,
		0.413504, 0.892562, 0.179854,
		0.178587, -0.273203, 0.945234,
		31.446199, 31.325695, 30.170158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964701, 31.917997, 29.872517>,  <31.321190, 31.516937, 29.508495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964701, 31.917997, 29.872517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919191, 31.558006, 30.040850>,  <31.891886, 31.342012, 30.141850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919191, 31.558006, 30.040850>,  <31.964701, 31.917997, 29.872517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919191, 31.558006, 30.040850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932437, -0.242945, -0.267468,
		0.342954, 0.361969, 0.866811,
		-0.113773, -0.899976, 0.420832,
		31.885059, 31.288013, 30.167099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399399, 31.719978, 30.504562>,  <31.964701, 31.917997, 29.872517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399399, 31.719978, 30.504562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316418, 31.395428, 30.285973>,  <32.266628, 31.200697, 30.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316418, 31.395428, 30.285973>,  <32.399399, 31.719978, 30.504562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316418, 31.395428, 30.285973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964160, -0.264041, 0.026011,
		-0.165396, -0.521491, 0.837073,
		-0.207457, -0.811375, -0.546472,
		32.254181, 31.152016, 30.122030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834278, 32.181664, 30.823788>,  <32.399399, 31.719978, 30.504562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834278, 32.181664, 30.823788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157890, 32.276905, 31.038740>,  <33.352058, 32.334049, 31.167711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157890, 32.276905, 31.038740>,  <32.834278, 32.181664, 30.823788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157890, 32.276905, 31.038740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293739, -0.628130, 0.720535,
		0.509106, -0.740784, -0.438236,
		0.809030, 0.238102, 0.537381,
		33.400600, 32.348335, 31.199955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334103, 31.535681, 31.005011>,  <32.834278, 32.181664, 30.823788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334103, 31.535681, 31.005011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280540, 31.848989, 31.247847>,  <33.248402, 32.036976, 31.393547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280540, 31.848989, 31.247847>,  <33.334103, 31.535681, 31.005011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280540, 31.848989, 31.247847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521977, -0.576485, 0.628653,
		0.842383, -0.232706, 0.486044,
		-0.133906, 0.783271, 0.607089,
		33.240368, 32.083969, 31.429974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313740, 31.263866, 31.631529>,  <33.334103, 31.535681, 31.005011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313740, 31.263866, 31.631529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115131, 31.606342, 31.688665>,  <32.995964, 31.811829, 31.722946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115131, 31.606342, 31.688665>,  <33.313740, 31.263866, 31.631529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115131, 31.606342, 31.688665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630693, -0.468913, 0.618341,
		0.596396, 0.216934, 0.772820,
		-0.496525, 0.856189, 0.142839,
		32.966175, 31.863199, 31.731518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198334, 31.395870, 32.359837>,  <33.313740, 31.263866, 31.631529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198334, 31.395870, 32.359837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909882, 31.554007, 32.132267>,  <32.736813, 31.648888, 31.995724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909882, 31.554007, 32.132267>,  <33.198334, 31.395870, 32.359837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909882, 31.554007, 32.132267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689273, -0.326632, 0.646695,
		0.069835, 0.858497, 0.508042,
		-0.721128, 0.395342, -0.568928,
		32.693542, 31.672609, 31.961588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355732, 30.935581, 32.854671>,  <33.198334, 31.395870, 32.359837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355732, 30.935581, 32.854671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739124, 31.026829, 32.923107>,  <33.969162, 31.081577, 32.964169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739124, 31.026829, 32.923107>,  <33.355732, 30.935581, 32.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739124, 31.026829, 32.923107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165518, -0.043497, 0.985247,
		0.232195, -0.972661, -0.003933,
		0.958483, 0.228118, 0.171093,
		34.026669, 31.095264, 32.974434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524399, 30.564375, 33.331779>,  <33.355732, 30.935581, 32.854671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524399, 30.564375, 33.331779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725384, 30.908808, 33.362923>,  <33.845974, 31.115467, 33.381611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725384, 30.908808, 33.362923>,  <33.524399, 30.564375, 33.331779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725384, 30.908808, 33.362923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372113, 0.134090, 0.918451,
		0.780422, -0.490464, 0.387796,
		0.502467, 0.861084, 0.077862,
		33.876125, 31.167133, 33.386280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808212, 30.528658, 34.031025>,  <33.524399, 30.564375, 33.331779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808212, 30.528658, 34.031025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798401, 30.910666, 33.912811>,  <33.792515, 31.139870, 33.841885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798401, 30.910666, 33.912811>,  <33.808212, 30.528658, 34.031025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798401, 30.910666, 33.912811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479366, 0.248185, 0.841791,
		0.877272, 0.162315, 0.451716,
		-0.024526, 0.955017, -0.295534,
		33.791042, 31.197170, 33.824150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100285, 31.008692, 34.588974>,  <33.808212, 30.528658, 34.031025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100285, 31.008692, 34.588974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849873, 31.190197, 34.335300>,  <33.699627, 31.299101, 34.183098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849873, 31.190197, 34.335300>,  <34.100285, 31.008692, 34.588974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849873, 31.190197, 34.335300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500502, 0.389838, 0.772997,
		0.597987, 0.801327, -0.016939,
		-0.626027, 0.453764, -0.634184,
		33.662064, 31.326326, 34.145046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949543, 31.791832, 34.806934>,  <34.100285, 31.008692, 34.588974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949543, 31.791832, 34.806934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623547, 31.649160, 34.624260>,  <33.427948, 31.563559, 34.514656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623547, 31.649160, 34.624260>,  <33.949543, 31.791832, 34.806934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623547, 31.649160, 34.624260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553329, 0.244991, 0.796120,
		-0.172074, 0.901533, -0.397026,
		-0.814996, -0.356677, -0.456688,
		33.379047, 31.542158, 34.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402969, 32.333992, 34.768608>,  <33.949543, 31.791832, 34.806934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402969, 32.333992, 34.768608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287472, 31.951097, 34.775845>,  <33.218174, 31.721361, 34.780186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287472, 31.951097, 34.775845>,  <33.402969, 32.333992, 34.768608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287472, 31.951097, 34.775845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636387, 0.206014, 0.743351,
		-0.715289, 0.203125, -0.668657,
		-0.288746, -0.957235, 0.018094,
		33.200848, 31.663927, 34.781273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606056, 32.261105, 34.863491>,  <33.402969, 32.333992, 34.768608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606056, 32.261105, 34.863491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782711, 31.925869, 34.991589>,  <32.888706, 31.724726, 35.068447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782711, 31.925869, 34.991589>,  <32.606056, 32.261105, 34.863491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782711, 31.925869, 34.991589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635492, -0.040250, 0.771058,
		-0.633329, -0.544040, -0.550377,
		0.441639, -0.838093, 0.320241,
		32.915203, 31.674440, 35.087662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237621, 31.628490, 34.817207>,  <32.606056, 32.261105, 34.863491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237621, 31.628490, 34.817207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482044, 31.576607, 35.129562>,  <32.628696, 31.545477, 35.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482044, 31.576607, 35.129562>,  <32.237621, 31.628490, 34.817207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482044, 31.576607, 35.129562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785452, 0.023227, 0.618487,
		-0.098362, -0.991280, -0.087689,
		0.611057, -0.129711, 0.780888,
		32.665359, 31.537693, 35.363827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748878, 31.238308, 34.458454>,  <32.237621, 31.628490, 34.817207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748878, 31.238308, 34.458454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876385, 31.615347, 34.498257>,  <32.952888, 31.841570, 34.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876385, 31.615347, 34.498257>,  <32.748878, 31.238308, 34.458454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876385, 31.615347, 34.498257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425284, -0.048417, -0.903764,
		-0.847068, 0.330404, -0.416305,
		0.318763, 0.942597, 0.099503,
		32.972015, 31.898127, 34.528107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622391, 31.639172, 33.857307>,  <32.748878, 31.238308, 34.458454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622391, 31.639172, 33.857307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940628, 31.760040, 34.067345>,  <33.131569, 31.832561, 34.193367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940628, 31.760040, 34.067345>,  <32.622391, 31.639172, 33.857307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940628, 31.760040, 34.067345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601950, -0.296335, -0.741513,
		-0.068462, 0.906023, -0.417655,
		0.795594, 0.302173, 0.525093,
		33.179306, 31.850693, 34.224873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112804, 32.207138, 33.461224>,  <32.622391, 31.639172, 33.857307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112804, 32.207138, 33.461224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305672, 31.965982, 33.715481>,  <33.421391, 31.821289, 33.868034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305672, 31.965982, 33.715481>,  <33.112804, 32.207138, 33.461224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305672, 31.965982, 33.715481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674656, -0.207334, -0.708415,
		0.558885, 0.770414, 0.306772,
		0.482169, -0.602888, 0.635640,
		33.450321, 31.785116, 33.906174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731583, 32.446632, 33.361252>,  <33.112804, 32.207138, 33.461224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731583, 32.446632, 33.361252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754013, 32.072372, 33.500629>,  <33.767471, 31.847816, 33.584255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754013, 32.072372, 33.500629>,  <33.731583, 32.446632, 33.361252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754013, 32.072372, 33.500629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720835, -0.203538, -0.662548,
		0.690835, 0.288326, 0.663035,
		0.056076, -0.935650, 0.348446,
		33.770836, 31.791677, 33.605164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501575, 32.251163, 33.622505>,  <33.731583, 32.446632, 33.361252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501575, 32.251163, 33.622505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289299, 31.930378, 33.512798>,  <34.161934, 31.737906, 33.446976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289299, 31.930378, 33.512798>,  <34.501575, 32.251163, 33.622505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289299, 31.930378, 33.512798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672852, -0.201856, -0.711705,
		0.515401, -0.562233, 0.646727,
		-0.530690, -0.801965, -0.274262,
		34.130093, 31.689789, 33.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954189, 31.678560, 33.500092>,  <34.501575, 32.251163, 33.622505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954189, 31.678560, 33.500092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607601, 31.631670, 33.305984>,  <34.399647, 31.603535, 33.189518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607601, 31.631670, 33.305984>,  <34.954189, 31.678560, 33.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607601, 31.631670, 33.305984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491197, -0.026511, -0.870645,
		0.089201, -0.992751, 0.080554,
		-0.866469, -0.117231, -0.485272,
		34.347660, 31.596502, 33.160404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016708, 31.137831, 33.058971>,  <34.954189, 31.678560, 33.500092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016708, 31.137831, 33.058971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778038, 31.446054, 32.969337>,  <34.634834, 31.630989, 32.915558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778038, 31.446054, 32.969337>,  <35.016708, 31.137831, 33.058971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778038, 31.446054, 32.969337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554355, 0.193887, -0.809381,
		-0.580227, -0.607165, -0.542851,
		-0.596680, 0.770557, -0.224086,
		34.599033, 31.677221, 32.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786491, 31.020140, 32.342133>,  <35.016708, 31.137831, 33.058971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786491, 31.020140, 32.342133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805637, 31.408335, 32.436672>,  <34.817127, 31.641253, 32.493397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805637, 31.408335, 32.436672>,  <34.786491, 31.020140, 32.342133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805637, 31.408335, 32.436672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575888, 0.166518, -0.800391,
		-0.816126, 0.174422, -0.550922,
		0.047868, 0.970489, 0.236347,
		34.819996, 31.699482, 32.507576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496143, 31.410667, 31.847857>,  <34.786491, 31.020140, 32.342133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496143, 31.410667, 31.847857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759293, 31.663099, 32.012264>,  <34.917183, 31.814558, 32.110909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759293, 31.663099, 32.012264>,  <34.496143, 31.410667, 31.847857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759293, 31.663099, 32.012264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338198, 0.240081, -0.909936,
		-0.672918, 0.737633, -0.055485,
		0.657877, 0.631077, 0.411021,
		34.956657, 31.852423, 32.135571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526722, 32.032948, 31.401745>,  <34.496143, 31.410667, 31.847857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526722, 32.032948, 31.401745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854553, 32.067039, 31.628382>,  <35.051250, 32.087494, 31.764364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854553, 32.067039, 31.628382>,  <34.526722, 32.032948, 31.401745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854553, 32.067039, 31.628382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475234, 0.451281, -0.755314,
		-0.320068, 0.888303, 0.329356,
		0.819579, 0.085231, 0.566592,
		35.100426, 32.092609, 31.798359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754185, 32.701889, 31.297974>,  <34.526722, 32.032948, 31.401745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754185, 32.701889, 31.297974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078362, 32.518013, 31.443226>,  <35.272869, 32.407688, 31.530376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078362, 32.518013, 31.443226>,  <34.754185, 32.701889, 31.297974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078362, 32.518013, 31.443226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567894, 0.464365, -0.679604,
		0.143780, 0.757002, 0.637397,
		0.810446, -0.459688, 0.363131,
		35.321495, 32.380108, 31.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388336, 33.247009, 31.410728>,  <34.754185, 32.701889, 31.297974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388336, 33.247009, 31.410728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551483, 32.881847, 31.404408>,  <35.649372, 32.662750, 31.400616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551483, 32.881847, 31.404408>,  <35.388336, 33.247009, 31.410728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551483, 32.881847, 31.404408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688953, 0.319077, -0.650794,
		0.599154, 0.254553, 0.759090,
		0.407870, -0.912903, -0.015801,
		35.673843, 32.607975, 31.399668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064903, 33.416378, 31.327127>,  <35.388336, 33.247009, 31.410728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064903, 33.416378, 31.327127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089149, 33.024406, 31.251169>,  <36.103699, 32.789223, 31.205595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089149, 33.024406, 31.251169>,  <36.064903, 33.416378, 31.327127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089149, 33.024406, 31.251169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670811, 0.180869, -0.719235,
		0.739147, -0.083787, 0.668312,
		0.060614, -0.979932, -0.189894,
		36.107334, 32.730427, 31.194201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829975, 33.282753, 31.202101>,  <36.064903, 33.416378, 31.327127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829975, 33.282753, 31.202101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585869, 33.018345, 31.027458>,  <36.439404, 32.859699, 30.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585869, 33.018345, 31.027458>,  <36.829975, 33.282753, 31.202101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585869, 33.018345, 31.027458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395440, 0.223374, -0.890916,
		0.686442, -0.716348, 0.125077,
		-0.610267, -0.661022, -0.436606,
		36.402790, 32.820038, 30.896477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232628, 33.051453, 30.647467>,  <36.829975, 33.282753, 31.202101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232628, 33.051453, 30.647467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868835, 32.927593, 30.536497>,  <36.650558, 32.853279, 30.469915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868835, 32.927593, 30.536497>,  <37.232628, 33.051453, 30.647467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868835, 32.927593, 30.536497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188315, 0.288095, -0.938903,
		0.370654, -0.906157, -0.203705,
		-0.909480, -0.309647, -0.277426,
		36.595993, 32.834702, 30.453270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381268, 32.599026, 30.060783>,  <37.232628, 33.051453, 30.647467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381268, 32.599026, 30.060783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002033, 32.725342, 30.045757>,  <36.774494, 32.801132, 30.036741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002033, 32.725342, 30.045757>,  <37.381268, 32.599026, 30.060783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002033, 32.725342, 30.045757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115901, 0.233116, -0.965517,
		-0.296143, -0.919747, -0.257614,
		-0.948086, 0.315789, -0.037564,
		36.717606, 32.820080, 30.034489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074631, 32.351578, 29.351057>,  <37.381268, 32.599026, 30.060783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074631, 32.351578, 29.351057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834152, 32.642036, 29.484491>,  <36.689865, 32.816311, 29.564552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834152, 32.642036, 29.484491>,  <37.074631, 32.351578, 29.351057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834152, 32.642036, 29.484491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195475, 0.271133, -0.942484,
		-0.774826, -0.631824, -0.021060,
		-0.601194, 0.726145, 0.333586,
		36.653793, 32.859879, 29.584568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570961, 32.390301, 28.814146>,  <37.074631, 32.351578, 29.351057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570961, 32.390301, 28.814146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552261, 32.738506, 29.010115>,  <36.541042, 32.947430, 29.127695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552261, 32.738506, 29.010115>,  <36.570961, 32.390301, 28.814146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552261, 32.738506, 29.010115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068992, 0.486471, -0.870969,
		-0.996521, -0.074518, 0.037317,
		-0.046749, 0.870513, 0.489920,
		36.538239, 32.999660, 29.157091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112656, 32.823761, 28.456861>,  <36.570961, 32.390301, 28.814146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112656, 32.823761, 28.456861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342747, 33.081711, 28.658154>,  <36.480801, 33.236481, 28.778929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342747, 33.081711, 28.658154>,  <36.112656, 32.823761, 28.456861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342747, 33.081711, 28.658154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062059, 0.579026, -0.812944,
		-0.815634, 0.498860, 0.293052,
		0.575230, 0.644878, 0.503232,
		36.515316, 33.275173, 28.809122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859661, 33.455627, 28.230793>,  <36.112656, 32.823761, 28.456861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859661, 33.455627, 28.230793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211559, 33.553230, 28.394020>,  <36.422699, 33.611790, 28.491957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211559, 33.553230, 28.394020>,  <35.859661, 33.455627, 28.230793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211559, 33.553230, 28.394020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122389, 0.713123, -0.690273,
		-0.459431, 0.657204, 0.597500,
		0.879741, 0.244005, 0.408065,
		36.475483, 33.626431, 28.516439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816967, 34.208076, 28.167902>,  <35.859661, 33.455627, 28.230793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816967, 34.208076, 28.167902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198940, 34.108387, 28.232388>,  <36.428123, 34.048573, 28.271080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198940, 34.108387, 28.232388>,  <35.816967, 34.208076, 28.167902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198940, 34.108387, 28.232388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292057, 0.691976, -0.660206,
		0.052985, 0.677536, 0.733579,
		0.954932, -0.249228, 0.161215,
		36.485420, 34.033619, 28.280752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314095, 34.874187, 28.303169>,  <35.816967, 34.208076, 28.167902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314095, 34.874187, 28.303169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513580, 34.562622, 28.151077>,  <36.633274, 34.375683, 28.059822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513580, 34.562622, 28.151077>,  <36.314095, 34.874187, 28.303169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513580, 34.562622, 28.151077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235312, 0.543872, -0.805501,
		0.834211, 0.312245, 0.454527,
		0.498718, -0.778913, -0.380230,
		36.663197, 34.328949, 28.037008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964314, 35.131939, 28.056715>,  <36.314095, 34.874187, 28.303169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964314, 35.131939, 28.056715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882927, 34.792797, 27.860861>,  <36.834095, 34.589314, 27.743349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882927, 34.792797, 27.860861>,  <36.964314, 35.131939, 28.056715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882927, 34.792797, 27.860861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234064, 0.443473, -0.865185,
		0.950692, -0.290640, 0.108222,
		-0.203464, -0.847856, -0.489635,
		36.821888, 34.538441, 27.713970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518692, 35.133106, 27.674797>,  <36.964314, 35.131939, 28.056715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518692, 35.133106, 27.674797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284752, 34.865215, 27.491745>,  <37.144390, 34.704483, 27.381914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284752, 34.865215, 27.491745>,  <37.518692, 35.133106, 27.674797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284752, 34.865215, 27.491745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338709, 0.311001, -0.888006,
		0.737042, -0.674350, 0.044955,
		-0.584846, -0.669724, -0.457629,
		37.109299, 34.664299, 27.354456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932751, 34.801796, 27.267887>,  <37.518692, 35.133106, 27.674797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932751, 34.801796, 27.267887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573223, 34.720554, 27.112520>,  <37.357506, 34.671810, 27.019300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573223, 34.720554, 27.112520>,  <37.932751, 34.801796, 27.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573223, 34.720554, 27.112520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270098, 0.441267, -0.855763,
		0.345207, -0.874089, -0.341762,
		-0.898821, -0.203106, -0.388418,
		37.303577, 34.659622, 26.995995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091709, 34.508762, 26.624285>,  <37.932751, 34.801796, 27.267887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091709, 34.508762, 26.624285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719574, 34.655045, 26.613504>,  <37.496292, 34.742813, 26.607037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719574, 34.655045, 26.613504>,  <38.091709, 34.508762, 26.624285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719574, 34.655045, 26.613504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243496, 0.561134, -0.791100,
		-0.274188, -0.742554, -0.611093,
		-0.930339, 0.365708, -0.026953,
		37.440472, 34.764755, 26.605419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929714, 34.517403, 25.914734>,  <38.091709, 34.508762, 26.624285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929714, 34.517403, 25.914734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638966, 34.750954, 26.059368>,  <37.464516, 34.891087, 26.146149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638966, 34.750954, 26.059368>,  <37.929714, 34.517403, 25.914734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638966, 34.750954, 26.059368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066738, 0.584058, -0.808964,
		-0.683527, -0.563878, -0.463500,
		-0.726867, 0.583882, 0.361588,
		37.420906, 34.926117, 26.167845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556660, 34.741043, 25.340086>,  <37.929714, 34.517403, 25.914734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556660, 34.741043, 25.340086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470081, 34.986351, 25.643940>,  <37.418133, 35.133537, 25.826252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470081, 34.986351, 25.643940>,  <37.556660, 34.741043, 25.340086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470081, 34.986351, 25.643940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083785, 0.763541, -0.640301,
		-0.972692, -0.202237, -0.113883,
		-0.216447, 0.613274, 0.759635,
		37.405148, 35.170334, 25.871830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872604, 35.082737, 25.095463>,  <37.556660, 34.741043, 25.340086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872604, 35.082737, 25.095463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076763, 35.323109, 25.341513>,  <37.199257, 35.467331, 25.489143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076763, 35.323109, 25.341513>,  <36.872604, 35.082737, 25.095463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076763, 35.323109, 25.341513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133073, 0.761889, -0.633890,
		-0.849580, 0.241679, 0.468834,
		0.510397, 0.600930, 0.615124,
		37.229881, 35.503387, 25.526051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634556, 35.717384, 24.918667>,  <36.872604, 35.082737, 25.095463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634556, 35.717384, 24.918667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957439, 35.824154, 25.129253>,  <37.151169, 35.888218, 25.255606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957439, 35.824154, 25.129253>,  <36.634556, 35.717384, 24.918667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957439, 35.824154, 25.129253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157307, 0.762375, -0.627726,
		-0.568923, 0.589521, 0.573404,
		0.807206, 0.266927, 0.526468,
		37.199600, 35.904232, 25.287193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499485, 36.351887, 25.081442>,  <36.634556, 35.717384, 24.918667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499485, 36.351887, 25.081442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895206, 36.325886, 25.133688>,  <37.132637, 36.310287, 25.165035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895206, 36.325886, 25.133688>,  <36.499485, 36.351887, 25.081442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895206, 36.325886, 25.133688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111567, 0.913940, -0.390213,
		-0.094010, 0.400610, 0.911413,
		0.989300, -0.065000, 0.130614,
		37.191998, 36.306385, 25.172873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650986, 37.008949, 25.186878>,  <36.499485, 36.351887, 25.081442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650986, 37.008949, 25.186878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002972, 36.843266, 25.093851>,  <37.214165, 36.743855, 25.038034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002972, 36.843266, 25.093851>,  <36.650986, 37.008949, 25.186878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002972, 36.843266, 25.093851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310210, 0.871840, -0.379032,
		0.359760, 0.261391, 0.895683,
		0.879967, -0.414210, -0.232567,
		37.266960, 36.719002, 25.024080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189533, 37.480888, 25.342617>,  <36.650986, 37.008949, 25.186878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189533, 37.480888, 25.342617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322865, 37.223694, 25.066805>,  <37.402863, 37.069378, 24.901318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322865, 37.223694, 25.066805>,  <37.189533, 37.480888, 25.342617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322865, 37.223694, 25.066805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142660, 0.757335, -0.637253,
		0.931954, 0.114047, 0.344172,
		0.333330, -0.642990, -0.689532,
		37.422863, 37.030796, 24.859945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838223, 37.638371, 25.146215>,  <37.189533, 37.480888, 25.342617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838223, 37.638371, 25.146215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689545, 37.436993, 24.834221>,  <37.600338, 37.316166, 24.647024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689545, 37.436993, 24.834221>,  <37.838223, 37.638371, 25.146215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689545, 37.436993, 24.834221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336988, 0.709706, -0.618673,
		0.865032, -0.492806, -0.094140,
		-0.371697, -0.503448, -0.779988,
		37.578037, 37.285957, 24.600225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267338, 37.808716, 24.579020>,  <37.838223, 37.638371, 25.146215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267338, 37.808716, 24.579020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991768, 37.625549, 24.354273>,  <37.826424, 37.515648, 24.219425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991768, 37.625549, 24.354273>,  <38.267338, 37.808716, 24.579020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991768, 37.625549, 24.354273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198104, 0.626701, -0.753658,
		0.697233, -0.630523, -0.341038,
		-0.688928, -0.457914, -0.561866,
		37.785091, 37.488174, 24.185713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549011, 37.820766, 23.965311>,  <38.267338, 37.808716, 24.579020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549011, 37.820766, 23.965311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163357, 37.765022, 23.874954>,  <37.931965, 37.731575, 23.820740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163357, 37.765022, 23.874954>,  <38.549011, 37.820766, 23.965311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163357, 37.765022, 23.874954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072838, 0.679476, -0.730074,
		0.255232, -0.720341, -0.644954,
		-0.964133, -0.139361, -0.225892,
		37.874119, 37.723213, 23.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435684, 37.661388, 23.230639>,  <38.549011, 37.820766, 23.965311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435684, 37.661388, 23.230639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100555, 37.833878, 23.364567>,  <37.899479, 37.937370, 23.444923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100555, 37.833878, 23.364567>,  <38.435684, 37.661388, 23.230639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100555, 37.833878, 23.364567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059159, 0.681380, -0.729535,
		-0.542735, -0.591409, -0.596384,
		-0.837818, 0.431226, 0.334822,
		37.849209, 37.963245, 23.465014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259926, 37.910366, 22.684961>,  <38.435684, 37.661388, 23.230639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259926, 37.910366, 22.684961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044926, 38.125507, 22.944746>,  <37.915924, 38.254593, 23.100616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044926, 38.125507, 22.944746>,  <38.259926, 37.910366, 22.684961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044926, 38.125507, 22.944746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069199, 0.795717, -0.601703,
		-0.840417, -0.278476, -0.464920,
		-0.537505, 0.537853, 0.649463,
		37.883675, 38.286861, 23.139585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158543, 38.437946, 22.257147>,  <38.259926, 37.910366, 22.684961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158543, 38.437946, 22.257147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968826, 38.571598, 22.582947>,  <37.854996, 38.651791, 22.778427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968826, 38.571598, 22.582947>,  <38.158543, 38.437946, 22.257147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968826, 38.571598, 22.582947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065259, 0.909289, -0.411016,
		-0.877948, -0.248093, -0.409460,
		-0.474288, 0.334130, 0.814499,
		37.826542, 38.671837, 22.827297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405399, 38.660675, 22.186108>,  <38.158543, 38.437946, 22.257147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405399, 38.660675, 22.186108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559715, 38.873466, 22.487614>,  <37.652306, 39.001141, 22.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559715, 38.873466, 22.487614>,  <37.405399, 38.660675, 22.186108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559715, 38.873466, 22.487614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035175, 0.824904, -0.564178,
		-0.921914, 0.191142, 0.336954,
		0.385793, 0.531976, 0.753767,
		37.675453, 39.033058, 22.713743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973930, 39.389797, 22.238705>,  <37.405399, 38.660675, 22.186108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973930, 39.389797, 22.238705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335773, 39.410980, 22.407883>,  <37.552879, 39.423691, 22.509390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335773, 39.410980, 22.407883>,  <36.973930, 39.389797, 22.238705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335773, 39.410980, 22.407883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197688, 0.826961, -0.526360,
		-0.377632, 0.559760, 0.737606,
		0.904607, 0.052954, 0.422945,
		37.607155, 39.426865, 22.534765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055798, 40.101398, 22.296238>,  <36.973930, 39.389797, 22.238705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055798, 40.101398, 22.296238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433319, 39.997822, 22.378389>,  <37.659832, 39.935677, 22.427681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433319, 39.997822, 22.378389>,  <37.055798, 40.101398, 22.296238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433319, 39.997822, 22.378389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325840, 0.833001, -0.447143,
		-0.055298, 0.488937, 0.870565,
		0.943806, -0.258939, 0.205378,
		37.716461, 39.920139, 22.440002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360493, 40.613216, 22.780809>,  <37.055798, 40.101398, 22.296238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360493, 40.613216, 22.780809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646912, 40.422310, 22.577049>,  <37.818764, 40.307766, 22.454792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646912, 40.422310, 22.577049>,  <37.360493, 40.613216, 22.780809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646912, 40.422310, 22.577049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259415, 0.859426, -0.440558,
		0.648057, 0.183314, 0.739201,
		0.716049, -0.477266, -0.509402,
		37.861725, 40.279129, 22.424229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874840, 41.119995, 22.796221>,  <37.360493, 40.613216, 22.780809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874840, 41.119995, 22.796221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007744, 40.866184, 22.517084>,  <38.087486, 40.713898, 22.349602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007744, 40.866184, 22.517084>,  <37.874840, 41.119995, 22.796221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007744, 40.866184, 22.517084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261517, 0.772842, -0.578209,
		0.906209, 0.009617, 0.422722,
		0.332258, -0.634526, -0.697840,
		38.107422, 40.675827, 22.307732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664143, 41.086842, 22.865484>,  <37.874840, 41.119995, 22.796221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664143, 41.086842, 22.865484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516342, 40.984211, 22.508242>,  <38.427662, 40.922634, 22.293896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516342, 40.984211, 22.508242>,  <38.664143, 41.086842, 22.865484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516342, 40.984211, 22.508242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240623, 0.901922, -0.358662,
		0.897531, -0.347430, -0.271533,
		-0.369511, -0.256573, -0.893102,
		38.405491, 40.907238, 22.240311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092861, 41.311111, 22.330767>,  <38.664143, 41.086842, 22.865484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092861, 41.311111, 22.330767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768215, 41.296818, 22.097528>,  <38.573425, 41.288242, 21.957586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768215, 41.296818, 22.097528>,  <39.092861, 41.311111, 22.330767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768215, 41.296818, 22.097528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329462, 0.796254, -0.507381,
		0.482422, -0.603906, -0.634481,
		-0.811618, -0.035734, -0.583094,
		38.524731, 41.286098, 21.922600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425953, 41.447346, 21.667330>,  <39.092861, 41.311111, 22.330767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425953, 41.447346, 21.667330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031109, 41.481762, 21.613356>,  <38.794201, 41.502411, 21.580971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031109, 41.481762, 21.613356>,  <39.425953, 41.447346, 21.667330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031109, 41.481762, 21.613356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145701, 0.831952, -0.535376,
		0.066194, -0.548136, -0.833766,
		-0.987112, 0.086041, -0.134934,
		38.734974, 41.507576, 21.572876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364754, 41.583344, 20.940115>,  <39.425953, 41.447346, 21.667330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364754, 41.583344, 20.940115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026814, 41.715126, 21.108727>,  <38.824051, 41.794197, 21.209892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026814, 41.715126, 21.108727>,  <39.364754, 41.583344, 20.940115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026814, 41.715126, 21.108727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020938, 0.807653, -0.589287,
		-0.534594, -0.489033, -0.689243,
		-0.844850, 0.329461, 0.421527,
		38.773357, 41.813965, 21.235184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910336, 41.779652, 20.405342>,  <39.364754, 41.583344, 20.940115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910336, 41.779652, 20.405342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780689, 41.982780, 20.724606>,  <38.702900, 42.104660, 20.916164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780689, 41.982780, 20.724606>,  <38.910336, 41.779652, 20.405342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780689, 41.982780, 20.724606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051022, 0.833095, -0.550771,
		-0.944639, -0.219239, -0.244113,
		-0.324120, 0.507825, 0.798160,
		38.683453, 42.135128, 20.964054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306473, 42.178181, 20.135170>,  <38.910336, 41.779652, 20.405342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306473, 42.178181, 20.135170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484516, 42.357643, 20.445160>,  <38.591343, 42.465321, 20.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484516, 42.357643, 20.445160>,  <38.306473, 42.178181, 20.135170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484516, 42.357643, 20.445160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000520, 0.865562, -0.500802,
		-0.895475, 0.222510, 0.385506,
		0.445112, 0.448656, 0.774973,
		38.618050, 42.492241, 20.677652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928787, 42.861038, 20.317865>,  <38.306473, 42.178181, 20.135170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928787, 42.861038, 20.317865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297718, 42.931335, 20.455517>,  <38.519077, 42.973515, 20.538107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297718, 42.931335, 20.455517>,  <37.928787, 42.861038, 20.317865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297718, 42.931335, 20.455517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102012, 0.969736, -0.221823,
		-0.372696, 0.169489, 0.912343,
		0.922329, 0.175743, 0.344127,
		38.574417, 42.984058, 20.558756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083378, 43.308250, 21.012020>,  <37.928787, 42.861038, 20.317865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083378, 43.308250, 21.012020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389305, 43.320145, 20.754597>,  <38.572861, 43.327282, 20.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389305, 43.320145, 20.754597>,  <38.083378, 43.308250, 21.012020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389305, 43.320145, 20.754597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179233, 0.969317, -0.168225,
		0.618810, 0.244009, 0.746682,
		0.764820, 0.029731, -0.643558,
		38.618752, 43.329063, 20.561529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782780, 43.517254, 21.686480>,  <38.083378, 43.308250, 21.012020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782780, 43.517254, 21.686480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894070, 43.875244, 21.825970>,  <37.960842, 44.090038, 21.909664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894070, 43.875244, 21.825970>,  <37.782780, 43.517254, 21.686480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894070, 43.875244, 21.825970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161928, 0.314162, -0.935458,
		-0.946769, 0.316734, -0.057514,
		0.278222, 0.894976, 0.348727,
		37.977535, 44.143738, 21.930588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446468, 43.960957, 21.133760>,  <37.782780, 43.517254, 21.686480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446468, 43.960957, 21.133760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713318, 44.196423, 21.316376>,  <37.873428, 44.337700, 21.425945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713318, 44.196423, 21.316376>,  <37.446468, 43.960957, 21.133760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713318, 44.196423, 21.316376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253635, 0.396744, -0.882192,
		-0.700442, 0.704323, 0.115370,
		0.667121, 0.588663, 0.456537,
		37.913456, 44.373020, 21.453337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757473, 44.548695, 20.646252>,  <37.446468, 43.960957, 21.133760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757473, 44.548695, 20.646252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037960, 44.833851, 20.649830>,  <38.206253, 45.004944, 20.651978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037960, 44.833851, 20.649830>,  <37.757473, 44.548695, 20.646252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037960, 44.833851, 20.649830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020239, 0.007362, 0.999768,
		0.712656, -0.701240, 0.019591,
		0.701222, 0.712887, 0.008946,
		38.248325, 45.047718, 20.652514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399555, 44.411224, 20.916433>,  <37.757473, 44.548695, 20.646252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399555, 44.411224, 20.916433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290054, 44.791363, 20.975636>,  <38.224354, 45.019447, 21.011156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290054, 44.791363, 20.975636>,  <38.399555, 44.411224, 20.916433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290054, 44.791363, 20.975636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032283, -0.144717, 0.988946,
		0.961260, 0.275500, 0.008936,
		-0.273748, 0.950346, 0.148004,
		38.207932, 45.076466, 21.020037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951443, 44.843189, 21.327871>,  <38.399555, 44.411224, 20.916433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951443, 44.843189, 21.327871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556992, 44.905952, 21.349541>,  <38.320320, 44.943611, 21.362541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556992, 44.905952, 21.349541>,  <38.951443, 44.843189, 21.327871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556992, 44.905952, 21.349541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003444, -0.345619, 0.938369,
		0.165956, 0.925164, 0.341365,
		-0.986127, 0.156903, 0.054172,
		38.261154, 44.953022, 21.365791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831596, 45.151779, 22.068323>,  <38.951443, 44.843189, 21.327871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831596, 45.151779, 22.068323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530434, 44.949928, 21.899330>,  <38.349735, 44.828819, 21.797934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530434, 44.949928, 21.899330>,  <38.831596, 45.151779, 22.068323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530434, 44.949928, 21.899330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183173, -0.455904, 0.870976,
		-0.632126, 0.733148, 0.250819,
		-0.752904, -0.504624, -0.422482,
		38.304562, 44.798542, 21.772585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223793, 45.322132, 22.440111>,  <38.831596, 45.151779, 22.068323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223793, 45.322132, 22.440111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146065, 44.971519, 22.263960>,  <38.099430, 44.761150, 22.158270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146065, 44.971519, 22.263960>,  <38.223793, 45.322132, 22.440111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146065, 44.971519, 22.263960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331322, -0.363904, 0.870516,
		-0.923291, 0.315064, -0.219701,
		-0.194318, -0.876532, -0.440377,
		38.087769, 44.708561, 22.131847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613453, 45.226494, 22.716297>,  <38.223793, 45.322132, 22.440111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613453, 45.226494, 22.716297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754856, 44.868603, 22.607117>,  <37.839699, 44.653870, 22.541609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754856, 44.868603, 22.607117>,  <37.613453, 45.226494, 22.716297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754856, 44.868603, 22.607117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128149, -0.335359, 0.933334,
		-0.926613, -0.294961, -0.233210,
		0.353506, -0.894725, -0.272949,
		37.860909, 44.600185, 22.525232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054310, 44.737419, 22.889977>,  <37.613453, 45.226494, 22.716297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054310, 44.737419, 22.889977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397881, 44.535934, 22.853029>,  <37.604023, 44.415043, 22.830862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397881, 44.535934, 22.853029>,  <37.054310, 44.737419, 22.889977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397881, 44.535934, 22.853029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169337, -0.449579, 0.877043,
		-0.483301, -0.737669, -0.471449,
		0.858921, -0.503710, -0.092367,
		37.655556, 44.384823, 22.825319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950974, 44.030872, 22.866224>,  <37.054310, 44.737419, 22.889977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950974, 44.030872, 22.866224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329655, 44.052322, 22.993273>,  <37.556862, 44.065193, 23.069502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329655, 44.052322, 22.993273>,  <36.950974, 44.030872, 22.866224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329655, 44.052322, 22.993273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211187, -0.641227, 0.737718,
		0.243230, -0.765475, -0.595724,
		0.946699, 0.053626, 0.317624,
		37.613663, 44.068409, 23.088560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116196, 43.337769, 23.058851>,  <36.950974, 44.030872, 22.866224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116196, 43.337769, 23.058851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404781, 43.563107, 23.219912>,  <37.577934, 43.698311, 23.316547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404781, 43.563107, 23.219912>,  <37.116196, 43.337769, 23.058851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404781, 43.563107, 23.219912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070940, -0.518295, 0.852254,
		0.688808, -0.643435, -0.333968,
		0.721465, 0.563348, 0.402651,
		37.621220, 43.732109, 23.340708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501736, 42.855278, 23.307411>,  <37.116196, 43.337769, 23.058851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501736, 42.855278, 23.307411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617088, 43.182098, 23.507118>,  <37.686298, 43.378189, 23.626944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617088, 43.182098, 23.507118>,  <37.501736, 42.855278, 23.307411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617088, 43.182098, 23.507118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152244, -0.553915, 0.818536,
		0.945335, -0.160040, -0.284129,
		0.288382, 0.817047, 0.499270,
		37.703602, 43.427212, 23.656898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154099, 42.655983, 23.647034>,  <37.501736, 42.855278, 23.307411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154099, 42.655983, 23.647034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968750, 42.964291, 23.821939>,  <37.857540, 43.149277, 23.926884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968750, 42.964291, 23.821939>,  <38.154099, 42.655983, 23.647034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968750, 42.964291, 23.821939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005012, -0.491147, 0.871062,
		0.886152, 0.405814, 0.223719,
		-0.463368, 0.770772, 0.437265,
		37.829739, 43.195522, 23.953119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438454, 42.616272, 24.277922>,  <38.154099, 42.655983, 23.647034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438454, 42.616272, 24.277922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119751, 42.855568, 24.312063>,  <37.928528, 42.999146, 24.332548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119751, 42.855568, 24.312063>,  <38.438454, 42.616272, 24.277922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119751, 42.855568, 24.312063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182973, -0.373445, 0.909428,
		0.575931, 0.708978, 0.407008,
		-0.796759, 0.598239, 0.085355,
		37.880722, 43.035038, 24.337669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494198, 42.831844, 24.967316>,  <38.438454, 42.616272, 24.277922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494198, 42.831844, 24.967316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121529, 42.905972, 24.842321>,  <37.897926, 42.950447, 24.767324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121529, 42.905972, 24.842321>,  <38.494198, 42.831844, 24.967316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121529, 42.905972, 24.842321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362770, -0.427859, 0.827849,
		0.019717, 0.884643, 0.465852,
		-0.931670, 0.185320, -0.312486,
		37.842026, 42.961567, 24.748575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189739, 43.049961, 25.534380>,  <38.494198, 42.831844, 24.967316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189739, 43.049961, 25.534380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892113, 42.922848, 25.299301>,  <37.713539, 42.846581, 25.158255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892113, 42.922848, 25.299301>,  <38.189739, 43.049961, 25.534380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892113, 42.922848, 25.299301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370250, -0.536084, 0.758637,
		-0.556134, 0.782068, 0.281221,
		-0.744063, -0.317781, -0.587695,
		37.668892, 42.827515, 25.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694538, 42.892731, 26.064600>,  <38.189739, 43.049961, 25.534380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694538, 42.892731, 26.064600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570576, 42.710869, 25.730595>,  <37.496197, 42.601749, 25.530191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570576, 42.710869, 25.730595>,  <37.694538, 42.892731, 26.064600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570576, 42.710869, 25.730595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540839, -0.638010, 0.548120,
		-0.781953, 0.621473, -0.048173,
		-0.309907, -0.454658, -0.835011,
		37.477604, 42.574471, 25.480091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949566, 42.813992, 26.119085>,  <37.694538, 42.892731, 26.064600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949566, 42.813992, 26.119085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098652, 42.532131, 25.877573>,  <37.188103, 42.363014, 25.732666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098652, 42.532131, 25.877573>,  <36.949566, 42.813992, 26.119085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098652, 42.532131, 25.877573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453266, -0.706008, 0.544154,
		-0.809713, 0.070861, -0.582532,
		0.372713, -0.704650, -0.603782,
		37.210464, 42.320736, 25.696438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493168, 42.304665, 26.129061>,  <36.949566, 42.813992, 26.119085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493168, 42.304665, 26.129061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800407, 42.090115, 25.989166>,  <36.984753, 41.961384, 25.905230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800407, 42.090115, 25.989166>,  <36.493168, 42.304665, 26.129061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800407, 42.090115, 25.989166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304788, -0.786601, 0.536995,
		-0.563137, -0.305872, -0.767671,
		0.768102, -0.536379, -0.349738,
		37.030838, 41.929199, 25.884245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193611, 41.746262, 26.033213>,  <36.493168, 42.304665, 26.129061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193611, 41.746262, 26.033213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578716, 41.639816, 26.052233>,  <36.809780, 41.575947, 26.063644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578716, 41.639816, 26.052233>,  <36.193611, 41.746262, 26.033213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578716, 41.639816, 26.052233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262227, -0.876601, 0.403496,
		-0.065695, -0.400942, -0.913745,
		0.962768, -0.266116, 0.047550,
		36.867546, 41.559982, 26.066498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122402, 41.115536, 25.855759>,  <36.193611, 41.746262, 26.033213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122402, 41.115536, 25.855759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459923, 41.154835, 26.066792>,  <36.662437, 41.178413, 26.193411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459923, 41.154835, 26.066792>,  <36.122402, 41.115536, 25.855759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459923, 41.154835, 26.066792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285545, -0.750188, 0.596391,
		0.454379, -0.653885, -0.604958,
		0.843803, 0.098244, 0.527583,
		36.713062, 41.184307, 26.225067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258526, 40.437752, 25.973738>,  <36.122402, 41.115536, 25.855759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258526, 40.437752, 25.973738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482731, 40.635429, 26.239550>,  <36.617252, 40.754036, 26.399036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482731, 40.635429, 26.239550>,  <36.258526, 40.437752, 25.973738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482731, 40.635429, 26.239550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092967, -0.759808, 0.643466,
		0.822911, -0.422450, -0.379939,
		0.560513, 0.494194, 0.664529,
		36.650887, 40.783688, 26.438908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651222, 39.949291, 26.267630>,  <36.258526, 40.437752, 25.973738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651222, 39.949291, 26.267630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689770, 40.243656, 26.535704>,  <36.712898, 40.420273, 26.696548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689770, 40.243656, 26.535704>,  <36.651222, 39.949291, 26.267630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689770, 40.243656, 26.535704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128657, -0.658462, 0.741535,
		0.986996, -0.157685, 0.031226,
		0.096368, 0.735910, 0.670187,
		36.718681, 40.464428, 26.736759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328274, 39.803722, 26.693298>,  <36.651222, 39.949291, 26.267630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328274, 39.803722, 26.693298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074673, 40.028358, 26.905960>,  <36.922512, 40.163139, 27.033558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074673, 40.028358, 26.905960>,  <37.328274, 39.803722, 26.693298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074673, 40.028358, 26.905960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049303, -0.715440, 0.696932,
		0.771758, 0.415644, 0.481279,
		-0.634002, 0.561592, 0.531654,
		36.884472, 40.196835, 27.065456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521324, 39.602657, 27.401054>,  <37.328274, 39.803722, 26.693298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521324, 39.602657, 27.401054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165947, 39.783211, 27.434330>,  <36.952721, 39.891544, 27.454296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165947, 39.783211, 27.434330>,  <37.521324, 39.602657, 27.401054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165947, 39.783211, 27.434330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215795, -0.570750, 0.792260,
		0.405096, 0.685926, 0.604486,
		-0.888443, 0.451386, 0.083189,
		36.899414, 39.918625, 27.459288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388149, 39.829247, 28.117229>,  <37.521324, 39.602657, 27.401054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388149, 39.829247, 28.117229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021233, 39.821304, 27.958139>,  <36.801083, 39.816540, 27.862686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021233, 39.821304, 27.958139>,  <37.388149, 39.829247, 28.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021233, 39.821304, 27.958139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329100, -0.524539, 0.785208,
		-0.224213, 0.851155, 0.474619,
		-0.917290, -0.019856, -0.397724,
		36.746044, 39.815346, 27.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008221, 40.020622, 28.556711>,  <37.388149, 39.829247, 28.117229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008221, 40.020622, 28.556711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717110, 39.865620, 28.330374>,  <36.542442, 39.772617, 28.194572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717110, 39.865620, 28.330374>,  <37.008221, 40.020622, 28.556711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717110, 39.865620, 28.330374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382327, -0.455718, 0.803833,
		-0.569353, 0.801350, 0.183508,
		-0.727779, -0.387504, -0.565842,
		36.498775, 39.749367, 28.160622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459286, 40.071503, 28.977964>,  <37.008221, 40.020622, 28.556711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459286, 40.071503, 28.977964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330715, 39.814899, 28.699354>,  <36.253574, 39.660938, 28.532188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330715, 39.814899, 28.699354>,  <36.459286, 40.071503, 28.977964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330715, 39.814899, 28.699354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420458, -0.562388, 0.711994,
		-0.848470, 0.521713, -0.088963,
		-0.321424, -0.641510, -0.696528,
		36.234287, 39.622448, 28.490396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737980, 39.930450, 29.216717>,  <36.459286, 40.071503, 28.977964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737980, 39.930450, 29.216717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859016, 39.628658, 28.983753>,  <35.931637, 39.447582, 28.843975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859016, 39.628658, 28.983753>,  <35.737980, 39.930450, 29.216717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859016, 39.628658, 28.983753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500691, -0.645778, 0.576436,
		-0.811017, 0.117185, -0.573166,
		0.302588, -0.754479, -0.582411,
		35.949791, 39.402313, 28.809031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136681, 39.504166, 28.903334>,  <35.737980, 39.930450, 29.216717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136681, 39.504166, 28.903334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460728, 39.271313, 28.931156>,  <35.655155, 39.131599, 28.947849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460728, 39.271313, 28.931156>,  <35.136681, 39.504166, 28.903334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460728, 39.271313, 28.931156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541625, -0.697718, 0.468863,
		-0.224408, -0.417507, -0.880528,
		0.810113, -0.582132, 0.069559,
		35.703762, 39.096672, 28.952024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823608, 38.921932, 28.882935>,  <35.136681, 39.504166, 28.903334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823608, 38.921932, 28.882935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184948, 38.824371, 29.024059>,  <35.401752, 38.765835, 29.108734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184948, 38.824371, 29.024059>,  <34.823608, 38.921932, 28.882935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184948, 38.824371, 29.024059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411532, -0.724656, 0.552734,
		0.120853, -0.644504, -0.754990,
		0.903347, -0.243903, 0.352811,
		35.455952, 38.751202, 29.129902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804424, 38.185326, 28.850245>,  <34.823608, 38.921932, 28.882935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804424, 38.185326, 28.850245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112278, 38.261391, 29.094051>,  <35.296989, 38.307030, 29.240335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112278, 38.261391, 29.094051>,  <34.804424, 38.185326, 28.850245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112278, 38.261391, 29.094051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242431, -0.796100, 0.554484,
		0.590675, -0.574513, -0.566602,
		0.769630, 0.190158, 0.609516,
		35.343166, 38.318439, 29.276907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253258, 37.563911, 28.923203>,  <34.804424, 38.185326, 28.850245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253258, 37.563911, 28.923203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357220, 37.802204, 29.227190>,  <35.419598, 37.945179, 29.409582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357220, 37.802204, 29.227190>,  <35.253258, 37.563911, 28.923203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357220, 37.802204, 29.227190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109079, -0.763866, 0.636090,
		0.959453, -0.248222, -0.133554,
		0.259909, 0.595730, 0.759969,
		35.435192, 37.980923, 29.455181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706024, 37.145493, 29.310768>,  <35.253258, 37.563911, 28.923203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706024, 37.145493, 29.310768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568619, 37.424603, 29.562199>,  <35.486176, 37.592068, 29.713057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568619, 37.424603, 29.562199>,  <35.706024, 37.145493, 29.310768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568619, 37.424603, 29.562199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360362, -0.716007, 0.597891,
		0.867258, -0.021131, 0.497410,
		-0.343514, 0.697773, 0.628578,
		35.465565, 37.633934, 29.750772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928116, 36.953564, 30.002989>,  <35.706024, 37.145493, 29.310768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928116, 36.953564, 30.002989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614697, 37.199741, 30.037136>,  <35.426643, 37.347446, 30.057625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614697, 37.199741, 30.037136>,  <35.928116, 36.953564, 30.002989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614697, 37.199741, 30.037136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318101, -0.515367, 0.795744,
		0.533729, 0.596347, 0.599586,
		-0.783547, 0.615440, 0.085367,
		35.379631, 37.384373, 30.062746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939835, 37.069569, 30.683361>,  <35.928116, 36.953564, 30.002989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939835, 37.069569, 30.683361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578400, 37.182560, 30.554531>,  <35.361538, 37.250355, 30.477234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578400, 37.182560, 30.554531>,  <35.939835, 37.069569, 30.683361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578400, 37.182560, 30.554531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416870, -0.406547, 0.812982,
		0.098708, 0.868866, 0.485107,
		-0.903591, 0.282474, -0.322075,
		35.307323, 37.267303, 30.457909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612385, 37.443703, 31.262749>,  <35.939835, 37.069569, 30.683361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612385, 37.443703, 31.262749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331173, 37.307617, 31.012945>,  <35.162445, 37.225967, 30.863064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331173, 37.307617, 31.012945>,  <35.612385, 37.443703, 31.262749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331173, 37.307617, 31.012945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498314, -0.390861, 0.773893,
		-0.507381, 0.855269, 0.105255,
		-0.703027, -0.340209, -0.624509,
		35.120266, 37.205555, 30.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997082, 37.481995, 31.593861>,  <35.612385, 37.443703, 31.262749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997082, 37.481995, 31.593861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923607, 37.210526, 31.309422>,  <34.879520, 37.047642, 31.138758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923607, 37.210526, 31.309422>,  <34.997082, 37.481995, 31.593861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923607, 37.210526, 31.309422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373654, -0.620896, 0.689109,
		-0.909199, 0.392284, -0.139540,
		-0.183686, -0.678676, -0.711096,
		34.868500, 37.006924, 31.096092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302761, 37.148502, 31.793123>,  <34.997082, 37.481995, 31.593861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302761, 37.148502, 31.793123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465275, 36.886341, 31.538448>,  <34.562782, 36.729042, 31.385643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465275, 36.886341, 31.538448>,  <34.302761, 37.148502, 31.793123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465275, 36.886341, 31.538448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508957, -0.741013, 0.438021,
		-0.758878, 0.146088, -0.634635,
		0.406283, -0.655407, -0.636691,
		34.587162, 36.689720, 31.347443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806206, 36.629303, 31.756367>,  <34.302761, 37.148502, 31.793123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806206, 36.629303, 31.756367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155342, 36.482430, 31.627790>,  <34.364822, 36.394306, 31.550644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155342, 36.482430, 31.627790>,  <33.806206, 36.629303, 31.756367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155342, 36.482430, 31.627790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192135, -0.864057, 0.465285,
		-0.448587, -0.344361, -0.824733,
		0.872842, -0.367181, -0.321441,
		34.417194, 36.372276, 31.531359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692738, 35.960052, 31.606443>,  <33.806206, 36.629303, 31.756367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692738, 35.960052, 31.606443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089329, 35.928539, 31.647926>,  <34.327286, 35.909630, 31.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089329, 35.928539, 31.647926>,  <33.692738, 35.960052, 31.606443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089329, 35.928539, 31.647926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124144, -0.812504, 0.569584,
		0.039389, -0.577607, -0.815364,
		0.991482, -0.078787, 0.103710,
		34.386772, 35.904903, 31.679039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922298, 35.274269, 31.518274>,  <33.692738, 35.960052, 31.606443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922298, 35.274269, 31.518274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227951, 35.413017, 31.735819>,  <34.411343, 35.496265, 31.866344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227951, 35.413017, 31.735819>,  <33.922298, 35.274269, 31.518274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227951, 35.413017, 31.735819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020812, -0.829422, 0.558235,
		0.644723, -0.437885, -0.626570,
		0.764133, 0.346867, 0.543860,
		34.457191, 35.517078, 31.898977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397839, 34.653896, 31.624538>,  <33.922298, 35.274269, 31.518274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397839, 34.653896, 31.624538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478622, 34.927826, 31.904602>,  <34.527092, 35.092186, 32.072639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478622, 34.927826, 31.904602>,  <34.397839, 34.653896, 31.624538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478622, 34.927826, 31.904602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119986, -0.726808, 0.676279,
		0.972016, -0.052572, -0.228956,
		0.201960, 0.684826, 0.700161,
		34.539211, 35.133274, 32.114651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890446, 34.379150, 32.055824>,  <34.397839, 34.653896, 31.624538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890446, 34.379150, 32.055824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817909, 34.689495, 32.297539>,  <34.774387, 34.875702, 32.442566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817909, 34.689495, 32.297539>,  <34.890446, 34.379150, 32.055824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817909, 34.689495, 32.297539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180620, -0.577744, 0.795983,
		0.966691, 0.253489, -0.035367,
		-0.181340, 0.775858, 0.604286,
		34.763508, 34.922253, 32.478825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409851, 34.300358, 32.492748>,  <34.890446, 34.379150, 32.055824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409851, 34.300358, 32.492748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107533, 34.503658, 32.657890>,  <34.926140, 34.625641, 32.756973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107533, 34.503658, 32.657890>,  <35.409851, 34.300358, 32.492748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107533, 34.503658, 32.657890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097944, -0.535655, 0.838737,
		0.647438, 0.674353, 0.355067,
		-0.755798, 0.508254, 0.412852,
		34.880795, 34.656136, 32.781746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639370, 34.471210, 33.142994>,  <35.409851, 34.300358, 32.492748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639370, 34.471210, 33.142994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240707, 34.494141, 33.166279>,  <35.001511, 34.507896, 33.180252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240707, 34.494141, 33.166279>,  <35.639370, 34.471210, 33.142994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240707, 34.494141, 33.166279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018370, -0.537082, 0.843330,
		0.079609, 0.841580, 0.534233,
		-0.996657, 0.057322, 0.058216,
		34.941711, 34.511337, 33.183743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187790, 34.525627, 33.647644>,  <35.639370, 34.471210, 33.142994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187790, 34.525627, 33.647644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540684, 34.603519, 33.819103>,  <36.752422, 34.650257, 33.921978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540684, 34.603519, 33.819103>,  <36.187790, 34.525627, 33.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540684, 34.603519, 33.819103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091939, 0.964181, -0.248800,
		-0.461743, 0.180091, 0.868540,
		0.882236, 0.194734, 0.428646,
		36.805355, 34.661942, 33.947697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196442, 35.230938, 34.007488>,  <36.187790, 34.525627, 33.647644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196442, 35.230938, 34.007488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572231, 35.147427, 33.898823>,  <36.797707, 35.097321, 33.833622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572231, 35.147427, 33.898823>,  <36.196442, 35.230938, 34.007488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572231, 35.147427, 33.898823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127079, 0.948677, -0.289591,
		0.318181, 0.237541, 0.917788,
		0.939474, -0.208774, -0.271664,
		36.854073, 35.084793, 33.817322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673237, 35.860813, 34.263046>,  <36.196442, 35.230938, 34.007488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673237, 35.860813, 34.263046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899483, 35.667141, 33.996017>,  <37.035229, 35.550938, 33.835800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899483, 35.667141, 33.996017>,  <36.673237, 35.860813, 34.263046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899483, 35.667141, 33.996017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412623, 0.867042, -0.279252,
		0.714021, -0.117508, 0.690192,
		0.565611, -0.484181, -0.667572,
		37.069164, 35.521885, 33.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431671, 36.089153, 34.364178>,  <36.673237, 35.860813, 34.263046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431671, 36.089153, 34.364178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441238, 35.953293, 33.988079>,  <37.446980, 35.871777, 33.762421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441238, 35.953293, 33.988079>,  <37.431671, 36.089153, 34.364178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441238, 35.953293, 33.988079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436620, 0.849624, -0.295808,
		0.899328, -0.403456, 0.168618,
		0.023916, -0.339650, -0.940248,
		37.448414, 35.851398, 33.706005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034801, 36.305092, 34.194000>,  <37.431671, 36.089153, 34.364178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034801, 36.305092, 34.194000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849983, 36.226707, 33.848026>,  <37.739090, 36.179676, 33.640442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849983, 36.226707, 33.848026>,  <38.034801, 36.305092, 34.194000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849983, 36.226707, 33.848026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432653, 0.801542, -0.412726,
		0.774157, -0.564916, -0.285570,
		-0.462052, -0.195962, -0.864932,
		37.711369, 36.167919, 33.588547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559303, 36.211834, 33.671722>,  <38.034801, 36.305092, 34.194000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559303, 36.211834, 33.671722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224300, 36.289509, 33.467419>,  <38.023300, 36.336113, 33.344837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224300, 36.289509, 33.467419>,  <38.559303, 36.211834, 33.671722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224300, 36.289509, 33.467419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471100, 0.730179, -0.494877,
		0.276847, -0.655082, -0.703011,
		-0.837509, 0.194183, -0.510756,
		37.973049, 36.347763, 33.314190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695789, 36.103058, 32.994438>,  <38.559303, 36.211834, 33.671722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695789, 36.103058, 32.994438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377644, 36.345428, 33.000603>,  <38.186756, 36.490852, 33.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377644, 36.345428, 33.000603>,  <38.695789, 36.103058, 32.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377644, 36.345428, 33.000603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384352, 0.523853, -0.760166,
		-0.468683, -0.598686, -0.649547,
		-0.795368, 0.605931, 0.015415,
		38.139034, 36.527206, 33.005226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598534, 36.158722, 32.329201>,  <38.695789, 36.103058, 32.994438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598534, 36.158722, 32.329201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371788, 36.457832, 32.467468>,  <38.235741, 36.637299, 32.550430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371788, 36.457832, 32.467468>,  <38.598534, 36.158722, 32.329201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371788, 36.457832, 32.467468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291716, 0.574618, -0.764667,
		-0.770431, -0.332626, -0.543871,
		-0.566867, 0.747779, 0.345671,
		38.201729, 36.682167, 32.571171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192478, 36.462952, 31.737408>,  <38.598534, 36.158722, 32.329201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192478, 36.462952, 31.737408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203098, 36.758709, 32.006508>,  <38.209469, 36.936165, 32.167969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203098, 36.758709, 32.006508>,  <38.192478, 36.462952, 31.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203098, 36.758709, 32.006508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384911, 0.613535, -0.689506,
		-0.922572, 0.277255, -0.268311,
		0.026551, 0.739395, 0.672749,
		38.211063, 36.980526, 32.208332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058292, 36.953655, 31.406071>,  <38.192478, 36.462952, 31.737408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058292, 36.953655, 31.406071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217533, 37.156040, 31.712147>,  <38.313076, 37.277473, 31.895792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217533, 37.156040, 31.712147>,  <38.058292, 36.953655, 31.406071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217533, 37.156040, 31.712147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336574, 0.695402, -0.634929,
		-0.853366, 0.510309, 0.106545,
		0.398101, 0.505966, 0.765189,
		38.336964, 37.307831, 31.941704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800613, 37.600616, 31.367252>,  <38.058292, 36.953655, 31.406071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800613, 37.600616, 31.367252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140301, 37.626068, 31.576929>,  <38.344112, 37.641338, 31.702736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140301, 37.626068, 31.576929>,  <37.800613, 37.600616, 31.367252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140301, 37.626068, 31.576929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316881, 0.732683, -0.602297,
		-0.422390, 0.677589, 0.602046,
		0.849219, 0.063628, 0.524193,
		38.395065, 37.645157, 31.734186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923832, 38.285061, 31.419844>,  <37.800613, 37.600616, 31.367252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923832, 38.285061, 31.419844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287266, 38.138134, 31.499397>,  <38.505325, 38.049976, 31.547131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287266, 38.138134, 31.499397>,  <37.923832, 38.285061, 31.419844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287266, 38.138134, 31.499397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417701, 0.801008, -0.428849,
		-0.001786, 0.472719, 0.881211,
		0.908583, -0.367317, 0.198886,
		38.559841, 38.027939, 31.559063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262737, 38.717628, 31.843153>,  <37.923832, 38.285061, 31.419844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262737, 38.717628, 31.843153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557068, 38.504551, 31.675919>,  <38.733665, 38.376705, 31.575579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557068, 38.504551, 31.675919>,  <38.262737, 38.717628, 31.843153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557068, 38.504551, 31.675919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435166, 0.845016, -0.310770,
		0.518833, 0.046737, 0.853597,
		0.735828, -0.532694, -0.418084,
		38.777817, 38.344742, 31.550493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808765, 39.093403, 32.037155>,  <38.262737, 38.717628, 31.843153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808765, 39.093403, 32.037155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900848, 38.880653, 31.711182>,  <38.956097, 38.753002, 31.515598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900848, 38.880653, 31.711182>,  <38.808765, 39.093403, 32.037155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900848, 38.880653, 31.711182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497154, 0.784172, -0.371365,
		0.836566, -0.319656, 0.444946,
		0.230206, -0.531878, -0.814930,
		38.969910, 38.721088, 31.466703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341934, 39.439270, 31.754202>,  <38.808765, 39.093403, 32.037155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341934, 39.439270, 31.754202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219879, 39.225643, 31.438820>,  <39.146648, 39.097466, 31.249590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219879, 39.225643, 31.438820>,  <39.341934, 39.439270, 31.754202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219879, 39.225643, 31.438820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332708, 0.715984, -0.613737,
		0.892300, -0.449597, -0.040782,
		-0.305134, -0.534069, -0.788457,
		39.128338, 39.065422, 31.202282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903984, 39.488472, 31.192623>,  <39.341934, 39.439270, 31.754202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903984, 39.488472, 31.192623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567616, 39.389084, 31.000326>,  <39.365795, 39.329449, 30.884949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567616, 39.389084, 31.000326>,  <39.903984, 39.488472, 31.192623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567616, 39.389084, 31.000326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259645, 0.594176, -0.761275,
		0.474799, -0.764995, -0.435142,
		-0.840922, -0.248470, -0.480741,
		39.315338, 39.314541, 30.856104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041096, 39.293282, 30.433060>,  <39.903984, 39.488472, 31.192623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041096, 39.293282, 30.433060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659676, 39.409214, 30.465895>,  <39.430824, 39.478775, 30.485596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659676, 39.409214, 30.465895>,  <40.041096, 39.293282, 30.433060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659676, 39.409214, 30.465895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166621, 0.734500, -0.657835,
		-0.250955, -0.613602, -0.748675,
		-0.953551, 0.289832, 0.082087,
		39.373611, 39.496162, 30.490520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862057, 39.182705, 29.769436>,  <40.041096, 39.293282, 30.433060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862057, 39.182705, 29.769436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580013, 39.428875, 29.910334>,  <39.410786, 39.576576, 29.994873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580013, 39.428875, 29.910334>,  <39.862057, 39.182705, 29.769436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580013, 39.428875, 29.910334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063537, 0.549586, -0.833018,
		-0.706246, -0.564988, -0.426620,
		-0.705109, 0.615422, 0.352246,
		39.368481, 39.613503, 30.016006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361061, 39.229137, 29.263098>,  <39.862057, 39.182705, 29.769436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361061, 39.229137, 29.263098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280392, 39.543518, 29.496883>,  <39.231991, 39.732147, 29.637156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280392, 39.543518, 29.496883>,  <39.361061, 39.229137, 29.263098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280392, 39.543518, 29.496883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071026, 0.583421, -0.809058,
		-0.976873, -0.204681, -0.061839,
		-0.201678, 0.785955, 0.584466,
		39.219887, 39.779305, 29.672224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710415, 39.582985, 29.035353>,  <39.361061, 39.229137, 29.263098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710415, 39.582985, 29.035353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907543, 39.881130, 29.214937>,  <39.025818, 40.060017, 29.322687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907543, 39.881130, 29.214937>,  <38.710415, 39.582985, 29.035353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907543, 39.881130, 29.214937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197368, 0.598276, -0.776603,
		-0.847453, 0.294114, 0.441952,
		0.492818, 0.745361, 0.448962,
		39.055389, 40.104740, 29.349627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360100, 40.164009, 28.891394>,  <38.710415, 39.582985, 29.035353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360100, 40.164009, 28.891394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723461, 40.303566, 28.983545>,  <38.941479, 40.387299, 29.038837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723461, 40.303566, 28.983545>,  <38.360100, 40.164009, 28.891394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723461, 40.303566, 28.983545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036062, 0.614360, -0.788201,
		-0.416534, 0.707698, 0.570669,
		0.908405, 0.348892, 0.230380,
		38.995983, 40.408234, 29.052660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316124, 40.847290, 28.615463>,  <38.360100, 40.164009, 28.891394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316124, 40.847290, 28.615463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704010, 40.765095, 28.668270>,  <38.936741, 40.715778, 28.699955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704010, 40.765095, 28.668270>,  <38.316124, 40.847290, 28.615463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704010, 40.765095, 28.668270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230446, 0.590680, -0.773299,
		0.080923, 0.780302, 0.620145,
		0.969714, -0.205487, 0.132018,
		38.994923, 40.703449, 28.707876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554409, 41.451229, 28.502651>,  <38.316124, 40.847290, 28.615463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554409, 41.451229, 28.502651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865620, 41.207169, 28.442802>,  <39.052345, 41.060734, 28.406893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865620, 41.207169, 28.442802>,  <38.554409, 41.451229, 28.502651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865620, 41.207169, 28.442802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229763, 0.498025, -0.836170,
		0.584705, 0.616187, 0.527668,
		0.778029, -0.610151, -0.149621,
		39.099030, 41.024124, 28.397917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967327, 41.991417, 28.377020>,  <38.554409, 41.451229, 28.502651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967327, 41.991417, 28.377020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088081, 41.637714, 28.234491>,  <39.160534, 41.425495, 28.148975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088081, 41.637714, 28.234491>,  <38.967327, 41.991417, 28.377020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088081, 41.637714, 28.234491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192328, 0.422562, -0.885693,
		0.933743, 0.198847, 0.297632,
		0.301885, -0.884252, -0.356320,
		39.178646, 41.372440, 28.127596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660072, 42.015800, 28.054022>,  <38.967327, 41.991417, 28.377020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660072, 42.015800, 28.054022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558937, 41.654163, 27.916214>,  <39.498257, 41.437180, 27.833530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558937, 41.654163, 27.916214>,  <39.660072, 42.015800, 28.054022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558937, 41.654163, 27.916214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403271, 0.225203, -0.886936,
		0.879459, -0.363181, 0.307655,
		-0.252833, -0.904092, -0.344517,
		39.483086, 41.382935, 27.812859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235561, 41.740417, 27.689648>,  <39.660072, 42.015800, 28.054022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235561, 41.740417, 27.689648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890759, 41.588818, 27.555002>,  <39.683876, 41.497860, 27.474215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890759, 41.588818, 27.555002>,  <40.235561, 41.740417, 27.689648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890759, 41.588818, 27.555002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301158, 0.151252, -0.941502,
		0.407740, -0.912953, -0.016242,
		-0.862004, -0.378997, -0.336615,
		39.632156, 41.475117, 27.454018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473869, 41.277981, 27.225155>,  <40.235561, 41.740417, 27.689648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473869, 41.277981, 27.225155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092407, 41.302872, 27.107397>,  <39.863529, 41.317806, 27.036743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092407, 41.302872, 27.107397>,  <40.473869, 41.277981, 27.225155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092407, 41.302872, 27.107397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300867, 0.211075, -0.930014,
		0.004265, -0.975487, -0.220016,
		-0.953657, 0.062229, -0.294392,
		39.806309, 41.321541, 27.019079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297966, 40.768085, 26.670719>,  <40.473869, 41.277981, 27.225155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297966, 40.768085, 26.670719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030525, 41.065434, 26.663069>,  <39.870060, 41.243843, 26.658478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030525, 41.065434, 26.663069>,  <40.297966, 40.768085, 26.670719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030525, 41.065434, 26.663069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402119, 0.339796, -0.850200,
		-0.625517, -0.576137, -0.526113,
		-0.668603, 0.743374, -0.019128,
		39.829945, 41.288445, 26.657330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852219, 40.735958, 25.990818>,  <40.297966, 40.768085, 26.670719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852219, 40.735958, 25.990818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844582, 41.117268, 26.111422>,  <39.840000, 41.346054, 26.183784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844582, 41.117268, 26.111422>,  <39.852219, 40.735958, 25.990818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844582, 41.117268, 26.111422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289613, 0.293911, -0.910901,
		-0.956953, 0.069927, -0.281693,
		-0.019096, 0.953272, 0.301511,
		39.838852, 41.403248, 26.201876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355961, 41.199398, 25.529228>,  <39.852219, 40.735958, 25.990818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355961, 41.199398, 25.529228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605991, 41.451035, 25.714066>,  <39.756008, 41.602016, 25.824968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605991, 41.451035, 25.714066>,  <39.355961, 41.199398, 25.529228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605991, 41.451035, 25.714066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157926, 0.477830, -0.864140,
		-0.764424, 0.613126, 0.199328,
		0.625072, 0.629091, 0.462093,
		39.793514, 41.639763, 25.852694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304497, 41.831676, 25.096258>,  <39.355961, 41.199398, 25.529228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304497, 41.831676, 25.096258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613308, 41.923565, 25.333309>,  <39.798595, 41.978699, 25.475540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613308, 41.923565, 25.333309>,  <39.304497, 41.831676, 25.096258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613308, 41.923565, 25.333309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297726, 0.693071, -0.656515,
		-0.561549, 0.683286, 0.466672,
		0.772024, 0.229725, 0.592626,
		39.844913, 41.992481, 25.511097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339375, 42.544743, 25.101467>,  <39.304497, 41.831676, 25.096258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339375, 42.544743, 25.101467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709358, 42.453003, 25.222689>,  <39.931351, 42.397961, 25.295422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709358, 42.453003, 25.222689>,  <39.339375, 42.544743, 25.101467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709358, 42.453003, 25.222689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361116, 0.778944, -0.512681,
		-0.118482, 0.583649, 0.803315,
		0.924963, -0.229347, 0.303056,
		39.986847, 42.384197, 25.313606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654110, 43.187981, 25.313482>,  <39.339375, 42.544743, 25.101467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654110, 43.187981, 25.313482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961590, 42.937660, 25.260590>,  <40.146076, 42.787468, 25.228853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961590, 42.937660, 25.260590>,  <39.654110, 43.187981, 25.313482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961590, 42.937660, 25.260590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508934, 0.723650, -0.466172,
		0.387418, 0.291048, 0.874756,
		0.768696, -0.625797, -0.132231,
		40.192200, 42.749920, 25.220921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372250, 43.607861, 25.498379>,  <39.654110, 43.187981, 25.313482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372250, 43.607861, 25.498379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436146, 43.307339, 25.242245>,  <40.474483, 43.127026, 25.088564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436146, 43.307339, 25.242245>,  <40.372250, 43.607861, 25.498379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436146, 43.307339, 25.242245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413210, 0.639992, -0.647817,
		0.896515, -0.161108, 0.412680,
		0.159743, -0.751302, -0.640334,
		40.484070, 43.081947, 25.050144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961777, 43.758099, 25.293623>,  <40.372250, 43.607861, 25.498379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961777, 43.758099, 25.293623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858826, 43.478226, 25.027029>,  <40.797054, 43.310303, 24.867073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858826, 43.478226, 25.027029>,  <40.961777, 43.758099, 25.293623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858826, 43.478226, 25.027029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396607, 0.552463, -0.733136,
		0.881171, -0.453022, 0.135310,
		-0.257373, -0.699683, -0.666486,
		40.781612, 43.268322, 24.827084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515610, 43.773766, 24.838369>,  <40.961777, 43.758099, 25.293623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515610, 43.773766, 24.838369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212223, 43.606003, 24.638842>,  <41.030190, 43.505344, 24.519125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212223, 43.606003, 24.638842>,  <41.515610, 43.773766, 24.838369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212223, 43.606003, 24.638842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231159, 0.542501, -0.807625,
		0.609338, -0.727863, -0.314519,
		-0.758467, -0.419413, -0.498819,
		40.984680, 43.480179, 24.489197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794022, 43.486732, 24.246016>,  <41.515610, 43.773766, 24.838369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794022, 43.486732, 24.246016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405800, 43.521172, 24.156029>,  <41.172867, 43.541836, 24.102037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405800, 43.521172, 24.156029>,  <41.794022, 43.486732, 24.246016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405800, 43.521172, 24.156029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239883, 0.430375, -0.870192,
		0.021894, -0.898534, -0.438357,
		-0.970555, 0.086103, -0.224965,
		41.114632, 43.547001, 24.088539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774532, 43.596836, 23.509312>,  <41.794022, 43.486732, 24.246016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774532, 43.596836, 23.509312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406940, 43.721870, 23.605453>,  <41.186386, 43.796890, 23.663139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406940, 43.721870, 23.605453>,  <41.774532, 43.596836, 23.509312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406940, 43.721870, 23.605453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004170, 0.617229, -0.786773,
		-0.394290, -0.722024, -0.568522,
		-0.918976, 0.312588, 0.240357,
		41.131248, 43.815647, 23.677561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262634, 43.097153, 23.400745>,  <41.774532, 43.596836, 23.509312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262634, 43.097153, 23.400745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653625, 43.133919, 23.476738>,  <42.888218, 43.155979, 23.522333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653625, 43.133919, 23.476738>,  <42.262634, 43.097153, 23.400745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653625, 43.133919, 23.476738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163485, -0.239517, 0.957029,
		0.133467, -0.966531, -0.219096,
		0.977476, 0.091913, 0.189981,
		42.946869, 43.161491, 23.533731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412651, 42.487621, 23.772812>,  <42.262634, 43.097153, 23.400745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412651, 42.487621, 23.772812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721989, 42.728992, 23.850594>,  <42.907593, 42.873814, 23.897263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721989, 42.728992, 23.850594>,  <42.412651, 42.487621, 23.772812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721989, 42.728992, 23.850594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118471, -0.438860, 0.890711,
		0.622817, -0.665791, -0.410879,
		0.773346, 0.603427, 0.194452,
		42.953991, 42.910019, 23.908930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975189, 42.090641, 23.982609>,  <42.412651, 42.487621, 23.772812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975189, 42.090641, 23.982609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059906, 42.444775, 24.148174>,  <43.110737, 42.657253, 24.247513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059906, 42.444775, 24.148174>,  <42.975189, 42.090641, 23.982609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059906, 42.444775, 24.148174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100302, -0.401595, 0.910308,
		0.972154, -0.234314, 0.003746,
		0.211794, 0.885335, 0.413914,
		43.123444, 42.710377, 24.272348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520050, 41.928734, 24.379360>,  <42.975189, 42.090641, 23.982609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520050, 41.928734, 24.379360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359871, 42.265697, 24.523573>,  <43.263763, 42.467876, 24.610102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359871, 42.265697, 24.523573>,  <43.520050, 41.928734, 24.379360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359871, 42.265697, 24.523573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119873, -0.341916, 0.932054,
		0.908443, 0.416461, 0.035939,
		-0.400452, 0.842410, 0.360534,
		43.239735, 42.518421, 24.631733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842213, 41.956779, 24.978437>,  <43.520050, 41.928734, 24.379360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842213, 41.956779, 24.978437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554401, 42.225613, 25.048380>,  <43.381714, 42.386913, 25.090345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554401, 42.225613, 25.048380>,  <43.842213, 41.956779, 24.978437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554401, 42.225613, 25.048380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005149, -0.256945, 0.966412,
		0.694439, 0.694465, 0.188341,
		-0.719533, 0.672085, 0.174857,
		43.338543, 42.427238, 25.100838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003979, 42.297817, 25.630945>,  <43.842213, 41.956779, 24.978437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003979, 42.297817, 25.630945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613293, 42.342026, 25.557396>,  <43.378880, 42.368549, 25.513266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613293, 42.342026, 25.557396>,  <44.003979, 42.297817, 25.630945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613293, 42.342026, 25.557396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209514, -0.307067, 0.928339,
		0.046140, 0.945248, 0.323074,
		-0.976716, 0.110522, -0.183875,
		43.320278, 42.375183, 25.502234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823936, 42.520405, 26.340723>,  <44.003979, 42.297817, 25.630945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823936, 42.520405, 26.340723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496349, 42.428856, 26.130238>,  <43.299797, 42.373924, 26.003946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496349, 42.428856, 26.130238>,  <43.823936, 42.520405, 26.340723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496349, 42.428856, 26.130238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423851, -0.376900, 0.823588,
		-0.386830, 0.897531, 0.211660,
		-0.818971, -0.228877, -0.526216,
		43.250660, 42.360191, 25.972372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265907, 42.763046, 26.765730>,  <43.823936, 42.520405, 26.340723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265907, 42.763046, 26.765730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087509, 42.504486, 26.518101>,  <42.980469, 42.349350, 26.369524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087509, 42.504486, 26.518101>,  <43.265907, 42.763046, 26.765730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087509, 42.504486, 26.518101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307831, -0.538695, 0.784250,
		-0.840433, 0.540341, 0.041272,
		-0.445995, -0.646405, -0.619071,
		42.953709, 42.310566, 26.332380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523319, 42.640659, 26.959534>,  <43.265907, 42.763046, 26.765730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523319, 42.640659, 26.959534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627640, 42.330994, 26.728828>,  <42.690231, 42.145195, 26.590405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627640, 42.330994, 26.728828>,  <42.523319, 42.640659, 26.959534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627640, 42.330994, 26.728828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486819, -0.621379, 0.613918,
		-0.833661, 0.120669, -0.538933,
		0.260800, -0.774162, -0.576763,
		42.705879, 42.098743, 26.555799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946556, 42.206188, 26.962999>,  <42.523319, 42.640659, 26.959534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946556, 42.206188, 26.962999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258297, 41.985237, 26.844685>,  <42.445339, 41.852665, 26.773695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258297, 41.985237, 26.844685>,  <41.946556, 42.206188, 26.962999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258297, 41.985237, 26.844685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337001, -0.767487, 0.545338,
		-0.528249, -0.325327, -0.784293,
		0.779348, -0.552381, -0.295789,
		42.492100, 41.819523, 26.755947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613632, 41.556316, 26.805300>,  <41.946556, 42.206188, 26.962999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613632, 41.556316, 26.805300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001469, 41.478519, 26.864712>,  <42.234173, 41.431843, 26.900358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001469, 41.478519, 26.864712>,  <41.613632, 41.556316, 26.805300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001469, 41.478519, 26.864712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241220, -0.861809, 0.446204,
		0.041222, -0.468465, -0.882520,
		0.969595, -0.194488, 0.148528,
		42.292347, 41.420174, 26.909269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720047, 40.782616, 26.684526>,  <41.613632, 41.556316, 26.805300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720047, 40.782616, 26.684526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026817, 40.899002, 26.913321>,  <42.210880, 40.968834, 27.050596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026817, 40.899002, 26.913321>,  <41.720047, 40.782616, 26.684526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026817, 40.899002, 26.913321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137139, -0.796408, 0.589005,
		0.626913, -0.530164, -0.570882,
		0.766924, 0.290965, 0.571984,
		42.256893, 40.986290, 27.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142456, 40.150379, 26.827173>,  <41.720047, 40.782616, 26.684526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142456, 40.150379, 26.827173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249035, 40.415062, 27.107502>,  <42.312981, 40.573872, 27.275700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249035, 40.415062, 27.107502>,  <42.142456, 40.150379, 26.827173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249035, 40.415062, 27.107502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097788, -0.741913, 0.663327,
		0.958877, -0.108209, -0.262387,
		0.266446, 0.661706, 0.700822,
		42.328968, 40.613575, 27.317749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811947, 39.982479, 27.141472>,  <42.142456, 40.150379, 26.827173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811947, 39.982479, 27.141472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623272, 40.206718, 27.413719>,  <42.510067, 40.341263, 27.577068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623272, 40.206718, 27.413719>,  <42.811947, 39.982479, 27.141472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623272, 40.206718, 27.413719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108129, -0.729283, 0.675614,
		0.875111, 0.392274, 0.283377,
		-0.471688, 0.560596, 0.680619,
		42.481766, 40.374897, 27.617905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173325, 39.924469, 27.913391>,  <42.811947, 39.982479, 27.141472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173325, 39.924469, 27.913391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785278, 40.002892, 27.970568>,  <42.552448, 40.049946, 28.004873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785278, 40.002892, 27.970568>,  <43.173325, 39.924469, 27.913391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785278, 40.002892, 27.970568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058451, -0.760617, 0.646564,
		0.235489, 0.618889, 0.749348,
		-0.970118, 0.196059, 0.142942,
		42.494244, 40.061710, 28.013451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160149, 39.858677, 28.526312>,  <43.173325, 39.924469, 27.913391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160149, 39.858677, 28.526312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767033, 39.848801, 28.453089>,  <42.531162, 39.842876, 28.409155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767033, 39.848801, 28.453089>,  <43.160149, 39.858677, 28.526312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767033, 39.848801, 28.453089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132924, -0.593610, 0.793699,
		-0.128261, 0.804374, 0.580113,
		-0.982792, -0.024690, -0.183058,
		42.472195, 39.841393, 28.398170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878635, 40.029770, 29.156565>,  <43.160149, 39.858677, 28.526312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878635, 40.029770, 29.156565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567226, 39.866016, 28.966276>,  <42.380383, 39.767765, 28.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567226, 39.866016, 28.966276>,  <42.878635, 40.029770, 29.156565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567226, 39.866016, 28.966276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264277, -0.473672, 0.840115,
		-0.569266, 0.779768, 0.260572,
		-0.778520, -0.409386, -0.475720,
		42.333672, 39.743202, 28.823561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223846, 40.070312, 29.646040>,  <42.878635, 40.029770, 29.156565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223846, 40.070312, 29.646040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205078, 39.781521, 29.369911>,  <42.193817, 39.608246, 29.204233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205078, 39.781521, 29.369911>,  <42.223846, 40.070312, 29.646040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205078, 39.781521, 29.369911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356916, -0.633343, 0.686649,
		-0.932957, 0.278607, -0.227967,
		-0.046924, -0.721979, -0.690321,
		42.191002, 39.564926, 29.162815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515915, 39.839386, 29.797695>,  <42.223846, 40.070312, 29.646040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515915, 39.839386, 29.797695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708851, 39.553223, 29.595491>,  <41.824612, 39.381523, 29.474169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708851, 39.553223, 29.595491>,  <41.515915, 39.839386, 29.797695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708851, 39.553223, 29.595491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300328, -0.677152, 0.671764,
		-0.822894, -0.172198, -0.541474,
		0.482337, -0.715411, -0.505508,
		41.853554, 39.338600, 29.443838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136116, 39.277454, 29.823929>,  <41.515915, 39.839386, 29.797695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136116, 39.277454, 29.823929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474880, 39.101540, 29.704370>,  <41.678139, 38.995991, 29.632635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474880, 39.101540, 29.704370>,  <41.136116, 39.277454, 29.823929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474880, 39.101540, 29.704370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175060, -0.761372, 0.624233,
		-0.502099, -0.476342, -0.721799,
		0.846906, -0.439785, -0.298896,
		41.728951, 38.969604, 29.614702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984550, 38.566647, 29.691584>,  <41.136116, 39.277454, 29.823929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984550, 38.566647, 29.691584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382454, 38.548004, 29.727980>,  <41.621197, 38.536819, 29.749817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382454, 38.548004, 29.727980>,  <40.984550, 38.566647, 29.691584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382454, 38.548004, 29.727980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090215, -0.818818, 0.566920,
		0.048083, -0.572158, -0.818733,
		0.994761, -0.046603, 0.090988,
		41.680882, 38.534023, 29.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290123, 37.992588, 29.424841>,  <40.984550, 38.566647, 29.691584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290123, 37.992588, 29.424841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542000, 38.124268, 29.706299>,  <41.693127, 38.203274, 29.875174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542000, 38.124268, 29.706299>,  <41.290123, 37.992588, 29.424841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542000, 38.124268, 29.706299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251131, -0.770879, 0.585388,
		0.735133, -0.545322, -0.402746,
		0.629693, 0.329195, 0.703646,
		41.730907, 38.223026, 29.917393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601452, 37.454063, 29.761524>,  <41.290123, 37.992588, 29.424841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601452, 37.454063, 29.761524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669003, 37.734806, 30.038328>,  <41.709534, 37.903252, 30.204411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669003, 37.734806, 30.038328>,  <41.601452, 37.454063, 29.761524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669003, 37.734806, 30.038328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140043, -0.677883, 0.721708,
		0.975638, -0.218789, -0.016186,
		0.168874, 0.701859, 0.692009,
		41.719666, 37.945362, 30.245932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823971, 37.103962, 30.245544>,  <41.601452, 37.454063, 29.761524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823971, 37.103962, 30.245544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729389, 37.437279, 30.445429>,  <41.672638, 37.637268, 30.565359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729389, 37.437279, 30.445429>,  <41.823971, 37.103962, 30.245544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729389, 37.437279, 30.445429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020105, -0.518383, 0.854912,
		0.971434, 0.192104, 0.139329,
		-0.236458, 0.833292, 0.499712,
		41.658451, 37.687267, 30.595343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077171, 37.006805, 30.878342>,  <41.823971, 37.103962, 30.245544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077171, 37.006805, 30.878342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831284, 37.314503, 30.948072>,  <41.683750, 37.499119, 30.989912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831284, 37.314503, 30.948072>,  <42.077171, 37.006805, 30.878342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831284, 37.314503, 30.948072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159107, -0.337411, 0.927814,
		0.772533, 0.542607, 0.329804,
		-0.614718, 0.769240, 0.174329,
		41.646870, 37.545277, 31.000372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262604, 37.317772, 31.518749>,  <42.077171, 37.006805, 30.878342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262604, 37.317772, 31.518749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884350, 37.434963, 31.462265>,  <41.657398, 37.505280, 31.428375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884350, 37.434963, 31.462265>,  <42.262604, 37.317772, 31.518749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884350, 37.434963, 31.462265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272122, -0.474956, 0.836879,
		0.178120, 0.829807, 0.528860,
		-0.945634, 0.292979, -0.141210,
		41.600658, 37.522858, 31.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099339, 37.655319, 32.077221>,  <42.262604, 37.317772, 31.518749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099339, 37.655319, 32.077221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745392, 37.544250, 31.927607>,  <41.533024, 37.477608, 31.837839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745392, 37.544250, 31.927607>,  <42.099339, 37.655319, 32.077221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745392, 37.544250, 31.927607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233861, -0.429624, 0.872200,
		-0.402883, 0.859255, 0.315224,
		-0.884870, -0.277676, -0.374034,
		41.479931, 37.460949, 31.815395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632866, 37.641853, 32.632729>,  <42.099339, 37.655319, 32.077221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632866, 37.641853, 32.632729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412361, 37.425587, 32.378551>,  <41.280056, 37.295826, 32.226048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412361, 37.425587, 32.378551>,  <41.632866, 37.641853, 32.632729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412361, 37.425587, 32.378551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385341, -0.510528, 0.768682,
		-0.740012, 0.668610, 0.073096,
		-0.551266, -0.540667, -0.635440,
		41.246983, 37.263386, 32.187920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001732, 37.707714, 32.829208>,  <41.632866, 37.641853, 32.632729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001732, 37.707714, 32.829208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049000, 37.351212, 32.654072>,  <41.077358, 37.137310, 32.548992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049000, 37.351212, 32.654072>,  <41.001732, 37.707714, 32.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049000, 37.351212, 32.654072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502293, -0.434005, 0.747891,
		-0.856585, 0.131546, -0.498957,
		0.118167, -0.891255, -0.437837,
		41.084450, 37.083836, 32.522720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357162, 37.474026, 32.938564>,  <41.001732, 37.707714, 32.829208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357162, 37.474026, 32.938564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586010, 37.158802, 32.847656>,  <40.723316, 36.969669, 32.793110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586010, 37.158802, 32.847656>,  <40.357162, 37.474026, 32.938564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586010, 37.158802, 32.847656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316940, -0.467998, 0.824940,
		-0.756462, -0.399929, -0.517516,
		0.572114, -0.788057, -0.227269,
		40.757645, 36.922386, 32.779476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903854, 36.835838, 32.988068>,  <40.357162, 37.474026, 32.938564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903854, 36.835838, 32.988068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280579, 36.701790, 32.998531>,  <40.506615, 36.621361, 33.004810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280579, 36.701790, 32.998531>,  <39.903854, 36.835838, 32.988068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280579, 36.701790, 32.998531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218291, -0.550581, 0.805735,
		-0.255616, -0.764561, -0.591698,
		0.941811, -0.335121, 0.026159,
		40.563122, 36.601254, 33.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779263, 36.149651, 32.935577>,  <39.903854, 36.835838, 32.988068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779263, 36.149651, 32.935577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135620, 36.208225, 33.107559>,  <40.349434, 36.243370, 33.210747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135620, 36.208225, 33.107559>,  <39.779263, 36.149651, 32.935577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135620, 36.208225, 33.107559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285217, -0.556341, 0.780471,
		0.353489, -0.817949, -0.453877,
		0.890896, 0.146435, 0.429954,
		40.402889, 36.252155, 33.236546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867920, 35.434067, 33.163689>,  <39.779263, 36.149651, 32.935577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867920, 35.434067, 33.163689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132633, 35.645592, 33.376255>,  <40.291462, 35.772507, 33.503796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132633, 35.645592, 33.376255>,  <39.867920, 35.434067, 33.163689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132633, 35.645592, 33.376255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187526, -0.569539, 0.800287,
		0.725864, -0.629269, -0.277744,
		0.661782, 0.528816, 0.531413,
		40.331169, 35.804237, 33.535679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410107, 34.993176, 33.274879>,  <39.867920, 35.434067, 33.163689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410107, 34.993176, 33.274879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430779, 35.275360, 33.557625>,  <40.443180, 35.444672, 33.727272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430779, 35.275360, 33.557625>,  <40.410107, 34.993176, 33.274879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430779, 35.275360, 33.557625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036627, -0.708673, 0.704586,
		0.997992, -0.010523, -0.062464,
		0.051681, 0.705459, 0.706864,
		40.446281, 35.487000, 33.769684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973137, 34.795300, 33.724541>,  <40.410107, 34.993176, 33.274879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973137, 34.795300, 33.724541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752247, 35.048809, 33.941196>,  <40.619713, 35.200916, 34.071190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752247, 35.048809, 33.941196>,  <40.973137, 34.795300, 33.724541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752247, 35.048809, 33.941196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036337, -0.667368, 0.743841,
		0.832903, 0.391086, 0.391567,
		-0.552225, 0.633776, 0.541641,
		40.586578, 35.238941, 34.103687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172337, 34.681679, 34.286377>,  <40.973137, 34.795300, 33.724541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172337, 34.681679, 34.286377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832123, 34.864628, 34.390224>,  <40.627995, 34.974400, 34.452534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832123, 34.864628, 34.390224>,  <41.172337, 34.681679, 34.286377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832123, 34.864628, 34.390224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075233, -0.594378, 0.800659,
		0.520513, 0.661455, 0.539948,
		-0.850533, 0.457375, 0.259619,
		40.576962, 35.001839, 34.468109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185024, 34.908890, 34.970886>,  <41.172337, 34.681679, 34.286377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185024, 34.908890, 34.970886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794037, 34.880501, 34.891376>,  <40.559444, 34.863468, 34.843670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794037, 34.880501, 34.891376>,  <41.185024, 34.908890, 34.970886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794037, 34.880501, 34.891376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164850, -0.331427, 0.928967,
		-0.131811, 0.940808, 0.312261,
		-0.977471, -0.070972, -0.198778,
		40.500797, 34.859211, 34.831741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812801, 35.065716, 35.624435>,  <41.185024, 34.908890, 34.970886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812801, 35.065716, 35.624435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517704, 34.888386, 35.420792>,  <40.340645, 34.781986, 35.298603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517704, 34.888386, 35.420792>,  <40.812801, 35.065716, 35.624435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517704, 34.888386, 35.420792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300090, -0.460183, 0.835571,
		-0.604714, 0.769217, 0.206460,
		-0.737745, -0.443325, -0.509113,
		40.296379, 34.755390, 35.268059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274937, 35.158428, 36.136597>,  <40.812801, 35.065716, 35.624435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274937, 35.158428, 36.136597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178307, 34.846729, 35.905285>,  <40.120327, 34.659710, 35.766499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178307, 34.846729, 35.905285>,  <40.274937, 35.158428, 36.136597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178307, 34.846729, 35.905285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200878, -0.542863, 0.815444,
		-0.949362, 0.313157, -0.025390,
		-0.241579, -0.779252, -0.578279,
		40.105831, 34.612953, 35.731800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763088, 34.817219, 36.529087>,  <40.274937, 35.158428, 36.136597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763088, 34.817219, 36.529087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854431, 34.535110, 36.260628>,  <39.909237, 34.365845, 36.099552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854431, 34.535110, 36.260628>,  <39.763088, 34.817219, 36.529087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854431, 34.535110, 36.260628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261212, -0.708471, 0.655619,
		-0.937882, 0.025600, -0.346008,
		0.228353, -0.705275, -0.671150,
		39.922935, 34.323528, 36.059284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206516, 34.252159, 36.474522>,  <39.763088, 34.817219, 36.529087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206516, 34.252159, 36.474522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540432, 34.076969, 36.341068>,  <39.740780, 33.971855, 36.260998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540432, 34.076969, 36.341068>,  <39.206516, 34.252159, 36.474522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540432, 34.076969, 36.341068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123810, -0.739787, 0.661352,
		-0.536470, -0.510781, -0.671790,
		0.834787, -0.437970, -0.333634,
		39.790867, 33.945580, 36.240978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067661, 33.588978, 36.310558>,  <39.206516, 34.252159, 36.474522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067661, 33.588978, 36.310558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461121, 33.567074, 36.379181>,  <39.697197, 33.553932, 36.420357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461121, 33.567074, 36.379181>,  <39.067661, 33.588978, 36.310558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461121, 33.567074, 36.379181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129008, -0.878941, 0.459150,
		0.125648, -0.473776, -0.871636,
		0.983651, -0.054757, 0.171558,
		39.756214, 33.550648, 36.430649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139736, 32.891285, 36.369072>,  <39.067661, 33.588978, 36.310558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139736, 32.891285, 36.369072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471905, 33.033806, 36.540394>,  <39.671207, 33.119320, 36.643188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471905, 33.033806, 36.540394>,  <39.139736, 32.891285, 36.369072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471905, 33.033806, 36.540394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109660, -0.858257, 0.501368,
		0.546237, -0.369379, -0.751788,
		0.830422, 0.356307, 0.428305,
		39.721031, 33.140697, 36.668884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564816, 32.312370, 36.467907>,  <39.139736, 32.891285, 36.369072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564816, 32.312370, 36.467907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715290, 32.590099, 36.713310>,  <39.805576, 32.756737, 36.860554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715290, 32.590099, 36.713310>,  <39.564816, 32.312370, 36.467907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715290, 32.590099, 36.713310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427063, -0.717554, 0.550213,
		0.822253, 0.055024, -0.566456,
		0.376188, 0.694326, 0.613509,
		39.828148, 32.798397, 36.897362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264633, 32.148575, 36.477608>,  <39.564816, 32.312370, 36.467907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264633, 32.148575, 36.477608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139839, 32.334244, 36.809200>,  <40.064964, 32.445644, 37.008156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139839, 32.334244, 36.809200>,  <40.264633, 32.148575, 36.477608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139839, 32.334244, 36.809200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301746, -0.778945, 0.549722,
		0.900897, 0.421645, 0.102955,
		-0.311984, 0.464177, 0.828979,
		40.046246, 32.473495, 37.057896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816193, 32.027431, 36.869801>,  <40.264633, 32.148575, 36.477608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816193, 32.027431, 36.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502396, 32.092728, 37.109108>,  <40.314117, 32.131905, 37.252693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502396, 32.092728, 37.109108>,  <40.816193, 32.027431, 36.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502396, 32.092728, 37.109108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274346, -0.773833, 0.570891,
		0.556149, 0.611993, 0.562284,
		-0.784495, 0.163240, 0.598264,
		40.267048, 32.141701, 37.288586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066341, 31.818247, 37.507977>,  <40.816193, 32.027431, 36.869801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066341, 31.818247, 37.507977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679310, 31.860954, 37.599529>,  <40.447090, 31.886580, 37.654461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679310, 31.860954, 37.599529>,  <41.066341, 31.818247, 37.507977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679310, 31.860954, 37.599529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083201, -0.720908, 0.688018,
		0.238462, 0.684757, 0.688654,
		-0.967581, 0.106769, 0.228882,
		40.389034, 31.892984, 37.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992691, 31.636005, 38.186012>,  <41.066341, 31.818247, 37.507977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992691, 31.636005, 38.186012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608978, 31.613970, 38.075199>,  <40.378750, 31.600748, 38.008709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608978, 31.613970, 38.075199>,  <40.992691, 31.636005, 38.186012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608978, 31.613970, 38.075199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137273, -0.766263, 0.627692,
		-0.246861, 0.640161, 0.727498,
		-0.959279, -0.055087, -0.277037,
		40.321194, 31.597445, 37.992088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446392, 31.640060, 38.795181>,  <40.992691, 31.636005, 38.186012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446392, 31.640060, 38.795181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325291, 31.454533, 38.462143>,  <40.252628, 31.343216, 38.262321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325291, 31.454533, 38.462143>,  <40.446392, 31.640060, 38.795181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325291, 31.454533, 38.462143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214004, -0.818200, 0.533621,
		-0.928732, 0.339733, 0.148453,
		-0.302753, -0.463822, -0.832592,
		40.234467, 31.315386, 38.212364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069817, 31.192839, 39.063564>,  <40.446392, 31.640060, 38.795181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069817, 31.192839, 39.063564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039459, 31.030943, 38.699055>,  <40.021244, 30.933805, 38.480347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039459, 31.030943, 38.699055>,  <40.069817, 31.192839, 39.063564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039459, 31.030943, 38.699055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218202, -0.885020, 0.411252,
		-0.972948, 0.230053, -0.021150,
		-0.075891, -0.404742, -0.911277,
		40.016693, 30.909521, 38.425671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547436, 30.717255, 39.091381>,  <40.069817, 31.192839, 39.063564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547436, 30.717255, 39.091381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751312, 30.592480, 38.770653>,  <39.873638, 30.517614, 38.578217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751312, 30.592480, 38.770653>,  <39.547436, 30.717255, 39.091381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751312, 30.592480, 38.770653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193663, -0.949637, 0.246342,
		-0.838280, 0.029725, -0.544429,
		0.509687, -0.311940, -0.801818,
		39.904217, 30.498898, 38.530106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305210, 30.022984, 39.046963>,  <39.547436, 30.717255, 39.091381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305210, 30.022984, 39.046963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627472, 30.053585, 38.811993>,  <39.820827, 30.071945, 38.671009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627472, 30.053585, 38.811993>,  <39.305210, 30.022984, 39.046963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627472, 30.053585, 38.811993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088481, -0.996043, -0.008367,
		-0.585740, -0.045235, -0.809236,
		0.805655, 0.076503, -0.587424,
		39.869167, 30.076536, 38.635765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214241, 29.565300, 38.612171>,  <39.305210, 30.022984, 39.046963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214241, 29.565300, 38.612171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609348, 29.612587, 38.571510>,  <39.846413, 29.640959, 38.547115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609348, 29.612587, 38.571510>,  <39.214241, 29.565300, 38.612171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609348, 29.612587, 38.571510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112986, -0.992028, -0.055803,
		-0.107439, 0.043635, -0.993254,
		0.987771, 0.118219, -0.101652,
		39.905678, 29.648052, 38.541016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415154, 29.122137, 38.037270>,  <39.214241, 29.565300, 38.612171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415154, 29.122137, 38.037270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720825, 29.182634, 38.288078>,  <39.904228, 29.218933, 38.438564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720825, 29.182634, 38.288078>,  <39.415154, 29.122137, 38.037270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720825, 29.182634, 38.288078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143074, -0.987649, 0.063862,
		0.628936, 0.040908, -0.776380,
		0.764179, 0.151245, 0.627021,
		39.950081, 29.228008, 38.476185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096443, 28.665861, 37.857067>,  <39.415154, 29.122137, 38.037270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096443, 28.665861, 37.857067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153172, 28.751467, 38.243660>,  <40.187210, 28.802830, 38.475616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153172, 28.751467, 38.243660>,  <40.096443, 28.665861, 37.857067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153172, 28.751467, 38.243660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321047, -0.933517, 0.159606,
		0.936384, 0.287650, -0.201101,
		0.141820, 0.214016, 0.966480,
		40.195717, 28.815672, 38.533604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768295, 28.547409, 38.119232>,  <40.096443, 28.665861, 37.857067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768295, 28.547409, 38.119232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579826, 28.509672, 38.470024>,  <40.466743, 28.487030, 38.680500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579826, 28.509672, 38.470024>,  <40.768295, 28.547409, 38.119232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579826, 28.509672, 38.470024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484616, -0.858438, 0.168023,
		0.736981, 0.504166, 0.450195,
		-0.471176, -0.094342, 0.876979,
		40.438473, 28.481369, 38.733116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208702, 28.199659, 38.683231>,  <40.768295, 28.547409, 38.119232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208702, 28.199659, 38.683231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824474, 28.120853, 38.761703>,  <40.593937, 28.073570, 38.808788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824474, 28.120853, 38.761703>,  <41.208702, 28.199659, 38.683231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824474, 28.120853, 38.761703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236058, -0.950707, 0.201079,
		0.146896, 0.239461, 0.959729,
		-0.960572, -0.197013, 0.196182,
		40.536304, 28.061749, 38.820557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292553, 27.634911, 39.065689>,  <41.208702, 28.199659, 38.683231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292553, 27.634911, 39.065689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898766, 27.629475, 38.995682>,  <40.662491, 27.626213, 38.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898766, 27.629475, 38.995682>,  <41.292553, 27.634911, 39.065689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898766, 27.629475, 38.995682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018216, -0.999525, -0.024855,
		-0.174597, -0.027657, 0.984251,
		-0.984471, -0.013589, -0.175018,
		40.603424, 27.625399, 38.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994736, 27.094622, 39.526115>,  <41.292553, 27.634911, 39.065689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994736, 27.094622, 39.526115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739918, 27.161493, 39.225124>,  <40.587025, 27.201616, 39.044529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739918, 27.161493, 39.225124>,  <40.994736, 27.094622, 39.526115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739918, 27.161493, 39.225124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139212, -0.985098, -0.101003,
		-0.758149, 0.040410, 0.650828,
		-0.637048, 0.167179, -0.752476,
		40.548805, 27.211647, 38.999382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383816, 26.663841, 39.598633>,  <40.994736, 27.094622, 39.526115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383816, 26.663841, 39.598633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468498, 26.733658, 39.213985>,  <40.519306, 26.775547, 38.983196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468498, 26.733658, 39.213985>,  <40.383816, 26.663841, 39.598633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468498, 26.733658, 39.213985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157670, -0.964936, -0.209853,
		-0.964532, 0.196045, -0.176760,
		0.211703, 0.174540, -0.961622,
		40.532009, 26.786020, 38.925499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897987, 26.307467, 39.193794>,  <40.383816, 26.663841, 39.598633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897987, 26.307467, 39.193794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228722, 26.361713, 38.975456>,  <40.427162, 26.394260, 38.844452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228722, 26.361713, 38.975456>,  <39.897987, 26.307467, 39.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228722, 26.361713, 38.975456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030385, -0.958307, -0.284120,
		-0.561619, 0.251507, -0.788244,
		0.826838, 0.135616, -0.545845,
		40.476772, 26.402399, 38.811703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796665, 26.066813, 38.520538>,  <39.897987, 26.307467, 39.193794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796665, 26.066813, 38.520538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195843, 26.068474, 38.546150>,  <40.435349, 26.069469, 38.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195843, 26.068474, 38.546150>,  <39.796665, 26.066813, 38.520538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195843, 26.068474, 38.546150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040179, -0.818473, -0.573139,
		0.050028, 0.574531, -0.816953,
		0.997939, 0.004152, 0.064031,
		40.495224, 26.069719, 38.565361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037338, 26.121218, 37.836010>,  <39.796665, 26.066813, 38.520538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037338, 26.121218, 37.836010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337597, 25.941824, 38.030075>,  <40.517754, 25.834187, 38.146515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337597, 25.941824, 38.030075>,  <40.037338, 26.121218, 37.836010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337597, 25.941824, 38.030075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215704, -0.527727, -0.821569,
		0.624497, 0.721363, -0.299398,
		0.750650, -0.448486, 0.485165,
		40.562790, 25.807278, 38.175625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756237, 26.228624, 37.414574>,  <40.037338, 26.121218, 37.836010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756237, 26.228624, 37.414574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753162, 25.910009, 37.656387>,  <40.751316, 25.718840, 37.801476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753162, 25.910009, 37.656387>,  <40.756237, 26.228624, 37.414574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753162, 25.910009, 37.656387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134558, -0.599882, -0.788693,
		0.990876, 0.075284, 0.111792,
		-0.007686, -0.796539, 0.604538,
		40.750858, 25.671047, 37.837749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933842, 26.665932, 38.045349>,  <40.756237, 26.228624, 37.414574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933842, 26.665932, 38.045349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629318, 26.540689, 38.272461>,  <40.446606, 26.465544, 38.408730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629318, 26.540689, 38.272461>,  <40.933842, 26.665932, 38.045349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629318, 26.540689, 38.272461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282888, 0.948334, 0.143658,
		-0.583427, -0.051251, -0.810547,
		-0.761306, -0.313108, 0.567782,
		40.400925, 26.446756, 38.442795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197617, 26.869873, 37.814625>,  <40.933842, 26.665932, 38.045349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197617, 26.869873, 37.814625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246136, 26.855927, 38.211426>,  <40.275246, 26.847559, 38.449505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246136, 26.855927, 38.211426>,  <40.197617, 26.869873, 37.814625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246136, 26.855927, 38.211426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201697, 0.977668, 0.059026,
		-0.971908, -0.207244, 0.111554,
		0.121295, -0.034868, 0.992004,
		40.282524, 26.845467, 38.509026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565800, 27.234413, 38.162113>,  <40.197617, 26.869873, 37.814625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565800, 27.234413, 38.162113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861465, 27.225758, 38.431381>,  <40.038864, 27.220564, 38.592941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861465, 27.225758, 38.431381>,  <39.565800, 27.234413, 38.162113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861465, 27.225758, 38.431381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171394, 0.960537, 0.219073,
		-0.651349, -0.277310, 0.706288,
		0.739167, -0.021640, 0.673174,
		40.083214, 27.219265, 38.633335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338097, 27.543983, 38.724148>,  <39.565800, 27.234413, 38.162113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338097, 27.543983, 38.724148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735046, 27.581373, 38.756302>,  <39.973217, 27.603807, 38.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735046, 27.581373, 38.756302>,  <39.338097, 27.543983, 38.724148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735046, 27.581373, 38.756302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108982, 0.969955, 0.217509,
		-0.057642, -0.224610, 0.972742,
		0.992371, 0.093473, 0.080388,
		40.032757, 27.609415, 38.780418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329575, 27.967461, 39.300667>,  <39.338097, 27.543983, 38.724148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329575, 27.967461, 39.300667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702427, 27.994894, 39.158436>,  <39.926136, 28.011354, 39.073097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702427, 27.994894, 39.158436>,  <39.329575, 27.967461, 39.300667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702427, 27.994894, 39.158436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002000, 0.982862, 0.184332,
		0.362126, -0.171110, 0.916290,
		0.932127, 0.068584, -0.355577,
		39.982063, 28.015469, 39.051762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588978, 28.559261, 39.637100>,  <39.329575, 27.967461, 39.300667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588978, 28.559261, 39.637100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867527, 28.508532, 39.354546>,  <40.034657, 28.478094, 39.185013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867527, 28.508532, 39.354546>,  <39.588978, 28.559261, 39.637100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867527, 28.508532, 39.354546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160058, 0.986917, -0.019401,
		0.699606, -0.099552, 0.707559,
		0.696371, -0.126824, -0.706388,
		40.076439, 28.470484, 39.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131237, 28.904861, 39.849327>,  <39.588978, 28.559261, 39.637100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131237, 28.904861, 39.849327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127209, 28.865175, 39.451321>,  <40.124790, 28.841364, 39.212517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127209, 28.865175, 39.451321>,  <40.131237, 28.904861, 39.849327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127209, 28.865175, 39.451321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209983, 0.972668, -0.099113,
		0.977653, -0.209935, 0.011037,
		-0.010072, -0.099216, -0.995015,
		40.124187, 28.835411, 39.152817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794041, 28.925180, 39.513805>,  <40.131237, 28.904861, 39.849327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794041, 28.925180, 39.513805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556435, 29.044212, 39.214848>,  <40.413872, 29.115631, 39.035473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556435, 29.044212, 39.214848>,  <40.794041, 28.925180, 39.513805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556435, 29.044212, 39.214848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492629, 0.869048, -0.045516,
		0.635974, -0.395224, -0.662824,
		-0.594015, 0.297579, -0.747391,
		40.378231, 29.133486, 38.990631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960846, 29.615717, 39.229706>,  <40.794041, 28.925180, 39.513805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960846, 29.615717, 39.229706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709484, 29.494856, 38.942982>,  <40.558666, 29.422338, 38.770947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709484, 29.494856, 38.942982>,  <40.960846, 29.615717, 39.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709484, 29.494856, 38.942982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169414, 0.846200, -0.505217,
		0.759214, -0.438917, -0.480567,
		-0.628404, -0.302153, -0.716806,
		40.520962, 29.404211, 38.727940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235775, 29.873312, 38.542290>,  <40.960846, 29.615717, 39.229706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235775, 29.873312, 38.542290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844463, 29.802229, 38.499596>,  <40.609676, 29.759579, 38.473980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844463, 29.802229, 38.499596>,  <41.235775, 29.873312, 38.542290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844463, 29.802229, 38.499596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120680, 0.906859, -0.403785,
		0.168550, -0.382133, -0.908606,
		-0.978278, -0.177708, -0.106735,
		40.550980, 29.748917, 38.467575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970886, 30.069069, 37.895893>,  <41.235775, 29.873312, 38.542290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970886, 30.069069, 37.895893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643276, 30.088060, 38.124611>,  <40.446709, 30.099455, 38.261841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643276, 30.088060, 38.124611>,  <40.970886, 30.069069, 37.895893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643276, 30.088060, 38.124611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303942, 0.809350, -0.502564,
		-0.486641, -0.585404, -0.648447,
		-0.819024, 0.047478, 0.571792,
		40.397568, 30.102304, 38.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452492, 30.095140, 37.402706>,  <40.970886, 30.069069, 37.895893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452492, 30.095140, 37.402706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266869, 30.215391, 37.736000>,  <40.155495, 30.287542, 37.935974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266869, 30.215391, 37.736000>,  <40.452492, 30.095140, 37.402706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266869, 30.215391, 37.736000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018512, 0.937152, -0.348430,
		-0.885613, -0.177116, -0.429325,
		-0.464055, 0.300627, 0.833233,
		40.127651, 30.305578, 37.985970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937286, 30.579599, 37.129498>,  <40.452492, 30.095140, 37.402706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937286, 30.579599, 37.129498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948311, 30.634207, 37.525600>,  <39.954926, 30.666971, 37.763260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948311, 30.634207, 37.525600>,  <39.937286, 30.579599, 37.129498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948311, 30.634207, 37.525600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169778, 0.976877, -0.129950,
		-0.985097, -0.164542, 0.050100,
		0.027559, 0.136519, 0.990254,
		39.956577, 30.675163, 37.822678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463657, 31.024574, 37.167709>,  <39.937286, 30.579599, 37.129498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463657, 31.024574, 37.167709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658199, 31.068708, 37.514416>,  <39.774925, 31.095188, 37.722439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658199, 31.068708, 37.514416>,  <39.463657, 31.024574, 37.167709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658199, 31.068708, 37.514416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118894, 0.991125, -0.059452,
		-0.865632, -0.074138, 0.495162,
		0.486359, 0.110335, 0.866764,
		39.804108, 31.101809, 37.774445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101780, 31.494320, 37.613392>,  <39.463657, 31.024574, 37.167709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101780, 31.494320, 37.613392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490250, 31.500614, 37.708527>,  <39.723331, 31.504391, 37.765610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490250, 31.500614, 37.708527>,  <39.101780, 31.494320, 37.613392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490250, 31.500614, 37.708527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014052, 0.999863, -0.008776,
		-0.237944, 0.005181, 0.971265,
		0.971177, 0.015736, 0.237839,
		39.781601, 31.505335, 37.779877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183655, 31.905682, 38.170788>,  <39.101780, 31.494320, 37.613392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183655, 31.905682, 38.170788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546169, 31.911440, 38.001823>,  <39.763680, 31.914894, 37.900444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546169, 31.911440, 38.001823>,  <39.183655, 31.905682, 38.170788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546169, 31.911440, 38.001823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045877, 0.996865, -0.064458,
		0.420159, 0.077797, 0.904109,
		0.906290, 0.014395, -0.422411,
		39.818058, 31.915758, 37.875099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273018, 32.586159, 38.051750>,  <39.183655, 31.905682, 38.170788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273018, 32.586159, 38.051750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600212, 32.466022, 37.855507>,  <39.796528, 32.393940, 37.737759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600212, 32.466022, 37.855507>,  <39.273018, 32.586159, 38.051750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600212, 32.466022, 37.855507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061730, 0.893782, -0.444234,
		0.571920, 0.333091, 0.749639,
		0.817984, -0.300342, -0.490610,
		39.845608, 32.375919, 37.708324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832550, 33.071911, 38.181881>,  <39.273018, 32.586159, 38.051750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832550, 33.071911, 38.181881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887825, 32.890549, 37.829670>,  <39.920990, 32.781731, 37.618343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887825, 32.890549, 37.829670>,  <39.832550, 33.071911, 38.181881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887825, 32.890549, 37.829670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062799, 0.891281, -0.449082,
		0.988414, 0.006760, 0.151634,
		0.138184, -0.453401, -0.880530,
		39.929279, 32.754528, 37.565510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493755, 33.299122, 37.913795>,  <39.832550, 33.071911, 38.181881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493755, 33.299122, 37.913795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250847, 33.193310, 37.614128>,  <40.105103, 33.129822, 37.434330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250847, 33.193310, 37.614128>,  <40.493755, 33.299122, 37.913795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250847, 33.193310, 37.614128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293204, 0.801767, -0.520770,
		0.738412, -0.535907, -0.409330,
		-0.607272, -0.264525, -0.749165,
		40.068665, 33.113953, 37.389378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800182, 33.631050, 37.266315>,  <40.493755, 33.299122, 37.913795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800182, 33.631050, 37.266315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472679, 33.486000, 37.088264>,  <40.276176, 33.398972, 36.981434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472679, 33.486000, 37.088264>,  <40.800182, 33.631050, 37.266315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472679, 33.486000, 37.088264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120275, 0.649757, -0.750566,
		0.561398, -0.668070, -0.488380,
		-0.818760, -0.362627, -0.445124,
		40.227051, 33.377213, 36.954727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050457, 33.499413, 36.573059>,  <40.800182, 33.631050, 37.266315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050457, 33.499413, 36.573059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654327, 33.506245, 36.517979>,  <40.416649, 33.510345, 36.484932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654327, 33.506245, 36.517979>,  <41.050457, 33.499413, 36.573059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654327, 33.506245, 36.517979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106073, 0.732984, -0.671925,
		0.089455, -0.680032, -0.727705,
		-0.990327, 0.017083, -0.137702,
		40.357231, 33.511368, 36.476669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931698, 33.485485, 35.737797>,  <41.050457, 33.499413, 36.573059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931698, 33.485485, 35.737797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594242, 33.619667, 35.905479>,  <40.391769, 33.700176, 36.006088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594242, 33.619667, 35.905479>,  <40.931698, 33.485485, 35.737797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594242, 33.619667, 35.905479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147144, 0.606431, -0.781403,
		-0.516348, -0.720909, -0.462250,
		-0.843643, 0.335458, 0.419207,
		40.341148, 33.720306, 36.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594482, 33.786510, 35.612949>,  <40.931698, 33.485485, 35.737797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594482, 33.786510, 35.612949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600883, 33.436241, 35.806004>,  <41.604725, 33.226078, 35.921837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600883, 33.436241, 35.806004>,  <41.594482, 33.786510, 35.612949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600883, 33.436241, 35.806004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646470, -0.359174, -0.673105,
		0.762772, 0.322780, 0.560350,
		0.016002, -0.875675, 0.482635,
		41.605682, 33.173538, 35.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298653, 33.471226, 35.822716>,  <41.594482, 33.786510, 35.612949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298653, 33.471226, 35.822716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039810, 33.178093, 35.738609>,  <41.884506, 33.002213, 35.688145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039810, 33.178093, 35.738609>,  <42.298653, 33.471226, 35.822716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039810, 33.178093, 35.738609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587456, -0.303483, -0.750196,
		0.485958, -0.608975, 0.626893,
		-0.647102, -0.732835, -0.210267,
		41.845680, 32.958244, 35.675529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557796, 32.802612, 35.940094>,  <42.298653, 33.471226, 35.822716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557796, 32.802612, 35.940094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302830, 32.884251, 35.642895>,  <42.149849, 32.933235, 35.464577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302830, 32.884251, 35.642895>,  <42.557796, 32.802612, 35.940094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302830, 32.884251, 35.642895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770382, 0.186977, -0.609549,
		0.014515, -0.960928, -0.276416,
		-0.637417, 0.204098, -0.742996,
		42.111603, 32.945480, 35.419994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663612, 32.436420, 35.197895>,  <42.557796, 32.802612, 35.940094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663612, 32.436420, 35.197895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531887, 32.813938, 35.209190>,  <42.452850, 33.040451, 35.215969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531887, 32.813938, 35.209190>,  <42.663612, 32.436420, 35.197895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531887, 32.813938, 35.209190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736129, 0.275353, -0.618300,
		-0.591326, -0.182825, -0.785435,
		-0.329313, 0.943799, 0.028241,
		42.433094, 33.097076, 35.217663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595306, 32.784328, 34.467854>,  <42.663612, 32.436420, 35.197895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595306, 32.784328, 34.467854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669712, 33.010098, 34.789555>,  <42.714355, 33.145557, 34.982574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669712, 33.010098, 34.789555>,  <42.595306, 32.784328, 34.467854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669712, 33.010098, 34.789555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693285, 0.504627, -0.514497,
		-0.696242, 0.653284, -0.297435,
		0.186019, 0.564422, 0.804254,
		42.725517, 33.179424, 35.030830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540981, 33.605263, 34.361637>,  <42.595306, 32.784328, 34.467854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540981, 33.605263, 34.361637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818954, 33.532558, 34.639927>,  <42.985737, 33.488937, 34.806900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818954, 33.532558, 34.639927>,  <42.540981, 33.605263, 34.361637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818954, 33.532558, 34.639927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692448, 0.430001, -0.579322,
		-0.193866, 0.884343, 0.424680,
		0.694932, -0.181758, 0.695725,
		43.027435, 33.478031, 34.848644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967644, 34.206478, 34.301559>,  <42.540981, 33.605263, 34.361637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967644, 34.206478, 34.301559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186832, 33.890991, 34.413029>,  <43.318348, 33.701698, 34.479908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186832, 33.890991, 34.413029>,  <42.967644, 34.206478, 34.301559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186832, 33.890991, 34.413029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676079, 0.221414, -0.702775,
		0.492586, 0.573505, 0.654562,
		0.547974, -0.788713, 0.278669,
		43.351223, 33.654377, 34.496628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702335, 34.366573, 34.498814>,  <42.967644, 34.206478, 34.301559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702335, 34.366573, 34.498814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655117, 34.002373, 34.340294>,  <43.626785, 33.783852, 34.245182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655117, 34.002373, 34.340294>,  <43.702335, 34.366573, 34.498814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655117, 34.002373, 34.340294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603849, 0.251003, -0.756547,
		0.788310, -0.328610, 0.520176,
		-0.118043, -0.910501, -0.396299,
		43.619705, 33.729221, 34.221405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400124, 34.177299, 34.324753>,  <43.702335, 34.366573, 34.498814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400124, 34.177299, 34.324753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144611, 33.976154, 34.091827>,  <43.991306, 33.855469, 33.952072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144611, 33.976154, 34.091827>,  <44.400124, 34.177299, 34.324753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144611, 33.976154, 34.091827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558978, 0.216752, -0.800351,
		0.528684, -0.836749, 0.142633,
		-0.638777, -0.502862, -0.582318,
		43.952980, 33.825294, 33.917133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749527, 33.673794, 33.987122>,  <44.400124, 34.177299, 34.324753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749527, 33.673794, 33.987122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434761, 33.817272, 33.786285>,  <44.245899, 33.903358, 33.665783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434761, 33.817272, 33.786285>,  <44.749527, 33.673794, 33.987122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434761, 33.817272, 33.786285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580068, 0.152532, -0.800160,
		-0.210426, -0.920909, -0.328096,
		-0.786919, 0.358692, -0.502093,
		44.198685, 33.924881, 33.635658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677837, 33.257706, 33.300640>,  <44.749527, 33.673794, 33.987122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677837, 33.257706, 33.300640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505306, 33.616184, 33.259079>,  <44.401787, 33.831272, 33.234142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505306, 33.616184, 33.259079>,  <44.677837, 33.257706, 33.300640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505306, 33.616184, 33.259079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593645, 0.195207, -0.780692,
		-0.679369, -0.398413, -0.616219,
		-0.431328, 0.896193, -0.103898,
		44.375908, 33.885040, 33.227909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502663, 33.357422, 32.536449>,  <44.677837, 33.257706, 33.300640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502663, 33.357422, 32.536449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646450, 33.690002, 32.705902>,  <44.732723, 33.889549, 32.807575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646450, 33.690002, 32.705902>,  <44.502663, 33.357422, 32.536449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646450, 33.690002, 32.705902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563124, 0.168717, -0.808966,
		-0.744091, 0.529360, -0.407562,
		0.359471, 0.831452, 0.423636,
		44.754292, 33.939438, 32.832993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839535, 33.595150, 32.042042>,  <44.502663, 33.357422, 32.536449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839535, 33.595150, 32.042042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998959, 33.836803, 32.318062>,  <45.094612, 33.981796, 32.483673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998959, 33.836803, 32.318062>,  <44.839535, 33.595150, 32.042042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998959, 33.836803, 32.318062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717862, 0.262780, -0.644687,
		-0.570811, 0.752306, -0.328954,
		0.398560, 0.604137, 0.690049,
		45.118526, 34.018044, 32.525078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957520, 34.258713, 31.757425>,  <44.839535, 33.595150, 32.042042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957520, 34.258713, 31.757425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211105, 34.192314, 32.059559>,  <45.363258, 34.152473, 32.240841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211105, 34.192314, 32.059559>,  <44.957520, 34.258713, 31.757425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211105, 34.192314, 32.059559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766003, 0.269195, -0.583758,
		-0.106430, 0.948672, 0.297815,
		0.633965, -0.165998, 0.755336,
		45.401295, 34.142513, 32.286160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376884, 34.867966, 32.026024>,  <44.957520, 34.258713, 31.757425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376884, 34.867966, 32.026024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560020, 34.515198, 32.070923>,  <45.669903, 34.303535, 32.097862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560020, 34.515198, 32.070923>,  <45.376884, 34.867966, 32.026024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560020, 34.515198, 32.070923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770503, 0.330635, -0.544982,
		0.443516, 0.336006, 0.830900,
		0.457841, -0.881919, 0.112252,
		45.697372, 34.250622, 32.104599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003590, 35.025093, 32.104771>,  <45.376884, 34.867966, 32.026024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003590, 35.025093, 32.104771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063522, 34.656239, 31.962103>,  <46.099480, 34.434925, 31.876503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063522, 34.656239, 31.962103>,  <46.003590, 35.025093, 32.104771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063522, 34.656239, 31.962103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671407, 0.359701, -0.647942,
		0.725785, -0.142389, 0.673024,
		0.149828, -0.922139, -0.356666,
		46.108471, 34.379597, 31.855103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287846, 35.307533, 32.726799>,  <46.003590, 35.025093, 32.104771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287846, 35.307533, 32.726799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569813, 35.581734, 32.799667>,  <46.738995, 35.746254, 32.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569813, 35.581734, 32.799667>,  <46.287846, 35.307533, 32.726799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569813, 35.581734, 32.799667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093811, -0.164475, 0.981910,
		0.703059, -0.709254, -0.051634,
		0.704916, 0.685497, 0.182172,
		46.781288, 35.787384, 32.854321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885204, 35.045231, 33.156193>,  <46.287846, 35.307533, 32.726799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885204, 35.045231, 33.156193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.815983, 35.438393, 33.181358>,  <46.774452, 35.674290, 33.196457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.815983, 35.438393, 33.181358>,  <46.885204, 35.045231, 33.156193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.815983, 35.438393, 33.181358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119654, -0.084387, 0.989223,
		0.977618, 0.163657, 0.132211,
		-0.173050, 0.982901, 0.062916,
		46.764069, 35.733265, 33.200233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257481, 35.238369, 33.602234>,  <46.885204, 35.045231, 33.156193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257481, 35.238369, 33.602234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946110, 35.489449, 33.604721>,  <46.759285, 35.640095, 33.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946110, 35.489449, 33.604721>,  <47.257481, 35.238369, 33.602234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946110, 35.489449, 33.604721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120154, -0.158715, 0.979986,
		0.616123, 0.762105, 0.198969,
		-0.778431, 0.627699, 0.006218,
		46.712582, 35.677757, 33.606586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.331573, 35.694572, 34.168758>,  <47.257481, 35.238369, 33.602234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.331573, 35.694572, 34.168758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946453, 35.631275, 34.081150>,  <46.715382, 35.593296, 34.028584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946453, 35.631275, 34.081150>,  <47.331573, 35.694572, 34.168758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946453, 35.631275, 34.081150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204901, -0.100837, 0.973574,
		-0.176151, 0.982237, 0.064661,
		-0.962801, -0.158247, -0.219024,
		46.657612, 35.583801, 34.015442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565807, 35.240204, 34.675343>,  <47.331573, 35.694572, 34.168758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565807, 35.240204, 34.675343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712879, 35.091110, 35.016136>,  <47.801125, 35.001656, 35.220612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712879, 35.091110, 35.016136>,  <47.565807, 35.240204, 34.675343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712879, 35.091110, 35.016136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433724, -0.879148, -0.197438,
		0.822613, -0.296932, -0.484911,
		0.367683, -0.372733, 0.851985,
		47.823185, 34.979290, 35.271732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.014904, 35.579231, 26.597389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669617, 35.616261, 26.398878>,  <40.462444, 35.638477, 26.279772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669617, 35.616261, 26.398878>,  <41.014904, 35.579231, 26.597389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669617, 35.616261, 26.398878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385458, -0.755680, 0.529500,
		-0.326012, 0.648366, 0.687996,
		-0.863214, 0.092570, -0.496278,
		40.410652, 35.644032, 26.249994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570084, 35.664207, 27.129681>,  <41.014904, 35.579231, 26.597389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570084, 35.664207, 27.129681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339329, 35.553558, 26.822258>,  <40.200874, 35.487167, 26.637804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339329, 35.553558, 26.822258>,  <40.570084, 35.664207, 27.129681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339329, 35.553558, 26.822258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463747, -0.663642, 0.586957,
		-0.672413, 0.695024, 0.254562,
		-0.576887, -0.276625, -0.768557,
		40.166264, 35.470570, 26.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876183, 35.585102, 27.402716>,  <40.570084, 35.664207, 27.129681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876183, 35.585102, 27.402716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896652, 35.375290, 27.062777>,  <39.908936, 35.249401, 26.858812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896652, 35.375290, 27.062777>,  <39.876183, 35.585102, 27.402716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896652, 35.375290, 27.062777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398549, -0.790992, 0.464208,
		-0.915718, 0.314951, -0.249531,
		0.051174, -0.524534, -0.849850,
		39.912003, 35.217930, 26.807821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182606, 35.388336, 27.241676>,  <39.876183, 35.585102, 27.402716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182606, 35.388336, 27.241676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428230, 35.124939, 27.067636>,  <39.575603, 34.966900, 26.963213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428230, 35.124939, 27.067636>,  <39.182606, 35.388336, 27.241676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428230, 35.124939, 27.067636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371881, -0.727643, 0.576403,
		-0.696153, -0.192145, -0.691702,
		0.614065, -0.658496, -0.435096,
		39.612450, 34.927391, 26.937107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793407, 34.695496, 27.253393>,  <39.182606, 35.388336, 27.241676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793407, 34.695496, 27.253393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.179768, 34.601131, 27.210732>,  <39.411583, 34.544514, 27.185135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.179768, 34.601131, 27.210732>,  <38.793407, 34.695496, 27.253393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179768, 34.601131, 27.210732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120969, -0.775449, 0.619714,
		-0.228905, -0.585682, -0.777547,
		0.965903, -0.235915, -0.106654,
		39.469540, 34.530357, 27.178736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752827, 34.100258, 26.935291>,  <38.793407, 34.695496, 27.253393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752827, 34.100258, 26.935291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114716, 34.133972, 27.102324>,  <39.331848, 34.154202, 27.202543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114716, 34.133972, 27.102324>,  <38.752827, 34.100258, 26.935291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114716, 34.133972, 27.102324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194535, -0.790310, 0.581005,
		0.378989, -0.606882, -0.698614,
		0.904723, 0.084290, 0.417579,
		39.386131, 34.159260, 27.227596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992241, 33.342243, 27.047602>,  <38.752827, 34.100258, 26.935291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992241, 33.342243, 27.047602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214863, 33.569649, 27.289938>,  <39.348434, 33.706093, 27.435339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214863, 33.569649, 27.289938>,  <38.992241, 33.342243, 27.047602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214863, 33.569649, 27.289938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101101, -0.677452, 0.728586,
		0.824637, -0.466749, -0.319562,
		0.556555, 0.568510, 0.605841,
		39.381828, 33.740200, 27.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185699, 32.831242, 27.513199>,  <38.992241, 33.342243, 27.047602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185699, 32.831242, 27.513199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280506, 33.178364, 27.687891>,  <39.337391, 33.386639, 27.792707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280506, 33.178364, 27.687891>,  <39.185699, 32.831242, 27.513199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280506, 33.178364, 27.687891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308290, -0.359123, 0.880902,
		0.921294, -0.343425, 0.182420,
		0.237012, 0.867808, 0.436733,
		39.351608, 33.438705, 27.818911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608727, 32.715031, 28.110205>,  <39.185699, 32.831242, 27.513199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608727, 32.715031, 28.110205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474216, 33.083725, 28.187473>,  <39.393509, 33.304943, 28.233835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474216, 33.083725, 28.187473>,  <39.608727, 32.715031, 28.110205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474216, 33.083725, 28.187473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070048, -0.229030, 0.970896,
		0.939154, 0.312961, 0.141584,
		-0.336279, 0.921738, 0.193172,
		39.373333, 33.360245, 28.245424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902622, 32.786758, 28.755865>,  <39.608727, 32.715031, 28.110205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902622, 32.786758, 28.755865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629433, 33.077976, 28.732216>,  <39.465519, 33.252708, 28.718027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629433, 33.077976, 28.732216>,  <39.902622, 32.786758, 28.755865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629433, 33.077976, 28.732216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129117, -0.040661, 0.990795,
		0.718943, 0.684318, 0.121774,
		-0.682971, 0.728049, -0.059124,
		39.424541, 33.296391, 28.714479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941799, 33.424610, 29.239683>,  <39.902622, 32.786758, 28.755865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941799, 33.424610, 29.239683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.550755, 33.421501, 29.155581>,  <39.316128, 33.419636, 29.105120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.550755, 33.421501, 29.155581>,  <39.941799, 33.424610, 29.239683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550755, 33.421501, 29.155581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210396, 0.042239, 0.976703,
		0.001293, 0.999077, -0.042928,
		-0.977615, -0.007769, -0.210256,
		39.257469, 33.419170, 29.092505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707054, 33.973175, 29.525723>,  <39.941799, 33.424610, 29.239683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707054, 33.973175, 29.525723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386074, 33.736546, 29.494461>,  <39.193485, 33.594566, 29.475704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386074, 33.736546, 29.494461>,  <39.707054, 33.973175, 29.525723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386074, 33.736546, 29.494461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090161, -0.009268, 0.995884,
		-0.589864, 0.806197, -0.045900,
		-0.802454, -0.591574, -0.078155,
		39.145336, 33.559074, 29.471014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258667, 34.271801, 29.944160>,  <39.707054, 33.973175, 29.525723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258667, 34.271801, 29.944160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124924, 33.898296, 29.893105>,  <39.044678, 33.674194, 29.862471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124924, 33.898296, 29.893105>,  <39.258667, 34.271801, 29.944160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124924, 33.898296, 29.893105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118055, -0.092872, 0.988654,
		-0.935024, 0.345630, -0.079184,
		-0.334354, -0.933764, -0.127641,
		39.024616, 33.618168, 29.854813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714584, 34.210915, 30.361607>,  <39.258667, 34.271801, 29.944160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714584, 34.210915, 30.361607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765057, 33.823719, 30.274817>,  <38.795341, 33.591400, 30.222742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765057, 33.823719, 30.274817>,  <38.714584, 34.210915, 30.361607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765057, 33.823719, 30.274817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286769, -0.244978, 0.926148,
		-0.949653, -0.054644, -0.308501,
		0.126185, -0.967988, -0.216974,
		38.802914, 33.533321, 30.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184845, 33.879089, 30.703909>,  <38.714584, 34.210915, 30.361607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184845, 33.879089, 30.703909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467060, 33.599731, 30.655817>,  <38.636391, 33.432117, 30.626963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467060, 33.599731, 30.655817>,  <38.184845, 33.879089, 30.703909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467060, 33.599731, 30.655817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068396, -0.235971, 0.969350,
		-0.705363, -0.675691, -0.214254,
		0.705539, -0.698397, -0.120230,
		38.678722, 33.390213, 30.619747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907814, 33.238251, 31.019857>,  <38.184845, 33.879089, 30.703909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907814, 33.238251, 31.019857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307793, 33.238575, 31.015774>,  <38.547779, 33.238770, 31.013325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307793, 33.238575, 31.015774>,  <37.907814, 33.238251, 31.019857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307793, 33.238575, 31.015774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010053, -0.266865, 0.963681,
		-0.001947, -0.963734, -0.266859,
		0.999948, 0.000807, -0.010208,
		38.607777, 33.238815, 31.012711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055347, 32.535679, 31.327301>,  <37.907814, 33.238251, 31.019857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055347, 32.535679, 31.327301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402431, 32.730553, 31.366751>,  <38.610683, 32.847477, 31.390421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402431, 32.730553, 31.366751>,  <38.055347, 32.535679, 31.327301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402431, 32.730553, 31.366751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204587, -0.530873, 0.822386,
		0.453007, -0.693419, -0.560317,
		0.867715, 0.487180, 0.098624,
		38.662746, 32.876705, 31.396338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495964, 32.007343, 31.437616>,  <38.055347, 32.535679, 31.327301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495964, 32.007343, 31.437616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649197, 32.347351, 31.582237>,  <38.741135, 32.551353, 31.669010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649197, 32.347351, 31.582237>,  <38.495964, 32.007343, 31.437616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649197, 32.347351, 31.582237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317564, -0.488745, 0.812577,
		0.867412, -0.196465, -0.457163,
		0.383079, 0.850018, 0.361553,
		38.764122, 32.602356, 31.690702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948521, 31.737909, 31.849104>,  <38.495964, 32.007343, 31.437616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948521, 31.737909, 31.849104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911236, 32.120716, 31.958961>,  <38.888863, 32.350399, 32.024876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911236, 32.120716, 31.958961>,  <38.948521, 31.737909, 31.849104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911236, 32.120716, 31.958961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258271, -0.243160, 0.934970,
		0.961564, 0.158088, -0.224503,
		-0.093217, 0.957017, 0.274644,
		38.883270, 32.407822, 32.041355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562218, 31.927725, 32.207325>,  <38.948521, 31.737909, 31.849104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562218, 31.927725, 32.207325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259312, 32.155830, 32.334663>,  <39.077568, 32.292694, 32.411068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259312, 32.155830, 32.334663>,  <39.562218, 31.927725, 32.207325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259312, 32.155830, 32.334663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193532, -0.269611, 0.943321,
		0.623772, 0.775957, 0.093803,
		-0.757267, 0.570264, 0.318348,
		39.032131, 32.326908, 32.430168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774750, 32.084023, 32.838764>,  <39.562218, 31.927725, 32.207325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774750, 32.084023, 32.838764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384609, 32.172222, 32.842262>,  <39.150524, 32.225140, 32.844360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384609, 32.172222, 32.842262>,  <39.774750, 32.084023, 32.838764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384609, 32.172222, 32.842262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065358, -0.326522, 0.942927,
		0.210769, 0.919111, 0.332884,
		-0.975349, 0.220496, 0.008749,
		39.092003, 32.238373, 32.844887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314350, 32.032951, 33.384247>,  <39.774750, 32.084023, 32.838764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314350, 32.032951, 33.384247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.587070, 32.213177, 33.614773>,  <40.750702, 32.321312, 33.753090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.587070, 32.213177, 33.614773>,  <40.314350, 32.032951, 33.384247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587070, 32.213177, 33.614773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092244, 0.728574, -0.678727,
		-0.725695, 0.515921, 0.455183,
		0.681804, 0.450561, 0.576314,
		40.791611, 32.348347, 33.787666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115669, 32.903404, 33.389732>,  <40.314350, 32.032951, 33.384247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115669, 32.903404, 33.389732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489296, 32.860275, 33.525906>,  <40.713470, 32.834396, 33.607609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489296, 32.860275, 33.525906>,  <40.115669, 32.903404, 33.389732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489296, 32.860275, 33.525906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297032, 0.763778, -0.573075,
		-0.198225, 0.636410, 0.745446,
		0.934066, -0.107824, 0.340434,
		40.769516, 32.827927, 33.628036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333286, 33.585850, 33.431576>,  <40.115669, 32.903404, 33.389732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333286, 33.585850, 33.431576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.663609, 33.360268, 33.430958>,  <40.861801, 33.224918, 33.430588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.663609, 33.360268, 33.430958>,  <40.333286, 33.585850, 33.431576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663609, 33.360268, 33.430958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439245, 0.644905, -0.625429,
		0.353707, 0.515806, 0.780279,
		0.825806, -0.563952, -0.001542,
		40.911350, 33.191082, 33.430496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907494, 34.067997, 33.492222>,  <40.333286, 33.585850, 33.431576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907494, 34.067997, 33.492222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.070778, 33.734318, 33.343914>,  <41.168751, 33.534111, 33.254929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.070778, 33.734318, 33.343914>,  <40.907494, 34.067997, 33.492222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070778, 33.734318, 33.343914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580299, 0.550655, -0.600027,
		0.704709, 0.029781, 0.708871,
		0.408213, -0.834202, -0.370769,
		41.193241, 33.484058, 33.232681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662628, 34.233311, 33.465919>,  <40.907494, 34.067997, 33.492222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662628, 34.233311, 33.465919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571815, 33.942455, 33.206776>,  <41.517326, 33.767941, 33.051289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571815, 33.942455, 33.206776>,  <41.662628, 34.233311, 33.465919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571815, 33.942455, 33.206776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623951, 0.402162, -0.670038,
		0.747757, -0.556353, 0.362397,
		-0.227036, -0.727143, -0.647856,
		41.503704, 33.724312, 33.012421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272320, 33.871735, 33.259655>,  <41.662628, 34.233311, 33.465919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272320, 33.871735, 33.259655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.011196, 33.823261, 32.960548>,  <41.854523, 33.794178, 32.781086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.011196, 33.823261, 32.960548>,  <42.272320, 33.871735, 33.259655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011196, 33.823261, 32.960548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713837, 0.231955, -0.660783,
		0.253530, -0.965147, -0.064910,
		-0.652809, -0.121193, -0.747765,
		41.815353, 33.786903, 32.736217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713005, 33.746895, 32.557793>,  <42.272320, 33.871735, 33.259655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713005, 33.746895, 32.557793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.340527, 33.774639, 32.414646>,  <42.117039, 33.791286, 32.328758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.340527, 33.774639, 32.414646>,  <42.713005, 33.746895, 32.557793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340527, 33.774639, 32.414646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364481, 0.193126, -0.910964,
		0.005929, -0.978719, -0.205118,
		-0.931192, 0.069361, -0.357870,
		42.061169, 33.795448, 32.307285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688419, 33.350803, 31.964575>,  <42.713005, 33.746895, 32.557793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688419, 33.350803, 31.964575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.372658, 33.590885, 31.913050>,  <42.183201, 33.734936, 31.882135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.372658, 33.590885, 31.913050>,  <42.688419, 33.350803, 31.964575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372658, 33.590885, 31.913050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348717, 0.265755, -0.898761,
		-0.505211, -0.754404, -0.419090,
		-0.789404, 0.600207, -0.128811,
		42.135838, 33.770947, 31.874407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540882, 33.372913, 31.276417>,  <42.688419, 33.350803, 31.964575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540882, 33.372913, 31.276417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351860, 33.691662, 31.426979>,  <42.238445, 33.882912, 31.517317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351860, 33.691662, 31.426979>,  <42.540882, 33.372913, 31.276417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351860, 33.691662, 31.426979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478267, 0.590620, -0.649945,
		-0.740239, -0.127111, -0.660219,
		-0.472554, 0.796875, 0.376407,
		42.210094, 33.930725, 31.539902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166828, 33.610943, 30.715559>,  <42.540882, 33.372913, 31.276417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166828, 33.610943, 30.715559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.252190, 33.903736, 30.974375>,  <42.303406, 34.079411, 31.129665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.252190, 33.903736, 30.974375>,  <42.166828, 33.610943, 30.715559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252190, 33.903736, 30.974375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495017, 0.489970, -0.717557,
		-0.842268, 0.473427, -0.257781,
		0.213405, 0.731982, 0.647040,
		42.316212, 34.123329, 31.168488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078209, 34.238918, 30.419395>,  <42.166828, 33.610943, 30.715559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078209, 34.238918, 30.419395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.280312, 34.378487, 30.735109>,  <42.401573, 34.462227, 30.924538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.280312, 34.378487, 30.735109>,  <42.078209, 34.238918, 30.419395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280312, 34.378487, 30.735109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408292, 0.709117, -0.574848,
		-0.760272, 0.612704, 0.215824,
		0.505256, 0.348921, 0.789285,
		42.431889, 34.483162, 30.971895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049713, 35.023262, 30.351515>,  <42.078209, 34.238918, 30.419395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049713, 35.023262, 30.351515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.364826, 34.910439, 30.570543>,  <42.553894, 34.842743, 30.701962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.364826, 34.910439, 30.570543>,  <42.049713, 35.023262, 30.351515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364826, 34.910439, 30.570543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588172, 0.608435, -0.532786,
		-0.182885, 0.741788, 0.645216,
		0.787786, -0.282059, 0.547572,
		42.601162, 34.825821, 30.734816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373417, 35.656723, 30.555477>,  <42.049713, 35.023262, 30.351515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373417, 35.656723, 30.555477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.645252, 35.364384, 30.580820>,  <42.808353, 35.188980, 30.596025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.645252, 35.364384, 30.580820>,  <42.373417, 35.656723, 30.555477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645252, 35.364384, 30.580820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550531, 0.451023, -0.702491,
		0.484840, 0.512287, 0.708867,
		0.679592, -0.730849, 0.063355,
		42.849129, 35.145130, 30.599827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064812, 36.039352, 30.708906>,  <42.373417, 35.656723, 30.555477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064812, 36.039352, 30.708906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.124115, 35.672249, 30.561537>,  <43.159695, 35.451988, 30.473114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.124115, 35.672249, 30.561537>,  <43.064812, 36.039352, 30.708906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124115, 35.672249, 30.561537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529433, 0.388316, -0.754262,
		0.835297, -0.083233, 0.543462,
		0.148256, -0.917760, -0.368425,
		43.168591, 35.396919, 30.451010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728920, 36.094238, 30.574574>,  <43.064812, 36.039352, 30.708906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728920, 36.094238, 30.574574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.645691, 35.772060, 30.352596>,  <43.595753, 35.578754, 30.219410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.645691, 35.772060, 30.352596>,  <43.728920, 36.094238, 30.574574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645691, 35.772060, 30.352596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486517, 0.406972, -0.773095,
		0.848533, -0.430847, 0.307185,
		-0.208070, -0.805447, -0.554943,
		43.583271, 35.530426, 30.186113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309135, 36.005466, 30.081434>,  <43.728920, 36.094238, 30.574574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309135, 36.005466, 30.081434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.016937, 35.781075, 29.925655>,  <43.841618, 35.646439, 29.832188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.016937, 35.781075, 29.925655>,  <44.309135, 36.005466, 30.081434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016937, 35.781075, 29.925655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337303, 0.199475, -0.920020,
		0.593800, -0.803436, 0.043505,
		-0.730499, -0.560982, -0.389449,
		43.797787, 35.612782, 29.808821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583855, 35.649551, 29.562912>,  <44.309135, 36.005466, 30.081434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583855, 35.649551, 29.562912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.201252, 35.578373, 29.470444>,  <43.971691, 35.535667, 29.414963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.201252, 35.578373, 29.470444>,  <44.583855, 35.649551, 29.562912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201252, 35.578373, 29.470444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185853, 0.239112, -0.953040,
		0.224851, -0.954550, -0.195642,
		-0.956505, -0.177932, -0.231170,
		43.914303, 35.524990, 29.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629852, 35.349602, 28.935215>,  <44.583855, 35.649551, 29.562912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629852, 35.349602, 28.935215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.252926, 35.481480, 28.958345>,  <44.026772, 35.560608, 28.972223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.252926, 35.481480, 28.958345>,  <44.629852, 35.349602, 28.935215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252926, 35.481480, 28.958345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016086, 0.127949, -0.991650,
		-0.334341, -0.935377, -0.115265,
		-0.942315, 0.329695, 0.057825,
		43.970230, 35.580387, 28.975693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206421, 35.069229, 28.299154>,  <44.629852, 35.349602, 28.935215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206421, 35.069229, 28.299154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.001492, 35.386410, 28.431063>,  <43.878532, 35.576717, 28.510208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.001492, 35.386410, 28.431063>,  <44.206421, 35.069229, 28.299154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001492, 35.386410, 28.431063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285347, 0.205001, -0.936243,
		-0.810002, -0.573757, 0.121241,
		-0.512322, 0.792955, 0.329771,
		43.847794, 35.624298, 28.529995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.435707, 35.184231, 27.822710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.488701, 35.540840, 27.995979>,  <43.520496, 35.754807, 28.099941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.488701, 35.540840, 27.995979>,  <43.435707, 35.184231, 27.822710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488701, 35.540840, 27.995979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196447, 0.451972, -0.870132,
		-0.971523, 0.030180, 0.235014,
		0.132480, 0.891521, 0.433173,
		43.528446, 35.808296, 28.125931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802124, 35.552593, 27.770432>,  <43.435707, 35.184231, 27.822710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802124, 35.552593, 27.770432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089100, 35.826229, 27.823034>,  <43.261288, 35.990410, 27.854595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089100, 35.826229, 27.823034>,  <42.802124, 35.552593, 27.770432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089100, 35.826229, 27.823034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405657, 0.563743, -0.719470,
		-0.566319, 0.462832, 0.681960,
		0.717444, 0.684091, 0.131507,
		43.304333, 36.031456, 27.862486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471733, 36.182541, 27.734182>,  <42.802124, 35.552593, 27.770432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471733, 36.182541, 27.734182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.845856, 36.311169, 27.675119>,  <43.070328, 36.388344, 27.639683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.845856, 36.311169, 27.675119>,  <42.471733, 36.182541, 27.734182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845856, 36.311169, 27.675119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340520, 0.704521, -0.622653,
		-0.096198, 0.632649, 0.768441,
		0.935303, 0.321568, -0.147656,
		43.126446, 36.407639, 27.630823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391068, 36.874199, 27.806728>,  <42.471733, 36.182541, 27.734182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391068, 36.874199, 27.806728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726177, 36.801632, 27.600727>,  <42.927242, 36.758091, 27.477125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726177, 36.801632, 27.600727>,  <42.391068, 36.874199, 27.806728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726177, 36.801632, 27.600727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260299, 0.696428, -0.668754,
		0.479986, 0.694318, 0.536225,
		0.837770, -0.181414, -0.515006,
		42.977509, 36.747208, 27.446226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627121, 37.552841, 27.437635>,  <42.391068, 36.874199, 27.806728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627121, 37.552841, 27.437635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.834286, 37.275330, 27.237459>,  <42.958584, 37.108822, 27.117353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.834286, 37.275330, 27.237459>,  <42.627121, 37.552841, 27.437635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834286, 37.275330, 27.237459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215458, 0.460358, -0.861190,
		0.827856, 0.553845, 0.088945,
		0.517912, -0.693777, -0.500440,
		42.989658, 37.067196, 27.087328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083801, 37.938419, 26.952028>,  <42.627121, 37.552841, 27.437635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083801, 37.938419, 26.952028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.058044, 37.562019, 26.819139>,  <43.042591, 37.336178, 26.739407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.058044, 37.562019, 26.819139>,  <43.083801, 37.938419, 26.952028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058044, 37.562019, 26.819139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058186, 0.328807, -0.942603,
		0.996227, -0.080026, 0.033581,
		-0.064391, -0.941000, -0.332223,
		43.038727, 37.279720, 26.719473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615631, 37.905186, 26.606581>,  <43.083801, 37.938419, 26.952028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615631, 37.905186, 26.606581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.383827, 37.608459, 26.471601>,  <43.244743, 37.430424, 26.390614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.383827, 37.608459, 26.471601>,  <43.615631, 37.905186, 26.606581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383827, 37.608459, 26.471601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035906, 0.390424, -0.919935,
		0.814175, -0.545227, -0.199619,
		-0.579509, -0.741820, -0.337450,
		43.209976, 37.385914, 26.370367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941391, 37.671448, 26.059040>,  <43.615631, 37.905186, 26.606581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941391, 37.671448, 26.059040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.570660, 37.525040, 26.025530>,  <43.348221, 37.437195, 26.005424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.570660, 37.525040, 26.025530>,  <43.941391, 37.671448, 26.059040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570660, 37.525040, 26.025530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009459, 0.245803, -0.969274,
		0.375367, -0.897557, -0.231279,
		-0.926828, -0.366022, -0.083776,
		43.292610, 37.415234, 26.000397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957630, 37.264778, 25.517887>,  <43.941391, 37.671448, 26.059040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957630, 37.264778, 25.517887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.577122, 37.383770, 25.550379>,  <43.348816, 37.455166, 25.569874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.577122, 37.383770, 25.550379>,  <43.957630, 37.264778, 25.517887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577122, 37.383770, 25.550379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025644, 0.338812, -0.940505,
		-0.307300, -0.892588, -0.329929,
		-0.951267, 0.297478, 0.081227,
		43.291740, 37.473015, 25.574747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687847, 37.147568, 24.862392>,  <43.957630, 37.264778, 25.517887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687847, 37.147568, 24.862392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.421997, 37.400391, 25.021780>,  <43.262486, 37.552086, 25.117413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.421997, 37.400391, 25.021780>,  <43.687847, 37.147568, 24.862392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421997, 37.400391, 25.021780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134597, 0.423295, -0.895938,
		-0.734954, -0.649095, -0.196259,
		-0.664624, 0.632058, 0.398469,
		43.222610, 37.590008, 25.141321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107033, 37.216053, 24.367908>,  <43.687847, 37.147568, 24.862392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107033, 37.216053, 24.367908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.040226, 37.535358, 24.599382>,  <43.000141, 37.726944, 24.738266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.040226, 37.535358, 24.599382>,  <43.107033, 37.216053, 24.367908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040226, 37.535358, 24.599382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214446, 0.543466, -0.811577,
		-0.962350, -0.259646, 0.080416,
		-0.167020, 0.798266, 0.578685,
		42.990120, 37.774837, 24.772987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606922, 37.615021, 23.998407>,  <43.107033, 37.216053, 24.367908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606922, 37.615021, 23.998407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.780048, 37.866585, 24.256752>,  <42.883923, 38.017525, 24.411758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.780048, 37.866585, 24.256752>,  <42.606922, 37.615021, 23.998407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780048, 37.866585, 24.256752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223626, 0.768954, -0.598916,
		-0.873305, 0.114788, 0.473457,
		0.432815, 0.628914, 0.645862,
		42.909893, 38.055260, 24.450510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163338, 38.089966, 24.416821>,  <42.606922, 37.615021, 23.998407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163338, 38.089966, 24.416821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518345, 38.271721, 24.386255>,  <42.731350, 38.380772, 24.367916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518345, 38.271721, 24.386255>,  <42.163338, 38.089966, 24.416821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518345, 38.271721, 24.386255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444198, 0.799695, -0.403951,
		-0.122443, 0.392458, 0.911584,
		0.887522, 0.454385, -0.076412,
		42.784603, 38.408035, 24.363331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070793, 38.752651, 24.320324>,  <42.163338, 38.089966, 24.416821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070793, 38.752651, 24.320324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.464718, 38.796150, 24.266191>,  <42.701073, 38.822250, 24.233713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.464718, 38.796150, 24.266191>,  <42.070793, 38.752651, 24.320324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464718, 38.796150, 24.266191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158221, 0.883056, -0.441790,
		0.071460, 0.456493, 0.886852,
		0.984814, 0.108748, -0.135329,
		42.760162, 38.828773, 24.225594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254192, 39.408825, 24.605003>,  <42.070793, 38.752651, 24.320324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254192, 39.408825, 24.605003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.528717, 39.298988, 24.335611>,  <42.693432, 39.233086, 24.173975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.528717, 39.298988, 24.335611>,  <42.254192, 39.408825, 24.605003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528717, 39.298988, 24.335611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082657, 0.890545, -0.447322,
		0.722596, 0.362669, 0.588494,
		0.686311, -0.274590, -0.673482,
		42.734612, 39.216610, 24.133566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742413, 39.975052, 24.614643>,  <42.254192, 39.408825, 24.605003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742413, 39.975052, 24.614643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.791634, 39.781765, 24.267918>,  <42.821167, 39.665794, 24.059883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.791634, 39.781765, 24.267918>,  <42.742413, 39.975052, 24.614643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791634, 39.781765, 24.267918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008301, 0.872918, -0.487796,
		0.992366, 0.067219, 0.103402,
		0.123051, -0.483214, -0.866812,
		42.828548, 39.636803, 24.007874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319180, 40.385551, 24.216898>,  <42.742413, 39.975052, 24.614643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319180, 40.385551, 24.216898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117622, 40.197098, 23.927311>,  <42.996689, 40.084026, 23.753559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117622, 40.197098, 23.927311>,  <43.319180, 40.385551, 24.216898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117622, 40.197098, 23.927311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071114, 0.812675, -0.578362,
		0.860837, -0.342914, -0.375993,
		-0.503888, -0.471136, -0.723966,
		42.966454, 40.055756, 23.710121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643028, 40.577976, 23.595901>,  <43.319180, 40.385551, 24.216898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643028, 40.577976, 23.595901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299561, 40.423939, 23.460615>,  <43.093479, 40.331516, 23.379444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299561, 40.423939, 23.460615>,  <43.643028, 40.577976, 23.595901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299561, 40.423939, 23.460615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059556, 0.730391, -0.680428,
		0.509058, -0.564120, -0.650099,
		-0.858669, -0.385095, -0.338214,
		43.041962, 40.308411, 23.359150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756966, 40.722542, 22.905804>,  <43.643028, 40.577976, 23.595901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756966, 40.722542, 22.905804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.371964, 40.620190, 22.941843>,  <43.140965, 40.558781, 22.963467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.371964, 40.620190, 22.941843>,  <43.756966, 40.722542, 22.905804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371964, 40.620190, 22.941843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264860, 0.814588, -0.516038,
		0.058650, -0.520550, -0.851814,
		-0.962501, -0.255877, 0.090097,
		43.083214, 40.543427, 22.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433258, 40.548710, 22.259384>,  <43.756966, 40.722542, 22.905804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433258, 40.548710, 22.259384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.148521, 40.671413, 22.512108>,  <42.977680, 40.745033, 22.663742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.148521, 40.671413, 22.512108>,  <43.433258, 40.548710, 22.259384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148521, 40.671413, 22.512108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301976, 0.678506, -0.669657,
		-0.634107, -0.667480, -0.390356,
		-0.711842, 0.306756, 0.631808,
		42.934967, 40.763439, 22.701651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836388, 40.541206, 21.943842>,  <43.433258, 40.548710, 22.259384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836388, 40.541206, 21.943842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.780945, 40.816307, 22.228878>,  <42.747681, 40.981369, 22.399900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.780945, 40.816307, 22.228878>,  <42.836388, 40.541206, 21.943842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780945, 40.816307, 22.228878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203555, 0.684390, -0.700125,
		-0.969203, -0.242093, 0.045135,
		-0.138606, 0.687751, 0.712592,
		42.739365, 41.022633, 22.442656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483398, 41.029705, 21.521936>,  <42.836388, 40.541206, 21.943842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483398, 41.029705, 21.521936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553844, 41.246639, 21.850534>,  <42.596111, 41.376801, 22.047693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553844, 41.246639, 21.850534>,  <42.483398, 41.029705, 21.521936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553844, 41.246639, 21.850534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243625, 0.832590, -0.497434,
		-0.953745, -0.112530, 0.278760,
		0.176117, 0.542339, 0.821494,
		42.606678, 41.409340, 22.096983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978188, 41.454441, 21.815866>,  <42.483398, 41.029705, 21.521936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978188, 41.454441, 21.815866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.343235, 41.606380, 21.876316>,  <42.562263, 41.697544, 21.912586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.343235, 41.606380, 21.876316>,  <41.978188, 41.454441, 21.815866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343235, 41.606380, 21.876316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236640, 0.792298, -0.562375,
		-0.333353, 0.477473, 0.812955,
		0.912621, 0.379847, 0.151126,
		42.617020, 41.720333, 21.921654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903183, 42.100166, 22.002296>,  <41.978188, 41.454441, 21.815866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903183, 42.100166, 22.002296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259537, 42.078243, 21.821932>,  <42.473351, 42.065090, 21.713713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259537, 42.078243, 21.821932>,  <41.903183, 42.100166, 22.002296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259537, 42.078243, 21.821932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259888, 0.752655, -0.604953,
		0.372536, 0.656130, 0.656285,
		0.890884, -0.054806, -0.450912,
		42.526802, 42.061802, 21.686659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550083, 41.942944, 21.337427>,  <41.903183, 42.100166, 22.002296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550083, 41.942944, 21.337427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387951, 41.717422, 21.049583>,  <41.290672, 41.582111, 20.876877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387951, 41.717422, 21.049583>,  <41.550083, 41.942944, 21.337427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387951, 41.717422, 21.049583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534731, -0.492234, 0.686854,
		-0.741466, 0.663197, -0.101967,
		-0.405328, -0.563804, -0.719607,
		41.266354, 41.548283, 20.833702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765285, 41.911789, 21.320539>,  <41.550083, 41.942944, 21.337427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765285, 41.911789, 21.320539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.871010, 41.580151, 21.123466>,  <40.934444, 41.381168, 21.005222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.871010, 41.580151, 21.123466>,  <40.765285, 41.911789, 21.320539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871010, 41.580151, 21.123466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609448, -0.539513, 0.580947,
		-0.747471, 0.146714, -0.647891,
		0.264312, -0.829096, -0.492685,
		40.950302, 41.331421, 20.975662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198502, 41.559441, 21.308079>,  <40.765285, 41.911789, 21.320539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198502, 41.559441, 21.308079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.460793, 41.271896, 21.215776>,  <40.618168, 41.099369, 21.160395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.460793, 41.271896, 21.215776>,  <40.198502, 41.559441, 21.308079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460793, 41.271896, 21.215776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430451, -0.607064, 0.667971,
		-0.620269, -0.338675, -0.707506,
		0.655727, -0.718869, -0.230760,
		40.657513, 41.056236, 21.146549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845181, 40.925320, 21.170856>,  <40.198502, 41.559441, 21.308079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845181, 40.925320, 21.170856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220398, 40.822903, 21.264256>,  <40.445526, 40.761452, 21.320295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220398, 40.822903, 21.264256>,  <39.845181, 40.925320, 21.170856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220398, 40.822903, 21.264256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346068, -0.726711, 0.593404,
		0.017748, -0.637444, -0.770293,
		0.938042, -0.256042, 0.233497,
		40.501812, 40.746090, 21.334305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793045, 40.231018, 21.219090>,  <39.845181, 40.925320, 21.170856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793045, 40.231018, 21.219090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147133, 40.293587, 21.394321>,  <40.359585, 40.331127, 21.499460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147133, 40.293587, 21.394321>,  <39.793045, 40.231018, 21.219090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147133, 40.293587, 21.394321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189532, -0.738764, 0.646765,
		0.424803, -0.655562, -0.624325,
		0.885223, 0.156418, 0.438080,
		40.412701, 40.340511, 21.525745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971031, 39.620544, 21.267544>,  <39.793045, 40.231018, 21.219090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971031, 39.620544, 21.267544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191166, 39.818344, 21.536646>,  <40.323246, 39.937023, 21.698107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191166, 39.818344, 21.536646>,  <39.971031, 39.620544, 21.267544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191166, 39.818344, 21.536646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176355, -0.718726, 0.672556,
		0.816109, -0.488773, -0.308330,
		0.550332, 0.494503, 0.672756,
		40.356266, 39.966694, 21.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431171, 39.165901, 21.644073>,  <39.971031, 39.620544, 21.267544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431171, 39.165901, 21.644073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.435478, 39.476093, 21.896584>,  <40.438061, 39.662209, 22.048090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.435478, 39.476093, 21.896584>,  <40.431171, 39.165901, 21.644073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435478, 39.476093, 21.896584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081946, -0.628506, 0.773476,
		0.996579, -0.060060, 0.056780,
		0.010768, 0.775483, 0.631277,
		40.438709, 39.708736, 22.085966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909954, 39.022480, 22.008577>,  <40.431171, 39.165901, 21.644073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909954, 39.022480, 22.008577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698212, 39.271915, 22.238682>,  <40.571167, 39.421577, 22.376743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698212, 39.271915, 22.238682>,  <40.909954, 39.022480, 22.008577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698212, 39.271915, 22.238682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022749, -0.667376, 0.744373,
		0.848095, 0.407125, 0.339094,
		-0.529356, 0.623585, 0.575260,
		40.539406, 39.458992, 22.411259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174911, 38.883812, 22.669418>,  <40.909954, 39.022480, 22.008577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174911, 38.883812, 22.669418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.840694, 39.082985, 22.762312>,  <40.640163, 39.202488, 22.818048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.840694, 39.082985, 22.762312>,  <41.174911, 38.883812, 22.669418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840694, 39.082985, 22.762312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194103, -0.662943, 0.723070,
		0.513999, 0.559078, 0.650567,
		-0.835541, 0.497934, 0.232233,
		40.590031, 39.232365, 22.831982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278378, 39.214245, 23.424147>,  <41.174911, 38.883812, 22.669418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278378, 39.214245, 23.424147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885601, 39.159416, 23.371990>,  <40.649937, 39.126518, 23.340696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885601, 39.159416, 23.371990>,  <41.278378, 39.214245, 23.424147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885601, 39.159416, 23.371990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026409, -0.583182, 0.811912,
		-0.187330, 0.800694, 0.569031,
		-0.981942, -0.137068, -0.130393,
		40.591019, 39.118298, 23.332872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955338, 39.379639, 24.018736>,  <41.278378, 39.214245, 23.424147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955338, 39.379639, 24.018736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.678093, 39.159058, 23.833052>,  <40.511745, 39.026707, 23.721642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.678093, 39.159058, 23.833052>,  <40.955338, 39.379639, 24.018736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678093, 39.159058, 23.833052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113876, -0.552138, 0.825940,
		-0.711776, 0.625332, 0.319896,
		-0.693114, -0.551456, -0.464209,
		40.470158, 38.993622, 23.693789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587337, 39.247341, 24.553865>,  <40.955338, 39.379639, 24.018736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587337, 39.247341, 24.553865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477337, 38.966122, 24.291538>,  <40.411339, 38.797390, 24.134142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477337, 38.966122, 24.291538>,  <40.587337, 39.247341, 24.553865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477337, 38.966122, 24.291538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216654, -0.619261, 0.754703,
		-0.936716, 0.349629, 0.017978,
		-0.274999, -0.703047, -0.655820,
		40.394836, 38.755207, 24.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016396, 39.007629, 24.858759>,  <40.587337, 39.247341, 24.553865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016396, 39.007629, 24.858759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167210, 38.720787, 24.624287>,  <40.257698, 38.548683, 24.483603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167210, 38.720787, 24.624287>,  <40.016396, 39.007629, 24.858759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167210, 38.720787, 24.624287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137190, -0.669144, 0.730359,
		-0.915984, -0.194950, -0.350667,
		0.377030, -0.717106, -0.586180,
		40.280319, 38.505657, 24.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639755, 38.387299, 25.085106>,  <40.016396, 39.007629, 24.858759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639755, 38.387299, 25.085106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.948490, 38.219692, 24.893816>,  <40.133732, 38.119129, 24.779041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.948490, 38.219692, 24.893816>,  <39.639755, 38.387299, 25.085106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948490, 38.219692, 24.893816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042449, -0.716502, 0.696293,
		-0.634404, -0.557723, -0.535235,
		0.771835, -0.419011, -0.478226,
		40.180042, 38.093990, 24.750347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529175, 37.723351, 25.061937>,  <39.639755, 38.387299, 25.085106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529175, 37.723351, 25.061937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914623, 37.673279, 24.967482>,  <40.145893, 37.643234, 24.910809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914623, 37.673279, 24.967482>,  <39.529175, 37.723351, 25.061937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914623, 37.673279, 24.967482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057713, -0.765234, 0.641160,
		-0.260963, -0.631464, -0.730172,
		0.963622, -0.125179, -0.236141,
		40.203709, 37.635727, 24.896639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630642, 37.119030, 24.829487>,  <39.529175, 37.723351, 25.061937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630642, 37.119030, 24.829487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000446, 37.204231, 24.955919>,  <40.222328, 37.255352, 25.031778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000446, 37.204231, 24.955919>,  <39.630642, 37.119030, 24.829487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000446, 37.204231, 24.955919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096007, -0.932674, 0.347710,
		0.368862, -0.291117, -0.882718,
		0.924512, 0.213004, 0.316079,
		40.277802, 37.268131, 25.050743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999306, 36.558933, 24.539068>,  <39.630642, 37.119030, 24.829487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999306, 36.558933, 24.539068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192505, 36.733688, 24.842604>,  <40.308426, 36.838543, 25.024725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192505, 36.733688, 24.842604>,  <39.999306, 36.558933, 24.539068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192505, 36.733688, 24.842604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076345, -0.884342, 0.460554,
		0.872286, -0.164513, -0.460491,
		0.482999, 0.436891, 0.758840,
		40.337406, 36.864758, 25.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663204, 36.165691, 24.645124>,  <39.999306, 36.558933, 24.539068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663204, 36.165691, 24.645124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.635185, 36.362083, 24.992464>,  <40.618374, 36.479919, 25.200867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.635185, 36.362083, 24.992464>,  <40.663204, 36.165691, 24.645124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635185, 36.362083, 24.992464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077332, -0.870539, 0.485985,
		0.994542, -0.033108, 0.098950,
		-0.070050, 0.490984, 0.868348,
		40.614170, 36.509380, 25.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009758, 35.705788, 25.130398>,  <40.663204, 36.165691, 24.645124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009758, 35.705788, 25.130398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.772060, 35.940350, 25.350578>,  <40.629440, 36.081089, 25.482687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.772060, 35.940350, 25.350578>,  <41.009758, 35.705788, 25.130398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772060, 35.940350, 25.350578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223701, -0.777904, 0.587217,
		0.772546, 0.225816, 0.593448,
		-0.594248, 0.586406, 0.550451,
		40.593784, 36.116272, 25.515713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136421, 35.535583, 25.800337>,  <41.009758, 35.705788, 25.130398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136421, 35.535583, 25.800337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779778, 35.714355, 25.829411>,  <40.565792, 35.821621, 25.846855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779778, 35.714355, 25.829411>,  <41.136421, 35.535583, 25.800337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779778, 35.714355, 25.829411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319796, -0.735181, 0.597695,
		0.320568, 0.509665, 0.798422,
		-0.891609, 0.446934, 0.072687,
		40.512295, 35.848434, 25.851217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.754238, 34.288933, 30.847630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473022, 34.551105, 30.737253>,  <43.304291, 34.708408, 30.671028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473022, 34.551105, 30.737253>,  <43.754238, 34.288933, 30.847630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473022, 34.551105, 30.737253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523397, -0.214203, 0.824726,
		0.481443, 0.724243, 0.493644,
		-0.703042, 0.655430, -0.275940,
		43.262108, 34.747734, 30.654470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554173, 34.490604, 31.553602>,  <43.754238, 34.288933, 30.847630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554173, 34.490604, 31.553602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.260334, 34.607361, 31.308599>,  <43.084030, 34.677414, 31.161598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.260334, 34.607361, 31.308599>,  <43.554173, 34.490604, 31.553602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260334, 34.607361, 31.308599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672645, -0.194930, 0.713828,
		0.088966, 0.936376, 0.339536,
		-0.734598, 0.291894, -0.612506,
		43.039955, 34.694927, 31.124847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082397, 34.925129, 32.003159>,  <43.554173, 34.490604, 31.553602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082397, 34.925129, 32.003159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896309, 34.781593, 31.679480>,  <42.784657, 34.695473, 31.485271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896309, 34.781593, 31.679480>,  <43.082397, 34.925129, 32.003159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896309, 34.781593, 31.679480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618538, -0.522166, 0.587157,
		-0.633230, 0.773679, 0.020970,
		-0.465221, -0.358835, -0.809201,
		42.756744, 34.673943, 31.436720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446430, 35.061771, 32.051353>,  <43.082397, 34.925129, 32.003159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446430, 35.061771, 32.051353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419441, 34.762657, 31.787151>,  <42.403248, 34.583187, 31.628630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419441, 34.762657, 31.787151>,  <42.446430, 35.061771, 32.051353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419441, 34.762657, 31.787151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821075, -0.334479, 0.462558,
		-0.566818, 0.573535, -0.591417,
		-0.067477, -0.747785, -0.660504,
		42.399197, 34.538322, 31.589001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778938, 35.048717, 32.041908>,  <42.446430, 35.061771, 32.051353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778938, 35.048717, 32.041908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930420, 34.705502, 31.903141>,  <42.021309, 34.499573, 31.819881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930420, 34.705502, 31.903141>,  <41.778938, 35.048717, 32.041908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930420, 34.705502, 31.903141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692954, -0.511339, 0.508279,
		-0.613516, 0.047910, -0.788228,
		0.378700, -0.858042, -0.346914,
		42.044029, 34.448090, 31.799067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197338, 34.676270, 31.900261>,  <41.778938, 35.048717, 32.041908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197338, 34.676270, 31.900261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489063, 34.402626, 31.904085>,  <41.664101, 34.238441, 31.906380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489063, 34.402626, 31.904085>,  <41.197338, 34.676270, 31.900261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489063, 34.402626, 31.904085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599108, -0.631825, 0.491800,
		-0.330406, -0.364405, -0.870656,
		0.729316, -0.684110, 0.009559,
		41.707859, 34.197392, 31.906952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829498, 34.055088, 31.964872>,  <41.197338, 34.676270, 31.900261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829498, 34.055088, 31.964872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210335, 33.964870, 32.047485>,  <41.438835, 33.910740, 32.097054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210335, 33.964870, 32.047485>,  <40.829498, 34.055088, 31.964872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210335, 33.964870, 32.047485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301229, -0.575014, 0.760671,
		-0.052809, -0.786440, -0.615405,
		0.952089, -0.225548, 0.206532,
		41.495960, 33.897205, 32.109444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977795, 33.332645, 31.911505>,  <40.829498, 34.055088, 31.964872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977795, 33.332645, 31.911505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251972, 33.481201, 32.162022>,  <41.416477, 33.570335, 32.312332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251972, 33.481201, 32.162022>,  <40.977795, 33.332645, 31.911505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251972, 33.481201, 32.162022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281154, -0.658431, 0.698155,
		0.671655, -0.654630, -0.346900,
		0.685443, 0.371387, 0.626290,
		41.457603, 33.592617, 32.349907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194489, 32.728577, 32.210991>,  <40.977795, 33.332645, 31.911505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194489, 32.728577, 32.210991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304001, 33.033298, 32.445835>,  <41.369709, 33.216133, 32.586742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304001, 33.033298, 32.445835>,  <41.194489, 32.728577, 32.210991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304001, 33.033298, 32.445835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308971, -0.508413, 0.803774,
		0.910814, -0.401456, 0.096183,
		0.273780, 0.761807, 0.587108,
		41.386135, 33.261841, 32.621967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730278, 32.458927, 32.673325>,  <41.194489, 32.728577, 32.210991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730278, 32.458927, 32.673325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553822, 32.778137, 32.837543>,  <41.447948, 32.969666, 32.936073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553822, 32.778137, 32.837543>,  <41.730278, 32.458927, 32.673325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553822, 32.778137, 32.837543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327812, -0.569141, 0.754067,
		0.835426, 0.198066, 0.512673,
		-0.441138, 0.798028, 0.410547,
		41.421478, 33.017544, 32.960709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894184, 32.349873, 33.325672>,  <41.730278, 32.458927, 32.673325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894184, 32.349873, 33.325672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609642, 32.629429, 33.355404>,  <41.438915, 32.797161, 33.373241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609642, 32.629429, 33.355404>,  <41.894184, 32.349873, 33.325672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609642, 32.629429, 33.355404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258535, -0.358547, 0.896997,
		0.653552, 0.618869, 0.435742,
		-0.711358, 0.698888, 0.074330,
		41.396236, 32.839096, 33.377705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007317, 32.679432, 34.052113>,  <41.894184, 32.349873, 33.325672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007317, 32.679432, 34.052113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632153, 32.718826, 33.919075>,  <41.407055, 32.742462, 33.839252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632153, 32.718826, 33.919075>,  <42.007317, 32.679432, 34.052113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632153, 32.718826, 33.919075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343694, -0.393336, 0.852737,
		-0.046835, 0.914104, 0.402766,
		-0.937913, 0.098491, -0.332594,
		41.350777, 32.748375, 33.819298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514935, 32.986557, 34.616680>,  <42.007317, 32.679432, 34.052113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514935, 32.986557, 34.616680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287956, 32.772839, 34.366070>,  <41.151772, 32.644608, 34.215706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287956, 32.772839, 34.366070>,  <41.514935, 32.986557, 34.616680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287956, 32.772839, 34.366070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290686, -0.581910, 0.759527,
		-0.770396, 0.613111, 0.174888,
		-0.567444, -0.534299, -0.626524,
		41.117722, 32.612549, 34.178112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922859, 33.030262, 34.921986>,  <41.514935, 32.986557, 34.616680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922859, 33.030262, 34.921986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.925018, 32.708076, 34.684937>,  <40.926315, 32.514767, 34.542706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.925018, 32.708076, 34.684937>,  <40.922859, 33.030262, 34.921986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925018, 32.708076, 34.684937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185945, -0.583104, 0.790832,
		-0.982545, 0.105927, -0.152919,
		0.005397, -0.805462, -0.592623,
		40.926636, 32.466438, 34.507149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259888, 33.363678, 35.260036>,  <40.922859, 33.030262, 34.921986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259888, 33.363678, 35.260036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165859, 33.660995, 35.510555>,  <40.109444, 33.839386, 35.660866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165859, 33.660995, 35.510555>,  <40.259888, 33.363678, 35.260036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165859, 33.660995, 35.510555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340428, 0.540581, -0.769338,
		-0.910413, -0.394058, 0.125965,
		-0.235070, 0.743298, 0.626300,
		40.095337, 33.883984, 35.698444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709518, 33.641201, 34.899406>,  <40.259888, 33.363678, 35.260036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709518, 33.641201, 34.899406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827065, 33.942020, 35.135395>,  <39.897591, 34.122513, 35.276989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827065, 33.942020, 35.135395>,  <39.709518, 33.641201, 34.899406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827065, 33.942020, 35.135395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236175, 0.655216, -0.717574,
		-0.926210, 0.071533, 0.370160,
		0.293865, 0.752047, 0.589973,
		39.915222, 34.167633, 35.312386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231594, 34.225353, 34.775780>,  <39.709518, 33.641201, 34.899406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231594, 34.225353, 34.775780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569443, 34.388985, 34.913918>,  <39.772152, 34.487164, 34.996799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569443, 34.388985, 34.913918>,  <39.231594, 34.225353, 34.775780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569443, 34.388985, 34.913918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086592, 0.740966, -0.665936,
		-0.528308, 0.532563, 0.661262,
		0.844626, 0.409079, 0.345343,
		39.822830, 34.511707, 35.017521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248688, 34.888206, 34.492905>,  <39.231594, 34.225353, 34.775780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248688, 34.888206, 34.492905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622345, 34.891964, 34.635616>,  <39.846539, 34.894218, 34.721241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622345, 34.891964, 34.635616>,  <39.248688, 34.888206, 34.492905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622345, 34.891964, 34.635616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219787, 0.772466, -0.595811,
		-0.281196, 0.634987, 0.719528,
		0.934143, 0.009397, 0.356776,
		39.902588, 34.894783, 34.742649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408768, 35.605492, 34.603226>,  <39.248688, 34.888206, 34.492905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408768, 35.605492, 34.603226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778542, 35.453350, 34.614216>,  <40.000404, 35.362064, 34.620811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778542, 35.453350, 34.614216>,  <39.408768, 35.605492, 34.603226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778542, 35.453350, 34.614216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307937, 0.702039, -0.642119,
		0.224945, 0.602056, 0.766113,
		0.924432, -0.380356, 0.027475,
		40.055870, 35.339245, 34.622459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914043, 36.098076, 34.796593>,  <39.408768, 35.605492, 34.603226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914043, 36.098076, 34.796593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094646, 35.823776, 34.568245>,  <40.203007, 35.659195, 34.431236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094646, 35.823776, 34.568245>,  <39.914043, 36.098076, 34.796593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094646, 35.823776, 34.568245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265933, 0.714140, -0.647521,
		0.851717, 0.140547, 0.504802,
		0.451506, -0.685748, -0.570869,
		40.230099, 35.618053, 34.396984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463913, 36.575527, 34.527798>,  <39.914043, 36.098076, 34.796593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463913, 36.575527, 34.527798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478024, 36.238716, 34.312489>,  <40.486488, 36.036629, 34.183304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478024, 36.238716, 34.312489>,  <40.463913, 36.575527, 34.527798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478024, 36.238716, 34.312489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448125, 0.494755, -0.744581,
		0.893274, -0.214948, 0.394789,
		0.035277, -0.842030, -0.538276,
		40.488605, 35.986107, 34.151005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155399, 36.608173, 34.262054>,  <40.463913, 36.575527, 34.527798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155399, 36.608173, 34.262054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914433, 36.377014, 34.041828>,  <40.769852, 36.238319, 33.909691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914433, 36.377014, 34.041828>,  <41.155399, 36.608173, 34.262054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914433, 36.377014, 34.041828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262189, 0.508231, -0.820340,
		0.753889, -0.638541, -0.154649,
		-0.602418, -0.577899, -0.550568,
		40.733707, 36.203644, 33.876659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574448, 36.557869, 33.721989>,  <41.155399, 36.608173, 34.262054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574448, 36.557869, 33.721989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219135, 36.441753, 33.579617>,  <41.005947, 36.372086, 33.494194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219135, 36.441753, 33.579617>,  <41.574448, 36.557869, 33.721989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219135, 36.441753, 33.579617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300008, 0.220077, -0.928203,
		0.347781, -0.931288, -0.108401,
		-0.888281, -0.290291, -0.355932,
		40.952652, 36.354668, 33.472836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715305, 36.098511, 33.083122>,  <41.574448, 36.557869, 33.721989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715305, 36.098511, 33.083122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352432, 36.261543, 33.041386>,  <41.134708, 36.359364, 33.016342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352432, 36.261543, 33.041386>,  <41.715305, 36.098511, 33.083122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352432, 36.261543, 33.041386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200277, 0.200245, -0.959057,
		-0.370004, -0.890941, -0.263290,
		-0.907186, 0.407586, -0.104343,
		41.080276, 36.383820, 33.010082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585018, 35.999485, 32.322838>,  <41.715305, 36.098511, 33.083122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585018, 35.999485, 32.322838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298416, 36.244423, 32.456497>,  <41.126453, 36.391384, 32.536694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298416, 36.244423, 32.456497>,  <41.585018, 35.999485, 32.322838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298416, 36.244423, 32.456497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043712, 0.438656, -0.897591,
		-0.696208, -0.657737, -0.287534,
		-0.716508, 0.612341, 0.334147,
		41.083466, 36.428123, 32.556740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097328, 35.975037, 31.815710>,  <41.585018, 35.999485, 32.322838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097328, 35.975037, 31.815710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.076298, 36.311024, 32.031742>,  <41.063679, 36.512615, 32.161362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.076298, 36.311024, 32.031742>,  <41.097328, 35.975037, 31.815710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076298, 36.311024, 32.031742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088164, 0.542619, -0.835339,
		-0.994718, 0.003697, -0.102584,
		-0.052575, 0.839971, 0.540079,
		41.060524, 36.563015, 32.193768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724277, 36.442917, 31.385616>,  <41.097328, 35.975037, 31.815710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724277, 36.442917, 31.385616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849503, 36.715523, 31.650200>,  <40.924637, 36.879086, 31.808950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849503, 36.715523, 31.650200>,  <40.724277, 36.442917, 31.385616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849503, 36.715523, 31.650200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211217, 0.629065, -0.748108,
		-0.925947, 0.373916, 0.052989,
		0.313063, 0.681516, 0.661458,
		40.943420, 36.919979, 31.848637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276817, 37.108574, 31.318558>,  <40.724277, 36.442917, 31.385616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276817, 37.108574, 31.318558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636963, 37.194748, 31.469782>,  <40.853050, 37.246452, 31.560516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636963, 37.194748, 31.469782>,  <40.276817, 37.108574, 31.318558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636963, 37.194748, 31.469782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097125, 0.747414, -0.657221,
		-0.424158, 0.628458, 0.652021,
		0.900365, 0.215438, 0.378060,
		40.907074, 37.259380, 31.583200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744839, 37.529888, 31.748474>,  <40.276817, 37.108574, 31.318558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744839, 37.529888, 31.748474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389004, 37.711094, 31.725082>,  <39.175503, 37.819817, 31.711048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389004, 37.711094, 31.725082>,  <39.744839, 37.529888, 31.748474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389004, 37.711094, 31.725082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354405, -0.603772, 0.714042,
		0.288163, 0.655926, 0.697656,
		-0.889584, 0.453013, -0.058478,
		39.122128, 37.846996, 31.707539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465645, 37.739418, 32.445309>,  <39.744839, 37.529888, 31.748474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465645, 37.739418, 32.445309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141235, 37.690689, 32.216431>,  <38.946590, 37.661449, 32.079105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141235, 37.690689, 32.216431>,  <39.465645, 37.739418, 32.445309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141235, 37.690689, 32.216431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452369, -0.489595, 0.745425,
		-0.370955, 0.863397, 0.341961,
		-0.811020, -0.121827, -0.572192,
		38.897930, 37.654140, 32.044773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874260, 38.000023, 32.872761>,  <39.465645, 37.739418, 32.445309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874260, 38.000023, 32.872761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715263, 37.780407, 32.578671>,  <38.619865, 37.648640, 32.402214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715263, 37.780407, 32.578671>,  <38.874260, 38.000023, 32.872761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715263, 37.780407, 32.578671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568547, -0.481552, 0.666979,
		-0.720247, 0.683130, -0.120741,
		-0.397491, -0.549037, -0.735228,
		38.596016, 37.615696, 32.358101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378235, 37.676838, 33.244843>,  <38.874260, 38.000023, 32.872761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378235, 37.676838, 33.244843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293404, 37.488338, 32.902393>,  <38.242504, 37.375237, 32.696922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293404, 37.488338, 32.902393>,  <38.378235, 37.676838, 33.244843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293404, 37.488338, 32.902393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736471, -0.498771, 0.456988,
		-0.642365, 0.727426, -0.241284,
		-0.212079, -0.471252, -0.856121,
		38.229778, 37.346962, 32.645557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676308, 37.770576, 33.116600>,  <38.378235, 37.676838, 33.244843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676308, 37.770576, 33.116600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793549, 37.434673, 32.933777>,  <37.863892, 37.233131, 32.824081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793549, 37.434673, 32.933777>,  <37.676308, 37.770576, 33.116600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793549, 37.434673, 32.933777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699314, -0.514289, 0.496454,
		-0.651961, 0.174119, -0.737990,
		0.293098, -0.839756, -0.457060,
		37.881477, 37.182747, 32.796658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110817, 37.327259, 32.998848>,  <37.676308, 37.770576, 33.116600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110817, 37.327259, 32.998848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.417667, 37.071209, 32.982098>,  <37.601776, 36.917580, 32.972046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.417667, 37.071209, 32.982098>,  <37.110817, 37.327259, 32.998848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417667, 37.071209, 32.982098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535784, -0.675244, 0.506933,
		-0.352781, -0.366442, -0.860968,
		0.767125, -0.640129, -0.041880,
		37.647804, 36.879169, 32.969532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784813, 36.714558, 32.790810>,  <37.110817, 37.327259, 32.998848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784813, 36.714558, 32.790810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131569, 36.608635, 32.959751>,  <37.339622, 36.545082, 33.061115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131569, 36.608635, 32.959751>,  <36.784813, 36.714558, 32.790810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131569, 36.608635, 32.959751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443452, -0.796668, 0.410695,
		0.227721, -0.543320, -0.808051,
		0.866887, -0.264807, 0.422355,
		37.391636, 36.529194, 33.086456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960537, 36.017067, 32.597183>,  <36.784813, 36.714558, 32.790810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960537, 36.017067, 32.597183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234619, 36.050373, 32.886612>,  <37.399067, 36.070358, 33.060268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234619, 36.050373, 32.886612>,  <36.960537, 36.017067, 32.597183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234619, 36.050373, 32.886612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106707, -0.971248, 0.212817,
		0.720493, -0.223034, -0.656617,
		0.685204, 0.083268, 0.723576,
		37.440182, 36.075352, 33.103683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442245, 35.474354, 32.485100>,  <36.960537, 36.017067, 32.597183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442245, 35.474354, 32.485100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425373, 35.580379, 32.870422>,  <37.415249, 35.643993, 33.101616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425373, 35.580379, 32.870422>,  <37.442245, 35.474354, 32.485100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425373, 35.580379, 32.870422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190136, -0.948676, 0.252710,
		0.980851, -0.172499, 0.090416,
		-0.042183, 0.265063, 0.963308,
		37.412720, 35.659897, 33.159416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825172, 34.969547, 32.883194>,  <37.442245, 35.474354, 32.485100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825172, 34.969547, 32.883194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590679, 35.134998, 33.161831>,  <37.449982, 35.234268, 33.329014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590679, 35.134998, 33.161831>,  <37.825172, 34.969547, 32.883194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590679, 35.134998, 33.161831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065531, -0.881235, 0.468113,
		0.807488, 0.228775, 0.543715,
		-0.586233, 0.413626, 0.696595,
		37.414810, 35.259087, 33.370808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121933, 34.867424, 33.530113>,  <37.825172, 34.969547, 32.883194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121933, 34.867424, 33.530113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732285, 34.922600, 33.601742>,  <37.498497, 34.955708, 33.644718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732285, 34.922600, 33.601742>,  <38.121933, 34.867424, 33.530113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732285, 34.922600, 33.601742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013519, -0.826336, 0.563015,
		0.225635, 0.546022, 0.806814,
		-0.974118, 0.137943, 0.179068,
		37.440048, 34.963982, 33.655464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036022, 34.952984, 34.264488>,  <38.121933, 34.867424, 33.530113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036022, 34.952984, 34.264488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681755, 34.823269, 34.131565>,  <37.469196, 34.745438, 34.051811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681755, 34.823269, 34.131565>,  <38.036022, 34.952984, 34.264488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681755, 34.823269, 34.131565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053963, -0.782731, 0.620017,
		-0.461177, 0.531195, 0.710737,
		-0.885666, -0.324291, -0.332312,
		37.416054, 34.725983, 34.031872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.067432, 41.007267, 29.506681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739849, 40.820347, 29.373457>,  <39.543297, 40.708195, 29.293522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739849, 40.820347, 29.373457>,  <40.067432, 41.007267, 29.506681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739849, 40.820347, 29.373457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154425, -0.379523, 0.912203,
		-0.552680, 0.798492, 0.238652,
		-0.818961, -0.467303, -0.333062,
		39.494160, 40.680157, 29.273539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659542, 41.022366, 30.124298>,  <40.067432, 41.007267, 29.506681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659542, 41.022366, 30.124298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459076, 40.761173, 29.897163>,  <39.338795, 40.604458, 29.760881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459076, 40.761173, 29.897163>,  <39.659542, 41.022366, 30.124298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459076, 40.761173, 29.897163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267933, -0.506857, 0.819334,
		-0.822825, 0.562768, 0.079065,
		-0.501169, -0.652984, -0.567839,
		39.308723, 40.565277, 29.726812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211414, 40.795937, 30.519470>,  <39.659542, 41.022366, 30.124298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211414, 40.795937, 30.519470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172096, 40.505699, 30.247044>,  <39.148506, 40.331558, 30.083588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172096, 40.505699, 30.247044>,  <39.211414, 40.795937, 30.519470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172096, 40.505699, 30.247044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221523, -0.651256, 0.725806,
		-0.970188, 0.222216, -0.096719,
		-0.098297, -0.725593, -0.681067,
		39.142609, 40.288021, 30.042723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479218, 40.422985, 30.578283>,  <39.211414, 40.795937, 30.519470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479218, 40.422985, 30.578283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732700, 40.168079, 30.402870>,  <38.884789, 40.015137, 30.297623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732700, 40.168079, 30.402870>,  <38.479218, 40.422985, 30.578283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732700, 40.168079, 30.402870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202052, -0.683567, 0.701364,
		-0.746724, -0.355849, -0.561939,
		0.633702, -0.637266, -0.438536,
		38.922810, 39.976898, 30.271309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087585, 39.683369, 30.608479>,  <38.479218, 40.422985, 30.578283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087585, 39.683369, 30.608479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474060, 39.610271, 30.535711>,  <38.705944, 39.566414, 30.492052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474060, 39.610271, 30.535711>,  <38.087585, 39.683369, 30.608479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474060, 39.610271, 30.535711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045324, -0.814871, 0.577868,
		-0.253841, -0.550081, -0.795598,
		0.966183, -0.182746, -0.181916,
		38.763916, 39.555447, 30.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180470, 38.983124, 30.247061>,  <38.087585, 39.683369, 30.608479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180470, 38.983124, 30.247061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523800, 39.076572, 30.429794>,  <38.729797, 39.132641, 30.539434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523800, 39.076572, 30.429794>,  <38.180470, 38.983124, 30.247061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523800, 39.076572, 30.429794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027584, -0.868035, 0.495736,
		0.512364, -0.438104, -0.738612,
		0.858325, 0.233624, 0.456834,
		38.781296, 39.146660, 30.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579300, 38.326771, 30.315811>,  <38.180470, 38.983124, 30.247061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579300, 38.326771, 30.315811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773342, 38.558247, 30.578045>,  <38.889767, 38.697132, 30.735386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773342, 38.558247, 30.578045>,  <38.579300, 38.326771, 30.315811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773342, 38.558247, 30.578045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105683, -0.783011, 0.612965,
		0.868044, -0.228070, -0.441002,
		0.485108, 0.578687, 0.655585,
		38.918873, 38.731853, 30.774721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277153, 38.020325, 30.423841>,  <38.579300, 38.326771, 30.315811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277153, 38.020325, 30.423841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169708, 38.227848, 30.748480>,  <39.105244, 38.352360, 30.943264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169708, 38.227848, 30.748480>,  <39.277153, 38.020325, 30.423841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169708, 38.227848, 30.748480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104734, -0.821837, 0.560014,
		0.957539, 0.235426, 0.166415,
		-0.268607, 0.518806, 0.811598,
		39.089127, 38.383492, 30.991959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696735, 37.653370, 30.988981>,  <39.277153, 38.020325, 30.423841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696735, 37.653370, 30.988981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407970, 37.872837, 31.157650>,  <39.234711, 38.004517, 31.258852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407970, 37.872837, 31.157650>,  <39.696735, 37.653370, 30.988981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407970, 37.872837, 31.157650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154316, -0.721668, 0.674820,
		0.674561, 0.422088, 0.605648,
		-0.721910, 0.548668, 0.421673,
		39.191399, 38.037437, 31.284153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367222, 37.962296, 31.148691>,  <39.696735, 37.653370, 30.988981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367222, 37.962296, 31.148691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725960, 37.816185, 31.248480>,  <40.941204, 37.728519, 31.308353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725960, 37.816185, 31.248480>,  <40.367222, 37.962296, 31.148691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725960, 37.816185, 31.248480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433991, 0.617564, -0.655947,
		0.085539, 0.696552, 0.712389,
		0.896847, -0.365279, 0.249471,
		40.995014, 37.706600, 31.323320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756802, 38.517414, 31.170918>,  <40.367222, 37.962296, 31.148691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756802, 38.517414, 31.170918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019341, 38.219070, 31.125488>,  <41.176865, 38.040062, 31.098230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019341, 38.219070, 31.125488>,  <40.756802, 38.517414, 31.170918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019341, 38.219070, 31.125488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459639, 0.514682, -0.723764,
		0.598281, 0.422839, 0.680637,
		0.656347, -0.745862, -0.113572,
		41.216244, 37.995312, 31.091417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400864, 38.891941, 31.161533>,  <40.756802, 38.517414, 31.170918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400864, 38.891941, 31.161533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469204, 38.522396, 31.024540>,  <41.510208, 38.300671, 30.942345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469204, 38.522396, 31.024540>,  <41.400864, 38.891941, 31.161533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469204, 38.522396, 31.024540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676699, 0.362669, -0.640742,
		0.716163, -0.122288, 0.687136,
		0.170848, -0.923860, -0.342482,
		41.520458, 38.245239, 30.921795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102524, 38.938728, 30.966204>,  <41.400864, 38.891941, 31.161533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102524, 38.938728, 30.966204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988670, 38.605961, 30.775671>,  <41.920357, 38.406300, 30.661352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988670, 38.605961, 30.775671>,  <42.102524, 38.938728, 30.966204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988670, 38.605961, 30.775671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677832, 0.176706, -0.713665,
		0.677883, -0.526008, 0.513605,
		-0.284636, -0.831920, -0.476331,
		41.903278, 38.356384, 30.632772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684757, 38.571812, 30.744827>,  <42.102524, 38.938728, 30.966204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684757, 38.571812, 30.744827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386261, 38.480370, 30.494747>,  <42.207165, 38.425507, 30.344700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386261, 38.480370, 30.494747>,  <42.684757, 38.571812, 30.744827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386261, 38.480370, 30.494747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534870, 0.353204, -0.767569,
		0.396292, -0.907186, -0.141299,
		-0.746235, -0.228605, -0.625198,
		42.162392, 38.411789, 30.307188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974731, 38.541828, 30.071514>,  <42.684757, 38.571812, 30.744827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974731, 38.541828, 30.071514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591244, 38.541752, 29.957767>,  <42.361153, 38.541706, 29.889519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591244, 38.541752, 29.957767>,  <42.974731, 38.541828, 30.071514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591244, 38.541752, 29.957767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260932, 0.396966, -0.879962,
		0.113050, -0.917833, -0.380528,
		-0.958715, -0.000187, -0.284369,
		42.303631, 38.541695, 29.872458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905121, 38.388046, 29.343443>,  <42.974731, 38.541828, 30.071514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905121, 38.388046, 29.343443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555592, 38.566532, 29.420727>,  <42.345875, 38.673622, 29.467096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555592, 38.566532, 29.420727>,  <42.905121, 38.388046, 29.343443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555592, 38.566532, 29.420727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078668, 0.521844, -0.849406,
		-0.479841, -0.727029, -0.491101,
		-0.873821, 0.446214, 0.193209,
		42.293446, 38.700397, 29.478689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437859, 38.332783, 28.779894>,  <42.905121, 38.388046, 29.343443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437859, 38.332783, 28.779894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316170, 38.661015, 28.973431>,  <42.243156, 38.857952, 29.089552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316170, 38.661015, 28.973431>,  <42.437859, 38.332783, 28.779894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316170, 38.661015, 28.973431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058860, 0.490753, -0.869308,
		-0.950781, -0.292942, -0.100999,
		-0.304223, 0.820577, 0.483841,
		42.224903, 38.907188, 29.118584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018211, 38.698982, 28.252251>,  <42.437859, 38.332783, 28.779894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018211, 38.698982, 28.252251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067413, 38.956951, 28.553965>,  <42.096935, 39.111732, 28.734993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067413, 38.956951, 28.553965>,  <42.018211, 38.698982, 28.252251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067413, 38.956951, 28.553965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017372, 0.761338, -0.648123,
		-0.992254, 0.066619, 0.104852,
		0.123005, 0.644924, 0.754283,
		42.104317, 39.150429, 28.780249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433880, 39.189110, 28.104322>,  <42.018211, 38.698982, 28.252251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433880, 39.189110, 28.104322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707134, 39.353840, 28.345562>,  <41.871086, 39.452679, 28.490305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707134, 39.353840, 28.345562>,  <41.433880, 39.189110, 28.104322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707134, 39.353840, 28.345562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051397, 0.850895, -0.522815,
		-0.728483, 0.326154, 0.602442,
		0.683133, 0.411825, 0.603099,
		41.912075, 39.477386, 28.526491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176464, 39.785561, 28.198387>,  <41.433880, 39.189110, 28.104322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176464, 39.785561, 28.198387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570408, 39.816330, 28.260534>,  <41.806774, 39.834793, 28.297823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570408, 39.816330, 28.260534>,  <41.176464, 39.785561, 28.198387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570408, 39.816330, 28.260534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023515, 0.828627, -0.559307,
		-0.171767, 0.554491, 0.814270,
		0.984857, 0.076923, 0.155370,
		41.865864, 39.839405, 28.307146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282867, 40.450211, 28.357496>,  <41.176464, 39.785561, 28.198387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282867, 40.450211, 28.357496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645733, 40.332016, 28.237665>,  <41.863453, 40.261097, 28.165768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645733, 40.332016, 28.237665>,  <41.282867, 40.450211, 28.357496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645733, 40.332016, 28.237665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110527, 0.854277, -0.507932,
		0.406009, 0.427664, 0.807626,
		0.907161, -0.295490, -0.299576,
		41.917881, 40.243370, 28.147793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780251, 41.039867, 28.435150>,  <41.282867, 40.450211, 28.357496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780251, 41.039867, 28.435150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001144, 40.825455, 28.179743>,  <42.133682, 40.696808, 28.026499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001144, 40.825455, 28.179743>,  <41.780251, 41.039867, 28.435150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001144, 40.825455, 28.179743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296063, 0.842067, -0.450855,
		0.779346, 0.059938, 0.623720,
		0.552237, -0.536033, -0.638516,
		42.166817, 40.664646, 27.988188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463497, 41.452698, 28.300081>,  <41.780251, 41.039867, 28.435150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463497, 41.452698, 28.300081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420723, 41.197132, 27.995359>,  <42.395058, 41.043793, 27.812527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420723, 41.197132, 27.995359>,  <42.463497, 41.452698, 28.300081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420723, 41.197132, 27.995359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419073, 0.665851, -0.617268,
		0.901633, -0.385262, 0.196549,
		-0.106938, -0.638917, -0.761806,
		42.388641, 41.005455, 27.766817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.287399, 36.489994, 23.645397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402588, 36.734829, 23.939993>,  <37.471699, 36.881729, 24.116751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402588, 36.734829, 23.939993>,  <37.287399, 36.489994, 23.645397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402588, 36.734829, 23.939993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038522, -0.775850, 0.629741,
		0.956865, -0.152974, -0.247000,
		0.287969, 0.612092, 0.736490,
		37.488979, 36.918457, 24.160940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879269, 36.231041, 23.966326>,  <37.287399, 36.489994, 23.645397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879269, 36.231041, 23.966326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738167, 36.475922, 24.249388>,  <37.653507, 36.622849, 24.419226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738167, 36.475922, 24.249388>,  <37.879269, 36.231041, 23.966326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738167, 36.475922, 24.249388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160637, -0.705423, 0.690343,
		0.921825, 0.357196, 0.150498,
		-0.352753, 0.612200, 0.707656,
		37.632339, 36.659580, 24.461685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350636, 36.203720, 24.519775>,  <37.879269, 36.231041, 23.966326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350636, 36.203720, 24.519775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006195, 36.341610, 24.669264>,  <37.799530, 36.424343, 24.758957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006195, 36.341610, 24.669264>,  <38.350636, 36.203720, 24.519775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006195, 36.341610, 24.669264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084365, -0.627980, 0.773643,
		0.501382, 0.697716, 0.511672,
		-0.861103, 0.344724, 0.373720,
		37.747864, 36.445026, 24.781380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469730, 36.176628, 25.195024>,  <38.350636, 36.203720, 24.519775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469730, 36.176628, 25.195024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072884, 36.226547, 25.190615>,  <37.834774, 36.256500, 25.187969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072884, 36.226547, 25.190615>,  <38.469730, 36.176628, 25.195024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072884, 36.226547, 25.190615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084846, -0.604553, 0.792033,
		0.092180, 0.786728, 0.610378,
		-0.992121, 0.124798, -0.011023,
		37.775246, 36.263985, 25.187307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287804, 36.265553, 25.914591>,  <38.469730, 36.176628, 25.195024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287804, 36.265553, 25.914591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964390, 36.145519, 25.712116>,  <37.770344, 36.073498, 25.590631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964390, 36.145519, 25.712116>,  <38.287804, 36.265553, 25.914591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964390, 36.145519, 25.712116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305623, -0.520939, 0.797005,
		-0.502863, 0.799106, 0.329482,
		-0.808532, -0.300087, -0.506186,
		37.721828, 36.055492, 25.560261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797409, 36.218998, 26.388180>,  <38.287804, 36.265553, 25.914591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797409, 36.218998, 26.388180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635204, 35.991558, 26.101892>,  <37.537880, 35.855095, 25.930120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635204, 35.991558, 26.101892>,  <37.797409, 36.218998, 26.388180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635204, 35.991558, 26.101892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390143, -0.600426, 0.698053,
		-0.826649, 0.562302, 0.021645,
		-0.405512, -0.568600, -0.715719,
		37.513550, 35.820976, 25.887177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156998, 36.138966, 26.631865>,  <37.797409, 36.218998, 26.388180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156998, 36.138966, 26.631865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202633, 35.852295, 26.356659>,  <37.230015, 35.680294, 26.191536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202633, 35.852295, 26.356659>,  <37.156998, 36.138966, 26.631865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202633, 35.852295, 26.356659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529903, -0.629696, 0.568054,
		-0.840348, 0.299771, -0.451610,
		0.114091, -0.716673, -0.688014,
		37.236858, 35.637295, 26.150255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524529, 35.807381, 26.649477>,  <37.156998, 36.138966, 26.631865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524529, 35.807381, 26.649477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777313, 35.548943, 26.478275>,  <36.928986, 35.393879, 26.375555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777313, 35.548943, 26.478275>,  <36.524529, 35.807381, 26.649477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777313, 35.548943, 26.478275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393386, -0.743254, 0.541130,
		-0.667734, -0.173604, -0.723873,
		0.631963, -0.646093, -0.428003,
		36.966904, 35.355114, 26.349874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161533, 35.122612, 26.445675>,  <36.524529, 35.807381, 26.649477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161533, 35.122612, 26.445675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547207, 35.027683, 26.493057>,  <36.778610, 34.970726, 26.521486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547207, 35.027683, 26.493057>,  <36.161533, 35.122612, 26.445675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547207, 35.027683, 26.493057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245884, -0.632233, 0.734727,
		-0.099476, -0.737536, -0.667941,
		0.964181, -0.237323, 0.118456,
		36.836460, 34.956486, 26.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077827, 34.419125, 26.497057>,  <36.161533, 35.122612, 26.445675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077827, 34.419125, 26.497057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444637, 34.484962, 26.642368>,  <36.664722, 34.524464, 26.729555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444637, 34.484962, 26.642368>,  <36.077827, 34.419125, 26.497057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444637, 34.484962, 26.642368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222774, -0.544132, 0.808883,
		0.330810, -0.822696, -0.462316,
		0.917026, 0.164595, 0.363279,
		36.719746, 34.534340, 26.751352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372860, 33.784744, 26.727766>,  <36.077827, 34.419125, 26.497057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372860, 33.784744, 26.727766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561554, 34.063702, 26.943584>,  <36.674770, 34.231075, 27.073076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561554, 34.063702, 26.943584>,  <36.372860, 33.784744, 26.727766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561554, 34.063702, 26.943584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111981, -0.559571, 0.821182,
		0.874601, -0.447799, -0.185874,
		0.471734, 0.697393, 0.539546,
		36.703075, 34.272919, 27.105448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753357, 33.362427, 27.142439>,  <36.372860, 33.784744, 26.727766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753357, 33.362427, 27.142439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794388, 33.720356, 27.316231>,  <36.819008, 33.935112, 27.420506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794388, 33.720356, 27.316231>,  <36.753357, 33.362427, 27.142439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794388, 33.720356, 27.316231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033147, -0.439615, 0.897575,
		0.994172, -0.077670, -0.074756,
		0.102579, 0.894822, 0.434478,
		36.825161, 33.988804, 27.446575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396187, 33.342960, 27.563143>,  <36.753357, 33.362427, 27.142439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396187, 33.342960, 27.563143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169476, 33.640884, 27.704004>,  <37.033447, 33.819641, 27.788521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169476, 33.640884, 27.704004>,  <37.396187, 33.342960, 27.563143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169476, 33.640884, 27.704004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079369, -0.376088, 0.923178,
		0.820036, 0.551190, 0.154044,
		-0.566781, 0.744814, 0.352153,
		36.999443, 33.864330, 27.809650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722893, 33.651131, 28.137051>,  <37.396187, 33.342960, 27.563143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722893, 33.651131, 28.137051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333328, 33.722012, 28.193748>,  <37.099590, 33.764538, 28.227768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333328, 33.722012, 28.193748>,  <37.722893, 33.651131, 28.137051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333328, 33.722012, 28.193748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050672, -0.439057, 0.897029,
		0.221186, 0.880812, 0.418625,
		-0.973914, 0.177198, 0.141745,
		37.041153, 33.775169, 28.236273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356888, 34.049496, 28.558311>,  <37.722893, 33.651131, 28.137051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356888, 34.049496, 28.558311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688744, 33.830223, 28.600632>,  <38.887856, 33.698658, 28.626024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688744, 33.830223, 28.600632>,  <38.356888, 34.049496, 28.558311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688744, 33.830223, 28.600632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440144, 0.525620, -0.728009,
		0.343470, 0.650553, 0.677354,
		0.829640, -0.548182, 0.105803,
		38.937637, 33.665768, 28.632372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892570, 34.523697, 28.358112>,  <38.356888, 34.049496, 28.558311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892570, 34.523697, 28.358112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073940, 34.167213, 28.353249>,  <39.182762, 33.953323, 28.350330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073940, 34.167213, 28.353249>,  <38.892570, 34.523697, 28.358112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073940, 34.167213, 28.353249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543970, 0.287513, -0.788310,
		0.706047, 0.350825, 0.615158,
		0.453425, -0.891212, -0.012160,
		39.209969, 33.899849, 28.349600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693039, 34.584778, 28.398657>,  <38.892570, 34.523697, 28.358112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693039, 34.584778, 28.398657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579926, 34.244827, 28.220783>,  <39.512058, 34.040855, 28.114059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579926, 34.244827, 28.220783>,  <39.693039, 34.584778, 28.398657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579926, 34.244827, 28.220783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462669, 0.285251, -0.839386,
		0.840221, -0.443105, 0.312548,
		-0.282781, -0.849876, -0.444685,
		39.495090, 33.989864, 28.087378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237671, 34.281868, 28.266380>,  <39.693039, 34.584778, 28.398657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237671, 34.281868, 28.266380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965099, 34.136906, 28.012039>,  <39.801556, 34.049927, 27.859434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965099, 34.136906, 28.012039>,  <40.237671, 34.281868, 28.266380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965099, 34.136906, 28.012039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482784, 0.430380, -0.762688,
		0.550061, -0.826701, -0.118312,
		-0.681434, -0.362406, -0.635854,
		39.760670, 34.028183, 27.821283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639706, 34.178867, 27.674845>,  <40.237671, 34.281868, 28.266380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639706, 34.178867, 27.674845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261261, 34.150547, 27.548439>,  <40.034195, 34.133553, 27.472595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261261, 34.150547, 27.548439>,  <40.639706, 34.178867, 27.674845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261261, 34.150547, 27.548439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250115, 0.460117, -0.851901,
		0.205722, -0.885030, -0.417611,
		-0.946108, -0.070804, -0.316016,
		39.977428, 34.129307, 27.453634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703144, 34.062492, 26.980940>,  <40.639706, 34.178867, 27.674845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703144, 34.062492, 26.980940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333282, 34.212605, 27.006775>,  <40.111366, 34.302673, 27.022276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333282, 34.212605, 27.006775>,  <40.703144, 34.062492, 26.980940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333282, 34.212605, 27.006775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133106, 0.477429, -0.868530,
		-0.356781, -0.794495, -0.491411,
		-0.924657, 0.375284, 0.064586,
		40.055885, 34.325191, 27.026150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347286, 34.008121, 26.250107>,  <40.703144, 34.062492, 26.980940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347286, 34.008121, 26.250107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.159081, 34.279797, 26.475435>,  <40.046158, 34.442802, 26.610632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.159081, 34.279797, 26.475435>,  <40.347286, 34.008121, 26.250107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159081, 34.279797, 26.475435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009277, 0.634557, -0.772821,
		-0.882345, -0.368846, -0.292265,
		-0.470511, 0.679183, 0.563320,
		40.017929, 34.483551, 26.644432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985390, 34.440449, 25.772221>,  <40.347286, 34.008121, 26.250107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985390, 34.440449, 25.772221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.946819, 34.680321, 26.089985>,  <39.923676, 34.824242, 26.280643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.946819, 34.680321, 26.089985>,  <39.985390, 34.440449, 25.772221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946819, 34.680321, 26.089985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142618, 0.798219, -0.585240,
		-0.985069, 0.056865, -0.162494,
		-0.096426, 0.599677, 0.794411,
		39.917892, 34.860226, 26.328308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516502, 35.058849, 25.550581>,  <39.985390, 34.440449, 25.772221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516502, 35.058849, 25.550581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739082, 35.180210, 25.859985>,  <39.872631, 35.253025, 26.045628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739082, 35.180210, 25.859985>,  <39.516502, 35.058849, 25.550581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739082, 35.180210, 25.859985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110992, 0.895460, -0.431082,
		-0.823438, 0.325727, 0.464599,
		0.556445, 0.303402, 0.773509,
		39.906017, 35.271229, 26.092037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229828, 35.732021, 25.728119>,  <39.516502, 35.058849, 25.550581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229828, 35.732021, 25.728119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605129, 35.711166, 25.864920>,  <39.830311, 35.698654, 25.947001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605129, 35.711166, 25.864920>,  <39.229828, 35.732021, 25.728119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605129, 35.711166, 25.864920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208535, 0.874023, -0.438859,
		-0.276040, 0.483080, 0.830925,
		0.938251, -0.052135, 0.342004,
		39.886604, 35.695526, 25.967522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377220, 36.422050, 25.965389>,  <39.229828, 35.732021, 25.728119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377220, 36.422050, 25.965389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.733360, 36.246716, 25.916166>,  <39.947044, 36.141514, 25.886633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.733360, 36.246716, 25.916166>,  <39.377220, 36.422050, 25.965389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733360, 36.246716, 25.916166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364591, 0.848333, -0.383933,
		0.272686, 0.296968, 0.915124,
		0.890346, -0.438340, -0.123057,
		40.000465, 36.115215, 25.879250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882885, 36.857708, 26.324366>,  <39.377220, 36.422050, 25.965389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882885, 36.857708, 26.324366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095707, 36.639263, 26.065544>,  <40.223400, 36.508194, 25.910252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095707, 36.639263, 26.065544>,  <39.882885, 36.857708, 26.324366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095707, 36.639263, 26.065544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412380, 0.834569, -0.365290,
		0.739501, -0.072479, 0.669241,
		0.532053, -0.546114, -0.647054,
		40.255322, 36.475430, 25.871428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556377, 37.142086, 26.424221>,  <39.882885, 36.857708, 26.324366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556377, 37.142086, 26.424221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553112, 36.953648, 26.071402>,  <40.551155, 36.840584, 25.859711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553112, 36.953648, 26.071402>,  <40.556377, 37.142086, 26.424221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553112, 36.953648, 26.071402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403423, 0.805555, -0.433971,
		0.914977, -0.359379, 0.183476,
		-0.008160, -0.471092, -0.882046,
		40.550663, 36.812321, 25.806787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212830, 37.265972, 25.981623>,  <40.556377, 37.142086, 26.424221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212830, 37.265972, 25.981623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.942726, 37.179115, 25.699665>,  <40.780663, 37.127003, 25.530491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.942726, 37.179115, 25.699665>,  <41.212830, 37.265972, 25.981623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942726, 37.179115, 25.699665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344363, 0.752317, -0.561634,
		0.652255, -0.621989, -0.433236,
		-0.675261, -0.217138, -0.704892,
		40.740147, 37.113972, 25.488197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058891, 37.032082, 25.866680>,  <41.212830, 37.265972, 25.981623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058891, 37.032082, 25.866680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.442894, 37.142708, 25.884102>,  <42.673294, 37.209084, 25.894554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.442894, 37.142708, 25.884102>,  <42.058891, 37.032082, 25.866680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442894, 37.142708, 25.884102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123436, -0.557727, 0.820795,
		0.251294, -0.782594, -0.569560,
		0.960008, 0.276565, 0.043553,
		42.730896, 37.225677, 25.897167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379597, 36.413052, 26.035925>,  <42.058891, 37.032082, 25.866680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379597, 36.413052, 26.035925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.631409, 36.712055, 26.120707>,  <42.782497, 36.891457, 26.171576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.631409, 36.712055, 26.120707>,  <42.379597, 36.413052, 26.035925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631409, 36.712055, 26.120707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163447, -0.394095, 0.904419,
		0.759588, -0.534718, -0.370273,
		0.629532, 0.747507, 0.211952,
		42.820267, 36.936306, 26.184292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019222, 36.130547, 26.129589>,  <42.379597, 36.413052, 26.035925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019222, 36.130547, 26.129589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.008980, 36.481075, 26.322004>,  <43.002834, 36.691395, 26.437454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.008980, 36.481075, 26.322004>,  <43.019222, 36.130547, 26.129589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008980, 36.481075, 26.322004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352728, -0.442325, 0.824580,
		0.935376, 0.190793, -0.297776,
		-0.025610, 0.876326, 0.481038,
		43.001297, 36.743973, 26.466316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636921, 36.195484, 26.442591>,  <43.019222, 36.130547, 26.129589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636921, 36.195484, 26.442591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.406120, 36.453259, 26.643297>,  <43.267639, 36.607922, 26.763721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.406120, 36.453259, 26.643297>,  <43.636921, 36.195484, 26.442591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406120, 36.453259, 26.643297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426006, -0.286696, 0.858094,
		0.696838, 0.708881, -0.109107,
		-0.577006, 0.644432, 0.501768,
		43.233017, 36.646587, 26.793827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156158, 36.502415, 26.886908>,  <43.636921, 36.195484, 26.442591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156158, 36.502415, 26.886908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.806843, 36.602844, 27.053919>,  <43.597252, 36.663101, 27.154125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.806843, 36.602844, 27.053919>,  <44.156158, 36.502415, 26.886908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806843, 36.602844, 27.053919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361826, -0.239669, 0.900911,
		0.326267, 0.937827, 0.118454,
		-0.873288, 0.251077, 0.417526,
		43.544857, 36.678169, 27.179176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314312, 36.823235, 27.479214>,  <44.156158, 36.502415, 26.886908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314312, 36.823235, 27.479214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.933277, 36.716835, 27.538298>,  <43.704655, 36.652996, 27.573748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.933277, 36.716835, 27.538298>,  <44.314312, 36.823235, 27.479214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933277, 36.716835, 27.538298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225800, -0.292648, 0.929178,
		-0.203932, 0.918478, 0.338836,
		-0.952589, -0.265998, 0.147712,
		43.647499, 36.637035, 27.582611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138771, 36.993031, 28.134605>,  <44.314312, 36.823235, 27.479214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138771, 36.993031, 28.134605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.890862, 36.693966, 28.039204>,  <43.742115, 36.514526, 27.981962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.890862, 36.693966, 28.039204>,  <44.138771, 36.993031, 28.134605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890862, 36.693966, 28.039204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157179, -0.416010, 0.895673,
		-0.768882, 0.517624, 0.375348,
		-0.619770, -0.747664, -0.238503,
		43.704929, 36.469666, 27.967653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882500, 36.890553, 28.705976>,  <44.138771, 36.993031, 28.134605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882500, 36.890553, 28.705976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.787209, 36.551071, 28.517105>,  <43.730034, 36.347382, 28.403782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.787209, 36.551071, 28.517105>,  <43.882500, 36.890553, 28.705976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787209, 36.551071, 28.517105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062223, -0.471841, 0.879485,
		-0.969213, 0.238901, 0.059598,
		-0.238231, -0.848700, -0.472180,
		43.715740, 36.296459, 28.375450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156166, 36.626286, 28.918335>,  <43.882500, 36.890553, 28.705976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156166, 36.626286, 28.918335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.386391, 36.323326, 28.794998>,  <43.524525, 36.141548, 28.720995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.386391, 36.323326, 28.794998>,  <43.156166, 36.626286, 28.918335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386391, 36.323326, 28.794998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212962, -0.502873, 0.837715,
		-0.789544, -0.416488, -0.450731,
		0.575559, -0.757401, -0.308344,
		43.559059, 36.096107, 28.702496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726349, 36.063835, 28.955713>,  <43.156166, 36.626286, 28.918335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726349, 36.063835, 28.955713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.098953, 35.918411, 28.960056>,  <43.322514, 35.831158, 28.962662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.098953, 35.918411, 28.960056>,  <42.726349, 36.063835, 28.955713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098953, 35.918411, 28.960056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216806, -0.531036, 0.819144,
		-0.292042, -0.765392, -0.573485,
		0.931508, -0.363559, 0.010857,
		43.378407, 35.809341, 28.963312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646202, 35.352032, 29.066551>,  <42.726349, 36.063835, 28.955713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646202, 35.352032, 29.066551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.023388, 35.413868, 29.184473>,  <43.249699, 35.450970, 29.255226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.023388, 35.413868, 29.184473>,  <42.646202, 35.352032, 29.066551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023388, 35.413868, 29.184473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204759, -0.428883, 0.879849,
		0.262457, -0.890034, -0.372768,
		0.942969, 0.154595, 0.294805,
		43.306278, 35.460247, 29.272915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852840, 34.755634, 29.393400>,  <42.646202, 35.352032, 29.066551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852840, 34.755634, 29.393400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.102486, 35.045162, 29.511097>,  <43.252274, 35.218880, 29.581715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.102486, 35.045162, 29.511097>,  <42.852840, 34.755634, 29.393400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102486, 35.045162, 29.511097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010015, -0.383969, 0.923292,
		0.781273, -0.573288, -0.246888,
		0.624110, 0.723815, 0.294243,
		43.289719, 35.262306, 29.599369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327927, 34.379757, 29.698736>,  <42.852840, 34.755634, 29.393400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327927, 34.379757, 29.698736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.413391, 34.743641, 29.841162>,  <43.464668, 34.961971, 29.926617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.413391, 34.743641, 29.841162>,  <43.327927, 34.379757, 29.698736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413391, 34.743641, 29.841162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178869, -0.321891, 0.929727,
		0.960393, -0.262334, 0.093943,
		0.213660, 0.909707, 0.356065,
		43.477489, 35.016552, 29.947981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777294, 34.253971, 30.124889>,  <43.327927, 34.379757, 29.698736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777294, 34.253971, 30.124889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.578854, 34.585949, 30.226933>,  <43.459789, 34.785133, 30.288158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.578854, 34.585949, 30.226933>,  <43.777294, 34.253971, 30.124889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578854, 34.585949, 30.226933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441836, -0.494239, 0.748671,
		0.747438, 0.258701, 0.611891,
		-0.496102, 0.829941, 0.255109,
		43.430023, 34.834930, 30.303465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.117592, 41.358948, 27.934315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.830032, 41.271496, 27.670378>,  <42.657497, 41.219025, 27.512016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.830032, 41.271496, 27.670378>,  <43.117592, 41.358948, 27.934315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830032, 41.271496, 27.670378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408306, 0.635414, -0.655389,
		0.562561, -0.740573, -0.367528,
		-0.718896, -0.218633, -0.659840,
		42.614365, 41.205906, 27.472425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481365, 41.242641, 27.288809>,  <43.117592, 41.358948, 27.934315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481365, 41.242641, 27.288809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.098743, 41.293259, 27.183744>,  <42.869171, 41.323631, 27.120705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.098743, 41.293259, 27.183744>,  <43.481365, 41.242641, 27.288809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098743, 41.293259, 27.183744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272217, 0.710291, -0.649142,
		0.104421, -0.692440, -0.713879,
		-0.956553, 0.126546, -0.262663,
		42.811779, 41.331223, 27.104946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550709, 41.075821, 26.605947>,  <43.481365, 41.242641, 27.288809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550709, 41.075821, 26.605947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213406, 41.287037, 26.646130>,  <43.011024, 41.413769, 26.670238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213406, 41.287037, 26.646130>,  <43.550709, 41.075821, 26.605947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213406, 41.287037, 26.646130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185709, 0.461588, -0.867438,
		-0.504415, -0.712815, -0.487299,
		-0.843254, 0.528045, 0.100455,
		42.960430, 41.445450, 26.676266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119308, 41.013977, 25.890802>,  <43.550709, 41.075821, 26.605947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119308, 41.013977, 25.890802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.992565, 41.339752, 26.085241>,  <42.916519, 41.535217, 26.201904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.992565, 41.339752, 26.085241>,  <43.119308, 41.013977, 25.890802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992565, 41.339752, 26.085241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043267, 0.524384, -0.850382,
		-0.947486, -0.248417, -0.201393,
		-0.316857, 0.814439, 0.486098,
		42.897507, 41.584084, 26.231071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822292, 41.451672, 25.389427>,  <43.119308, 41.013977, 25.890802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822292, 41.451672, 25.389427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866882, 41.696636, 25.702484>,  <42.893639, 41.843613, 25.890318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866882, 41.696636, 25.702484>,  <42.822292, 41.451672, 25.389427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866882, 41.696636, 25.702484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172239, 0.763725, -0.622140,
		-0.978727, 0.204156, -0.020343,
		0.111477, 0.612409, 0.782642,
		42.900326, 41.880360, 25.937277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266647, 41.900780, 25.277426>,  <42.822292, 41.451672, 25.389427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266647, 41.900780, 25.277426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.562431, 42.068718, 25.487921>,  <42.739902, 42.169479, 25.614218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.562431, 42.068718, 25.487921>,  <42.266647, 41.900780, 25.277426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562431, 42.068718, 25.487921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139313, 0.669341, -0.729777,
		-0.658625, 0.612955, 0.436463,
		0.739463, 0.419845, 0.526237,
		42.784271, 42.194672, 25.645792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077915, 42.534988, 25.310299>,  <42.266647, 41.900780, 25.277426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077915, 42.534988, 25.310299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.472012, 42.519981, 25.377102>,  <42.708469, 42.510979, 25.417185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.472012, 42.519981, 25.377102>,  <42.077915, 42.534988, 25.310299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472012, 42.519981, 25.377102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152781, 0.632691, -0.759183,
		-0.077184, 0.773495, 0.629086,
		0.985241, -0.037516, 0.167009,
		42.767586, 42.508728, 25.427204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348522, 43.205437, 25.303810>,  <42.077915, 42.534988, 25.310299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348522, 43.205437, 25.303810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.670170, 42.976116, 25.240923>,  <42.863159, 42.838524, 25.203192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.670170, 42.976116, 25.240923>,  <42.348522, 43.205437, 25.303810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670170, 42.976116, 25.240923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232767, 0.546999, -0.804121,
		0.546999, 0.610017, 0.573299,
		0.804121, -0.573299, -0.157216,
		42.911407, 42.804127, 25.193758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821251, 43.658024, 25.145506>,  <42.348522, 43.205437, 25.303810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821251, 43.658024, 25.145506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.967106, 43.319092, 24.991068>,  <43.054619, 43.115734, 24.898405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.967106, 43.319092, 24.991068>,  <42.821251, 43.658024, 25.145506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967106, 43.319092, 24.991068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047608, 0.431068, -0.901063,
		0.929930, 0.310184, 0.197525,
		0.364642, -0.847329, -0.386095,
		43.076500, 43.064892, 24.875238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346218, 43.909466, 24.763084>,  <42.821251, 43.658024, 25.145506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346218, 43.909466, 24.763084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.281452, 43.540192, 24.623650>,  <43.242592, 43.318626, 24.539989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.281452, 43.540192, 24.623650>,  <43.346218, 43.909466, 24.763084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281452, 43.540192, 24.623650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197997, 0.315671, -0.927981,
		0.966737, -0.219275, 0.131676,
		-0.161916, -0.923185, -0.348586,
		43.232876, 43.263237, 24.519073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933517, 43.728287, 24.333109>,  <43.346218, 43.909466, 24.763084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933517, 43.728287, 24.333109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.650856, 43.481003, 24.195433>,  <43.481258, 43.332634, 24.112827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.650856, 43.481003, 24.195433>,  <43.933517, 43.728287, 24.333109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650856, 43.481003, 24.195433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330576, 0.141637, -0.933091,
		0.625592, -0.773150, 0.104276,
		-0.706650, -0.618206, -0.344192,
		43.438862, 43.295540, 24.092175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215572, 43.266502, 23.793646>,  <43.933517, 43.728287, 24.333109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215572, 43.266502, 23.793646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.822819, 43.275185, 23.718355>,  <43.587166, 43.280396, 23.673180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.822819, 43.275185, 23.718355>,  <44.215572, 43.266502, 23.793646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822819, 43.275185, 23.718355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188339, 0.220466, -0.957039,
		0.020723, -0.975153, -0.220561,
		-0.981886, 0.021708, -0.188228,
		43.528252, 43.281696, 23.661886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016762, 42.669739, 23.321827>,  <44.215572, 43.266502, 23.793646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016762, 42.669739, 23.321827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786949, 42.996708, 23.305199>,  <43.649059, 43.192890, 23.295221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786949, 42.996708, 23.305199>,  <44.016762, 42.669739, 23.321827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786949, 42.996708, 23.305199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364703, 0.210207, -0.907086,
		-0.732735, -0.536314, -0.418888,
		-0.574536, 0.817423, -0.041569,
		43.614590, 43.241936, 23.292728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391586, 42.629852, 22.873585>,  <44.016762, 42.669739, 23.321827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391586, 42.629852, 22.873585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.636253, 42.938690, 22.942568>,  <43.783054, 43.123993, 22.983957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.636253, 42.938690, 22.942568>,  <43.391586, 42.629852, 22.873585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636253, 42.938690, 22.942568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581242, -0.290707, -0.760031,
		-0.536681, 0.565122, -0.626587,
		0.611663, 0.772093, 0.172456,
		43.819752, 43.170319, 22.994305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918461, 42.045025, 23.167465>,  <43.391586, 42.629852, 22.873585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918461, 42.045025, 23.167465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816326, 41.828453, 22.847052>,  <42.755047, 41.698509, 22.654802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816326, 41.828453, 22.847052>,  <42.918461, 42.045025, 23.167465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816326, 41.828453, 22.847052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086725, -0.812333, 0.576710,
		-0.962956, 0.216723, 0.160461,
		-0.255334, -0.541430, -0.801036,
		42.739727, 41.666023, 22.606741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356686, 41.736557, 23.443089>,  <42.918461, 42.045025, 23.167465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356686, 41.736557, 23.443089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479954, 41.525482, 23.126463>,  <42.553917, 41.398838, 22.936487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479954, 41.525482, 23.126463>,  <42.356686, 41.736557, 23.443089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479954, 41.525482, 23.126463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218336, -0.849083, 0.481027,
		-0.925937, 0.024589, -0.376876,
		0.308171, -0.527687, -0.791566,
		42.572407, 41.367176, 22.888992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973774, 41.107933, 23.478279>,  <42.356686, 41.736557, 23.443089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973774, 41.107933, 23.478279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.277031, 41.018028, 23.233425>,  <42.458984, 40.964085, 23.086514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.277031, 41.018028, 23.233425>,  <41.973774, 41.107933, 23.478279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277031, 41.018028, 23.233425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073077, -0.962093, 0.262749,
		-0.647986, -0.154467, -0.745824,
		0.758138, -0.224760, -0.612135,
		42.504471, 40.950600, 23.049784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838875, 40.382046, 23.303892>,  <41.973774, 41.107933, 23.478279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838875, 40.382046, 23.303892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.216774, 40.418591, 23.177963>,  <42.443512, 40.440517, 23.102406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.216774, 40.418591, 23.177963>,  <41.838875, 40.382046, 23.303892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216774, 40.418591, 23.177963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192288, -0.932249, 0.306493,
		-0.265491, -0.350093, -0.898303,
		0.944743, 0.091362, -0.314823,
		42.500198, 40.445999, 23.083517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880489, 39.813118, 22.908617>,  <41.838875, 40.382046, 23.303892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880489, 39.813118, 22.908617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.229031, 39.955505, 23.043688>,  <42.438156, 40.040939, 23.124729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.229031, 39.955505, 23.043688>,  <41.880489, 39.813118, 22.908617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229031, 39.955505, 23.043688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280229, -0.925984, 0.253034,
		0.402755, -0.125856, -0.906614,
		0.871356, 0.355970, 0.337676,
		42.490437, 40.062298, 23.144991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326580, 39.261642, 22.846216>,  <41.880489, 39.813118, 22.908617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326580, 39.261642, 22.846216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.503593, 39.511143, 23.103926>,  <42.609802, 39.660843, 23.258553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.503593, 39.511143, 23.103926>,  <42.326580, 39.261642, 22.846216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503593, 39.511143, 23.103926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402755, -0.780166, 0.478675,
		0.801217, 0.047654, -0.596473,
		0.442537, 0.623755, 0.644275,
		42.636356, 39.698269, 23.297209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976517, 38.969215, 22.884785>,  <42.326580, 39.261642, 22.846216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976517, 38.969215, 22.884785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.942226, 39.188885, 23.217306>,  <42.921654, 39.320686, 23.416819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.942226, 39.188885, 23.217306>,  <42.976517, 38.969215, 22.884785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942226, 39.188885, 23.217306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429212, -0.732623, 0.528243,
		0.899126, 0.402090, -0.172905,
		-0.085726, 0.549170, 0.831302,
		42.916508, 39.353634, 23.466698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640514, 38.945702, 23.219225>,  <42.976517, 38.969215, 22.884785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640514, 38.945702, 23.219225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.360477, 39.023666, 23.493999>,  <43.192455, 39.070446, 23.658865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.360477, 39.023666, 23.493999>,  <43.640514, 38.945702, 23.219225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360477, 39.023666, 23.493999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399293, -0.690695, 0.602914,
		0.591978, 0.696384, 0.405723,
		-0.700090, 0.194909, 0.686938,
		43.150452, 39.082138, 23.700081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904419, 38.750015, 23.795923>,  <43.640514, 38.945702, 23.219225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904419, 38.750015, 23.795923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540157, 38.824661, 23.943375>,  <43.321602, 38.869450, 24.031845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540157, 38.824661, 23.943375>,  <43.904419, 38.750015, 23.795923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540157, 38.824661, 23.943375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174500, -0.635000, 0.752545,
		0.374513, 0.749633, 0.545702,
		-0.910654, 0.186613, 0.368626,
		43.266960, 38.880646, 24.053963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920818, 38.857540, 24.587761>,  <43.904419, 38.750015, 23.795923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920818, 38.857540, 24.587761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541405, 38.748070, 24.524036>,  <43.313755, 38.682388, 24.485802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541405, 38.748070, 24.524036>,  <43.920818, 38.857540, 24.587761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541405, 38.748070, 24.524036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078795, -0.691245, 0.718311,
		-0.306704, 0.668792, 0.677237,
		-0.948538, -0.273672, -0.159310,
		43.256844, 38.665970, 24.476244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505974, 38.919403, 25.256132>,  <43.920818, 38.857540, 24.587761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505974, 38.919403, 25.256132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.301792, 38.666718, 25.022766>,  <43.179283, 38.515106, 24.882746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.301792, 38.666718, 25.022766>,  <43.505974, 38.919403, 25.256132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301792, 38.666718, 25.022766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059706, -0.702862, 0.708816,
		-0.857831, 0.326983, 0.396495,
		-0.510452, -0.631717, -0.583414,
		43.148655, 38.477203, 24.847742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025360, 38.732376, 25.641340>,  <43.505974, 38.919403, 25.256132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025360, 38.732376, 25.641340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.006565, 38.452862, 25.355827>,  <42.995289, 38.285152, 25.184519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.006565, 38.452862, 25.355827>,  <43.025360, 38.732376, 25.641340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006565, 38.452862, 25.355827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185288, -0.696075, 0.693649,
		-0.981560, 0.164849, -0.096769,
		-0.046989, -0.698788, -0.713783,
		42.992470, 38.243225, 25.141693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387684, 38.390537, 25.685652>,  <43.025360, 38.732376, 25.641340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387684, 38.390537, 25.685652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.652359, 38.142418, 25.517178>,  <42.811165, 37.993546, 25.416092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.652359, 38.142418, 25.517178>,  <42.387684, 38.390537, 25.685652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652359, 38.142418, 25.517178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150661, -0.660285, 0.735748,
		-0.734491, -0.423376, -0.530355,
		0.661683, -0.620304, -0.421188,
		42.850864, 37.956326, 25.390821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061554, 37.724838, 25.623945>,  <42.387684, 38.390537, 25.685652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061554, 37.724838, 25.623945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.457333, 37.668941, 25.608671>,  <42.694801, 37.635403, 25.599506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.457333, 37.668941, 25.608671>,  <42.061554, 37.724838, 25.623945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457333, 37.668941, 25.608671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052018, -0.588745, 0.806643,
		-0.135203, -0.796148, -0.589803,
		0.989451, -0.139741, -0.038186,
		42.754169, 37.627018, 25.597216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526966, 37.404148, 25.238056>,  <42.061554, 37.724838, 25.623945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526966, 37.404148, 25.238056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.129974, 37.392467, 25.190510>,  <40.891777, 37.385460, 25.161982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.129974, 37.392467, 25.190510>,  <41.526966, 37.404148, 25.238056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129974, 37.392467, 25.190510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073168, 0.636965, -0.767413,
		0.098123, -0.770339, -0.630039,
		-0.992481, -0.029202, -0.118865,
		40.832230, 37.383705, 25.154850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457504, 37.778343, 24.617002>,  <41.526966, 37.404148, 25.238056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457504, 37.778343, 24.617002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076267, 37.716267, 24.720947>,  <40.847523, 37.679020, 24.783314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076267, 37.716267, 24.720947>,  <41.457504, 37.778343, 24.617002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076267, 37.716267, 24.720947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302370, 0.526649, -0.794489,
		-0.013558, -0.835797, -0.548871,
		-0.953094, -0.155190, 0.259860,
		40.790340, 37.669708, 24.798904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116024, 37.553215, 24.072292>,  <41.457504, 37.778343, 24.617002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116024, 37.553215, 24.072292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.815197, 37.710213, 24.284084>,  <40.634701, 37.804413, 24.411160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.815197, 37.710213, 24.284084>,  <41.116024, 37.553215, 24.072292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815197, 37.710213, 24.284084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285638, 0.529890, -0.798516,
		-0.593979, -0.751774, -0.286399,
		-0.752064, 0.392495, 0.529479,
		40.589577, 37.827961, 24.442928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517891, 37.491936, 23.643858>,  <41.116024, 37.553215, 24.072292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517891, 37.491936, 23.643858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443539, 37.807049, 23.878754>,  <40.398926, 37.996117, 24.019691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443539, 37.807049, 23.878754>,  <40.517891, 37.491936, 23.643858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443539, 37.807049, 23.878754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280886, 0.530111, -0.800053,
		-0.941568, -0.313664, 0.122738,
		-0.185884, 0.787780, 0.587239,
		40.387775, 38.043385, 24.054926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981590, 37.768280, 23.368568>,  <40.517891, 37.491936, 23.643858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981590, 37.768280, 23.368568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.120991, 38.069443, 23.591883>,  <40.204632, 38.250141, 23.725872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.120991, 38.069443, 23.591883>,  <39.981590, 37.768280, 23.368568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120991, 38.069443, 23.591883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042188, 0.607623, -0.793104,
		-0.936357, 0.252848, 0.243523,
		0.348505, 0.752902, 0.558285,
		40.225544, 38.295315, 23.759369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462471, 38.264465, 23.239201>,  <39.981590, 37.768280, 23.368568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462471, 38.264465, 23.239201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797783, 38.450294, 23.353369>,  <39.998970, 38.561790, 23.421869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797783, 38.450294, 23.353369>,  <39.462471, 38.264465, 23.239201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797783, 38.450294, 23.353369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078245, 0.620549, -0.780254,
		-0.539602, 0.631736, 0.556542,
		0.838276, 0.464574, 0.285419,
		40.049267, 38.589668, 23.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313175, 38.991154, 23.099571>,  <39.462471, 38.264465, 23.239201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313175, 38.991154, 23.099571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710678, 39.020699, 23.133030>,  <39.949181, 39.038425, 23.153105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710678, 39.020699, 23.133030>,  <39.313175, 38.991154, 23.099571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710678, 39.020699, 23.133030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007305, 0.704923, -0.709246,
		-0.111353, 0.705427, 0.699980,
		0.993754, 0.073863, 0.083648,
		40.008804, 39.042858, 23.158125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755199, 39.532764, 23.190668>,  <39.313175, 38.991154, 23.099571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755199, 39.532764, 23.190668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.395004, 39.508564, 23.018404>,  <38.178886, 39.494045, 22.915047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.395004, 39.508564, 23.018404>,  <38.755199, 39.532764, 23.190668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395004, 39.508564, 23.018404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327170, -0.558162, 0.762506,
		-0.286508, 0.827524, 0.482823,
		-0.900485, -0.060498, -0.430659,
		38.124859, 39.490414, 22.889206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224846, 39.671120, 23.704809>,  <38.755199, 39.532764, 23.190668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224846, 39.671120, 23.704809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073200, 39.450752, 23.407417>,  <37.982212, 39.318531, 23.228981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073200, 39.450752, 23.407417>,  <38.224846, 39.671120, 23.704809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073200, 39.450752, 23.407417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304723, -0.684318, 0.662459,
		-0.873737, 0.477704, 0.091559,
		-0.379115, -0.550915, -0.743481,
		37.959465, 39.285477, 23.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716404, 39.263832, 23.982975>,  <38.224846, 39.671120, 23.704809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716404, 39.263832, 23.982975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714409, 39.087822, 23.623787>,  <37.713211, 38.982216, 23.408274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714409, 39.087822, 23.623787>,  <37.716404, 39.263832, 23.982975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714409, 39.087822, 23.623787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239218, -0.871386, 0.428324,
		-0.970953, 0.216948, -0.100914,
		-0.004989, -0.440024, -0.897972,
		37.712914, 38.955814, 23.354395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154884, 38.856773, 24.048891>,  <37.716404, 39.263832, 23.982975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154884, 38.856773, 24.048891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371807, 38.706249, 23.748413>,  <37.501961, 38.615936, 23.568127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371807, 38.706249, 23.748413>,  <37.154884, 38.856773, 24.048891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371807, 38.706249, 23.748413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249789, -0.925875, 0.283482,
		-0.802189, 0.033906, -0.596107,
		0.542309, -0.376307, -0.751195,
		37.534500, 38.593357, 23.523054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711666, 38.476513, 23.610830>,  <37.154884, 38.856773, 24.048891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711666, 38.476513, 23.610830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.078556, 38.318398, 23.591072>,  <37.298691, 38.223530, 23.579218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.078556, 38.318398, 23.591072>,  <36.711666, 38.476513, 23.610830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078556, 38.318398, 23.591072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291159, -0.749844, 0.594104,
		-0.271881, -0.530547, -0.802870,
		0.917228, -0.395288, -0.049395,
		37.353725, 38.199810, 23.576254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561260, 37.764565, 23.692717>,  <36.711666, 38.476513, 23.610830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561260, 37.764565, 23.692717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959915, 37.754005, 23.723742>,  <37.199108, 37.747669, 23.742357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959915, 37.754005, 23.723742>,  <36.561260, 37.764565, 23.692717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959915, 37.754005, 23.723742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065387, -0.826676, 0.558867,
		0.049369, -0.562059, -0.825622,
		0.996638, -0.026394, 0.077563,
		37.258907, 37.746086, 23.747011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803696, 37.034916, 23.419500>,  <36.561260, 37.764565, 23.692717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803696, 37.034916, 23.419500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085968, 37.175312, 23.665695>,  <37.255333, 37.259548, 23.813412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085968, 37.175312, 23.665695>,  <36.803696, 37.034916, 23.419500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085968, 37.175312, 23.665695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033019, -0.851447, 0.523400,
		0.707761, -0.389676, -0.589260,
		0.705680, 0.350986, 0.615487,
		37.297672, 37.280609, 23.850342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.988964, 44.383747, 23.981073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325226, 44.192741, 23.878870>,  <40.526981, 44.078136, 23.817547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325226, 44.192741, 23.878870>,  <39.988964, 44.383747, 23.981073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325226, 44.192741, 23.878870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047000, -0.534335, 0.843965,
		-0.539568, -0.697452, -0.471622,
		0.840629, -0.477542, -0.255530,
		40.577423, 44.049488, 23.802217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866707, 43.643913, 23.930290>,  <39.988964, 44.383747, 23.981073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866707, 43.643913, 23.930290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264263, 43.600342, 23.937323>,  <40.502796, 43.574200, 23.941542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264263, 43.600342, 23.937323>,  <39.866707, 43.643913, 23.930290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264263, 43.600342, 23.937323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096478, -0.780576, 0.617570,
		-0.053549, -0.615495, -0.786320,
		0.993894, -0.108933, 0.017582,
		40.562431, 43.567661, 23.942596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037392, 42.934628, 23.802128>,  <39.866707, 43.643913, 23.930290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037392, 42.934628, 23.802128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.347500, 43.082005, 24.007341>,  <40.533566, 43.170429, 24.130470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.347500, 43.082005, 24.007341>,  <40.037392, 42.934628, 23.802128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347500, 43.082005, 24.007341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176419, -0.653604, 0.735988,
		0.606490, -0.661100, -0.441721,
		0.775272, 0.368441, 0.513034,
		40.580082, 43.192535, 24.161251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421200, 42.384159, 23.904083>,  <40.037392, 42.934628, 23.802128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421200, 42.384159, 23.904083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511364, 42.661263, 24.178097>,  <40.565464, 42.827526, 24.342505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511364, 42.661263, 24.178097>,  <40.421200, 42.384159, 23.904083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511364, 42.661263, 24.178097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146164, -0.671124, 0.726793,
		0.963237, -0.263955, -0.050023,
		0.225412, 0.692763, 0.685032,
		40.578987, 42.869091, 24.383606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769638, 42.015343, 24.302559>,  <40.421200, 42.384159, 23.904083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769638, 42.015343, 24.302559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.675068, 42.322674, 24.540474>,  <40.618328, 42.507072, 24.683224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.675068, 42.322674, 24.540474>,  <40.769638, 42.015343, 24.302559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675068, 42.322674, 24.540474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141546, -0.632846, 0.761230,
		0.961286, 0.095781, 0.258372,
		-0.236421, 0.768330, 0.594789,
		40.604141, 42.553173, 24.718910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074188, 41.945919, 24.829891>,  <40.769638, 42.015343, 24.302559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074188, 41.945919, 24.829891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773636, 42.182781, 24.946358>,  <40.593304, 42.324898, 25.016237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773636, 42.182781, 24.946358>,  <41.074188, 41.945919, 24.829891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773636, 42.182781, 24.946358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160016, -0.591588, 0.790201,
		0.640172, 0.547152, 0.539263,
		-0.751382, 0.592156, 0.291165,
		40.548222, 42.360428, 25.033707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133099, 41.858578, 25.503103>,  <41.074188, 41.945919, 24.829891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133099, 41.858578, 25.503103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.782181, 42.042042, 25.446545>,  <40.571632, 42.152119, 25.412609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.782181, 42.042042, 25.446545>,  <41.133099, 41.858578, 25.503103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782181, 42.042042, 25.446545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356841, -0.426289, 0.831229,
		0.320978, 0.779685, 0.537648,
		-0.877290, 0.458661, -0.141394,
		40.518993, 42.179642, 25.404127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960102, 42.230320, 26.164948>,  <41.133099, 41.858578, 25.503103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960102, 42.230320, 26.164948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.625114, 42.161114, 25.957600>,  <40.424122, 42.119591, 25.833191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.625114, 42.161114, 25.957600>,  <40.960102, 42.230320, 26.164948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625114, 42.161114, 25.957600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477827, -0.228463, 0.848225,
		-0.265186, 0.958055, 0.108658,
		-0.837471, -0.173017, -0.518370,
		40.373875, 42.109207, 25.802088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328213, 42.612965, 26.530998>,  <40.960102, 42.230320, 26.164948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328213, 42.612965, 26.530998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.170509, 42.311424, 26.320753>,  <40.075886, 42.130501, 26.194607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.170509, 42.311424, 26.320753>,  <40.328213, 42.612965, 26.530998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170509, 42.311424, 26.320753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517101, -0.290834, 0.804999,
		-0.759715, 0.589172, -0.275154,
		-0.394259, -0.753852, -0.525612,
		40.052231, 42.085270, 26.163069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559803, 42.563141, 26.559065>,  <40.328213, 42.612965, 26.530998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559803, 42.563141, 26.559065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.656185, 42.184307, 26.474243>,  <39.714012, 41.957005, 26.423349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.656185, 42.184307, 26.474243>,  <39.559803, 42.563141, 26.559065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656185, 42.184307, 26.474243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521658, -0.310631, 0.794595,
		-0.818422, -0.080840, -0.568903,
		0.240953, -0.947087, -0.212056,
		39.728470, 41.900181, 26.410625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953262, 42.174358, 26.474558>,  <39.559803, 42.563141, 26.559065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953262, 42.174358, 26.474558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.232437, 41.894718, 26.536709>,  <39.399940, 41.726933, 26.573999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.232437, 41.894718, 26.536709>,  <38.953262, 42.174358, 26.474558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232437, 41.894718, 26.536709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565891, -0.405385, 0.717935,
		-0.438927, -0.588995, -0.678549,
		0.697934, -0.699105, 0.155373,
		39.441818, 41.684990, 26.583323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555016, 41.489368, 26.595522>,  <38.953262, 42.174358, 26.474558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555016, 41.489368, 26.595522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.924286, 41.456177, 26.745646>,  <39.145847, 41.436260, 26.835720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.924286, 41.456177, 26.745646>,  <38.555016, 41.489368, 26.595522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924286, 41.456177, 26.745646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373382, -0.425433, 0.824374,
		0.091260, -0.901177, -0.423734,
		0.923178, -0.082982, 0.375309,
		39.201241, 41.431282, 26.858238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087135, 41.055744, 26.115091>,  <38.555016, 41.489368, 26.595522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087135, 41.055744, 26.115091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.715481, 41.203621, 26.113148>,  <37.492489, 41.292347, 26.111982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.715481, 41.203621, 26.113148>,  <38.087135, 41.055744, 26.115091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715481, 41.203621, 26.113148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233862, 0.577472, -0.782198,
		-0.286370, -0.727908, -0.623010,
		-0.929140, 0.369697, -0.004859,
		37.436737, 41.314529, 26.111691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988544, 41.275169, 25.309851>,  <38.087135, 41.055744, 26.115091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988544, 41.275169, 25.309851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.690491, 41.463623, 25.498657>,  <37.511658, 41.576694, 25.611942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.690491, 41.463623, 25.498657>,  <37.988544, 41.275169, 25.309851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690491, 41.463623, 25.498657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084838, 0.635055, -0.767794,
		-0.661492, -0.612157, -0.433233,
		-0.745138, 0.471135, 0.472018,
		37.466949, 41.604965, 25.640263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591553, 41.400570, 24.796886>,  <37.988544, 41.275169, 25.309851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591553, 41.400570, 24.796886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477272, 41.677132, 25.062317>,  <37.408703, 41.843067, 25.221575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477272, 41.677132, 25.062317>,  <37.591553, 41.400570, 24.796886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477272, 41.677132, 25.062317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059458, 0.703893, -0.707813,
		-0.956471, -0.162771, -0.242215,
		-0.285705, 0.691404, 0.663576,
		37.391560, 41.884552, 25.261389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040016, 41.691654, 24.599892>,  <37.591553, 41.400570, 24.796886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040016, 41.691654, 24.599892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197788, 41.974964, 24.834080>,  <37.292450, 42.144951, 24.974592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197788, 41.974964, 24.834080>,  <37.040016, 41.691654, 24.599892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197788, 41.974964, 24.834080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054546, 0.654049, -0.754483,
		-0.917305, 0.265657, 0.296611,
		0.394432, 0.708270, 0.585472,
		37.316116, 42.187447, 25.009722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803089, 42.306850, 24.311544>,  <37.040016, 41.691654, 24.599892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803089, 42.306850, 24.311544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077724, 42.460125, 24.558691>,  <37.242508, 42.552090, 24.706978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077724, 42.460125, 24.558691>,  <36.803089, 42.306850, 24.311544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077724, 42.460125, 24.558691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075834, 0.807453, -0.585038,
		-0.723076, 0.448538, 0.525332,
		0.686593, 0.383189, 0.617864,
		37.283703, 42.575081, 24.744051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644470, 43.022366, 24.284773>,  <36.803089, 42.306850, 24.311544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644470, 43.022366, 24.284773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010525, 43.019135, 24.445995>,  <37.230160, 43.017197, 24.542728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010525, 43.019135, 24.445995>,  <36.644470, 43.022366, 24.284773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010525, 43.019135, 24.445995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280052, 0.731913, -0.621187,
		-0.289983, 0.681350, 0.672066,
		0.915140, -0.008080, 0.403056,
		37.285069, 43.016712, 24.566912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794876, 43.719566, 24.565540>,  <36.644470, 43.022366, 24.284773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794876, 43.719566, 24.565540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134018, 43.521244, 24.490362>,  <37.337502, 43.402248, 24.445255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134018, 43.521244, 24.490362>,  <36.794876, 43.719566, 24.565540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134018, 43.521244, 24.490362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327906, 0.768831, -0.548977,
		0.416687, 0.403821, 0.814432,
		0.847850, -0.495809, -0.187947,
		37.388374, 43.372501, 24.433979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254032, 44.294888, 24.458822>,  <36.794876, 43.719566, 24.565540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254032, 44.294888, 24.458822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.419949, 43.956764, 24.324127>,  <37.519501, 43.753891, 24.243311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.419949, 43.956764, 24.324127>,  <37.254032, 44.294888, 24.458822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419949, 43.956764, 24.324127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470556, 0.516027, -0.715747,
		0.778795, 0.138434, 0.611812,
		0.414795, -0.845312, -0.336738,
		37.544388, 43.703171, 24.223106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970722, 44.540768, 24.349258>,  <37.254032, 44.294888, 24.458822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970722, 44.540768, 24.349258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897411, 44.198109, 24.156357>,  <37.853424, 43.992516, 24.040615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897411, 44.198109, 24.156357>,  <37.970722, 44.540768, 24.349258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897411, 44.198109, 24.156357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407834, 0.380100, -0.830178,
		0.894473, -0.348831, 0.279706,
		-0.183276, -0.856645, -0.482255,
		37.842430, 43.941116, 24.011681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576279, 44.498463, 23.900658>,  <37.970722, 44.540768, 24.349258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576279, 44.498463, 23.900658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.294724, 44.270256, 23.731398>,  <38.125790, 44.133331, 23.629843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.294724, 44.270256, 23.731398>,  <38.576279, 44.498463, 23.900658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294724, 44.270256, 23.731398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475625, 0.063894, -0.877324,
		0.527565, -0.818797, 0.226378,
		-0.703886, -0.570517, -0.423149,
		38.083557, 44.099102, 23.604452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848679, 44.058712, 23.329599>,  <38.576279, 44.498463, 23.900658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848679, 44.058712, 23.329599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.454838, 44.093933, 23.269192>,  <38.218533, 44.115067, 23.232946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.454838, 44.093933, 23.269192>,  <38.848679, 44.058712, 23.329599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454838, 44.093933, 23.269192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155393, 0.045090, -0.986823,
		-0.080084, -0.995095, -0.058078,
		-0.984601, 0.088054, -0.151020,
		38.159458, 44.120350, 23.223886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704063, 43.646503, 22.773291>,  <38.848679, 44.058712, 23.329599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704063, 43.646503, 22.773291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388489, 43.892040, 22.784473>,  <38.199142, 44.039360, 22.791183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388489, 43.892040, 22.784473>,  <38.704063, 43.646503, 22.773291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388489, 43.892040, 22.784473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055397, 0.116365, -0.991660,
		-0.611972, -0.780808, -0.125809,
		-0.788936, 0.613838, 0.027957,
		38.151806, 44.076191, 22.792860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218044, 43.369358, 22.377947>,  <38.704063, 43.646503, 22.773291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218044, 43.369358, 22.377947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143978, 43.762142, 22.393270>,  <38.099537, 43.997814, 22.402464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143978, 43.762142, 22.393270>,  <38.218044, 43.369358, 22.377947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143978, 43.762142, 22.393270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122706, 0.061779, -0.990519,
		-0.975016, -0.178709, -0.131932,
		-0.185165, 0.981961, 0.038307,
		38.088428, 44.056732, 22.404762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101868, 42.717056, 21.957521>,  <38.218044, 43.369358, 22.377947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101868, 42.717056, 21.957521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.272110, 42.537956, 21.642973>,  <38.374256, 42.430496, 21.454245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.272110, 42.537956, 21.642973>,  <38.101868, 42.717056, 21.957521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272110, 42.537956, 21.642973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261947, -0.892759, 0.366560,
		-0.866168, 0.049978, -0.497249,
		0.425603, -0.447755, -0.786370,
		38.399792, 42.403629, 21.407063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671501, 42.229740, 21.795906>,  <38.101868, 42.717056, 21.957521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671501, 42.229740, 21.795906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012642, 42.116470, 21.620426>,  <38.217327, 42.048508, 21.515139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012642, 42.116470, 21.620426>,  <37.671501, 42.229740, 21.795906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012642, 42.116470, 21.620426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212898, -0.955747, 0.203030,
		-0.476779, -0.079757, -0.875397,
		0.852852, -0.283171, -0.438700,
		38.268497, 42.031521, 21.488815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472359, 41.621941, 21.489634>,  <37.671501, 42.229740, 21.795906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472359, 41.621941, 21.489634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871017, 41.589233, 21.489351>,  <38.110214, 41.569607, 21.489182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871017, 41.589233, 21.489351>,  <37.472359, 41.621941, 21.489634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871017, 41.589233, 21.489351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081034, -0.988738, 0.125821,
		-0.010988, -0.125343, -0.992053,
		0.996651, -0.081772, -0.000707,
		38.170013, 41.564701, 21.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627003, 41.142639, 21.093544>,  <37.472359, 41.621941, 21.489634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627003, 41.142639, 21.093544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.932674, 41.156361, 21.351181>,  <38.116077, 41.164593, 21.505762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.932674, 41.156361, 21.351181>,  <37.627003, 41.142639, 21.093544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932674, 41.156361, 21.351181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137814, -0.966841, 0.215001,
		0.630109, -0.253064, -0.734112,
		0.764179, 0.034304, 0.644091,
		38.161926, 41.166653, 21.544409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957565, 40.452404, 21.030380>,  <37.627003, 41.142639, 21.093544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957565, 40.452404, 21.030380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.083630, 40.608910, 21.376232>,  <38.159267, 40.702812, 21.583742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.083630, 40.608910, 21.376232>,  <37.957565, 40.452404, 21.030380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083630, 40.608910, 21.376232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105618, -0.919860, 0.377761,
		0.943142, -0.027737, -0.331232,
		0.315165, 0.391266, 0.864628,
		38.178181, 40.726288, 21.635620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523224, 39.939075, 21.323017>,  <37.957565, 40.452404, 21.030380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523224, 39.939075, 21.323017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414898, 40.147724, 21.646641>,  <38.349903, 40.272911, 21.840815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414898, 40.147724, 21.646641>,  <38.523224, 39.939075, 21.323017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414898, 40.147724, 21.646641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137363, -0.852804, 0.503842,
		0.952780, 0.025315, 0.302606,
		-0.270818, 0.521617, 0.809057,
		38.333652, 40.304211, 21.889359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912151, 39.637527, 21.873354>,  <38.523224, 39.939075, 21.323017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912151, 39.637527, 21.873354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607292, 39.829124, 22.047571>,  <38.424377, 39.944084, 22.152102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607292, 39.829124, 22.047571>,  <38.912151, 39.637527, 21.873354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607292, 39.829124, 22.047571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227157, -0.827830, 0.512929,
		0.606246, 0.291991, 0.739735,
		-0.762146, 0.478997, 0.435541,
		38.378647, 39.972824, 22.178234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877777, 39.342926, 22.494228>,  <38.912151, 39.637527, 21.873354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877777, 39.342926, 22.494228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525387, 39.532146, 22.498383>,  <38.313953, 39.645679, 22.500875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525387, 39.532146, 22.498383>,  <38.877777, 39.342926, 22.494228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525387, 39.532146, 22.498383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339580, -0.647395, 0.682324,
		0.329495, 0.597584, 0.730977,
		-0.880976, 0.473047, 0.010385,
		38.261093, 39.674061, 22.501497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402489, 39.673645, 22.927368>,  <38.877777, 39.342926, 22.494228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402489, 39.673645, 22.927368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788616, 39.569912, 22.939423>,  <40.020294, 39.507671, 22.946655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788616, 39.569912, 22.939423>,  <39.402489, 39.673645, 22.927368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788616, 39.569912, 22.939423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215830, 0.727740, -0.651008,
		0.146895, 0.634934, 0.758473,
		0.965318, -0.259331, 0.030137,
		40.078213, 39.492111, 22.948463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885895, 40.244209, 23.221010>,  <39.402489, 39.673645, 22.927368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885895, 40.244209, 23.221010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071495, 39.996887, 22.967268>,  <40.182854, 39.848495, 22.815023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071495, 39.996887, 22.967268>,  <39.885895, 40.244209, 23.221010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071495, 39.996887, 22.967268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242372, 0.777393, -0.580444,
		0.852035, 0.115574, 0.510568,
		0.463997, -0.618306, -0.634354,
		40.210693, 39.811394, 22.776962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339314, 40.660553, 22.971653>,  <39.885895, 40.244209, 23.221010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339314, 40.660553, 22.971653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.389511, 40.366436, 22.705240>,  <40.419632, 40.189968, 22.545393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.389511, 40.366436, 22.705240>,  <40.339314, 40.660553, 22.971653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389511, 40.366436, 22.705240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356545, 0.659916, -0.661352,
		0.925811, -0.154472, 0.344982,
		0.125499, -0.735289, -0.666033,
		40.427162, 40.145851, 22.505430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026367, 40.765903, 22.641413>,  <40.339314, 40.660553, 22.971653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026367, 40.765903, 22.641413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838375, 40.521740, 22.386379>,  <40.725578, 40.375240, 22.233360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838375, 40.521740, 22.386379>,  <41.026367, 40.765903, 22.641413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838375, 40.521740, 22.386379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414348, 0.485227, -0.769981,
		0.779379, -0.626059, 0.024875,
		-0.469984, -0.610414, -0.637582,
		40.697380, 40.338615, 22.195105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542316, 40.507133, 22.210875>,  <41.026367, 40.765903, 22.641413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542316, 40.507133, 22.210875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.191563, 40.481468, 22.020315>,  <40.981110, 40.466068, 21.905979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.191563, 40.481468, 22.020315>,  <41.542316, 40.507133, 22.210875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191563, 40.481468, 22.020315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448009, 0.250148, -0.858320,
		0.174246, -0.966079, -0.190603,
		-0.876884, -0.064167, -0.476400,
		40.928497, 40.462219, 21.877396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660515, 40.191994, 21.546745>,  <41.542316, 40.507133, 22.210875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660515, 40.191994, 21.546745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319885, 40.398205, 21.508684>,  <41.115505, 40.521931, 21.485847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319885, 40.398205, 21.508684>,  <41.660515, 40.191994, 21.546745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319885, 40.398205, 21.508684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289108, 0.310425, -0.905568,
		-0.437305, -0.798668, -0.413393,
		-0.851576, 0.515524, -0.095151,
		41.064411, 40.552860, 21.480139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662064, 40.154182, 20.848913>,  <41.660515, 40.191994, 21.546745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662064, 40.154182, 20.848913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.346657, 40.390793, 20.916237>,  <41.157413, 40.532761, 20.956631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.346657, 40.390793, 20.916237>,  <41.662064, 40.154182, 20.848913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346657, 40.390793, 20.916237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168737, 0.471251, -0.865708,
		-0.591407, -0.654229, -0.471404,
		-0.788521, 0.591529, 0.168309,
		41.110100, 40.568253, 20.966730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317764, 40.401569, 20.161978>,  <41.662064, 40.154182, 20.848913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317764, 40.401569, 20.161978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201283, 40.671574, 20.433140>,  <41.131393, 40.833576, 20.595837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201283, 40.671574, 20.433140>,  <41.317764, 40.401569, 20.161978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201283, 40.671574, 20.433140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313047, 0.736840, -0.599224,
		-0.903993, 0.037723, -0.425879,
		-0.291200, 0.675014, 0.677907,
		41.113922, 40.874077, 20.636513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702793, 40.839859, 19.848852>,  <41.317764, 40.401569, 20.161978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702793, 40.839859, 19.848852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.875923, 41.044495, 20.145754>,  <40.979801, 41.167278, 20.323895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.875923, 41.044495, 20.145754>,  <40.702793, 40.839859, 19.848852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875923, 41.044495, 20.145754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304797, 0.691833, -0.654573,
		-0.848388, 0.509551, 0.143510,
		0.432823, 0.511591, 0.742253,
		41.005772, 41.197971, 20.368429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.005241, 31.834076, 32.723362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323635, 31.948198, 32.936905>,  <38.514671, 32.016670, 33.065033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323635, 31.948198, 32.936905>,  <38.005241, 31.834076, 32.723362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323635, 31.948198, 32.936905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291702, 0.591993, -0.751302,
		-0.530393, 0.753754, 0.387994,
		0.795986, 0.285306, 0.533860,
		38.562431, 32.033791, 33.097061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858772, 32.470421, 32.708885>,  <38.005241, 31.834076, 32.723362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858772, 32.470421, 32.708885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245071, 32.379501, 32.758949>,  <38.476852, 32.324947, 32.788986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245071, 32.379501, 32.758949>,  <37.858772, 32.470421, 32.708885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245071, 32.379501, 32.758949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222214, 0.475435, -0.851225,
		0.133981, 0.849880, 0.509660,
		0.965749, -0.227301, 0.125156,
		38.534798, 32.311310, 32.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175125, 33.174740, 32.892723>,  <37.858772, 32.470421, 32.708885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175125, 33.174740, 32.892723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418533, 32.907921, 32.720791>,  <38.564579, 32.747829, 32.617634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418533, 32.907921, 32.720791>,  <38.175125, 33.174740, 32.892723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418533, 32.907921, 32.720791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235273, 0.668960, -0.705081,
		0.757861, 0.327928, 0.564013,
		0.608518, -0.667050, -0.429826,
		38.601089, 32.707806, 32.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679371, 33.571518, 32.537029>,  <38.175125, 33.174740, 32.892723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679371, 33.571518, 32.537029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727428, 33.204140, 32.386280>,  <38.756264, 32.983715, 32.295830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727428, 33.204140, 32.386280>,  <38.679371, 33.571518, 32.537029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727428, 33.204140, 32.386280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151359, 0.392127, -0.907373,
		0.981150, 0.051972, 0.186126,
		0.120143, -0.918442, -0.376870,
		38.763470, 32.928608, 32.273220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402206, 33.585346, 32.197750>,  <38.679371, 33.571518, 32.537029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402206, 33.585346, 32.197750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202110, 33.279045, 32.036072>,  <39.082050, 33.095264, 31.939064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202110, 33.279045, 32.036072>,  <39.402206, 33.585346, 32.197750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202110, 33.279045, 32.036072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171011, 0.370235, -0.913061,
		0.848831, -0.525874, -0.054254,
		-0.500242, -0.765756, -0.404197,
		39.052036, 33.049316, 31.914812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831360, 33.353596, 31.644232>,  <39.402206, 33.585346, 32.197750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831360, 33.353596, 31.644232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486477, 33.181366, 31.537497>,  <39.279549, 33.078030, 31.473455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486477, 33.181366, 31.537497>,  <39.831360, 33.353596, 31.644232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486477, 33.181366, 31.537497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076078, 0.410728, -0.908578,
		0.500811, -0.803683, -0.321375,
		-0.862207, -0.430576, -0.266840,
		39.227814, 33.052193, 31.457445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880535, 32.958382, 30.969034>,  <39.831360, 33.353596, 31.644232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880535, 32.958382, 30.969034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.493019, 33.043484, 31.019915>,  <39.260509, 33.094543, 31.050442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.493019, 33.043484, 31.019915>,  <39.880535, 32.958382, 30.969034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493019, 33.043484, 31.019915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040712, 0.369611, -0.928294,
		-0.244515, -0.904501, -0.349414,
		-0.968790, 0.212756, 0.127199,
		39.202381, 33.107311, 31.058075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599983, 32.488838, 30.574547>,  <39.880535, 32.958382, 30.969034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599983, 32.488838, 30.574547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358788, 32.806538, 30.604420>,  <39.214069, 32.997158, 30.622343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358788, 32.806538, 30.604420>,  <39.599983, 32.488838, 30.574547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358788, 32.806538, 30.604420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011102, 0.101959, -0.994727,
		-0.797672, -0.598981, -0.070298,
		-0.602989, 0.794246, 0.074680,
		39.177891, 33.044811, 30.626823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115982, 32.298603, 30.190611>,  <39.599983, 32.488838, 30.574547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115982, 32.298603, 30.190611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.029369, 32.689026, 30.198912>,  <38.977402, 32.923279, 30.203892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.029369, 32.689026, 30.198912>,  <39.115982, 32.298603, 30.190611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029369, 32.689026, 30.198912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002391, 0.021786, -0.999760,
		-0.976272, -0.216432, -0.007051,
		-0.216534, 0.976054, 0.020751,
		38.964409, 32.981842, 30.205137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584846, 32.408623, 29.685913>,  <39.115982, 32.298603, 30.190611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584846, 32.408623, 29.685913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700459, 32.786549, 29.747599>,  <38.769825, 33.013306, 29.784611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700459, 32.786549, 29.747599>,  <38.584846, 32.408623, 29.685913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700459, 32.786549, 29.747599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143686, 0.202078, -0.968772,
		-0.946476, 0.257845, 0.194164,
		0.289029, 0.944818, 0.154214,
		38.787167, 33.069992, 29.793863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095333, 32.833786, 29.292883>,  <38.584846, 32.408623, 29.685913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095333, 32.833786, 29.292883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432095, 33.044670, 29.338915>,  <38.634151, 33.171200, 29.366533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432095, 33.044670, 29.338915>,  <38.095333, 32.833786, 29.292883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432095, 33.044670, 29.338915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009006, 0.199499, -0.979857,
		-0.539552, 0.825982, 0.163210,
		0.841904, 0.527213, 0.115079,
		38.684666, 33.202835, 29.373438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027328, 33.337883, 28.769907>,  <38.095333, 32.833786, 29.292883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027328, 33.337883, 28.769907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.408554, 33.387096, 28.880566>,  <38.637291, 33.416622, 28.946960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.408554, 33.387096, 28.880566>,  <38.027328, 33.337883, 28.769907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408554, 33.387096, 28.880566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265583, 0.099039, -0.958987,
		-0.145384, 0.987449, 0.061715,
		0.953063, 0.123031, 0.276648,
		38.694473, 33.424007, 28.963560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642731, 33.932777, 28.957245>,  <38.027328, 33.337883, 28.769907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642731, 33.932777, 28.957245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277622, 33.841286, 28.821875>,  <37.058556, 33.786388, 28.740652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277622, 33.841286, 28.821875>,  <37.642731, 33.932777, 28.957245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277622, 33.841286, 28.821875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191662, -0.491822, 0.849339,
		-0.360716, 0.840115, 0.405081,
		-0.912770, -0.228732, -0.338426,
		37.003792, 33.772667, 28.720346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211960, 34.167034, 29.444511>,  <37.642731, 33.932777, 28.957245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211960, 34.167034, 29.444511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003559, 33.885056, 29.252010>,  <36.878517, 33.715870, 29.136509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003559, 33.885056, 29.252010>,  <37.211960, 34.167034, 29.444511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003559, 33.885056, 29.252010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175478, -0.463318, 0.868645,
		-0.835323, 0.537016, 0.117688,
		-0.521003, -0.704947, -0.481255,
		36.847260, 33.673573, 29.107634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519714, 34.147762, 29.744221>,  <37.211960, 34.167034, 29.444511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519714, 34.147762, 29.744221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553066, 33.790318, 29.567810>,  <36.573078, 33.575851, 29.461964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553066, 33.790318, 29.567810>,  <36.519714, 34.147762, 29.744221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553066, 33.790318, 29.567810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334165, -0.442013, 0.832441,
		-0.938819, 0.077967, -0.335468,
		0.083378, -0.893614, -0.441024,
		36.578079, 33.522232, 29.435503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985901, 33.859787, 30.065945>,  <36.519714, 34.147762, 29.744221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985901, 33.859787, 30.065945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191391, 33.553978, 29.910204>,  <36.314686, 33.370495, 29.816759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191391, 33.553978, 29.910204>,  <35.985901, 33.859787, 30.065945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191391, 33.553978, 29.910204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120900, -0.513796, 0.849350,
		-0.849392, -0.389262, -0.356382,
		0.513728, -0.764518, -0.389353,
		36.345509, 33.324623, 29.793398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472881, 33.221176, 30.075205>,  <35.985901, 33.859787, 30.065945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472881, 33.221176, 30.075205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854702, 33.102985, 30.059582>,  <36.083794, 33.032070, 30.050209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854702, 33.102985, 30.059582>,  <35.472881, 33.221176, 30.075205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854702, 33.102985, 30.059582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139841, -0.559735, 0.816787,
		-0.263199, -0.774205, -0.575615,
		0.954553, -0.295472, -0.039056,
		36.141068, 33.014343, 30.047865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501015, 32.454811, 30.009262>,  <35.472881, 33.221176, 30.075205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501015, 32.454811, 30.009262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846298, 32.580132, 30.167608>,  <36.053471, 32.655323, 30.262615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846298, 32.580132, 30.167608>,  <35.501015, 32.454811, 30.009262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846298, 32.580132, 30.167608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176049, -0.548102, 0.817674,
		0.473153, -0.775517, -0.417972,
		0.863211, 0.313301, 0.395865,
		36.105263, 32.674122, 30.286367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893826, 31.825968, 30.256151>,  <35.501015, 32.454811, 30.009262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893826, 31.825968, 30.256151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034668, 32.139816, 30.460264>,  <36.119175, 32.328125, 30.582731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034668, 32.139816, 30.460264>,  <35.893826, 31.825968, 30.256151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034668, 32.139816, 30.460264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191311, -0.473353, 0.859847,
		0.916199, -0.400380, -0.016564,
		0.352106, 0.784622, 0.510283,
		36.140301, 32.375202, 30.613350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214397, 31.463963, 30.882811>,  <35.893826, 31.825968, 30.256151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214397, 31.463963, 30.882811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169521, 31.852566, 30.966322>,  <36.142597, 32.085728, 31.016430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169521, 31.852566, 30.966322>,  <36.214397, 31.463963, 30.882811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169521, 31.852566, 30.966322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242751, -0.230536, 0.942298,
		0.963580, 0.055034, 0.261698,
		-0.112189, 0.971506, 0.208780,
		36.135864, 32.144016, 31.028955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243748, 31.447107, 31.497532>,  <36.214397, 31.463963, 30.882811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243748, 31.447107, 31.497532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064781, 31.804502, 31.482033>,  <35.957401, 32.018940, 31.472734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064781, 31.804502, 31.482033>,  <36.243748, 31.447107, 31.497532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064781, 31.804502, 31.482033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377057, -0.149171, 0.914098,
		0.810955, 0.423590, 0.403637,
		-0.447414, 0.893487, -0.038746,
		35.930557, 32.072548, 31.470409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368217, 31.844790, 32.083904>,  <36.243748, 31.447107, 31.497532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368217, 31.844790, 32.083904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034256, 31.987648, 31.916393>,  <35.833878, 32.073364, 31.815886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034256, 31.987648, 31.916393>,  <36.368217, 31.844790, 32.083904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034256, 31.987648, 31.916393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499980, -0.174030, 0.848371,
		0.230112, 0.917693, 0.323865,
		-0.834906, 0.357147, -0.418781,
		35.783783, 32.094791, 31.790758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126659, 32.297935, 32.549904>,  <36.368217, 31.844790, 32.083904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126659, 32.297935, 32.549904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816956, 32.249226, 32.301487>,  <35.631134, 32.220001, 32.152439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816956, 32.249226, 32.301487>,  <36.126659, 32.297935, 32.549904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816956, 32.249226, 32.301487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621434, -0.039373, 0.782477,
		-0.119735, 0.991777, -0.045188,
		-0.774263, -0.121771, -0.621038,
		35.584675, 32.212696, 32.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636955, 32.704426, 32.844788>,  <36.126659, 32.297935, 32.549904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636955, 32.704426, 32.844788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428078, 32.442520, 32.626213>,  <35.302750, 32.285378, 32.495068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428078, 32.442520, 32.626213>,  <35.636955, 32.704426, 32.844788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428078, 32.442520, 32.626213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668461, -0.083640, 0.739030,
		-0.529595, 0.751190, -0.394008,
		-0.522197, -0.654765, -0.546437,
		35.271420, 32.246090, 32.462280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938877, 32.966869, 32.862488>,  <35.636955, 32.704426, 32.844788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938877, 32.966869, 32.862488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922470, 32.578270, 32.769093>,  <34.912628, 32.345112, 32.713055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922470, 32.578270, 32.769093>,  <34.938877, 32.966869, 32.862488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922470, 32.578270, 32.769093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689658, -0.141560, 0.710164,
		-0.722973, 0.190152, -0.664193,
		-0.041016, -0.971495, -0.233484,
		34.910164, 32.286819, 32.699047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247746, 32.727097, 32.880264>,  <34.938877, 32.966869, 32.862488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247746, 32.727097, 32.880264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458263, 32.398533, 32.968178>,  <34.584576, 32.201397, 33.020924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458263, 32.398533, 32.968178>,  <34.247746, 32.727097, 32.880264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458263, 32.398533, 32.968178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643409, -0.215726, 0.734498,
		-0.555909, -0.527973, -0.642036,
		0.526299, -0.821405, 0.219779,
		34.616154, 32.152111, 33.034111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395325, 33.372967, 33.361584>,  <34.247746, 32.727097, 32.880264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395325, 33.372967, 33.361584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432125, 33.692257, 33.599701>,  <34.454205, 33.883831, 33.742573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432125, 33.692257, 33.599701>,  <34.395325, 33.372967, 33.361584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432125, 33.692257, 33.599701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001161, 0.597914, -0.801559,
		-0.995759, 0.073051, 0.055933,
		0.091997, 0.798225, 0.595293,
		34.459724, 33.931725, 33.778290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839657, 33.831696, 33.085060>,  <34.395325, 33.372967, 33.361584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839657, 33.831696, 33.085060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115742, 34.042843, 33.283035>,  <34.281391, 34.169529, 33.401821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115742, 34.042843, 33.283035>,  <33.839657, 33.831696, 33.085060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115742, 34.042843, 33.283035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043762, 0.713191, -0.699602,
		-0.722283, 0.461214, 0.515353,
		0.690212, 0.527864, 0.494942,
		34.322803, 34.201202, 33.431519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615631, 34.519859, 33.125359>,  <33.839657, 33.831696, 33.085060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615631, 34.519859, 33.125359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011448, 34.544838, 33.177364>,  <34.248940, 34.559826, 33.208569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011448, 34.544838, 33.177364>,  <33.615631, 34.519859, 33.125359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011448, 34.544838, 33.177364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040330, 0.745664, -0.665100,
		-0.138479, 0.663389, 0.735349,
		0.989544, 0.062446, 0.130013,
		34.308311, 34.563572, 33.216370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871109, 35.192146, 33.408051>,  <33.615631, 34.519859, 33.125359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871109, 35.192146, 33.408051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191757, 35.060131, 33.208660>,  <34.384148, 34.980923, 33.089027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191757, 35.060131, 33.208660>,  <33.871109, 35.192146, 33.408051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191757, 35.060131, 33.208660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019607, 0.847871, -0.529840,
		0.597505, 0.414960, 0.686146,
		0.801625, -0.330035, -0.498471,
		34.432243, 34.961121, 33.059120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212929, 35.760040, 33.271324>,  <33.871109, 35.192146, 33.408051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212929, 35.760040, 33.271324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380978, 35.502529, 33.015499>,  <34.481808, 35.348022, 32.862003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380978, 35.502529, 33.015499>,  <34.212929, 35.760040, 33.271324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380978, 35.502529, 33.015499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220642, 0.756096, -0.616146,
		0.880237, 0.117739, 0.459695,
		0.420118, -0.643783, -0.639566,
		34.507011, 35.309395, 32.823627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744904, 36.127911, 33.031525>,  <34.212929, 35.760040, 33.271324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744904, 36.127911, 33.031525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685013, 35.826279, 32.775726>,  <34.649078, 35.645302, 32.622250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685013, 35.826279, 32.775726>,  <34.744904, 36.127911, 33.031525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685013, 35.826279, 32.775726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289524, 0.584993, -0.757601,
		0.945388, -0.298579, 0.130735,
		-0.149725, -0.754077, -0.639491,
		34.640095, 35.600056, 32.583878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404907, 36.097740, 32.589207>,  <34.744904, 36.127911, 33.031525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404907, 36.097740, 32.589207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105778, 35.924492, 32.387947>,  <34.926300, 35.820541, 32.267193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105778, 35.924492, 32.387947>,  <35.404907, 36.097740, 32.589207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105778, 35.924492, 32.387947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244145, 0.525348, -0.815109,
		0.617372, -0.732402, -0.287124,
		-0.747827, -0.433126, -0.503147,
		34.881428, 35.794556, 32.237003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616360, 36.089355, 31.868938>,  <35.404907, 36.097740, 32.589207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616360, 36.089355, 31.868938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230034, 36.008656, 31.803825>,  <34.998238, 35.960236, 31.764757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230034, 36.008656, 31.803825>,  <35.616360, 36.089355, 31.868938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230034, 36.008656, 31.803825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019031, 0.571063, -0.820685,
		0.258529, -0.795729, -0.547702,
		-0.965816, -0.201748, -0.162780,
		34.940289, 35.948132, 31.754992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597065, 35.937622, 31.163774>,  <35.616360, 36.089355, 31.868938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597065, 35.937622, 31.163774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239792, 36.066616, 31.289137>,  <35.025429, 36.144012, 31.364355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239792, 36.066616, 31.289137>,  <35.597065, 35.937622, 31.163774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239792, 36.066616, 31.289137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033404, 0.647437, -0.761386,
		-0.448445, -0.690529, -0.567510,
		-0.893186, 0.322483, 0.313406,
		34.971836, 36.163361, 31.383158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194115, 35.860645, 30.524343>,  <35.597065, 35.937622, 31.163774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194115, 35.860645, 30.524343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012241, 36.105789, 30.782850>,  <34.903118, 36.252876, 30.937954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012241, 36.105789, 30.782850>,  <35.194115, 35.860645, 30.524343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012241, 36.105789, 30.782850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110966, 0.680975, -0.723850,
		-0.883713, -0.400838, -0.241622,
		-0.454685, 0.612864, 0.646266,
		34.875835, 36.289650, 30.976730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596195, 36.134140, 30.216776>,  <35.194115, 35.860645, 30.524343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596195, 36.134140, 30.216776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682541, 36.418636, 30.484369>,  <34.734348, 36.589333, 30.644926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682541, 36.418636, 30.484369>,  <34.596195, 36.134140, 30.216776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682541, 36.418636, 30.484369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034489, 0.679155, -0.733184,
		-0.975815, 0.181339, 0.122074,
		0.215862, 0.711241, 0.668984,
		34.747299, 36.632008, 30.685064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183224, 36.668747, 30.172100>,  <34.596195, 36.134140, 30.216776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183224, 36.668747, 30.172100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489540, 36.850464, 30.354166>,  <34.673332, 36.959496, 30.463406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489540, 36.850464, 30.354166>,  <34.183224, 36.668747, 30.172100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489540, 36.850464, 30.354166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030307, 0.732490, -0.680103,
		-0.642370, 0.507025, 0.574706,
		0.765795, 0.454295, 0.455163,
		34.719280, 36.986752, 30.490715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042225, 37.444427, 30.018969>,  <34.183224, 36.668747, 30.172100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042225, 37.444427, 30.018969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417267, 37.384136, 30.144300>,  <34.642292, 37.347961, 30.219500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417267, 37.384136, 30.144300>,  <34.042225, 37.444427, 30.018969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417267, 37.384136, 30.144300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305015, 0.789166, -0.533088,
		-0.166917, 0.595397, 0.785902,
		0.937606, -0.150730, 0.313330,
		34.698547, 37.338917, 30.238298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356838, 38.160381, 30.327400>,  <34.042225, 37.444427, 30.018969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356838, 38.160381, 30.327400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657425, 37.912514, 30.236792>,  <34.837776, 37.763794, 30.182426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657425, 37.912514, 30.236792>,  <34.356838, 38.160381, 30.327400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657425, 37.912514, 30.236792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473600, 0.745664, -0.468708,
		0.459352, 0.244938, 0.853816,
		0.751464, -0.619669, -0.226520,
		34.882866, 37.726612, 30.168835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945694, 38.569477, 30.493488>,  <34.356838, 38.160381, 30.327400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945694, 38.569477, 30.493488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.101814, 38.277477, 30.269073>,  <35.195488, 38.102276, 30.134424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.101814, 38.277477, 30.269073>,  <34.945694, 38.569477, 30.493488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101814, 38.277477, 30.269073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403708, 0.683357, -0.608312,
		0.827458, 0.010930, 0.561422,
		0.390300, -0.730003, -0.561036,
		35.218903, 38.058475, 30.100763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667389, 38.760822, 30.445457>,  <34.945694, 38.569477, 30.493488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667389, 38.760822, 30.445457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560814, 38.533806, 30.133841>,  <35.496868, 38.397594, 29.946871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560814, 38.533806, 30.133841>,  <35.667389, 38.760822, 30.445457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560814, 38.533806, 30.133841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689625, 0.452418, -0.565452,
		0.673371, -0.687904, 0.270851,
		-0.266438, -0.567544, -0.779041,
		35.480881, 38.363541, 29.900129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309059, 38.432281, 30.137329>,  <35.667389, 38.760822, 30.445457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309059, 38.432281, 30.137329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020977, 38.424610, 29.859930>,  <35.848129, 38.420010, 29.693491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020977, 38.424610, 29.859930>,  <36.309059, 38.432281, 30.137329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020977, 38.424610, 29.859930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619874, 0.431118, -0.655663,
		0.311553, -0.902091, -0.298606,
		-0.720202, -0.019176, -0.693499,
		35.804916, 38.418858, 29.651880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699810, 38.525826, 29.506243>,  <36.309059, 38.432281, 30.137329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699810, 38.525826, 29.506243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319023, 38.581272, 29.397030>,  <36.090549, 38.614540, 29.331503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319023, 38.581272, 29.397030>,  <36.699810, 38.525826, 29.506243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319023, 38.581272, 29.397030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305997, 0.398075, -0.864813,
		-0.011190, -0.906820, -0.421370,
		-0.951967, 0.138615, -0.273030,
		36.033432, 38.622856, 29.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674145, 38.318977, 28.817766>,  <36.699810, 38.525826, 29.506243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674145, 38.318977, 28.817766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356152, 38.557930, 28.859968>,  <36.165356, 38.701302, 28.885290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356152, 38.557930, 28.859968>,  <36.674145, 38.318977, 28.817766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356152, 38.557930, 28.859968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311458, 0.551193, -0.774067,
		-0.520570, -0.582511, -0.624250,
		-0.794985, 0.597384, 0.105507,
		36.117657, 38.737144, 28.891621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435253, 38.361454, 28.137609>,  <36.674145, 38.318977, 28.817766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435253, 38.361454, 28.137609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264793, 38.676270, 28.316031>,  <36.162518, 38.865158, 28.423082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264793, 38.676270, 28.316031>,  <36.435253, 38.361454, 28.137609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264793, 38.676270, 28.316031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231685, 0.571569, -0.787166,
		-0.874484, -0.232103, -0.425917,
		-0.426145, 0.787043, 0.446053,
		36.136951, 38.912384, 28.449846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887226, 38.678375, 27.638380>,  <36.435253, 38.361454, 28.137609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887226, 38.678375, 27.638380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000740, 38.957069, 27.901905>,  <36.068848, 39.124287, 28.060020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000740, 38.957069, 27.901905>,  <35.887226, 38.678375, 27.638380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000740, 38.957069, 27.901905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213944, 0.623732, -0.751788,
		-0.934717, 0.354293, 0.027942,
		0.283782, 0.696731, 0.658812,
		36.085876, 39.166088, 28.099548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563606, 39.280956, 27.372440>,  <35.887226, 38.678375, 27.638380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563606, 39.280956, 27.372440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860569, 39.421707, 27.600479>,  <36.038746, 39.506157, 27.737303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860569, 39.421707, 27.600479>,  <35.563606, 39.280956, 27.372440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860569, 39.421707, 27.600479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196014, 0.699632, -0.687091,
		-0.640629, 0.621850, 0.450440,
		0.742410, 0.351877, 0.570096,
		36.083294, 39.527271, 27.771507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604649, 39.891441, 27.193535>,  <35.563606, 39.280956, 27.372440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604649, 39.891441, 27.193535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949627, 39.887291, 27.395950>,  <36.156616, 39.884800, 27.517399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949627, 39.887291, 27.395950>,  <35.604649, 39.891441, 27.193535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949627, 39.887291, 27.395950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321199, 0.783895, -0.531356,
		-0.391169, 0.620806, 0.679402,
		0.862449, -0.010373, 0.506038,
		36.208363, 39.884178, 27.547762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673092, 40.473751, 27.554136>,  <35.604649, 39.891441, 27.193535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673092, 40.473751, 27.554136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054115, 40.353706, 27.533848>,  <36.282730, 40.281681, 27.521675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054115, 40.353706, 27.533848>,  <35.673092, 40.473751, 27.554136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054115, 40.353706, 27.533848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245784, 0.856749, -0.453399,
		0.179523, 0.419422, 0.889863,
		0.952555, -0.300110, -0.050719,
		36.339882, 40.263672, 27.518633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021980, 41.022079, 27.512564>,  <35.673092, 40.473751, 27.554136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021980, 41.022079, 27.512564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319946, 40.776390, 27.408384>,  <36.498726, 40.628979, 27.345877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319946, 40.776390, 27.408384>,  <36.021980, 41.022079, 27.512564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319946, 40.776390, 27.408384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381289, 0.712296, -0.589282,
		0.547463, 0.339661, 0.764797,
		0.744918, -0.614219, -0.260446,
		36.543423, 40.592125, 27.330250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695072, 41.460587, 27.526011>,  <36.021980, 41.022079, 27.512564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695072, 41.460587, 27.526011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745258, 41.141655, 27.289864>,  <36.775368, 40.950298, 27.148176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745258, 41.141655, 27.289864>,  <36.695072, 41.460587, 27.526011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745258, 41.141655, 27.289864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501068, 0.564521, -0.655933,
		0.856265, -0.213518, 0.470340,
		0.125463, -0.797325, -0.590366,
		36.782898, 40.902458, 27.112753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424320, 41.409832, 27.309069>,  <36.695072, 41.460587, 27.526011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424320, 41.409832, 27.309069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181377, 41.229019, 27.047754>,  <37.035610, 41.120533, 26.890965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181377, 41.229019, 27.047754>,  <37.424320, 41.409832, 27.309069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181377, 41.229019, 27.047754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396753, 0.539845, -0.742397,
		0.688261, -0.710095, -0.148534,
		-0.607358, -0.452031, -0.653287,
		36.999168, 41.093410, 26.851768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894554, 41.241261, 26.791698>,  <37.424320, 41.409832, 27.309069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894554, 41.241261, 26.791698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.533577, 41.226738, 26.619991>,  <37.316990, 41.218025, 26.516968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.533577, 41.226738, 26.619991>,  <37.894554, 41.241261, 26.791698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533577, 41.226738, 26.619991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347512, 0.527553, -0.775192,
		0.254605, -0.848746, -0.463473,
		-0.902448, -0.036305, -0.429267,
		37.262844, 41.215847, 26.491211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628536, 40.894291, 27.010935>,  <37.894554, 41.241261, 26.791698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628536, 40.894291, 27.010935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.959064, 41.063496, 27.159666>,  <39.157383, 41.165020, 27.248905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.959064, 41.063496, 27.159666>,  <38.628536, 40.894291, 27.010935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959064, 41.063496, 27.159666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034706, -0.620701, 0.783278,
		0.562132, -0.660143, -0.498216,
		0.826319, 0.423015, 0.371827,
		39.206959, 41.190399, 27.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104057, 40.293011, 27.317600>,  <38.628536, 40.894291, 27.010935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104057, 40.293011, 27.317600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231007, 40.634399, 27.482943>,  <39.307175, 40.839233, 27.582148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231007, 40.634399, 27.482943>,  <39.104057, 40.293011, 27.317600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231007, 40.634399, 27.482943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003720, -0.434766, 0.900536,
		0.948295, -0.287340, -0.134806,
		0.317369, 0.853472, 0.413355,
		39.326218, 40.890442, 27.606949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655682, 40.144260, 27.695889>,  <39.104057, 40.293011, 27.317600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655682, 40.144260, 27.695889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568188, 40.505478, 27.843761>,  <39.515690, 40.722210, 27.932486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568188, 40.505478, 27.843761>,  <39.655682, 40.144260, 27.695889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568188, 40.505478, 27.843761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022790, -0.374024, 0.927139,
		0.975518, 0.211223, 0.061232,
		-0.218736, 0.903045, 0.369681,
		39.502567, 40.776390, 27.954666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100037, 40.183067, 28.315060>,  <39.655682, 40.144260, 27.695889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100037, 40.183067, 28.315060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809650, 40.457542, 28.333471>,  <39.635418, 40.622227, 28.344519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809650, 40.457542, 28.333471>,  <40.100037, 40.183067, 28.315060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809650, 40.457542, 28.333471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105719, -0.177480, 0.978429,
		0.679556, 0.705441, 0.201387,
		-0.725966, 0.686188, 0.046029,
		39.591862, 40.663399, 28.347281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297810, 40.582584, 28.894314>,  <40.100037, 40.183067, 28.315060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297810, 40.582584, 28.894314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902153, 40.585449, 28.835606>,  <39.664757, 40.587166, 28.800381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902153, 40.585449, 28.835606>,  <40.297810, 40.582584, 28.894314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902153, 40.585449, 28.835606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141818, -0.308015, 0.940752,
		-0.038473, 0.951355, 0.305686,
		-0.989145, 0.007158, -0.146769,
		39.605408, 40.587597, 28.791574>
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
