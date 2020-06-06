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
	<24.067699, 35.251953, 34.818733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302387, 34.986248, 34.633472>,  <24.443199, 34.826824, 34.522316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302387, 34.986248, 34.633472>,  <24.067699, 35.251953, 34.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302387, 34.986248, 34.633472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382076, 0.277198, -0.881578,
		0.713987, 0.694198, -0.091162,
		0.586720, -0.664266, -0.463153,
		24.478403, 34.786968, 34.494526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305368, 35.575348, 34.188335>,  <24.067699, 35.251953, 34.818733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305368, 35.575348, 34.188335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375837, 35.184059, 34.144444>,  <24.418118, 34.949284, 34.118107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375837, 35.184059, 34.144444>,  <24.305368, 35.575348, 34.188335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375837, 35.184059, 34.144444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169918, 0.079581, -0.982240,
		0.969583, 0.191687, -0.152198,
		0.176170, -0.978225, -0.109732,
		24.428688, 34.890591, 34.111523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801874, 35.445160, 33.674175>,  <24.305368, 35.575348, 34.188335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801874, 35.445160, 33.674175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538885, 35.143833, 33.680439>,  <24.381092, 34.963039, 33.684196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538885, 35.143833, 33.680439>,  <24.801874, 35.445160, 33.674175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538885, 35.143833, 33.680439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211344, 0.164424, -0.963482,
		0.723231, -0.636774, -0.267313,
		-0.657474, -0.753315, 0.015662,
		24.341642, 34.917839, 33.685139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268326, 35.833889, 33.302021>,  <24.801874, 35.445160, 33.674175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268326, 35.833889, 33.302021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298449, 36.214931, 33.184132>,  <25.316523, 36.443558, 33.113400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298449, 36.214931, 33.184132>,  <25.268326, 35.833889, 33.302021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298449, 36.214931, 33.184132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934193, 0.035963, 0.354951,
		0.348729, -0.302058, -0.887214,
		0.075309, 0.952611, -0.294722,
		25.321041, 36.500713, 33.095715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958460, 35.701336, 32.995869>,  <25.268326, 35.833889, 33.302021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958460, 35.701336, 32.995869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889780, 36.078381, 33.110416>,  <25.848572, 36.304607, 33.179146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889780, 36.078381, 33.110416>,  <25.958460, 35.701336, 32.995869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889780, 36.078381, 33.110416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912889, 0.042960, 0.405940,
		0.370341, 0.331120, -0.867875,
		-0.171699, 0.942610, 0.286367,
		25.838270, 36.361164, 33.196327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400452, 36.027676, 32.797226>,  <25.958460, 35.701336, 32.995869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400452, 36.027676, 32.797226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282318, 36.246655, 33.110424>,  <26.211437, 36.378044, 33.298344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282318, 36.246655, 33.110424>,  <26.400452, 36.027676, 32.797226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282318, 36.246655, 33.110424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954679, 0.137400, 0.264026,
		0.036958, 0.825481, -0.563219,
		-0.295334, 0.547451, 0.782991,
		26.193718, 36.410889, 33.345322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028982, 36.501049, 32.798450>,  <26.400452, 36.027676, 32.797226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028982, 36.501049, 32.798450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818253, 36.469883, 33.137009>,  <26.691814, 36.451183, 33.340145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818253, 36.469883, 33.137009>,  <27.028982, 36.501049, 32.798450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818253, 36.469883, 33.137009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816875, -0.321593, 0.478845,
		0.234885, 0.943667, 0.233072,
		-0.526824, -0.077917, 0.846395,
		26.660206, 36.446507, 33.390926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389620, 36.850029, 33.325130>,  <27.028982, 36.501049, 32.798450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389620, 36.850029, 33.325130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185619, 36.543167, 33.480759>,  <27.063219, 36.359051, 33.574135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185619, 36.543167, 33.480759>,  <27.389620, 36.850029, 33.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185619, 36.543167, 33.480759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852258, -0.389444, 0.349271,
		-0.116421, 0.509719, 0.852427,
		-0.510003, -0.767150, 0.389073,
		27.032618, 36.313023, 33.597481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751554, 36.671677, 33.853851>,  <27.389620, 36.850029, 33.325130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751554, 36.671677, 33.853851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560869, 36.320988, 33.828213>,  <27.446459, 36.110577, 33.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560869, 36.320988, 33.828213>,  <27.751554, 36.671677, 33.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560869, 36.320988, 33.828213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861688, -0.480470, 0.163222,
		-0.173895, 0.022582, 0.984505,
		-0.476711, -0.876720, -0.064093,
		27.417856, 36.057972, 33.808987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958553, 36.308815, 34.377300>,  <27.751554, 36.671677, 33.853851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958553, 36.308815, 34.377300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827503, 36.030846, 34.121254>,  <27.748873, 35.864063, 33.967628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827503, 36.030846, 34.121254>,  <27.958553, 36.308815, 34.377300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827503, 36.030846, 34.121254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785820, -0.576569, 0.223731,
		-0.524545, -0.429713, 0.734982,
		-0.327628, -0.694921, -0.640113,
		27.729216, 35.822369, 33.929218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945072, 35.690140, 34.825500>,  <27.958553, 36.308815, 34.377300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945072, 35.690140, 34.825500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953127, 35.588081, 34.438824>,  <27.957960, 35.526848, 34.206818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953127, 35.588081, 34.438824>,  <27.945072, 35.690140, 34.825500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953127, 35.588081, 34.438824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809075, -0.563870, 0.165678,
		-0.587361, -0.785463, 0.195076,
		0.020137, -0.255144, -0.966693,
		27.959167, 35.511539, 34.148815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538240, 35.201488, 34.609814>,  <27.945072, 35.690140, 34.825500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538240, 35.201488, 34.609814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213364, 34.969616, 34.583549>,  <28.018438, 34.830490, 34.567791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213364, 34.969616, 34.583549>,  <28.538240, 35.201488, 34.609814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213364, 34.969616, 34.583549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432894, 0.674293, -0.598274,
		0.391083, -0.457490, -0.798597,
		-0.812192, -0.579683, -0.065659,
		27.969706, 34.795712, 34.563850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239861, 34.884781, 34.778286>,  <28.538240, 35.201488, 34.609814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239861, 34.884781, 34.778286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253746, 34.642082, 34.460629>,  <29.262077, 34.496464, 34.270035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253746, 34.642082, 34.460629>,  <29.239861, 34.884781, 34.778286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253746, 34.642082, 34.460629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648871, 0.590675, -0.479656,
		0.760106, 0.531946, -0.373191,
		0.034716, -0.606742, -0.794140,
		29.264160, 34.460060, 34.222385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426218, 35.273994, 34.105484>,  <29.239861, 34.884781, 34.778286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426218, 35.273994, 34.105484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200026, 34.950123, 34.042679>,  <29.064310, 34.755802, 34.004993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200026, 34.950123, 34.042679>,  <29.426218, 35.273994, 34.105484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200026, 34.950123, 34.042679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702648, 0.572634, -0.422347,
		0.431877, -0.128503, -0.892732,
		-0.565481, -0.809677, -0.157015,
		29.030380, 34.707218, 33.995575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973726, 35.552753, 33.585609>,  <29.426218, 35.273994, 34.105484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973726, 35.552753, 33.585609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833654, 35.194996, 33.696922>,  <28.749611, 34.980343, 33.763710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833654, 35.194996, 33.696922>,  <28.973726, 35.552753, 33.585609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833654, 35.194996, 33.696922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904071, 0.245013, -0.350178,
		0.245013, -0.374211, -0.894391,
		0.350178, 0.894391, -0.278282,
		28.728601, 34.926678, 33.780407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658613, 35.362713, 33.121719>,  <28.973726, 35.552753, 33.585609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658613, 35.362713, 33.121719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448130, 35.199020, 33.419884>,  <28.321838, 35.100803, 33.598782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448130, 35.199020, 33.419884>,  <28.658613, 35.362713, 33.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448130, 35.199020, 33.419884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784233, 0.572444, -0.239346,
		-0.328756, -0.710520, -0.622158,
		-0.526211, -0.409231, 0.745408,
		28.290266, 35.076252, 33.643505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046236, 35.080994, 32.845654>,  <28.658613, 35.362713, 33.121719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046236, 35.080994, 32.845654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992437, 35.170574, 33.231762>,  <27.960157, 35.224323, 33.463428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992437, 35.170574, 33.231762>,  <28.046236, 35.080994, 32.845654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992437, 35.170574, 33.231762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883960, 0.413098, -0.219009,
		-0.447800, -0.882722, 0.142401,
		-0.134498, 0.223949, 0.965276,
		27.952087, 35.237759, 33.521343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352451, 34.982048, 33.069920>,  <28.046236, 35.080994, 32.845654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352451, 34.982048, 33.069920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479946, 35.244602, 33.343433>,  <27.556442, 35.402134, 33.507542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479946, 35.244602, 33.343433>,  <27.352451, 34.982048, 33.069920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479946, 35.244602, 33.343433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914064, 0.403738, 0.038515,
		-0.250789, -0.637299, 0.728666,
		0.318736, 0.656388, 0.683785,
		27.575567, 35.441517, 33.548569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773653, 34.989830, 33.548016>,  <27.352451, 34.982048, 33.069920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773653, 34.989830, 33.548016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980856, 35.319008, 33.641335>,  <27.105179, 35.516514, 33.697327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980856, 35.319008, 33.641335>,  <26.773653, 34.989830, 33.548016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980856, 35.319008, 33.641335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854443, 0.485097, 0.186032,
		0.039923, -0.295706, 0.954445,
		0.518009, 0.822945, 0.233297,
		27.136259, 35.565891, 33.711323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409224, 35.237301, 34.142620>,  <26.773653, 34.989830, 33.548016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409224, 35.237301, 34.142620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589190, 35.537331, 33.948727>,  <26.697168, 35.717350, 33.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589190, 35.537331, 33.948727>,  <26.409224, 35.237301, 34.142620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589190, 35.537331, 33.948727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889930, 0.422030, -0.172960,
		0.074839, 0.509195, 0.857391,
		0.449915, 0.750074, -0.484732,
		26.724165, 35.762352, 33.803307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415648, 35.803368, 34.538429>,  <26.409224, 35.237301, 34.142620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415648, 35.803368, 34.538429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417837, 35.917141, 34.154957>,  <26.419151, 35.985405, 33.924873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417837, 35.917141, 34.154957>,  <26.415648, 35.803368, 34.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417837, 35.917141, 34.154957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888358, 0.441544, 0.125930,
		0.459118, 0.850964, 0.255091,
		0.005472, 0.284429, -0.958682,
		26.419479, 36.002468, 33.867352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444031, 36.463108, 34.551792>,  <26.415648, 35.803368, 34.538429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444031, 36.463108, 34.551792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273088, 36.330158, 34.215485>,  <26.170523, 36.250389, 34.013699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273088, 36.330158, 34.215485>,  <26.444031, 36.463108, 34.551792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273088, 36.330158, 34.215485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850312, 0.463704, 0.248894,
		0.307141, 0.821281, -0.480793,
		-0.427357, -0.332378, -0.840768,
		26.144880, 36.230446, 33.963253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187366, 37.173763, 34.732418>,  <26.444031, 36.463108, 34.551792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187366, 37.173763, 34.732418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050856, 37.135998, 34.358334>,  <25.968948, 37.113338, 34.133884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050856, 37.135998, 34.358334>,  <26.187366, 37.173763, 34.732418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050856, 37.135998, 34.358334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024562, 0.993707, -0.109286,
		0.939641, -0.060267, -0.336811,
		-0.341278, -0.094417, -0.935208,
		25.948473, 37.107674, 34.077770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581352, 37.644669, 34.230732>,  <26.187366, 37.173763, 34.732418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581352, 37.644669, 34.230732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205772, 37.574562, 34.112305>,  <25.980425, 37.532497, 34.041248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205772, 37.574562, 34.112305>,  <26.581352, 37.644669, 34.230732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205772, 37.574562, 34.112305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147354, 0.982460, -0.114281,
		0.310901, -0.063678, -0.948307,
		-0.938950, -0.175266, -0.296064,
		25.924088, 37.521980, 34.023487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505133, 37.873043, 33.489452>,  <26.581352, 37.644669, 34.230732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505133, 37.873043, 33.489452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162489, 37.899559, 33.694126>,  <25.956903, 37.915470, 33.816933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162489, 37.899559, 33.694126>,  <26.505133, 37.873043, 33.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162489, 37.899559, 33.694126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153941, 0.979381, 0.130825,
		-0.492465, 0.190836, -0.849153,
		-0.856610, 0.066293, 0.511688,
		25.905506, 37.919445, 33.847633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951006, 38.325275, 33.169529>,  <26.505133, 37.873043, 33.489452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951006, 38.325275, 33.169529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953493, 38.309685, 33.569218>,  <25.954987, 38.300331, 33.809032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953493, 38.309685, 33.569218>,  <25.951006, 38.325275, 33.169529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953493, 38.309685, 33.569218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322668, 0.945869, 0.034886,
		-0.946492, 0.322199, 0.018458,
		0.006219, -0.038975, 0.999221,
		25.955359, 38.297993, 33.868984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610056, 38.928059, 33.585567>,  <25.951006, 38.325275, 33.169529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610056, 38.928059, 33.585567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931278, 38.770420, 33.764359>,  <26.124012, 38.675838, 33.871635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931278, 38.770420, 33.764359>,  <25.610056, 38.928059, 33.585567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931278, 38.770420, 33.764359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409568, 0.909862, 0.066374,
		-0.432849, 0.129767, 0.892078,
		0.803054, -0.394097, 0.446981,
		26.172194, 38.652191, 33.898453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775003, 39.389511, 34.076065>,  <25.610056, 38.928059, 33.585567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775003, 39.389511, 34.076065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104851, 39.188801, 33.971584>,  <26.302759, 39.068375, 33.908897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104851, 39.188801, 33.971584>,  <25.775003, 39.389511, 34.076065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104851, 39.188801, 33.971584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539037, 0.837049, 0.093747,
		0.171597, -0.218102, 0.960722,
		0.824617, -0.501778, -0.261200,
		26.352236, 39.038269, 33.893223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348717, 39.556210, 34.545563>,  <25.775003, 39.389511, 34.076065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348717, 39.556210, 34.545563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534422, 39.425766, 34.216171>,  <26.645845, 39.347500, 34.018536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534422, 39.425766, 34.216171>,  <26.348717, 39.556210, 34.545563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534422, 39.425766, 34.216171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605481, 0.795423, 0.026359,
		0.646414, -0.510835, 0.566741,
		0.464264, -0.326112, -0.823474,
		26.673700, 39.327934, 33.969128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096069, 39.463173, 34.686245>,  <26.348717, 39.556210, 34.545563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096069, 39.463173, 34.686245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035961, 39.532791, 34.296963>,  <26.999895, 39.574562, 34.063393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035961, 39.532791, 34.296963>,  <27.096069, 39.463173, 34.686245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035961, 39.532791, 34.296963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734268, 0.678813, 0.008016,
		0.662019, -0.713388, -0.229800,
		-0.150272, 0.174042, -0.973205,
		26.990879, 39.585003, 34.005001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724276, 39.261131, 34.319916>,  <27.096069, 39.463173, 34.686245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724276, 39.261131, 34.319916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498079, 39.551628, 34.163563>,  <27.362362, 39.725925, 34.069752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498079, 39.551628, 34.163563>,  <27.724276, 39.261131, 34.319916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498079, 39.551628, 34.163563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776082, 0.628964, 0.045837,
		0.279139, -0.277435, -0.919299,
		-0.565489, 0.726246, -0.390881,
		27.328432, 39.769501, 34.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431908, 39.039581, 34.611286>,  <27.724276, 39.261131, 34.319916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431908, 39.039581, 34.611286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592838, 39.397655, 34.687996>,  <28.689396, 39.612499, 34.734020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592838, 39.397655, 34.687996>,  <28.431908, 39.039581, 34.611286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592838, 39.397655, 34.687996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894860, -0.428759, 0.124065,
		0.193287, 0.121698, -0.973566,
		0.402326, 0.895185, 0.191776,
		28.713535, 39.666210, 34.745529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081097, 39.306908, 34.183899>,  <28.431908, 39.039581, 34.611286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081097, 39.306908, 34.183899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093090, 39.488888, 34.539902>,  <29.100286, 39.598076, 34.753506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093090, 39.488888, 34.539902>,  <29.081097, 39.306908, 34.183899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093090, 39.488888, 34.539902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952207, -0.283787, 0.112988,
		0.303978, 0.844088, -0.441716,
		0.029981, 0.454951, 0.890012,
		29.102085, 39.625374, 34.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625093, 39.740784, 34.102852>,  <29.081097, 39.306908, 34.183899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625093, 39.740784, 34.102852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549282, 39.688808, 34.492149>,  <29.503796, 39.657623, 34.725727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549282, 39.688808, 34.492149>,  <29.625093, 39.740784, 34.102852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549282, 39.688808, 34.492149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756832, -0.650803, 0.060493,
		0.625527, 0.748044, 0.221689,
		-0.189528, -0.129941, 0.973239,
		29.492424, 39.649826, 34.784122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190168, 39.910343, 34.447926>,  <29.625093, 39.740784, 34.102852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190168, 39.910343, 34.447926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005531, 39.655338, 34.694668>,  <29.894749, 39.502335, 34.842712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005531, 39.655338, 34.694668>,  <30.190168, 39.910343, 34.447926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005531, 39.655338, 34.694668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831070, -0.553971, 0.049372,
		0.310246, 0.535441, 0.785526,
		-0.461595, -0.637509, 0.616857,
		29.867052, 39.464085, 34.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900928, 39.524509, 34.476692>,  <30.190168, 39.910343, 34.447926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900928, 39.524509, 34.476692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902807, 39.315403, 34.817677>,  <30.903934, 39.189941, 35.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902807, 39.315403, 34.817677>,  <30.900928, 39.524509, 34.476692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902807, 39.315403, 34.817677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943692, 0.279678, 0.176710,
		-0.330793, -0.805294, -0.492013,
		0.004698, -0.522763, 0.852465,
		30.904217, 39.158573, 35.073418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353668, 39.070930, 34.472458>,  <30.900928, 39.524509, 34.476692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353668, 39.070930, 34.472458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459381, 39.209480, 34.832497>,  <30.522810, 39.292610, 35.048519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459381, 39.209480, 34.832497>,  <30.353668, 39.070930, 34.472458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459381, 39.209480, 34.832497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873750, 0.481104, 0.071411,
		-0.408307, -0.805335, 0.429792,
		0.264284, 0.346373, 0.900100,
		30.538666, 39.313393, 35.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913996, 38.826599, 35.078060>,  <30.353668, 39.070930, 34.472458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913996, 38.826599, 35.078060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073620, 39.187096, 35.145611>,  <30.169394, 39.403393, 35.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073620, 39.187096, 35.145611>,  <29.913996, 38.826599, 35.078060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073620, 39.187096, 35.145611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913941, 0.376106, 0.152501,
		0.073924, -0.215201, 0.973768,
		0.399058, 0.901240, 0.168878,
		30.193336, 39.457466, 35.196274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718142, 39.027935, 35.725475>,  <29.913996, 38.826599, 35.078060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718142, 39.027935, 35.725475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776257, 39.330868, 35.470810>,  <29.811125, 39.512627, 35.318012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776257, 39.330868, 35.470810>,  <29.718142, 39.027935, 35.725475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776257, 39.330868, 35.470810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948658, 0.289368, 0.127728,
		0.280963, 0.585420, 0.760489,
		0.145287, 0.757331, -0.636665,
		29.819843, 39.558067, 35.279812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368988, 39.625454, 36.092361>,  <29.718142, 39.027935, 35.725475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368988, 39.625454, 36.092361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404694, 39.643253, 35.694355>,  <29.426117, 39.653934, 35.455551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404694, 39.643253, 35.694355>,  <29.368988, 39.625454, 36.092361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404694, 39.643253, 35.694355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844958, 0.532299, -0.051999,
		0.527331, 0.845386, 0.085115,
		0.089266, 0.044498, -0.995013,
		29.431473, 39.656601, 35.395851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195408, 40.306488, 35.875866>,  <29.368988, 39.625454, 36.092361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195408, 40.306488, 35.875866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155594, 40.106110, 35.531971>,  <29.131706, 39.985882, 35.325634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155594, 40.106110, 35.531971>,  <29.195408, 40.306488, 35.875866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155594, 40.106110, 35.531971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806340, 0.546864, -0.225289,
		0.583017, 0.670816, -0.458364,
		-0.099535, -0.500944, -0.859737,
		29.125732, 39.955826, 35.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139420, 40.733894, 35.265118>,  <29.195408, 40.306488, 35.875866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139420, 40.733894, 35.265118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954239, 40.392040, 35.171070>,  <28.843130, 40.186928, 35.114643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954239, 40.392040, 35.171070>,  <29.139420, 40.733894, 35.265118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954239, 40.392040, 35.171070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831131, 0.510731, -0.219946,
		0.308054, 0.093588, -0.946755,
		-0.462952, -0.854632, -0.235116,
		28.815353, 40.135651, 35.100536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862747, 40.669327, 34.527592>,  <29.139420, 40.733894, 35.265118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862747, 40.669327, 34.527592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649431, 40.433712, 34.770454>,  <28.521442, 40.292343, 34.916172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649431, 40.433712, 34.770454>,  <28.862747, 40.669327, 34.527592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649431, 40.433712, 34.770454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842911, 0.430623, -0.322590,
		-0.071437, -0.683811, -0.726154,
		-0.533289, -0.589038, 0.607154,
		28.489445, 40.257000, 34.952602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515448, 40.420368, 34.478081>,  <28.862747, 40.669327, 34.527592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515448, 40.420368, 34.478081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595612, 40.372433, 34.867023>,  <29.643709, 40.343670, 35.100388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595612, 40.372433, 34.867023>,  <29.515448, 40.420368, 34.478081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595612, 40.372433, 34.867023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773729, -0.589460, -0.232121,
		0.600982, 0.798859, -0.025409,
		0.200409, -0.119841, 0.972355,
		29.655735, 40.336479, 35.158730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303471, 40.620567, 34.714447>,  <29.515448, 40.420368, 34.478081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303471, 40.620567, 34.714447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138660, 40.341991, 34.949463>,  <30.039774, 40.174847, 35.090473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138660, 40.341991, 34.949463>,  <30.303471, 40.620567, 34.714447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138660, 40.341991, 34.949463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769192, -0.611516, -0.185449,
		0.488445, 0.375522, 0.787658,
		-0.412026, -0.696442, 0.587540,
		30.015053, 40.133060, 35.125725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682840, 40.585426, 35.362061>,  <30.303471, 40.620567, 34.714447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682840, 40.585426, 35.362061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513990, 40.239784, 35.252419>,  <30.412680, 40.032398, 35.186634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513990, 40.239784, 35.252419>,  <30.682840, 40.585426, 35.362061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513990, 40.239784, 35.252419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906496, -0.399465, -0.136722,
		0.008648, -0.306187, 0.951932,
		-0.422127, -0.864105, -0.274102,
		30.387352, 39.980553, 35.170189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927998, 40.030506, 35.786346>,  <30.682840, 40.585426, 35.362061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927998, 40.030506, 35.786346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841337, 39.952843, 35.403648>,  <30.789341, 39.906242, 35.174030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841337, 39.952843, 35.403648>,  <30.927998, 40.030506, 35.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841337, 39.952843, 35.403648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970915, -0.145150, -0.190405,
		-0.101902, -0.970171, 0.219963,
		-0.216653, -0.194163, -0.956746,
		30.776340, 39.894592, 35.116623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670250, 39.633583, 36.412205>,  <30.927998, 40.030506, 35.786346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670250, 39.633583, 36.412205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283049, 39.543072, 36.455605>,  <30.050728, 39.488766, 36.481644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283049, 39.543072, 36.455605>,  <30.670250, 39.633583, 36.412205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283049, 39.543072, 36.455605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207021, -0.475681, 0.854909,
		-0.141831, 0.850016, 0.507304,
		-0.968001, -0.226275, 0.108504,
		29.992649, 39.475189, 36.488155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467514, 38.905251, 36.753468>,  <30.670250, 39.633583, 36.412205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467514, 38.905251, 36.753468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685534, 38.677612, 36.999737>,  <30.816345, 38.541031, 37.147499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685534, 38.677612, 36.999737>,  <30.467514, 38.905251, 36.753468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685534, 38.677612, 36.999737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108409, 0.680333, 0.724841,
		-0.831365, -0.461819, 0.309120,
		0.545050, -0.569096, 0.615671,
		30.849049, 38.506882, 37.184437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229712, 38.796936, 37.483421>,  <30.467514, 38.905251, 36.753468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229712, 38.796936, 37.483421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625891, 38.742970, 37.494801>,  <30.863598, 38.710590, 37.501629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625891, 38.742970, 37.494801>,  <30.229712, 38.796936, 37.483421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625891, 38.742970, 37.494801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061458, 0.616668, 0.784821,
		-0.123427, -0.775577, 0.619069,
		0.990449, -0.134914, 0.028448,
		30.923025, 38.702496, 37.503334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412580, 38.344994, 38.078365>,  <30.229712, 38.796936, 37.483421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412580, 38.344994, 38.078365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732262, 38.572571, 38.000824>,  <30.924070, 38.709118, 37.954300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732262, 38.572571, 38.000824>,  <30.412580, 38.344994, 38.078365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732262, 38.572571, 38.000824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005320, 0.315816, 0.948805,
		0.601039, -0.759318, 0.249374,
		0.799202, 0.568943, -0.193858,
		30.972023, 38.743252, 37.942665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790224, 38.440548, 38.792587>,  <30.412580, 38.344994, 38.078365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790224, 38.440548, 38.792587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906574, 38.727062, 38.538872>,  <30.976385, 38.898972, 38.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906574, 38.727062, 38.538872>,  <30.790224, 38.440548, 38.792587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906574, 38.727062, 38.538872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036024, 0.654287, 0.755388,
		0.956083, -0.242574, 0.164512,
		0.290875, 0.716287, -0.634290,
		30.993837, 38.941948, 38.348583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339539, 38.635700, 39.138790>,  <30.790224, 38.440548, 38.792587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339539, 38.635700, 39.138790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234440, 38.930080, 38.889202>,  <31.171381, 39.106709, 38.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234440, 38.930080, 38.889202>,  <31.339539, 38.635700, 39.138790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234440, 38.930080, 38.889202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073234, 0.660039, 0.747653,
		0.962082, 0.150746, -0.227319,
		-0.262746, 0.735951, -0.623972,
		31.155617, 39.150867, 38.702011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741352, 39.201080, 39.273487>,  <31.339539, 38.635700, 39.138790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741352, 39.201080, 39.273487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379482, 39.281261, 39.123081>,  <31.162361, 39.329372, 39.032837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379482, 39.281261, 39.123081>,  <31.741352, 39.201080, 39.273487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379482, 39.281261, 39.123081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089581, 0.773243, 0.627751,
		0.416584, 0.601592, -0.681575,
		-0.904673, 0.200455, -0.376011,
		31.108080, 39.341396, 39.010277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073502, 39.715813, 39.678051>,  <31.741352, 39.201080, 39.273487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073502, 39.715813, 39.678051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462498, 39.723064, 39.770939>,  <32.695896, 39.727417, 39.826672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462498, 39.723064, 39.770939>,  <32.073502, 39.715813, 39.678051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462498, 39.723064, 39.770939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034158, 0.997289, 0.065173,
		-0.230407, -0.071313, 0.970478,
		0.972495, 0.018133, 0.232218,
		32.754246, 39.728504, 39.840603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730955, 40.145756, 40.121880>,  <32.073502, 39.715813, 39.678051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730955, 40.145756, 40.121880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827929, 40.505249, 40.268032>,  <31.886112, 40.720943, 40.355724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827929, 40.505249, 40.268032>,  <31.730955, 40.145756, 40.121880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827929, 40.505249, 40.268032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566933, 0.436861, -0.698383,
		-0.787282, -0.037837, 0.615431,
		0.242433, 0.898733, 0.365383,
		31.900658, 40.774868, 40.377647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945282, 40.067005, 40.394707>,  <31.730955, 40.145756, 40.121880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945282, 40.067005, 40.394707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629456, 40.096115, 40.150970>,  <30.439960, 40.113583, 40.004730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629456, 40.096115, 40.150970>,  <30.945282, 40.067005, 40.394707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629456, 40.096115, 40.150970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472050, -0.562434, -0.678850,
		-0.392117, -0.823633, 0.409722,
		-0.789565, 0.072779, -0.609336,
		30.392586, 40.117950, 39.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792778, 39.382816, 40.025593>,  <30.945282, 40.067005, 40.394707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792778, 39.382816, 40.025593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632257, 39.685013, 39.818443>,  <30.535946, 39.866329, 39.694153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632257, 39.685013, 39.818443>,  <30.792778, 39.382816, 40.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632257, 39.685013, 39.818443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537335, -0.263705, -0.801081,
		-0.741774, -0.599746, -0.300126,
		-0.401301, 0.755489, -0.517874,
		30.511868, 39.911659, 39.663082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438997, 39.216423, 39.355427>,  <30.792778, 39.382816, 40.025593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438997, 39.216423, 39.355427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541908, 39.601601, 39.323048>,  <30.603655, 39.832706, 39.303619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541908, 39.601601, 39.323048>,  <30.438997, 39.216423, 39.355427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541908, 39.601601, 39.323048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365084, -0.174419, -0.914490,
		-0.894719, 0.205725, -0.396428,
		0.257277, 0.962941, -0.080949,
		30.619091, 39.890484, 39.298763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057228, 39.559151, 38.839500>,  <30.438997, 39.216423, 39.355427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057228, 39.559151, 38.839500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406431, 39.745216, 38.898121>,  <30.615953, 39.856857, 38.933292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406431, 39.745216, 38.898121>,  <30.057228, 39.559151, 38.839500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406431, 39.745216, 38.898121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326712, -0.334690, -0.883879,
		-0.362098, 0.819515, -0.444162,
		0.873009, 0.465163, 0.146555,
		30.668333, 39.884766, 38.942089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202461, 40.019913, 38.257877>,  <30.057228, 39.559151, 38.839500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202461, 40.019913, 38.257877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535612, 39.894184, 38.440094>,  <30.735502, 39.818748, 38.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535612, 39.894184, 38.440094>,  <30.202461, 40.019913, 38.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535612, 39.894184, 38.440094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251746, -0.517861, -0.817584,
		0.492891, 0.795628, -0.352185,
		0.832876, -0.314318, 0.455545,
		30.785475, 39.799889, 38.576759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793785, 40.027760, 37.822750>,  <30.202461, 40.019913, 38.257877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793785, 40.027760, 37.822750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910381, 39.764481, 38.100403>,  <30.980339, 39.606514, 38.266994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910381, 39.764481, 38.100403>,  <30.793785, 40.027760, 37.822750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910381, 39.764481, 38.100403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404410, -0.572811, -0.712980,
		0.866883, 0.488539, 0.099212,
		0.291489, -0.658193, 0.694130,
		30.997828, 39.567024, 38.308643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606506, 39.896679, 37.682724>,  <30.793785, 40.027760, 37.822750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606506, 39.896679, 37.682724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463995, 39.582325, 37.884892>,  <31.378489, 39.393711, 38.006191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463995, 39.582325, 37.884892>,  <31.606506, 39.896679, 37.682724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463995, 39.582325, 37.884892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394246, -0.616841, -0.681232,
		0.847135, -0.043447, 0.529599,
		-0.356276, -0.785888, 0.505418,
		31.357113, 39.346558, 38.036518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080566, 39.354595, 37.614819>,  <31.606506, 39.896679, 37.682724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080566, 39.354595, 37.614819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745886, 39.171501, 37.735096>,  <31.545078, 39.061646, 37.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745886, 39.171501, 37.735096>,  <32.080566, 39.354595, 37.614819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745886, 39.171501, 37.735096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072308, -0.636571, -0.767821,
		0.542872, -0.620691, 0.565715,
		-0.836697, -0.457734, 0.300695,
		31.494877, 39.034180, 37.825306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202488, 38.628250, 37.536797>,  <32.080566, 39.354595, 37.614819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202488, 38.628250, 37.536797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805710, 38.659454, 37.496876>,  <31.567642, 38.678177, 37.472923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805710, 38.659454, 37.496876>,  <32.202488, 38.628250, 37.536797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805710, 38.659454, 37.496876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015502, -0.707205, -0.706839,
		-0.125721, -0.702692, 0.700299,
		-0.991944, 0.078009, -0.099804,
		31.508127, 38.682858, 37.466934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940323, 37.938778, 37.616447>,  <32.202488, 38.628250, 37.536797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940323, 37.938778, 37.616447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700525, 38.157265, 37.382439>,  <31.556646, 38.288357, 37.242031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700525, 38.157265, 37.382439>,  <31.940323, 37.938778, 37.616447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700525, 38.157265, 37.382439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120792, -0.660818, -0.740763,
		-0.791211, -0.514750, 0.330178,
		-0.599496, 0.546216, -0.585024,
		31.520676, 38.321129, 37.206932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942024, 37.206059, 37.363449>,  <31.940323, 37.938778, 37.616447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942024, 37.206059, 37.363449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336346, 37.214184, 37.296780>,  <32.572937, 37.219059, 37.256779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336346, 37.214184, 37.296780>,  <31.942024, 37.206059, 37.363449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336346, 37.214184, 37.296780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122100, -0.594630, -0.794674,
		-0.115251, 0.803743, -0.583707,
		0.985803, 0.020316, -0.166669,
		32.632088, 37.220280, 37.246780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864573, 36.591862, 36.968987>,  <31.942024, 37.206059, 37.363449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864573, 36.591862, 36.968987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788118, 36.705421, 36.593143>,  <31.742247, 36.773556, 36.367638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788118, 36.705421, 36.593143>,  <31.864573, 36.591862, 36.968987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788118, 36.705421, 36.593143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051261, -0.958841, -0.279278,
		-0.980224, -0.005214, 0.197821,
		-0.191135, 0.283895, -0.939612,
		31.730778, 36.790588, 36.311260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261093, 36.177242, 36.705177>,  <31.864573, 36.591862, 36.968987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261093, 36.177242, 36.705177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470253, 36.310925, 36.391521>,  <31.595749, 36.391132, 36.203327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470253, 36.310925, 36.391521>,  <31.261093, 36.177242, 36.705177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470253, 36.310925, 36.391521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035917, -0.927753, -0.371463,
		-0.851637, 0.166074, -0.497126,
		0.522900, 0.334207, -0.784144,
		31.627123, 36.411186, 36.156277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940708, 35.900043, 36.094761>,  <31.261093, 36.177242, 36.705177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940708, 35.900043, 36.094761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316095, 35.985020, 35.985844>,  <31.541328, 36.036007, 35.920494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316095, 35.985020, 35.985844>,  <30.940708, 35.900043, 36.094761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316095, 35.985020, 35.985844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008349, -0.802153, -0.597060,
		-0.345266, 0.558048, -0.754569,
		0.938468, 0.212444, -0.272298,
		31.597635, 36.048752, 35.904156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989523, 35.953548, 35.398304>,  <30.940708, 35.900043, 36.094761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989523, 35.953548, 35.398304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370371, 35.883858, 35.498795>,  <31.598879, 35.842045, 35.559090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370371, 35.883858, 35.498795>,  <30.989523, 35.953548, 35.398304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370371, 35.883858, 35.498795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064967, -0.687669, -0.723112,
		0.298746, 0.704810, -0.643424,
		0.952119, -0.174225, 0.251228,
		31.656006, 35.831589, 35.574162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301748, 35.977081, 34.761566>,  <30.989523, 35.953548, 35.398304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301748, 35.977081, 34.761566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552952, 35.781254, 35.003536>,  <31.703674, 35.663757, 35.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552952, 35.781254, 35.003536>,  <31.301748, 35.977081, 34.761566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552952, 35.781254, 35.003536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261284, -0.599556, -0.756481,
		0.733032, 0.633133, -0.248610,
		0.628009, -0.489567, 0.604921,
		31.741354, 35.634384, 35.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744394, 35.910336, 34.301361>,  <31.301748, 35.977081, 34.761566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744394, 35.910336, 34.301361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824116, 35.641762, 34.586864>,  <31.871948, 35.480618, 34.758167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824116, 35.641762, 34.586864>,  <31.744394, 35.910336, 34.301361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824116, 35.641762, 34.586864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226499, -0.677087, -0.700179,
		0.953403, 0.301213, 0.017135,
		0.199302, -0.671434, 0.713761,
		31.883905, 35.440331, 34.800991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355869, 35.643162, 34.082306>,  <31.744394, 35.910336, 34.301361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355869, 35.643162, 34.082306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207260, 35.364834, 34.328171>,  <32.118095, 35.197838, 34.475689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207260, 35.364834, 34.328171>,  <32.355869, 35.643162, 34.082306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207260, 35.364834, 34.328171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117786, -0.692021, -0.712203,
		0.920922, -0.192202, 0.339059,
		-0.371523, -0.695820, 0.614659,
		32.095802, 35.156086, 34.512569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843761, 35.114361, 34.019825>,  <32.355869, 35.643162, 34.082306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843761, 35.114361, 34.019825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508881, 34.936680, 34.147438>,  <32.307953, 34.830070, 34.224007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508881, 34.936680, 34.147438>,  <32.843761, 35.114361, 34.019825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508881, 34.936680, 34.147438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025679, -0.614625, -0.788401,
		0.546296, -0.651856, 0.525970,
		-0.837198, -0.444207, 0.319028,
		32.257721, 34.803417, 34.243145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961956, 34.424526, 33.864029>,  <32.843761, 35.114361, 34.019825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961956, 34.424526, 33.864029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567436, 34.456833, 33.921566>,  <32.330723, 34.476215, 33.956089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567436, 34.456833, 33.921566>,  <32.961956, 34.424526, 33.864029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567436, 34.456833, 33.921566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157587, -0.719073, -0.676831,
		0.048768, -0.690225, 0.721949,
		-0.986300, 0.080762, 0.143838,
		32.271545, 34.481060, 33.964718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678379, 33.704075, 33.942459>,  <32.961956, 34.424526, 33.864029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678379, 33.704075, 33.942459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353489, 33.922588, 33.860622>,  <32.158554, 34.053696, 33.811520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353489, 33.922588, 33.860622>,  <32.678379, 33.704075, 33.942459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353489, 33.922588, 33.860622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228463, -0.620609, -0.750099,
		-0.536741, -0.562509, 0.628882,
		-0.812228, 0.546285, -0.204593,
		32.109821, 34.086475, 33.799244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061165, 33.219952, 33.703503>,  <32.678379, 33.704075, 33.942459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061165, 33.219952, 33.703503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980927, 33.578293, 33.544907>,  <31.932783, 33.793297, 33.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980927, 33.578293, 33.544907>,  <32.061165, 33.219952, 33.703503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980927, 33.578293, 33.544907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240074, -0.437323, -0.866668,
		-0.949803, -0.078664, 0.302797,
		-0.200595, 0.895857, -0.396485,
		31.920748, 33.847050, 33.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538984, 33.061871, 33.250645>,  <32.061165, 33.219952, 33.703503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538984, 33.061871, 33.250645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648684, 33.430317, 33.140137>,  <31.714502, 33.651386, 33.073830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648684, 33.430317, 33.140137>,  <31.538984, 33.061871, 33.250645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648684, 33.430317, 33.140137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126682, -0.250179, -0.959876,
		-0.953278, 0.298242, 0.048078,
		0.274248, 0.921120, -0.276272,
		31.730957, 33.706654, 33.057255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042179, 33.360035, 32.739231>,  <31.538984, 33.061871, 33.250645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042179, 33.360035, 32.739231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391329, 33.549007, 32.690414>,  <31.600819, 33.662392, 32.661125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391329, 33.549007, 32.690414>,  <31.042179, 33.360035, 32.739231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391329, 33.549007, 32.690414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110438, -0.052334, -0.992504,
		-0.475280, 0.879810, 0.006494,
		0.872876, 0.472435, -0.122038,
		31.653191, 33.690739, 32.653805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838264, 33.738358, 32.161793>,  <31.042179, 33.360035, 32.739231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838264, 33.738358, 32.161793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237766, 33.757542, 32.167309>,  <31.477467, 33.769051, 32.170616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237766, 33.757542, 32.167309>,  <30.838264, 33.738358, 32.161793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237766, 33.757542, 32.167309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000800, 0.291630, -0.956531,
		-0.049897, 0.955328, 0.291305,
		0.998754, 0.047961, 0.013787,
		31.537392, 33.771931, 32.171444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974667, 34.377323, 31.923101>,  <30.838264, 33.738358, 32.161793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974667, 34.377323, 31.923101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312916, 34.169239, 31.875259>,  <31.515865, 34.044388, 31.846554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312916, 34.169239, 31.875259>,  <30.974667, 34.377323, 31.923101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312916, 34.169239, 31.875259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006641, 0.213802, -0.976854,
		0.533740, 0.826844, 0.177341,
		0.845622, -0.520209, -0.119605,
		31.566603, 34.013176, 31.839378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276836, 34.731380, 31.433170>,  <30.974667, 34.377323, 31.923101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276836, 34.731380, 31.433170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464779, 34.379463, 31.404337>,  <31.577543, 34.168312, 31.387037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464779, 34.379463, 31.404337>,  <31.276836, 34.731380, 31.433170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464779, 34.379463, 31.404337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035142, 0.062950, -0.997398,
		0.882044, 0.471165, -0.001341,
		0.469855, -0.879796, -0.072082,
		31.605736, 34.115524, 31.382711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862669, 34.903954, 31.029222>,  <31.276836, 34.731380, 31.433170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862669, 34.903954, 31.029222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788612, 34.511330, 31.010178>,  <31.744179, 34.275757, 30.998751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788612, 34.511330, 31.010178>,  <31.862669, 34.903954, 31.029222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788612, 34.511330, 31.010178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085004, 0.032272, -0.995858,
		0.979028, -0.188424, 0.077461,
		-0.185143, -0.981557, -0.047612,
		31.733068, 34.216862, 30.995893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359505, 34.662411, 30.584215>,  <31.862669, 34.903954, 31.029222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359505, 34.662411, 30.584215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101048, 34.357155, 30.579967>,  <31.945972, 34.174000, 30.577419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101048, 34.357155, 30.579967>,  <32.359505, 34.662411, 30.584215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101048, 34.357155, 30.579967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124995, -0.092084, -0.987875,
		0.752909, -0.639639, 0.154889,
		-0.646146, -0.763140, -0.010620,
		31.907204, 34.128212, 30.576782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670265, 34.301579, 30.058014>,  <32.359505, 34.662411, 30.584215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670265, 34.301579, 30.058014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298332, 34.157181, 30.086563>,  <32.075172, 34.070541, 30.103693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298332, 34.157181, 30.086563>,  <32.670265, 34.301579, 30.058014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298332, 34.157181, 30.086563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004292, -0.204579, -0.978841,
		0.367961, -0.909851, 0.191773,
		-0.929832, -0.360998, 0.071372,
		32.019382, 34.048882, 30.107975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602222, 33.645367, 29.721312>,  <32.670265, 34.301579, 30.058014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602222, 33.645367, 29.721312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227131, 33.784149, 29.728109>,  <32.002075, 33.867416, 29.732187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227131, 33.784149, 29.728109>,  <32.602222, 33.645367, 29.721312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227131, 33.784149, 29.728109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073822, -0.151242, -0.985736,
		-0.339436, -0.925607, 0.167437,
		-0.937728, 0.346955, 0.016994,
		31.945812, 33.888237, 29.733208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250538, 33.252625, 29.177561>,  <32.602222, 33.645367, 29.721312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250538, 33.252625, 29.177561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042908, 33.590878, 29.227310>,  <31.918329, 33.793831, 29.257160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042908, 33.590878, 29.227310>,  <32.250538, 33.252625, 29.177561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042908, 33.590878, 29.227310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072588, 0.101371, -0.992197,
		-0.851641, -0.524052, 0.008764,
		-0.519074, 0.845632, 0.124371,
		31.887186, 33.844566, 29.264622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606749, 33.032772, 28.892904>,  <32.250538, 33.252625, 29.177561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606749, 33.032772, 28.892904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628475, 33.432106, 28.900745>,  <31.641512, 33.671707, 28.905449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628475, 33.432106, 28.900745>,  <31.606749, 33.032772, 28.892904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628475, 33.432106, 28.900745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116126, 0.025812, -0.992899,
		-0.991748, 0.051656, 0.117334,
		0.054318, 0.998331, 0.019601,
		31.644770, 33.731606, 28.906626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998087, 33.290047, 28.598801>,  <31.606749, 33.032772, 28.892904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998087, 33.290047, 28.598801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257347, 33.592915, 28.566317>,  <31.412903, 33.774635, 28.546825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257347, 33.592915, 28.566317>,  <30.998087, 33.290047, 28.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257347, 33.592915, 28.566317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127502, 0.002764, -0.991835,
		-0.750764, 0.653211, 0.098333,
		0.648149, 0.757171, -0.081210,
		31.451792, 33.820065, 28.541954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670292, 33.767998, 28.148052>,  <30.998087, 33.290047, 28.598801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670292, 33.767998, 28.148052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058826, 33.863045, 28.150675>,  <31.291948, 33.920071, 28.152248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058826, 33.863045, 28.150675>,  <30.670292, 33.767998, 28.148052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058826, 33.863045, 28.150675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011304, 0.073733, -0.997214,
		-0.237436, 0.968557, 0.074306,
		0.971338, 0.237614, 0.006558,
		31.350227, 33.934330, 28.152643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773321, 34.437134, 27.746124>,  <30.670292, 33.767998, 28.148052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773321, 34.437134, 27.746124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129206, 34.255051, 27.759985>,  <31.342735, 34.145802, 27.768301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129206, 34.255051, 27.759985>,  <30.773321, 34.437134, 27.746124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129206, 34.255051, 27.759985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061688, 0.044663, -0.997096,
		0.452340, 0.889264, 0.067818,
		0.889710, -0.455209, 0.034654,
		31.396118, 34.118488, 27.770382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345514, 34.876247, 27.402229>,  <30.773321, 34.437134, 27.746124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345514, 34.876247, 27.402229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447414, 34.489548, 27.411150>,  <31.508554, 34.257526, 27.416502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447414, 34.489548, 27.411150>,  <31.345514, 34.876247, 27.402229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447414, 34.489548, 27.411150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124024, 0.009791, -0.992231,
		0.959021, 0.255536, 0.122394,
		0.254749, -0.966750, 0.022302,
		31.523840, 34.199524, 27.417841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857765, 34.877052, 26.903137>,  <31.345514, 34.876247, 27.402229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857765, 34.877052, 26.903137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729425, 34.502098, 26.957352>,  <31.652422, 34.277126, 26.989880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729425, 34.502098, 26.957352>,  <31.857765, 34.877052, 26.903137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729425, 34.502098, 26.957352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041036, -0.156723, -0.986790,
		0.946241, -0.311049, 0.088751,
		-0.320850, -0.937382, 0.135534,
		31.633171, 34.220882, 26.998013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372776, 34.500175, 26.690134>,  <31.857765, 34.877052, 26.903137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372776, 34.500175, 26.690134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079212, 34.228481, 26.691908>,  <31.903074, 34.065464, 26.692972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079212, 34.228481, 26.691908>,  <32.372776, 34.500175, 26.690134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079212, 34.228481, 26.691908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181809, -0.202725, -0.962210,
		0.654465, -0.705368, 0.272272,
		-0.733908, -0.679234, 0.004434,
		31.859039, 34.024712, 26.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606602, 33.729759, 26.522108>,  <32.372776, 34.500175, 26.690134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606602, 33.729759, 26.522108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216309, 33.750439, 26.436993>,  <31.982134, 33.762848, 26.385923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216309, 33.750439, 26.436993>,  <32.606602, 33.729759, 26.522108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216309, 33.750439, 26.436993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179378, -0.368670, -0.912089,
		-0.125604, -0.928122, 0.350449,
		-0.975729, 0.051699, -0.212791,
		31.923590, 33.765949, 26.373156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386547, 33.124203, 26.060658>,  <32.606602, 33.729759, 26.522108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386547, 33.124203, 26.060658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082584, 33.378571, 26.006765>,  <31.900208, 33.531193, 25.974430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082584, 33.378571, 26.006765>,  <32.386547, 33.124203, 26.060658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082584, 33.378571, 26.006765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113722, -0.334124, -0.935643,
		-0.640011, -0.695677, 0.326220,
		-0.759903, 0.635920, -0.134729,
		31.854612, 33.569347, 25.966347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828663, 32.675358, 25.772804>,  <32.386547, 33.124203, 26.060658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828663, 32.675358, 25.772804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786678, 33.061703, 25.678061>,  <31.761488, 33.293510, 25.621214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786678, 33.061703, 25.678061>,  <31.828663, 32.675358, 25.772804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786678, 33.061703, 25.678061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186633, -0.253072, -0.949275,
		-0.976807, -0.055432, 0.206823,
		-0.104961, 0.965858, -0.236857,
		31.755190, 33.351460, 25.607004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160610, 32.625420, 25.437632>,  <31.828663, 32.675358, 25.772804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160610, 32.625420, 25.437632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380974, 32.946404, 25.345938>,  <31.513193, 33.138996, 25.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380974, 32.946404, 25.345938>,  <31.160610, 32.625420, 25.437632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380974, 32.946404, 25.345938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130294, -0.188608, -0.973370,
		-0.824330, 0.566109, 0.000650,
		0.550911, 0.802464, -0.229236,
		31.546247, 33.187141, 25.277166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823074, 32.952698, 24.814783>,  <31.160610, 32.625420, 25.437632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823074, 32.952698, 24.814783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193031, 33.104507, 24.805557>,  <31.415007, 33.195595, 24.800022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193031, 33.104507, 24.805557>,  <30.823074, 32.952698, 24.814783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193031, 33.104507, 24.805557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010349, -0.035511, -0.999316,
		-0.380086, 0.924499, -0.028916,
		0.924893, 0.379526, -0.023065,
		31.470499, 33.218365, 24.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819736, 33.516827, 24.420961>,  <30.823074, 32.952698, 24.814783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819736, 33.516827, 24.420961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201069, 33.401932, 24.383762>,  <31.429869, 33.332993, 24.361443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201069, 33.401932, 24.383762>,  <30.819736, 33.516827, 24.420961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201069, 33.401932, 24.383762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073048, 0.079434, -0.994160,
		0.292950, 0.954559, 0.054745,
		0.953333, -0.287241, -0.092999,
		31.487068, 33.315758, 24.355864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036821, 33.874397, 23.863592>,  <30.819736, 33.516827, 24.420961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036821, 33.874397, 23.863592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326105, 33.599667, 23.892544>,  <31.499676, 33.434830, 23.909914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326105, 33.599667, 23.892544>,  <31.036821, 33.874397, 23.863592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326105, 33.599667, 23.892544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188645, 0.095643, -0.977377,
		0.664366, 0.720501, 0.198737,
		0.723209, -0.686827, 0.072377,
		31.543068, 33.393620, 23.914257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635948, 34.135895, 23.677259>,  <31.036821, 33.874397, 23.863592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635948, 34.135895, 23.677259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734068, 33.753170, 23.614862>,  <31.792940, 33.523533, 23.577425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734068, 33.753170, 23.614862>,  <31.635948, 34.135895, 23.677259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734068, 33.753170, 23.614862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158352, 0.198294, -0.967266,
		0.956427, 0.212569, 0.200155,
		0.245300, -0.956815, -0.155993,
		31.807657, 33.466125, 23.568064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180344, 34.120369, 23.212429>,  <31.635948, 34.135895, 23.677259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180344, 34.120369, 23.212429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006638, 33.761913, 23.175884>,  <31.902414, 33.546841, 23.153957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006638, 33.761913, 23.175884>,  <32.180344, 34.120369, 23.212429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006638, 33.761913, 23.175884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021638, 0.111772, -0.993498,
		0.900525, -0.429466, -0.067929,
		-0.434266, -0.896139, -0.091361,
		31.876358, 33.493073, 23.148476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516605, 33.677334, 22.695190>,  <32.180344, 34.120369, 23.212429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516605, 33.677334, 22.695190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157349, 33.504471, 22.727646>,  <31.941793, 33.400753, 22.747120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157349, 33.504471, 22.727646>,  <32.516605, 33.677334, 22.695190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157349, 33.504471, 22.727646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110523, 0.043272, -0.992931,
		0.425587, -0.900761, -0.086627,
		-0.898143, -0.432153, 0.081139,
		31.887905, 33.374825, 22.751987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424992, 33.129692, 22.213497>,  <32.516605, 33.677334, 22.695190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424992, 33.129692, 22.213497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040092, 33.215050, 22.281076>,  <31.809153, 33.266262, 22.321625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040092, 33.215050, 22.281076>,  <32.424992, 33.129692, 22.213497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040092, 33.215050, 22.281076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171370, 0.007246, -0.985180,
		-0.211455, -0.976939, 0.029597,
		-0.962247, 0.213393, 0.168950,
		31.751419, 33.279068, 22.331762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081795, 32.912426, 21.606962>,  <32.424992, 33.129692, 22.213497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081795, 32.912426, 21.606962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799810, 33.143326, 21.771795>,  <31.630619, 33.281864, 21.870695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799810, 33.143326, 21.771795>,  <32.081795, 32.912426, 21.606962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799810, 33.143326, 21.771795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399339, 0.157111, -0.903241,
		-0.586137, -0.801312, 0.119760,
		-0.704963, 0.577248, 0.412083,
		31.588322, 33.316502, 21.895420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397190, 32.667233, 21.411781>,  <32.081795, 32.912426, 21.606962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397190, 32.667233, 21.411781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375175, 33.057266, 21.497744>,  <31.361967, 33.291286, 21.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375175, 33.057266, 21.497744>,  <31.397190, 32.667233, 21.411781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375175, 33.057266, 21.497744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617314, 0.135939, -0.774883,
		-0.784790, -0.175309, 0.594451,
		-0.055035, 0.975083, 0.214905,
		31.358665, 33.349792, 21.562216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820709, 32.780994, 21.137238>,  <31.397190, 32.667233, 21.411781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820709, 32.780994, 21.137238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936129, 33.159748, 21.194017>,  <31.005381, 33.387001, 21.228085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936129, 33.159748, 21.194017>,  <30.820709, 32.780994, 21.137238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936129, 33.159748, 21.194017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549402, 0.285162, -0.785391,
		-0.784153, 0.148638, 0.602504,
		0.288550, 0.946884, 0.141949,
		31.022694, 33.443813, 21.236603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170475, 33.231171, 21.182865>,  <30.820709, 32.780994, 21.137238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170475, 33.231171, 21.182865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487886, 33.444077, 21.064880>,  <30.678333, 33.571819, 20.994089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487886, 33.444077, 21.064880>,  <30.170475, 33.231171, 21.182865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487886, 33.444077, 21.064880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502126, 0.298887, -0.811502,
		-0.343776, 0.792059, 0.504441,
		0.793528, 0.532268, -0.294963,
		30.725945, 33.603756, 20.976391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898880, 33.806213, 20.850607>,  <30.170475, 33.231171, 21.182865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898880, 33.806213, 20.850607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272001, 33.782314, 20.708447>,  <30.495874, 33.767975, 20.623150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272001, 33.782314, 20.708447>,  <29.898880, 33.806213, 20.850607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272001, 33.782314, 20.708447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346630, 0.121121, -0.930149,
		0.098624, 0.990838, 0.092271,
		0.932803, -0.059751, -0.355399,
		30.551842, 33.764389, 20.601828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979912, 34.036572, 20.190380>,  <29.898880, 33.806213, 20.850607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979912, 34.036572, 20.190380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361567, 33.922028, 20.155472>,  <30.590559, 33.853302, 20.134527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361567, 33.922028, 20.155472>,  <29.979912, 34.036572, 20.190380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361567, 33.922028, 20.155472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113461, -0.076139, -0.990621,
		0.277033, 0.955091, -0.105138,
		0.954138, -0.286364, -0.087273,
		30.647808, 33.836117, 20.129290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410097, 34.451626, 19.756010>,  <29.979912, 34.036572, 20.190380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410097, 34.451626, 19.756010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593973, 34.096443, 19.761860>,  <30.704298, 33.883331, 19.765369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593973, 34.096443, 19.761860>,  <30.410097, 34.451626, 19.756010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593973, 34.096443, 19.761860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200910, -0.120023, -0.972229,
		0.865055, 0.443985, -0.233573,
		0.459690, -0.887959, 0.014626,
		30.731880, 33.830055, 19.766247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794394, 34.381420, 19.231962>,  <30.410097, 34.451626, 19.756010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794394, 34.381420, 19.231962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685863, 34.014217, 19.347643>,  <30.620745, 33.793896, 19.417051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685863, 34.014217, 19.347643>,  <30.794394, 34.381420, 19.231962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685863, 34.014217, 19.347643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072955, -0.279992, -0.957226,
		0.959718, -0.280820, 0.008996,
		-0.271327, -0.918011, 0.289201,
		30.604465, 33.738815, 19.434402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446245, 34.585285, 19.095346>,  <30.794394, 34.381420, 19.231962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446245, 34.585285, 19.095346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167582, 34.676140, 18.823149>,  <31.000383, 34.730652, 18.659830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167582, 34.676140, 18.823149>,  <31.446245, 34.585285, 19.095346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167582, 34.676140, 18.823149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086538, -0.915020, -0.394017,
		-0.712163, -0.333385, 0.617802,
		-0.696660, 0.227141, -0.680494,
		30.958584, 34.744282, 18.619001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809750, 34.988216, 19.612667>,  <31.446245, 34.585285, 19.095346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809750, 34.988216, 19.612667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888031, 34.820850, 19.967436>,  <31.934999, 34.720432, 20.180298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888031, 34.820850, 19.967436>,  <31.809750, 34.988216, 19.612667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888031, 34.820850, 19.967436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677114, 0.711872, 0.186428,
		-0.709379, 0.564062, 0.422629,
		0.195701, -0.418416, 0.886921,
		31.946741, 34.695324, 20.233513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373940, 34.707138, 19.024160>,  <31.809750, 34.988216, 19.612667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373940, 34.707138, 19.024160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666542, 34.939732, 18.881739>,  <32.842102, 35.079288, 18.796286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666542, 34.939732, 18.881739>,  <32.373940, 34.707138, 19.024160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666542, 34.939732, 18.881739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003237, 0.525154, 0.851001,
		0.681828, -0.621359, 0.386035,
		0.731505, 0.581486, -0.356054,
		32.885994, 35.114178, 18.774923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950294, 34.606171, 19.388966>,  <32.373940, 34.707138, 19.024160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950294, 34.606171, 19.388966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935059, 34.983547, 19.257233>,  <32.925915, 35.209972, 19.178192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935059, 34.983547, 19.257233>,  <32.950294, 34.606171, 19.388966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935059, 34.983547, 19.257233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045054, 0.327616, 0.943736,
		0.998258, 0.050788, 0.030026,
		-0.038093, 0.943445, -0.329333,
		32.923630, 35.266582, 19.158432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467766, 34.991711, 19.715342>,  <32.950294, 34.606171, 19.388966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467766, 34.991711, 19.715342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147030, 35.204704, 19.606892>,  <32.954586, 35.332500, 19.541822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147030, 35.204704, 19.606892>,  <33.467766, 34.991711, 19.715342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147030, 35.204704, 19.606892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000816, 0.452759, 0.891632,
		0.597536, 0.715170, -0.362607,
		-0.801842, 0.532486, -0.271124,
		32.906479, 35.364449, 19.525555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507473, 35.714878, 19.808983>,  <33.467766, 34.991711, 19.715342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507473, 35.714878, 19.808983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133217, 35.597836, 19.887938>,  <32.908665, 35.527611, 19.935310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133217, 35.597836, 19.887938>,  <33.507473, 35.714878, 19.808983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133217, 35.597836, 19.887938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105524, 0.301760, 0.947526,
		-0.336811, 0.907372, -0.251463,
		-0.935640, -0.292602, 0.197386,
		32.852524, 35.510056, 19.947153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116814, 36.282772, 20.078594>,  <33.507473, 35.714878, 19.808983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116814, 36.282772, 20.078594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962143, 35.938808, 20.211882>,  <32.869339, 35.732430, 20.291853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962143, 35.938808, 20.211882>,  <33.116814, 36.282772, 20.078594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962143, 35.938808, 20.211882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070292, 0.332789, 0.940378,
		-0.919532, 0.387046, -0.068237,
		-0.386679, -0.859911, 0.333217,
		32.846138, 35.680836, 20.311846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619175, 36.393204, 20.558630>,  <33.116814, 36.282772, 20.078594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619175, 36.393204, 20.558630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749302, 36.024761, 20.644178>,  <32.827377, 35.803696, 20.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749302, 36.024761, 20.644178>,  <32.619175, 36.393204, 20.558630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749302, 36.024761, 20.644178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152670, 0.274368, 0.949428,
		-0.933199, -0.276213, 0.229881,
		0.325317, -0.921102, 0.213871,
		32.846897, 35.748432, 20.708340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316536, 36.257915, 21.151081>,  <32.619175, 36.393204, 20.558630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316536, 36.257915, 21.151081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595158, 35.970940, 21.147142>,  <32.762329, 35.798756, 21.144779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595158, 35.970940, 21.147142>,  <32.316536, 36.257915, 21.151081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595158, 35.970940, 21.147142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161284, 0.143187, 0.976465,
		-0.699141, -0.681750, 0.215449,
		0.696555, -0.717436, -0.009848,
		32.804123, 35.755711, 21.144188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171101, 35.841793, 21.687872>,  <32.316536, 36.257915, 21.151081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171101, 35.841793, 21.687872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553848, 35.756992, 21.608408>,  <32.783497, 35.706112, 21.560730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553848, 35.756992, 21.608408>,  <32.171101, 35.841793, 21.687872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553848, 35.756992, 21.608408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252059, 0.265704, 0.930520,
		-0.144487, -0.940455, 0.307680,
		0.956864, -0.212002, -0.198660,
		32.840908, 35.693394, 21.548811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419525, 35.394657, 22.166027>,  <32.171101, 35.841793, 21.687872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419525, 35.394657, 22.166027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764996, 35.538139, 22.024384>,  <32.972279, 35.624229, 21.939398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764996, 35.538139, 22.024384>,  <32.419525, 35.394657, 22.166027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764996, 35.538139, 22.024384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271991, 0.259806, 0.926564,
		0.424362, -0.896567, 0.126825,
		0.863677, 0.358703, -0.354110,
		33.024097, 35.645752, 21.918150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896931, 35.182903, 22.583927>,  <32.419525, 35.394657, 22.166027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896931, 35.182903, 22.583927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102364, 35.482868, 22.417139>,  <33.225624, 35.662846, 22.317066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102364, 35.482868, 22.417139>,  <32.896931, 35.182903, 22.583927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102364, 35.482868, 22.417139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216511, 0.356971, 0.908678,
		0.830276, -0.556959, 0.020969,
		0.513581, 0.749913, -0.416972,
		33.256439, 35.707844, 22.292048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576698, 35.262466, 23.071398>,  <32.896931, 35.182903, 22.583927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576698, 35.262466, 23.071398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558662, 35.596870, 22.852657>,  <33.547840, 35.797512, 22.721413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558662, 35.596870, 22.852657>,  <33.576698, 35.262466, 23.071398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558662, 35.596870, 22.852657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108242, 0.548276, 0.829263,
		0.993101, -0.021798, -0.115215,
		-0.045093, 0.836013, -0.546853,
		33.545135, 35.847675, 22.688601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140652, 35.655991, 23.178276>,  <33.576698, 35.262466, 23.071398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140652, 35.655991, 23.178276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867310, 35.919628, 23.052656>,  <33.703304, 36.077808, 22.977285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867310, 35.919628, 23.052656>,  <34.140652, 35.655991, 23.178276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867310, 35.919628, 23.052656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179496, 0.568619, 0.802778,
		0.707676, 0.492213, -0.506873,
		-0.683356, 0.659089, -0.314048,
		33.662304, 36.117355, 22.958443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502640, 36.385071, 23.217602>,  <34.140652, 35.655991, 23.178276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502640, 36.385071, 23.217602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109306, 36.452858, 23.243965>,  <33.873306, 36.493530, 23.259783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109306, 36.452858, 23.243965>,  <34.502640, 36.385071, 23.217602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109306, 36.452858, 23.243965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151374, 0.562140, 0.813071,
		0.100738, 0.809494, -0.578421,
		-0.983330, 0.169465, 0.065907,
		33.814308, 36.503696, 23.263737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488960, 37.046486, 23.567621>,  <34.502640, 36.385071, 23.217602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488960, 37.046486, 23.567621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110432, 36.917763, 23.579691>,  <33.883312, 36.840530, 23.586933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110432, 36.917763, 23.579691>,  <34.488960, 37.046486, 23.567621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110432, 36.917763, 23.579691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052003, 0.243729, 0.968448,
		-0.319005, 0.914898, -0.247381,
		-0.946325, -0.321805, 0.030173,
		33.826534, 36.821220, 23.588743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981800, 37.671841, 23.638866>,  <34.488960, 37.046486, 23.567621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981800, 37.671841, 23.638866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839890, 37.327415, 23.784582>,  <33.754745, 37.120762, 23.872011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839890, 37.327415, 23.784582>,  <33.981800, 37.671841, 23.638866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839890, 37.327415, 23.784582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070759, 0.413244, 0.907867,
		-0.932272, 0.296309, -0.207536,
		-0.354772, -0.861064, 0.364289,
		33.733459, 37.069096, 23.893869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541988, 37.840340, 24.152353>,  <33.981800, 37.671841, 23.638866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541988, 37.840340, 24.152353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620293, 37.454857, 24.224947>,  <33.667274, 37.223568, 24.268503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620293, 37.454857, 24.224947>,  <33.541988, 37.840340, 24.152353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620293, 37.454857, 24.224947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317652, 0.112772, 0.941477,
		-0.927779, -0.241955, -0.284048,
		0.195763, -0.963712, 0.181485,
		33.679020, 37.165745, 24.279392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038078, 37.608173, 24.577429>,  <33.541988, 37.840340, 24.152353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038078, 37.608173, 24.577429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322350, 37.339649, 24.661591>,  <33.492912, 37.178535, 24.712088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322350, 37.339649, 24.661591>,  <33.038078, 37.608173, 24.577429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322350, 37.339649, 24.661591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305476, -0.025051, 0.951870,
		-0.633732, -0.740750, -0.222874,
		0.710681, -0.671313, 0.210405,
		33.535553, 37.138256, 24.724712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693161, 36.918419, 24.903412>,  <33.038078, 37.608173, 24.577429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693161, 36.918419, 24.903412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076920, 36.915054, 25.016186>,  <33.307175, 36.913036, 25.083851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076920, 36.915054, 25.016186>,  <32.693161, 36.918419, 24.903412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076920, 36.915054, 25.016186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281721, -0.077648, 0.956349,
		0.013848, -0.996945, -0.076865,
		0.959396, -0.008411, 0.281936,
		33.364738, 36.912533, 25.100767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773651, 36.442036, 25.483826>,  <32.693161, 36.918419, 24.903412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773651, 36.442036, 25.483826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093479, 36.681065, 25.507771>,  <33.285378, 36.824482, 25.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093479, 36.681065, 25.507771>,  <32.773651, 36.442036, 25.483826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093479, 36.681065, 25.507771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083169, 0.011465, 0.996469,
		0.594781, -0.801729, 0.058868,
		0.799574, 0.597577, 0.059860,
		33.333351, 36.860336, 25.525728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181587, 36.230579, 26.040701>,  <32.773651, 36.442036, 25.483826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181587, 36.230579, 26.040701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305252, 36.607689, 25.990730>,  <33.379448, 36.833954, 25.960749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305252, 36.607689, 25.990730>,  <33.181587, 36.230579, 26.040701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305252, 36.607689, 25.990730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011912, 0.127512, 0.991766,
		0.950936, -0.308100, 0.028191,
		0.309157, 0.942770, -0.124925,
		33.397999, 36.890518, 25.953253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654751, 36.370613, 26.608833>,  <33.181587, 36.230579, 26.040701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654751, 36.370613, 26.608833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526249, 36.722092, 26.467590>,  <33.449146, 36.932980, 26.382845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526249, 36.722092, 26.467590>,  <33.654751, 36.370613, 26.608833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526249, 36.722092, 26.467590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072051, 0.349112, 0.934307,
		0.944248, 0.325592, -0.048843,
		-0.321255, 0.878698, -0.353107,
		33.429874, 36.985703, 26.361658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961784, 36.814671, 27.088255>,  <33.654751, 36.370613, 26.608833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961784, 36.814671, 27.088255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647869, 37.000355, 26.924002>,  <33.459522, 37.111767, 26.825449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647869, 37.000355, 26.924002>,  <33.961784, 36.814671, 27.088255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647869, 37.000355, 26.924002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348126, 0.217987, 0.911751,
		0.512758, 0.858481, -0.009469,
		-0.784785, 0.464212, -0.410634,
		33.412434, 37.139618, 26.800812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959667, 37.262184, 27.513844>,  <33.961784, 36.814671, 27.088255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959667, 37.262184, 27.513844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608990, 37.304363, 27.326101>,  <33.398582, 37.329670, 27.213455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608990, 37.304363, 27.326101>,  <33.959667, 37.262184, 27.513844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608990, 37.304363, 27.326101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391506, 0.410549, 0.823512,
		0.279530, 0.905721, -0.318642,
		-0.876691, 0.105446, -0.469355,
		33.345982, 37.335999, 27.185295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863224, 37.961742, 27.505543>,  <33.959667, 37.262184, 27.513844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863224, 37.961742, 27.505543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495483, 37.811592, 27.458391>,  <33.274841, 37.721504, 27.430099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495483, 37.811592, 27.458391>,  <33.863224, 37.961742, 27.505543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495483, 37.811592, 27.458391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299846, 0.474466, 0.827632,
		-0.254740, 0.796227, -0.548753,
		-0.919348, -0.375372, -0.117880,
		33.219681, 37.698982, 27.423027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376205, 38.578835, 27.553862>,  <33.863224, 37.961742, 27.505543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376205, 38.578835, 27.553862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200684, 38.230545, 27.642664>,  <33.095371, 38.021572, 27.695946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200684, 38.230545, 27.642664>,  <33.376205, 38.578835, 27.553862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200684, 38.230545, 27.642664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352097, 0.393914, 0.849035,
		-0.826728, 0.294392, -0.479431,
		-0.438804, -0.870727, 0.222005,
		33.069042, 37.969326, 27.709265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792023, 38.813026, 27.878048>,  <33.376205, 38.578835, 27.553862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792023, 38.813026, 27.878048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858932, 38.433460, 27.985065>,  <32.899078, 38.205719, 28.049276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858932, 38.433460, 27.985065>,  <32.792023, 38.813026, 27.878048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858932, 38.433460, 27.985065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371479, 0.190707, 0.908644,
		-0.913248, -0.251381, -0.320602,
		0.167275, -0.948915, 0.267545,
		32.909115, 38.148785, 28.065329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292526, 38.599899, 28.394621>,  <32.792023, 38.813026, 27.878048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292526, 38.599899, 28.394621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548542, 38.296154, 28.441458>,  <32.702152, 38.113907, 28.469561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548542, 38.296154, 28.441458>,  <32.292526, 38.599899, 28.394621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548542, 38.296154, 28.441458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100089, 0.068695, 0.992604,
		-0.761794, -0.647027, -0.032037,
		0.640040, -0.759367, 0.117092,
		32.740555, 38.068344, 28.476585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789860, 38.109978, 28.761789>,  <32.292526, 38.599899, 28.394621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789860, 38.109978, 28.761789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175869, 38.034523, 28.834618>,  <32.407475, 37.989250, 28.878315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175869, 38.034523, 28.834618>,  <31.789860, 38.109978, 28.761789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175869, 38.034523, 28.834618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203232, -0.099526, 0.974059,
		-0.165624, -0.976991, -0.134382,
		0.965021, -0.188638, 0.182072,
		32.465374, 37.977932, 28.889240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795485, 37.536953, 29.408514>,  <31.789860, 38.109978, 28.761789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795485, 37.536953, 29.408514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161411, 37.697502, 29.390566>,  <32.380966, 37.793831, 29.379797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161411, 37.697502, 29.390566>,  <31.795485, 37.536953, 29.408514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161411, 37.697502, 29.390566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035141, 0.189782, 0.981197,
		0.402341, -0.896037, 0.187720,
		0.914815, 0.401372, -0.044870,
		32.435856, 37.817913, 29.377106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153530, 37.209179, 29.879498>,  <31.795485, 37.536953, 29.408514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153530, 37.209179, 29.879498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383171, 37.532227, 29.825607>,  <32.520954, 37.726055, 29.793272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383171, 37.532227, 29.825607>,  <32.153530, 37.209179, 29.879498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383171, 37.532227, 29.825607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080793, 0.107865, 0.990877,
		0.814787, -0.579751, -0.003324,
		0.574103, 0.807623, -0.134727,
		32.555401, 37.774513, 29.785189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796867, 37.075699, 30.151306>,  <32.153530, 37.209179, 29.879498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796867, 37.075699, 30.151306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750446, 37.471786, 30.182304>,  <32.722595, 37.709438, 30.200903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750446, 37.471786, 30.182304>,  <32.796867, 37.075699, 30.151306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750446, 37.471786, 30.182304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195074, -0.053781, 0.979313,
		0.973899, 0.128766, -0.186924,
		-0.116049, 0.990216, 0.077497,
		32.715633, 37.768852, 30.205553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248882, 37.236588, 30.629904>,  <32.796867, 37.075699, 30.151306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248882, 37.236588, 30.629904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997414, 37.546909, 30.608362>,  <32.846535, 37.733101, 30.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997414, 37.546909, 30.608362>,  <33.248882, 37.236588, 30.629904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997414, 37.546909, 30.608362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018409, 0.084080, 0.996289,
		0.777454, 0.625345, -0.067140,
		-0.628670, 0.775805, -0.053856,
		32.808811, 37.779652, 30.592205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553196, 37.737877, 31.095837>,  <33.248882, 37.236588, 30.629904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553196, 37.737877, 31.095837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190262, 37.898933, 31.047472>,  <32.972500, 37.995567, 31.018454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190262, 37.898933, 31.047472>,  <33.553196, 37.737877, 31.095837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190262, 37.898933, 31.047472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016325, 0.253651, 0.967158,
		0.420086, 0.879512, -0.223574,
		-0.907337, 0.402640, -0.120914,
		32.918060, 38.019726, 31.011198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529736, 38.423599, 31.307703>,  <33.553196, 37.737877, 31.095837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529736, 38.423599, 31.307703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153877, 38.290020, 31.337513>,  <32.928364, 38.209873, 31.355398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153877, 38.290020, 31.337513>,  <33.529736, 38.423599, 31.307703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153877, 38.290020, 31.337513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065999, 0.390606, 0.918189,
		-0.335736, 0.857850, -0.389070,
		-0.939641, -0.333947, 0.074523,
		32.871986, 38.189835, 31.359869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212605, 38.912075, 31.731016>,  <33.529736, 38.423599, 31.307703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212605, 38.912075, 31.731016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967571, 38.597790, 31.765417>,  <32.820553, 38.409218, 31.786058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967571, 38.597790, 31.765417>,  <33.212605, 38.912075, 31.731016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967571, 38.597790, 31.765417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072340, 0.164083, 0.983791,
		-0.787089, 0.596432, -0.157353,
		-0.612584, -0.785713, 0.086002,
		32.783794, 38.362076, 31.791218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822277, 39.237183, 32.215279>,  <33.212605, 38.912075, 31.731016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822277, 39.237183, 32.215279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735352, 38.847179, 32.233734>,  <32.683197, 38.613178, 32.244808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735352, 38.847179, 32.233734>,  <32.822277, 39.237183, 32.215279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735352, 38.847179, 32.233734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196949, 0.090091, 0.976266,
		-0.956026, 0.203071, -0.211605,
		-0.217315, -0.975011, 0.046134,
		32.670158, 38.554676, 32.247574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155724, 39.240379, 32.573776>,  <32.822277, 39.237183, 32.215279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155724, 39.240379, 32.573776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338367, 38.885979, 32.606045>,  <32.447956, 38.673340, 32.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338367, 38.885979, 32.606045>,  <32.155724, 39.240379, 32.573776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338367, 38.885979, 32.606045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211069, -0.019792, 0.977271,
		-0.864266, -0.463262, -0.196045,
		0.456612, -0.886001, 0.080675,
		32.475349, 38.620178, 32.630249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765949, 38.908695, 33.113583>,  <32.155724, 39.240379, 32.573776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765949, 38.908695, 33.113583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110638, 38.706699, 33.093872>,  <32.317451, 38.585503, 33.082047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110638, 38.706699, 33.093872>,  <31.765949, 38.908695, 33.113583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110638, 38.706699, 33.093872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027702, -0.050146, 0.998358,
		-0.506629, -0.861669, -0.029222,
		0.861719, -0.504987, -0.049275,
		32.369152, 38.555202, 33.079090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573702, 38.275364, 33.464619>,  <31.765949, 38.908695, 33.113583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573702, 38.275364, 33.464619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973028, 38.295609, 33.453300>,  <32.212624, 38.307755, 33.446510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973028, 38.295609, 33.453300>,  <31.573702, 38.275364, 33.464619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973028, 38.295609, 33.453300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036400, -0.167081, 0.985271,
		0.045138, -0.984643, -0.168642,
		0.998317, 0.050612, -0.028299,
		32.272522, 38.310791, 33.444809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770647, 37.722401, 33.888317>,  <31.573702, 38.275364, 33.464619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770647, 37.722401, 33.888317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097473, 37.952637, 33.875076>,  <32.293568, 38.090778, 33.867130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097473, 37.952637, 33.875076>,  <31.770647, 37.722401, 33.888317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097473, 37.952637, 33.875076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051303, -0.015394, 0.998565,
		0.574259, -0.817590, -0.042108,
		0.817065, 0.575595, -0.033105,
		32.342594, 38.125317, 33.865147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347397, 37.356472, 34.320076>,  <31.770647, 37.722401, 33.888317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347397, 37.356472, 34.320076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451691, 37.741127, 34.285954>,  <32.514267, 37.971920, 34.265480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451691, 37.741127, 34.285954>,  <32.347397, 37.356472, 34.320076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451691, 37.741127, 34.285954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333384, -0.006761, 0.942767,
		0.906019, -0.274255, -0.322356,
		0.260738, 0.961633, -0.085307,
		32.529911, 38.029617, 34.260361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970890, 37.337006, 34.532860>,  <32.347397, 37.356472, 34.320076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970890, 37.337006, 34.532860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844894, 37.714870, 34.569508>,  <32.769299, 37.941589, 34.591496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844894, 37.714870, 34.569508>,  <32.970890, 37.337006, 34.532860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844894, 37.714870, 34.569508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080216, -0.122685, 0.989199,
		0.945699, 0.304238, 0.114422,
		-0.314990, 0.944663, 0.091619,
		32.750397, 37.998268, 34.596992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445801, 37.731403, 34.977779>,  <32.970890, 37.337006, 34.532860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445801, 37.731403, 34.977779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063309, 37.841827, 35.016586>,  <32.833813, 37.908081, 35.039871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063309, 37.841827, 35.016586>,  <33.445801, 37.731403, 34.977779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063309, 37.841827, 35.016586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021897, -0.263108, 0.964518,
		0.291787, 0.924428, 0.245548,
		-0.956233, 0.276057, 0.097014,
		32.776440, 37.924644, 35.045689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771175, 37.232376, 34.579189>,  <33.445801, 37.731403, 34.977779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771175, 37.232376, 34.579189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100185, 37.124405, 34.779423>,  <34.297592, 37.059624, 34.899563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100185, 37.124405, 34.779423>,  <33.771175, 37.232376, 34.579189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100185, 37.124405, 34.779423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539663, 0.092666, -0.836765,
		0.179479, 0.958411, 0.221891,
		0.822527, -0.269929, 0.500588,
		34.346943, 37.043427, 34.929600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249786, 37.675217, 34.372505>,  <33.771175, 37.232376, 34.579189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249786, 37.675217, 34.372505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458252, 37.363087, 34.510769>,  <34.583332, 37.175808, 34.593727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458252, 37.363087, 34.510769>,  <34.249786, 37.675217, 34.372505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458252, 37.363087, 34.510769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625672, 0.073875, -0.776580,
		0.580449, 0.620996, 0.526729,
		0.521166, -0.780324, 0.345659,
		34.614601, 37.128990, 34.614468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955700, 37.858585, 34.209461>,  <34.249786, 37.675217, 34.372505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955700, 37.858585, 34.209461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961533, 37.467648, 34.293926>,  <34.965034, 37.233086, 34.344604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961533, 37.467648, 34.293926>,  <34.955700, 37.858585, 34.209461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961533, 37.467648, 34.293926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618802, -0.157061, -0.769685,
		0.785411, 0.141892, 0.602491,
		0.014584, -0.977342, 0.211161,
		34.965908, 37.174446, 34.357273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729038, 37.631962, 34.334370>,  <34.955700, 37.858585, 34.209461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729038, 37.631962, 34.334370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523632, 37.305355, 34.228844>,  <35.400387, 37.109390, 34.165527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523632, 37.305355, 34.228844>,  <35.729038, 37.631962, 34.334370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523632, 37.305355, 34.228844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686787, -0.206784, -0.696825,
		0.514416, -0.539018, 0.666960,
		-0.513518, -0.816517, -0.263817,
		35.369576, 37.060398, 34.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291145, 37.373066, 33.996632>,  <35.729038, 37.631962, 34.334370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291145, 37.373066, 33.996632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965679, 37.169876, 33.883556>,  <35.770401, 37.047962, 33.815712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965679, 37.169876, 33.883556>,  <36.291145, 37.373066, 33.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965679, 37.169876, 33.883556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450950, -0.244631, -0.858370,
		0.366874, -0.825904, 0.428118,
		-0.813663, -0.507974, -0.282693,
		35.721581, 37.017483, 33.798748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519737, 36.850956, 33.587421>,  <36.291145, 37.373066, 33.996632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519737, 36.850956, 33.587421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131065, 36.817799, 33.498901>,  <35.897861, 36.797905, 33.445789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131065, 36.817799, 33.498901>,  <36.519737, 36.850956, 33.587421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131065, 36.817799, 33.498901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234914, -0.440511, -0.866467,
		-0.025664, -0.893912, 0.447506,
		-0.971677, -0.082889, -0.221298,
		35.839561, 36.792931, 33.432510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363609, 36.071991, 33.370632>,  <36.519737, 36.850956, 33.587421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363609, 36.071991, 33.370632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079941, 36.303207, 33.209167>,  <35.909740, 36.441936, 33.112289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079941, 36.303207, 33.209167>,  <36.363609, 36.071991, 33.370632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079941, 36.303207, 33.209167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322612, -0.243024, -0.914801,
		-0.626891, -0.778979, -0.014136,
		-0.709175, 0.578041, -0.403658,
		35.867188, 36.476620, 33.088070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083561, 35.635071, 32.817181>,  <36.363609, 36.071991, 33.370632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083561, 35.635071, 32.817181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986450, 36.010818, 32.720310>,  <35.928185, 36.236267, 32.662186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986450, 36.010818, 32.720310>,  <36.083561, 35.635071, 32.817181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986450, 36.010818, 32.720310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108009, -0.221922, -0.969064,
		-0.964051, -0.261421, -0.047583,
		-0.242774, 0.939366, -0.242180,
		35.913616, 36.292629, 32.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727085, 35.658508, 32.127415>,  <36.083561, 35.635071, 32.817181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727085, 35.658508, 32.127415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857174, 36.034782, 32.166065>,  <35.935226, 36.260548, 32.189255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857174, 36.034782, 32.166065>,  <35.727085, 35.658508, 32.127415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857174, 36.034782, 32.166065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114419, 0.062287, -0.991478,
		-0.938691, 0.333505, -0.087375,
		0.325220, 0.940689, 0.096628,
		35.954739, 36.316990, 32.195053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408192, 36.030754, 31.565117>,  <35.727085, 35.658508, 32.127415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408192, 36.030754, 31.565117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701958, 36.281574, 31.668997>,  <35.878216, 36.432068, 31.731325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701958, 36.281574, 31.668997>,  <35.408192, 36.030754, 31.565117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701958, 36.281574, 31.668997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106697, 0.271218, -0.956586,
		-0.670265, 0.730237, 0.132281,
		0.734412, 0.627052, 0.259702,
		35.922283, 36.469688, 31.746908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307121, 36.627640, 31.130297>,  <35.408192, 36.030754, 31.565117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307121, 36.627640, 31.130297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683369, 36.672276, 31.258532>,  <35.909119, 36.699059, 31.335472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683369, 36.672276, 31.258532>,  <35.307121, 36.627640, 31.130297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683369, 36.672276, 31.258532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319978, 0.023826, -0.947125,
		-0.113330, 0.993468, -0.013296,
		0.940623, 0.111592, 0.320588,
		35.965557, 36.705753, 31.354708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481567, 37.211452, 30.874771>,  <35.307121, 36.627640, 31.130297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481567, 37.211452, 30.874771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805363, 36.982548, 30.927288>,  <35.999641, 36.845203, 30.958799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805363, 36.982548, 30.927288>,  <35.481567, 37.211452, 30.874771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805363, 36.982548, 30.927288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231226, 0.105174, -0.967198,
		0.539685, 0.813296, 0.217460,
		0.809490, -0.572265, 0.131294,
		36.048210, 36.810867, 30.966677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935173, 37.610916, 30.491421>,  <35.481567, 37.211452, 30.874771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935173, 37.610916, 30.491421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132580, 37.269863, 30.560072>,  <36.251026, 37.065231, 30.601263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132580, 37.269863, 30.560072>,  <35.935173, 37.610916, 30.491421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132580, 37.269863, 30.560072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170874, -0.098433, -0.980364,
		0.852784, 0.513155, 0.097114,
		0.493520, -0.852633, 0.171627,
		36.280636, 37.014072, 30.611561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511215, 37.658779, 30.038591>,  <35.935173, 37.610916, 30.491421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511215, 37.658779, 30.038591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428757, 37.279766, 30.136320>,  <36.379280, 37.052361, 30.194958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428757, 37.279766, 30.136320>,  <36.511215, 37.658779, 30.038591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428757, 37.279766, 30.136320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079737, -0.232587, -0.969302,
		0.975267, -0.219299, -0.027606,
		-0.206146, -0.947529, 0.244320,
		36.366913, 36.995506, 30.209616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974400, 37.180622, 29.693674>,  <36.511215, 37.658779, 30.038591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974400, 37.180622, 29.693674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646980, 36.967731, 29.780132>,  <36.450531, 36.839996, 29.832006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646980, 36.967731, 29.780132>,  <36.974400, 37.180622, 29.693674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646980, 36.967731, 29.780132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066737, -0.285616, -0.956018,
		0.570553, -0.796968, 0.198270,
		-0.818545, -0.532226, 0.216146,
		36.401417, 36.808064, 29.844976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118973, 36.376831, 29.477285>,  <36.974400, 37.180622, 29.693674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118973, 36.376831, 29.477285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727711, 36.456993, 29.499367>,  <36.492954, 36.505089, 29.512615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727711, 36.456993, 29.499367>,  <37.118973, 36.376831, 29.477285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727711, 36.456993, 29.499367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117410, -0.313499, -0.942302,
		-0.171536, -0.928200, 0.330180,
		-0.978156, 0.200405, 0.055203,
		36.434265, 36.517113, 29.515928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849743, 35.882919, 29.003389>,  <37.118973, 36.376831, 29.477285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849743, 35.882919, 29.003389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573498, 36.170673, 29.033167>,  <36.407753, 36.343327, 29.051033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573498, 36.170673, 29.033167>,  <36.849743, 35.882919, 29.003389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573498, 36.170673, 29.033167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104758, 0.002344, -0.994495,
		-0.715601, -0.694606, 0.073743,
		-0.690610, 0.719387, 0.074443,
		36.366314, 36.386490, 29.055500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350178, 35.594799, 28.574640>,  <36.849743, 35.882919, 29.003389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350178, 35.594799, 28.574640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186058, 35.954006, 28.638161>,  <36.087585, 36.169529, 28.676273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186058, 35.954006, 28.638161>,  <36.350178, 35.594799, 28.574640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186058, 35.954006, 28.638161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254412, 0.054506, -0.965559,
		-0.875746, -0.436568, 0.206103,
		-0.410298, 0.898019, 0.158802,
		36.062969, 36.223412, 28.685801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641193, 35.601078, 28.266918>,  <36.350178, 35.594799, 28.574640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641193, 35.601078, 28.266918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787216, 35.972973, 28.286205>,  <35.874828, 36.196110, 28.297777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787216, 35.972973, 28.286205>,  <35.641193, 35.601078, 28.266918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787216, 35.972973, 28.286205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239728, 0.143922, -0.960113,
		-0.899591, 0.338937, 0.275423,
		0.365057, 0.929735, 0.048219,
		35.896732, 36.251892, 28.300671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218395, 35.931667, 27.748184>,  <35.641193, 35.601078, 28.266918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218395, 35.931667, 27.748184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504143, 36.198750, 27.831945>,  <35.675591, 36.358997, 27.882202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504143, 36.198750, 27.831945>,  <35.218395, 35.931667, 27.748184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504143, 36.198750, 27.831945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086641, 0.212551, -0.973301,
		-0.694386, 0.713438, 0.093989,
		0.714368, 0.667704, 0.209405,
		35.718452, 36.399059, 27.894768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119709, 36.649982, 27.530079>,  <35.218395, 35.931667, 27.748184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119709, 36.649982, 27.530079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507404, 36.551609, 27.526138>,  <35.740021, 36.492584, 27.523775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507404, 36.551609, 27.526138>,  <35.119709, 36.649982, 27.530079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507404, 36.551609, 27.526138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016003, -0.023033, -0.999607,
		0.245614, 0.969012, -0.026260,
		0.969236, -0.245938, -0.009850,
		35.798176, 36.477829, 27.523184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434944, 36.956062, 26.999325>,  <35.119709, 36.649982, 27.530079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434944, 36.956062, 26.999325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659950, 36.638554, 27.091850>,  <35.794952, 36.448048, 27.147366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659950, 36.638554, 27.091850>,  <35.434944, 36.956062, 26.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659950, 36.638554, 27.091850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162380, -0.168261, -0.972276,
		0.810687, 0.584478, 0.034243,
		0.562512, -0.793772, 0.231314,
		35.828705, 36.400421, 27.161245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018402, 36.933853, 26.568436>,  <35.434944, 36.956062, 26.999325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018402, 36.933853, 26.568436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002075, 36.556175, 26.699171>,  <35.992279, 36.329567, 26.777613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002075, 36.556175, 26.699171>,  <36.018402, 36.933853, 26.568436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002075, 36.556175, 26.699171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027366, -0.328044, -0.944266,
		0.998792, -0.029595, 0.039228,
		-0.040814, -0.944199, 0.326838,
		35.989830, 36.272915, 26.797222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495857, 36.664501, 26.303658>,  <36.018402, 36.933853, 26.568436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495857, 36.664501, 26.303658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266884, 36.346260, 26.382992>,  <36.129501, 36.155315, 26.430592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266884, 36.346260, 26.382992>,  <36.495857, 36.664501, 26.303658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266884, 36.346260, 26.382992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056421, -0.203094, -0.977532,
		0.818011, -0.570758, 0.071368,
		-0.572429, -0.795605, 0.198335,
		36.095154, 36.107578, 26.442492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701324, 36.189896, 25.857861>,  <36.495857, 36.664501, 26.303658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701324, 36.189896, 25.857861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332970, 36.064423, 25.950451>,  <36.111958, 35.989140, 26.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332970, 36.064423, 25.950451>,  <36.701324, 36.189896, 25.857861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332970, 36.064423, 25.950451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175691, -0.196109, -0.964715,
		0.348006, -0.929056, 0.125482,
		-0.920882, -0.313681, 0.231474,
		36.056705, 35.970318, 26.019894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685627, 35.413719, 25.647030>,  <36.701324, 36.189896, 25.857861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685627, 35.413719, 25.647030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317204, 35.568493, 25.664640>,  <36.096149, 35.661358, 25.675207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317204, 35.568493, 25.664640>,  <36.685627, 35.413719, 25.647030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317204, 35.568493, 25.664640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191356, -0.351216, -0.916532,
		-0.339156, -0.852609, 0.397531,
		-0.921063, 0.386917, 0.044035,
		36.040886, 35.684574, 25.677849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315880, 34.903908, 25.631491>,  <36.685627, 35.413719, 25.647030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315880, 34.903908, 25.631491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066952, 35.194683, 25.515371>,  <35.917595, 35.369148, 25.445700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066952, 35.194683, 25.515371>,  <36.315880, 34.903908, 25.631491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066952, 35.194683, 25.515371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016081, -0.382661, -0.923749,
		-0.782597, -0.570200, 0.249827,
		-0.622321, 0.726941, -0.290300,
		35.880257, 35.412766, 25.428282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920719, 34.596844, 25.175711>,  <36.315880, 34.903908, 25.631491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920719, 34.596844, 25.175711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830135, 34.974285, 25.079103>,  <35.775784, 35.200748, 25.021139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830135, 34.974285, 25.079103>,  <35.920719, 34.596844, 25.175711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830135, 34.974285, 25.079103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121452, -0.273378, -0.954208,
		-0.966419, -0.186756, 0.176511,
		-0.226458, 0.943603, -0.241516,
		35.762199, 35.257366, 25.006649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299751, 34.511177, 24.713934>,  <35.920719, 34.596844, 25.175711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299751, 34.511177, 24.713934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468685, 34.868801, 24.654222>,  <35.570045, 35.083378, 24.618395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468685, 34.868801, 24.654222>,  <35.299751, 34.511177, 24.713934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468685, 34.868801, 24.654222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149519, -0.093719, -0.984307,
		-0.894024, 0.438026, 0.094099,
		0.422333, 0.894064, -0.149280,
		35.595387, 35.137020, 24.609438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776520, 34.951492, 24.204857>,  <35.299751, 34.511177, 24.713934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776520, 34.951492, 24.204857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150215, 35.093510, 24.218399>,  <35.374432, 35.178722, 24.226524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150215, 35.093510, 24.218399>,  <34.776520, 34.951492, 24.204857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150215, 35.093510, 24.218399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120638, -0.225246, -0.966804,
		-0.335634, 0.907307, -0.253265,
		0.934236, 0.355046, 0.033855,
		35.430485, 35.200024, 24.228556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918438, 35.374531, 23.571093>,  <34.776520, 34.951492, 24.204857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918438, 35.374531, 23.571093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288464, 35.268002, 23.679415>,  <35.510479, 35.204086, 23.744408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288464, 35.268002, 23.679415>,  <34.918438, 35.374531, 23.571093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288464, 35.268002, 23.679415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225463, -0.188742, -0.955795,
		0.305659, 0.945225, -0.114552,
		0.925062, -0.266320, 0.270804,
		35.565983, 35.188107, 23.760656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378780, 35.729328, 23.017767>,  <34.918438, 35.374531, 23.571093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378780, 35.729328, 23.017767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565166, 35.420002, 23.189751>,  <35.676998, 35.234406, 23.292940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565166, 35.420002, 23.189751>,  <35.378780, 35.729328, 23.017767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565166, 35.420002, 23.189751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345738, -0.288168, -0.892986,
		0.814456, 0.564756, 0.133086,
		0.465968, -0.773311, 0.429958,
		35.704956, 35.188007, 23.318739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064697, 35.763287, 22.831064>,  <35.378780, 35.729328, 23.017767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064697, 35.763287, 22.831064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032482, 35.377075, 22.930075>,  <36.013153, 35.145348, 22.989481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032482, 35.377075, 22.930075>,  <36.064697, 35.763287, 22.831064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032482, 35.377075, 22.930075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514233, -0.252982, -0.819490,
		0.853860, 0.061284, 0.516882,
		-0.080540, -0.965528, 0.247525,
		36.008320, 35.087418, 23.004332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711964, 35.427486, 22.726345>,  <36.064697, 35.763287, 22.831064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711964, 35.427486, 22.726345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444717, 35.130043, 22.736662>,  <36.284370, 34.951576, 22.742851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444717, 35.130043, 22.736662>,  <36.711964, 35.427486, 22.726345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444717, 35.130043, 22.736662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308182, -0.308114, -0.900050,
		0.677232, -0.593390, 0.435023,
		-0.668117, -0.743609, 0.025793,
		36.244282, 34.906960, 22.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952663, 35.027145, 22.290380>,  <36.711964, 35.427486, 22.726345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952663, 35.027145, 22.290380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594303, 34.855053, 22.334692>,  <36.379288, 34.751797, 22.361279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594303, 34.855053, 22.334692>,  <36.952663, 35.027145, 22.290380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594303, 34.855053, 22.334692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071498, -0.385732, -0.919836,
		0.438470, -0.816158, 0.376336,
		-0.895897, -0.430228, 0.110778,
		36.325535, 34.725983, 22.367926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004910, 34.391369, 22.058830>,  <36.952663, 35.027145, 22.290380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004910, 34.391369, 22.058830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610222, 34.446793, 22.024918>,  <36.373409, 34.480049, 22.004570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610222, 34.446793, 22.024918>,  <37.004910, 34.391369, 22.058830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610222, 34.446793, 22.024918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008984, -0.474572, -0.880171,
		-0.162192, -0.869243, 0.467024,
		-0.986718, 0.138561, -0.084781,
		36.314205, 34.488361, 21.999483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802288, 33.875706, 21.514387>,  <37.004910, 34.391369, 22.058830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802288, 33.875706, 21.514387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489147, 34.124241, 21.527552>,  <36.301262, 34.273361, 21.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489147, 34.124241, 21.527552>,  <36.802288, 33.875706, 21.514387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489147, 34.124241, 21.527552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316091, -0.351582, -0.881179,
		-0.535944, -0.700231, 0.471636,
		-0.782848, 0.621342, 0.032909,
		36.254292, 34.310642, 21.537424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628784, 33.247238, 21.349054>,  <36.802288, 33.875706, 21.514387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628784, 33.247238, 21.349054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959270, 33.025440, 21.309259>,  <37.157562, 32.892361, 21.285381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959270, 33.025440, 21.309259>,  <36.628784, 33.247238, 21.349054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959270, 33.025440, 21.309259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263692, 0.224596, 0.938095,
		-0.497827, -0.801305, 0.331782,
		0.826217, -0.554497, -0.099488,
		37.207134, 32.859093, 21.279413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701164, 32.912117, 22.023693>,  <36.628784, 33.247238, 21.349054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701164, 32.912117, 22.023693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058399, 32.887608, 21.845417>,  <37.272739, 32.872902, 21.738451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058399, 32.887608, 21.845417>,  <36.701164, 32.912117, 22.023693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058399, 32.887608, 21.845417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449790, 0.141830, 0.881801,
		0.009179, -0.987993, 0.154228,
		0.893087, -0.061276, -0.445691,
		37.326324, 32.869225, 21.711710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987514, 32.371944, 22.462143>,  <36.701164, 32.912117, 22.023693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987514, 32.371944, 22.462143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290672, 32.553825, 22.275023>,  <37.472569, 32.662952, 22.162750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290672, 32.553825, 22.275023>,  <36.987514, 32.371944, 22.462143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290672, 32.553825, 22.275023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506625, 0.041534, 0.861166,
		0.411001, -0.889676, -0.198883,
		0.757899, 0.454699, -0.467803,
		37.518044, 32.690235, 22.134682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570480, 32.141335, 22.720793>,  <36.987514, 32.371944, 22.462143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570480, 32.141335, 22.720793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671299, 32.498539, 22.571657>,  <37.731789, 32.712860, 22.482176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671299, 32.498539, 22.571657>,  <37.570480, 32.141335, 22.720793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671299, 32.498539, 22.571657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470141, 0.223759, 0.853756,
		0.845837, -0.390473, -0.363443,
		0.252045, 0.893008, -0.372841,
		37.746914, 32.766441, 22.459805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218254, 32.043808, 22.707092>,  <37.570480, 32.141335, 22.720793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218254, 32.043808, 22.707092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107143, 32.427746, 22.722776>,  <38.040478, 32.658108, 22.732187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107143, 32.427746, 22.722776>,  <38.218254, 32.043808, 22.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107143, 32.427746, 22.722776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454204, 0.095261, 0.885790,
		0.846485, 0.263863, -0.462427,
		-0.277779, 0.959845, 0.039210,
		38.023811, 32.715698, 22.734539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796913, 32.378750, 22.853958>,  <38.218254, 32.043808, 22.707092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796913, 32.378750, 22.853958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510479, 32.638134, 22.957283>,  <38.338619, 32.793766, 23.019278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510479, 32.638134, 22.957283>,  <38.796913, 32.378750, 22.853958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510479, 32.638134, 22.957283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396776, 0.073686, 0.914953,
		0.574277, 0.757674, -0.310059,
		-0.716083, 0.648460, 0.258310,
		38.295654, 32.832672, 23.034777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172512, 32.846073, 23.204407>,  <38.796913, 32.378750, 22.853958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172512, 32.846073, 23.204407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790775, 32.914783, 23.302162>,  <38.561733, 32.956009, 23.360815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790775, 32.914783, 23.302162>,  <39.172512, 32.846073, 23.204407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790775, 32.914783, 23.302162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294521, 0.404429, 0.865849,
		0.049893, 0.898293, -0.436555,
		-0.954342, 0.171774, 0.244388,
		38.504475, 32.966316, 23.375479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148193, 33.511955, 23.468599>,  <39.172512, 32.846073, 23.204407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148193, 33.511955, 23.468599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843956, 33.299843, 23.618429>,  <38.661415, 33.172577, 23.708326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843956, 33.299843, 23.618429>,  <39.148193, 33.511955, 23.468599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843956, 33.299843, 23.618429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263452, 0.275223, 0.924579,
		-0.593374, 0.801909, -0.069630,
		-0.760592, -0.530277, 0.374574,
		38.615780, 33.140759, 23.730801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959023, 33.881130, 24.135855>,  <39.148193, 33.511955, 23.468599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959023, 33.881130, 24.135855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749634, 33.540932, 24.156403>,  <38.624001, 33.336811, 24.168732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749634, 33.540932, 24.156403>,  <38.959023, 33.881130, 24.135855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749634, 33.540932, 24.156403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025135, 0.075676, 0.996816,
		-0.851675, 0.520509, -0.060992,
		-0.523467, -0.850496, 0.051368,
		38.592594, 33.285782, 24.171814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406307, 34.089298, 24.503235>,  <38.959023, 33.881130, 24.135855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406307, 34.089298, 24.503235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434925, 33.693401, 24.552704>,  <38.452095, 33.455864, 24.582386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434925, 33.693401, 24.552704>,  <38.406307, 34.089298, 24.503235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434925, 33.693401, 24.552704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147040, 0.112171, 0.982750,
		-0.986540, -0.088497, -0.137506,
		0.071546, -0.989740, 0.123674,
		38.456390, 33.396481, 24.589806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846230, 33.915653, 24.843714>,  <38.406307, 34.089298, 24.503235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846230, 33.915653, 24.843714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095867, 33.610538, 24.911438>,  <38.245647, 33.427471, 24.952072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095867, 33.610538, 24.911438>,  <37.846230, 33.915653, 24.843714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095867, 33.610538, 24.911438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124079, 0.117189, 0.985328,
		-0.771437, -0.635942, -0.021509,
		0.624090, -0.762788, 0.169312,
		38.283092, 33.381702, 24.962231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512653, 33.596088, 25.331631>,  <37.846230, 33.915653, 24.843714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512653, 33.596088, 25.331631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883591, 33.450077, 25.364607>,  <38.106152, 33.362469, 25.384392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883591, 33.450077, 25.364607>,  <37.512653, 33.596088, 25.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883591, 33.450077, 25.364607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032571, 0.140733, 0.989512,
		-0.372801, -0.920298, 0.118618,
		0.927340, -0.365027, 0.082441,
		38.161793, 33.340569, 25.389339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494862, 33.175777, 25.938963>,  <37.512653, 33.596088, 25.331631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494862, 33.175777, 25.938963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889248, 33.216999, 25.886429>,  <38.125881, 33.241730, 25.854908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889248, 33.216999, 25.886429>,  <37.494862, 33.175777, 25.938963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889248, 33.216999, 25.886429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110364, 0.187895, 0.975969,
		0.125248, -0.976768, 0.173886,
		0.985968, 0.103047, -0.131333,
		38.185040, 33.247913, 25.847029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890942, 32.737186, 26.489769>,  <37.494862, 33.175777, 25.938963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890942, 32.737186, 26.489769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121216, 33.040905, 26.368414>,  <38.259380, 33.223137, 26.295601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121216, 33.040905, 26.368414>,  <37.890942, 32.737186, 26.489769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121216, 33.040905, 26.368414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231990, 0.204116, 0.951061,
		0.784068, -0.617898, -0.058643,
		0.575689, 0.759301, -0.303387,
		38.293922, 33.268696, 26.277397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373901, 32.716225, 26.934364>,  <37.890942, 32.737186, 26.489769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373901, 32.716225, 26.934364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395908, 33.089085, 26.791216>,  <38.409115, 33.312801, 26.705326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395908, 33.089085, 26.791216>,  <38.373901, 32.716225, 26.934364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395908, 33.089085, 26.791216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236651, 0.336028, 0.911637,
		0.970036, -0.134849, -0.202105,
		0.055020, 0.932148, -0.357872,
		38.412415, 33.368729, 26.683855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684517, 33.028023, 27.457653>,  <38.373901, 32.716225, 26.934364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684517, 33.028023, 27.457653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556202, 33.349892, 27.257814>,  <38.479214, 33.543015, 27.137911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556202, 33.349892, 27.257814>,  <38.684517, 33.028023, 27.457653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556202, 33.349892, 27.257814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282047, 0.584700, 0.760641,
		0.904182, 0.103094, -0.414520,
		-0.320788, 0.804672, -0.499597,
		38.459965, 33.591293, 27.107935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318653, 33.576069, 27.422731>,  <38.684517, 33.028023, 27.457653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318653, 33.576069, 27.422731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955910, 33.729847, 27.353668>,  <38.738262, 33.822113, 27.312229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955910, 33.729847, 27.353668>,  <39.318653, 33.576069, 27.422731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955910, 33.729847, 27.353668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128522, 0.642464, 0.755462,
		0.401358, 0.662907, -0.632033,
		-0.906859, 0.384441, -0.172660,
		38.683853, 33.845181, 27.301870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362698, 34.309589, 27.310116>,  <39.318653, 33.576069, 27.422731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362698, 34.309589, 27.310116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984280, 34.232494, 27.414314>,  <38.757229, 34.186237, 27.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984280, 34.232494, 27.414314>,  <39.362698, 34.309589, 27.310116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984280, 34.232494, 27.414314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067128, 0.669875, 0.739433,
		-0.317019, 0.717020, -0.620791,
		-0.946041, -0.192741, 0.260495,
		38.700466, 34.174671, 27.492462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021862, 34.883808, 27.319691>,  <39.362698, 34.309589, 27.310116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021862, 34.883808, 27.319691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797504, 34.666534, 27.569603>,  <38.662888, 34.536171, 27.719549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797504, 34.666534, 27.569603>,  <39.021862, 34.883808, 27.319691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797504, 34.666534, 27.569603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114776, 0.798402, 0.591085,
		-0.819890, 0.259829, -0.510166,
		-0.560898, -0.543180, 0.624779,
		38.629234, 34.503582, 27.757036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469456, 35.375240, 27.560078>,  <39.021862, 34.883808, 27.319691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469456, 35.375240, 27.560078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454922, 35.050701, 27.793451>,  <38.446201, 34.855976, 27.933475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454922, 35.050701, 27.793451>,  <38.469456, 35.375240, 27.560078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454922, 35.050701, 27.793451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092652, 0.584038, 0.806421,
		-0.995035, -0.024753, -0.096396,
		-0.036338, -0.811349, 0.583432,
		38.444019, 34.807297, 27.968481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072353, 35.540310, 28.021952>,  <38.469456, 35.375240, 27.560078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072353, 35.540310, 28.021952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246078, 35.237637, 28.217422>,  <38.350311, 35.056034, 28.334705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246078, 35.237637, 28.217422>,  <38.072353, 35.540310, 28.021952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246078, 35.237637, 28.217422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115134, 0.491431, 0.863273,
		-0.893375, -0.431192, 0.126314,
		0.434311, -0.756683, 0.488677,
		38.376373, 35.010632, 28.364025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611420, 35.252438, 28.539566>,  <38.072353, 35.540310, 28.021952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611420, 35.252438, 28.539566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949776, 35.086636, 28.673820>,  <38.152790, 34.987156, 28.754374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949776, 35.086636, 28.673820>,  <37.611420, 35.252438, 28.539566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949776, 35.086636, 28.673820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214178, 0.312339, 0.925512,
		-0.488460, -0.854770, 0.175428,
		0.845893, -0.414503, 0.335638,
		38.203545, 34.962284, 28.774511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480602, 34.902569, 29.162788>,  <37.611420, 35.252438, 28.539566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480602, 34.902569, 29.162788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865562, 35.007507, 29.190937>,  <38.096539, 35.070469, 29.207827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865562, 35.007507, 29.190937>,  <37.480602, 34.902569, 29.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865562, 35.007507, 29.190937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168275, 0.372506, 0.912646,
		0.213214, -0.890176, 0.402648,
		0.962404, 0.262345, 0.070371,
		38.154285, 35.086212, 29.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628746, 34.582588, 29.773647>,  <37.480602, 34.902569, 29.162788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628746, 34.582588, 29.773647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915646, 34.857464, 29.727474>,  <38.087784, 35.022388, 29.699770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915646, 34.857464, 29.727474>,  <37.628746, 34.582588, 29.773647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915646, 34.857464, 29.727474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020087, 0.185980, 0.982348,
		0.696528, -0.702269, 0.147198,
		0.717248, 0.687190, -0.115434,
		38.130821, 35.063622, 29.692844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208187, 34.424011, 30.249018>,  <37.628746, 34.582588, 29.773647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208187, 34.424011, 30.249018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232052, 34.816925, 30.177950>,  <38.246368, 35.052673, 30.135309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232052, 34.816925, 30.177950>,  <38.208187, 34.424011, 30.249018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232052, 34.816925, 30.177950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150418, 0.167110, 0.974396,
		0.986821, -0.084857, -0.137783,
		0.059660, 0.982280, -0.177672,
		38.249950, 35.111610, 30.124649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866230, 34.603733, 30.641157>,  <38.208187, 34.424011, 30.249018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866230, 34.603733, 30.641157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681187, 34.953178, 30.580772>,  <38.570160, 35.162846, 30.544542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681187, 34.953178, 30.580772>,  <38.866230, 34.603733, 30.641157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681187, 34.953178, 30.580772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372814, 0.346184, 0.860910,
		0.804365, 0.341983, -0.485843,
		-0.462608, 0.873616, -0.150962,
		38.542404, 35.215263, 30.535484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338814, 35.153469, 30.806271>,  <38.866230, 34.603733, 30.641157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338814, 35.153469, 30.806271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974762, 35.312538, 30.852793>,  <38.756332, 35.407982, 30.880707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974762, 35.312538, 30.852793>,  <39.338814, 35.153469, 30.806271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974762, 35.312538, 30.852793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260981, 0.332201, 0.906384,
		0.321809, 0.855276, -0.406130,
		-0.910125, 0.397675, 0.116305,
		38.701725, 35.431839, 30.887684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470390, 35.822392, 31.090582>,  <39.338814, 35.153469, 30.806271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470390, 35.822392, 31.090582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085167, 35.749233, 31.169640>,  <38.854031, 35.705338, 31.217073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085167, 35.749233, 31.169640>,  <39.470390, 35.822392, 31.090582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085167, 35.749233, 31.169640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095318, 0.454915, 0.885419,
		-0.251850, 0.871551, -0.420678,
		-0.963061, -0.182895, 0.197645,
		38.796249, 35.694366, 31.228933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411770, 36.339207, 31.492874>,  <39.470390, 35.822392, 31.090582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411770, 36.339207, 31.492874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075283, 36.138695, 31.573938>,  <38.873390, 36.018387, 31.622578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075283, 36.138695, 31.573938>,  <39.411770, 36.339207, 31.492874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075283, 36.138695, 31.573938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120016, 0.538574, 0.833987,
		-0.527212, 0.677241, -0.513219,
		-0.841216, -0.501282, 0.202663,
		38.822918, 35.988312, 31.634737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766682, 36.838615, 31.618326>,  <39.411770, 36.339207, 31.492874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766682, 36.838615, 31.618326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711315, 36.485611, 31.798111>,  <38.678097, 36.273808, 31.905981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711315, 36.485611, 31.798111>,  <38.766682, 36.838615, 31.618326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711315, 36.485611, 31.798111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275449, 0.470226, 0.838460,
		-0.951299, -0.007749, -0.308173,
		-0.138413, -0.882512, 0.449460,
		38.669792, 36.220856, 31.932949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198730, 36.889248, 32.051781>,  <38.766682, 36.838615, 31.618326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198730, 36.889248, 32.051781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355492, 36.565392, 32.226547>,  <38.449547, 36.371078, 32.331406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355492, 36.565392, 32.226547>,  <38.198730, 36.889248, 32.051781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355492, 36.565392, 32.226547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201052, 0.388056, 0.899439,
		-0.897769, -0.440336, -0.010699,
		0.391904, -0.809640, 0.436915,
		38.473064, 36.322498, 32.357620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852177, 36.863922, 32.578869>,  <38.198730, 36.889248, 32.051781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852177, 36.863922, 32.578869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115990, 36.597034, 32.717342>,  <38.274277, 36.436901, 32.800426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115990, 36.597034, 32.717342>,  <37.852177, 36.863922, 32.578869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115990, 36.597034, 32.717342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267440, 0.222127, 0.937622,
		-0.702493, -0.710973, -0.031941,
		0.659529, -0.667216, 0.346185,
		38.313850, 36.396870, 32.821198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550274, 36.666309, 33.191795>,  <37.852177, 36.863922, 32.578869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550274, 36.666309, 33.191795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938171, 36.568813, 33.197247>,  <38.170910, 36.510315, 33.200516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938171, 36.568813, 33.197247>,  <37.550274, 36.666309, 33.191795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938171, 36.568813, 33.197247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009061, 0.019849, 0.999762,
		-0.243955, -0.969637, 0.017040,
		0.969744, -0.243743, 0.013629,
		38.229095, 36.495689, 33.201336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613678, 36.121307, 33.659378>,  <37.550274, 36.666309, 33.191795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613678, 36.121307, 33.659378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980213, 36.280510, 33.641815>,  <38.200134, 36.376030, 33.631279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980213, 36.280510, 33.641815>,  <37.613678, 36.121307, 33.659378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980213, 36.280510, 33.641815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022542, 0.058197, 0.998051,
		0.399782, -0.915536, 0.044356,
		0.916333, 0.398003, -0.043904,
		38.255112, 36.399910, 33.628643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096058, 35.744339, 34.112789>,  <37.613678, 36.121307, 33.659378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096058, 35.744339, 34.112789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299786, 36.082275, 34.047256>,  <38.422020, 36.285038, 34.007938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299786, 36.082275, 34.047256>,  <38.096058, 35.744339, 34.112789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299786, 36.082275, 34.047256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322103, -0.010610, 0.946645,
		0.798027, -0.534911, -0.277530,
		0.509315, 0.844842, -0.163829,
		38.452579, 36.335728, 33.998108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672848, 35.642326, 34.458260>,  <38.096058, 35.744339, 34.112789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672848, 35.642326, 34.458260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646824, 36.039436, 34.417938>,  <38.631210, 36.277702, 34.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646824, 36.039436, 34.417938>,  <38.672848, 35.642326, 34.458260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646824, 36.039436, 34.417938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224766, 0.112997, 0.967839,
		0.972238, 0.040314, -0.230495,
		-0.065063, 0.992777, -0.100799,
		38.627304, 36.337269, 34.387699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118786, 35.796478, 34.949669>,  <38.672848, 35.642326, 34.458260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118786, 35.796478, 34.949669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903706, 36.127651, 34.885914>,  <38.774658, 36.326355, 34.847660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903706, 36.127651, 34.885914>,  <39.118786, 35.796478, 34.949669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903706, 36.127651, 34.885914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022046, 0.202780, 0.978976,
		0.842848, 0.522881, -0.127287,
		-0.537700, 0.827934, -0.159385,
		38.742397, 36.376030, 34.838097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345058, 36.268784, 35.465027>,  <39.118786, 35.796478, 34.949669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345058, 36.268784, 35.465027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998325, 36.444279, 35.370274>,  <38.790287, 36.549576, 35.313419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998325, 36.444279, 35.370274>,  <39.345058, 36.268784, 35.465027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998325, 36.444279, 35.370274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130626, 0.258676, 0.957091,
		0.481186, 0.860581, -0.166918,
		-0.866832, 0.438735, -0.236885,
		38.738277, 36.575901, 35.299210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317390, 37.012035, 35.790539>,  <39.345058, 36.268784, 35.465027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317390, 37.012035, 35.790539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946972, 36.875885, 35.725315>,  <38.724720, 36.794197, 35.686180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946972, 36.875885, 35.725315>,  <39.317390, 37.012035, 35.790539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946972, 36.875885, 35.725315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202017, 0.082089, 0.975936,
		-0.318797, 0.936700, -0.144779,
		-0.926044, -0.340374, -0.163060,
		38.669159, 36.773773, 35.676395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917248, 37.376801, 36.223621>,  <39.317390, 37.012035, 35.790539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917248, 37.376801, 36.223621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694679, 37.052692, 36.150028>,  <38.561138, 36.858227, 36.105873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694679, 37.052692, 36.150028>,  <38.917248, 37.376801, 36.223621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694679, 37.052692, 36.150028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243847, -0.052430, 0.968395,
		-0.794312, 0.583700, -0.168410,
		-0.556423, -0.810274, -0.183980,
		38.527752, 36.809608, 36.094833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135105, 37.570835, 36.455296>,  <38.917248, 37.376801, 36.223621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135105, 37.570835, 36.455296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156445, 37.173935, 36.410412>,  <38.169247, 36.935795, 36.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156445, 37.173935, 36.410412>,  <38.135105, 37.570835, 36.455296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156445, 37.173935, 36.410412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387773, -0.124141, 0.913358,
		-0.920210, -0.005214, -0.391391,
		0.053350, -0.992251, -0.112214,
		38.172451, 36.876259, 36.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476788, 37.209217, 36.722382>,  <38.135105, 37.570835, 36.455296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476788, 37.209217, 36.722382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757481, 36.924248, 36.720596>,  <37.925896, 36.753265, 36.719524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757481, 36.924248, 36.720596>,  <37.476788, 37.209217, 36.722382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757481, 36.924248, 36.720596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298685, -0.299883, 0.906012,
		-0.646804, -0.634447, -0.423228,
		0.701735, -0.712424, -0.004466,
		37.968002, 36.710522, 36.719257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116657, 36.533005, 36.889107>,  <37.476788, 37.209217, 36.722382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116657, 36.533005, 36.889107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495327, 36.428555, 36.964600>,  <37.722530, 36.365883, 37.009895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495327, 36.428555, 36.964600>,  <37.116657, 36.533005, 36.889107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495327, 36.428555, 36.964600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299045, -0.494108, 0.816351,
		-0.119915, -0.829259, -0.545847,
		0.946674, -0.261126, 0.188735,
		37.779327, 36.350216, 37.021221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010399, 35.892471, 37.175934>,  <37.116657, 36.533005, 36.889107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010399, 35.892471, 37.175934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363232, 36.032444, 37.302097>,  <37.574932, 36.116428, 37.377796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363232, 36.032444, 37.302097>,  <37.010399, 35.892471, 37.175934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363232, 36.032444, 37.302097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222149, -0.281434, 0.933512,
		0.415434, -0.893500, -0.170510,
		0.882080, 0.349934, 0.315407,
		37.627857, 36.137424, 37.396721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330399, 35.309452, 37.594791>,  <37.010399, 35.892471, 37.175934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330399, 35.309452, 37.594791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517693, 35.647114, 37.699223>,  <37.630070, 35.849709, 37.761883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517693, 35.647114, 37.699223>,  <37.330399, 35.309452, 37.594791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517693, 35.647114, 37.699223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169498, -0.204172, 0.964149,
		0.867192, -0.495705, 0.047480,
		0.468239, 0.844151, 0.261077,
		37.658165, 35.900360, 37.777546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638229, 35.111408, 38.197376>,  <37.330399, 35.309452, 37.594791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638229, 35.111408, 38.197376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665855, 35.509254, 38.228306>,  <37.682430, 35.747963, 38.246864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665855, 35.509254, 38.228306>,  <37.638229, 35.111408, 38.197376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665855, 35.509254, 38.228306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079014, -0.071814, 0.994283,
		0.994478, -0.074779, 0.073629,
		0.069064, 0.994611, 0.077327,
		37.686573, 35.807636, 38.251503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934921, 35.273773, 38.832851>,  <37.638229, 35.111408, 38.197376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934921, 35.273773, 38.832851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808487, 35.643475, 38.747200>,  <37.732628, 35.865295, 38.695808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808487, 35.643475, 38.747200>,  <37.934921, 35.273773, 38.832851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808487, 35.643475, 38.747200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040391, 0.212388, 0.976350,
		0.947870, 0.317258, -0.029801,
		-0.316085, 0.924250, -0.214131,
		37.713661, 35.920750, 38.682961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434925, 35.758701, 39.148739>,  <37.934921, 35.273773, 38.832851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434925, 35.758701, 39.148739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059731, 35.893665, 39.116905>,  <37.834614, 35.974644, 39.097805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059731, 35.893665, 39.116905>,  <38.434925, 35.758701, 39.148739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059731, 35.893665, 39.116905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035123, 0.135889, 0.990101,
		0.344885, 0.931498, -0.115611,
		-0.937988, 0.337410, -0.079583,
		37.778336, 35.994888, 39.093029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403477, 36.309841, 39.592010>,  <38.434925, 35.758701, 39.148739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403477, 36.309841, 39.592010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016418, 36.227715, 39.533348>,  <37.784184, 36.178436, 39.498150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016418, 36.227715, 39.533348>,  <38.403477, 36.309841, 39.592010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016418, 36.227715, 39.533348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182499, 0.168156, 0.968720,
		-0.174237, 0.964141, -0.200186,
		-0.967645, -0.205320, -0.146655,
		37.726124, 36.166119, 39.489353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976120, 36.859417, 39.900013>,  <38.403477, 36.309841, 39.592010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976120, 36.859417, 39.900013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742233, 36.535019, 39.892136>,  <37.601902, 36.340378, 39.887409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742233, 36.535019, 39.892136>,  <37.976120, 36.859417, 39.900013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742233, 36.535019, 39.892136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272672, 0.173617, 0.946312,
		-0.764040, 0.558693, -0.322653,
		-0.584716, -0.810999, -0.019689,
		37.566818, 36.291718, 39.886230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362514, 37.070702, 40.381260>,  <37.976120, 36.859417, 39.900013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362514, 37.070702, 40.381260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289680, 36.685684, 40.300900>,  <37.245979, 36.454674, 40.252686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289680, 36.685684, 40.300900>,  <37.362514, 37.070702, 40.381260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289680, 36.685684, 40.300900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562653, -0.065562, 0.824089,
		-0.806391, 0.263091, -0.529638,
		-0.182086, -0.962541, -0.200897,
		37.235054, 36.396923, 40.240631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686954, 37.063484, 40.564789>,  <37.362514, 37.070702, 40.381260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686954, 37.063484, 40.564789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855389, 36.700752, 40.572311>,  <36.956448, 36.483112, 40.576824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855389, 36.700752, 40.572311>,  <36.686954, 37.063484, 40.564789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855389, 36.700752, 40.572311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260837, -0.101212, 0.960063,
		-0.868706, -0.409174, -0.279153,
		0.421086, -0.906826, 0.018804,
		36.981716, 36.428703, 40.577953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259567, 36.578423, 40.937572>,  <36.686954, 37.063484, 40.564789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259567, 36.578423, 40.937572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631622, 36.434074, 40.964741>,  <36.854855, 36.347466, 40.981041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631622, 36.434074, 40.964741>,  <36.259567, 36.578423, 40.937572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631622, 36.434074, 40.964741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159241, -0.229747, 0.960135,
		-0.330879, -0.903875, -0.271162,
		0.930141, -0.360868, 0.067916,
		36.910664, 36.325813, 40.985115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194084, 36.031704, 41.387321>,  <36.259567, 36.578423, 40.937572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194084, 36.031704, 41.387321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592899, 36.059586, 41.400326>,  <36.832188, 36.076313, 41.408127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592899, 36.059586, 41.400326>,  <36.194084, 36.031704, 41.387321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592899, 36.059586, 41.400326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015509, -0.231816, 0.972636,
		0.075330, -0.970259, -0.230049,
		0.997038, 0.069701, 0.032511,
		36.892010, 36.080494, 41.410080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462223, 35.339245, 41.610619>,  <36.194084, 36.031704, 41.387321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462223, 35.339245, 41.610619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738991, 35.622791, 41.665382>,  <36.905052, 35.792919, 41.698242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738991, 35.622791, 41.665382>,  <36.462223, 35.339245, 41.610619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738991, 35.622791, 41.665382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076303, -0.260373, 0.962488,
		0.717927, -0.655522, -0.234247,
		0.691924, 0.708870, 0.136910,
		36.946568, 35.835453, 41.706455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016689, 35.072701, 42.161793>,  <36.462223, 35.339245, 41.610619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016689, 35.072701, 42.161793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027763, 35.472332, 42.174870>,  <37.034409, 35.712112, 42.182716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027763, 35.472332, 42.174870>,  <37.016689, 35.072701, 42.161793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027763, 35.472332, 42.174870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049008, -0.034019, 0.998219,
		0.998415, -0.026038, -0.049905,
		0.027690, 0.999082, 0.032689,
		37.036072, 35.772057, 42.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524803, 35.324802, 42.598110>,  <37.016689, 35.072701, 42.161793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524803, 35.324802, 42.598110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249557, 35.615044, 42.598190>,  <37.084408, 35.789188, 42.598240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249557, 35.615044, 42.598190>,  <37.524803, 35.324802, 42.598110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249557, 35.615044, 42.598190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030637, 0.028778, 0.999116,
		0.724953, 0.687515, -0.042033,
		-0.688117, 0.725600, 0.000201,
		37.043121, 35.832722, 42.598251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704693, 35.856789, 43.065735>,  <37.524803, 35.324802, 42.598110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704693, 35.856789, 43.065735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306553, 35.859425, 43.027309>,  <37.067669, 35.861008, 43.004253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306553, 35.859425, 43.027309>,  <37.704693, 35.856789, 43.065735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306553, 35.859425, 43.027309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096117, -0.008451, 0.995334,
		0.005752, 0.999942, 0.009046,
		-0.995353, 0.006594, -0.096063,
		37.007946, 35.861404, 42.998489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527916, 36.488754, 43.273479>,  <37.704693, 35.856789, 43.065735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527916, 36.488754, 43.273479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228157, 36.230404, 43.331787>,  <37.048302, 36.075394, 43.366772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228157, 36.230404, 43.331787>,  <37.527916, 36.488754, 43.273479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228157, 36.230404, 43.331787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077218, 0.303911, 0.949566,
		-0.657602, 0.700346, -0.277624,
		-0.749397, -0.645874, 0.145773,
		37.003338, 36.036640, 43.375519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041710, 36.855278, 43.670895>,  <37.527916, 36.488754, 43.273479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041710, 36.855278, 43.670895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954048, 36.467991, 43.719109>,  <36.901451, 36.235619, 43.748035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954048, 36.467991, 43.719109>,  <37.041710, 36.855278, 43.670895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954048, 36.467991, 43.719109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178388, 0.161215, 0.970663,
		-0.959244, 0.191223, -0.208050,
		-0.219154, -0.968217, 0.120533,
		36.888302, 36.177525, 43.755268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496807, 36.787075, 44.183392>,  <37.041710, 36.855278, 43.670895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496807, 36.787075, 44.183392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663578, 36.423531, 44.178612>,  <36.763641, 36.205402, 44.175743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663578, 36.423531, 44.178612>,  <36.496807, 36.787075, 44.183392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663578, 36.423531, 44.178612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010981, -0.018184, 0.999774,
		-0.908873, -0.416704, -0.017561,
		0.416929, -0.908861, -0.011951,
		36.788658, 36.150871, 44.175026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036579, 36.341805, 44.425472>,  <36.496807, 36.787075, 44.183392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036579, 36.341805, 44.425472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416073, 36.231232, 44.486774>,  <36.643768, 36.164886, 44.523556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416073, 36.231232, 44.486774>,  <36.036579, 36.341805, 44.425472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416073, 36.231232, 44.486774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198325, -0.143112, 0.969632,
		-0.246111, -0.950316, -0.190600,
		0.948734, -0.276438, 0.153250,
		36.700695, 36.148300, 44.532749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032795, 35.819382, 44.906471>,  <36.036579, 36.341805, 44.425472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032795, 35.819382, 44.906471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380585, 36.009754, 44.959385>,  <36.589260, 36.123978, 44.991135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380585, 36.009754, 44.959385>,  <36.032795, 35.819382, 44.906471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380585, 36.009754, 44.959385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050772, -0.180282, 0.982304,
		0.491354, -0.860808, -0.132588,
		0.869479, 0.475928, 0.132288,
		36.641430, 36.152531, 44.999073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364803, 35.387783, 45.361557>,  <36.032795, 35.819382, 44.906471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364803, 35.387783, 45.361557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550961, 35.741825, 45.361740>,  <36.662655, 35.954250, 45.361851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550961, 35.741825, 45.361740>,  <36.364803, 35.387783, 45.361557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550961, 35.741825, 45.361740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317884, -0.167631, 0.933193,
		0.826048, -0.434159, -0.359375,
		0.465396, 0.885102, 0.000459,
		36.690578, 36.007355, 45.361877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036732, 35.267086, 45.724525>,  <36.364803, 35.387783, 45.361557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036732, 35.267086, 45.724525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926746, 35.651005, 45.747086>,  <36.860756, 35.881355, 45.760620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926746, 35.651005, 45.747086>,  <37.036732, 35.267086, 45.724525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926746, 35.651005, 45.747086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233743, 0.009833, 0.972249,
		0.932610, 0.280513, -0.227050,
		-0.274961, 0.959800, 0.056397,
		36.844257, 35.938946, 45.764004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217758, 35.537266, 44.969437>,  <37.036732, 35.267086, 45.724525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217758, 35.537266, 44.969437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866207, 35.643970, 44.811241>,  <36.655277, 35.707993, 44.716324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866207, 35.643970, 44.811241>,  <37.217758, 35.537266, 44.969437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866207, 35.643970, 44.811241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394181, -0.060867, -0.917015,
		-0.268695, -0.961839, -0.051657,
		-0.878877, 0.266759, -0.395493,
		36.602543, 35.723999, 44.692593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997856, 35.102409, 44.354118>,  <37.217758, 35.537266, 44.969437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997856, 35.102409, 44.354118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807880, 35.445961, 44.277435>,  <36.693893, 35.652092, 44.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807880, 35.445961, 44.277435>,  <36.997856, 35.102409, 44.354118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807880, 35.445961, 44.277435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164083, -0.127602, -0.978159,
		-0.864585, -0.496024, -0.080324,
		-0.474941, 0.858881, -0.191712,
		36.665398, 35.703625, 44.219921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424515, 34.932758, 43.820061>,  <36.997856, 35.102409, 44.354118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424515, 34.932758, 43.820061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557442, 35.308987, 43.792080>,  <36.637199, 35.534725, 43.775291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557442, 35.308987, 43.792080>,  <36.424515, 34.932758, 43.820061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557442, 35.308987, 43.792080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015514, -0.079610, -0.996705,
		-0.943040, 0.330138, -0.041048,
		0.332318, 0.940570, -0.069953,
		36.657139, 35.591156, 43.771095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969791, 35.258610, 43.358242>,  <36.424515, 34.932758, 43.820061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969791, 35.258610, 43.358242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278019, 35.512249, 43.384003>,  <36.462955, 35.664433, 43.399460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278019, 35.512249, 43.384003>,  <35.969791, 35.258610, 43.358242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278019, 35.512249, 43.384003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032007, 0.139420, -0.989716,
		-0.636558, 0.760578, 0.127728,
		0.770564, 0.634100, 0.064405,
		36.509190, 35.702480, 43.403324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747971, 35.765430, 42.959728>,  <35.969791, 35.258610, 43.358242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747971, 35.765430, 42.959728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147655, 35.779823, 42.966373>,  <36.387466, 35.788460, 42.970360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147655, 35.779823, 42.966373>,  <35.747971, 35.765430, 42.959728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147655, 35.779823, 42.966373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013435, 0.086735, -0.996141,
		-0.037288, 0.995581, 0.086183,
		0.999214, 0.035986, 0.016610,
		36.447418, 35.790619, 42.971355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941467, 36.382236, 42.507957>,  <35.747971, 35.765430, 42.959728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941467, 36.382236, 42.507957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199940, 36.077946, 42.532429>,  <36.355022, 35.895370, 42.547112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199940, 36.077946, 42.532429>,  <35.941467, 36.382236, 42.507957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199940, 36.077946, 42.532429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005418, -0.084733, -0.996389,
		0.763168, 0.643512, -0.058874,
		0.646177, -0.760731, 0.061179,
		36.393791, 35.849728, 42.550781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626270, 36.599304, 42.458519>,  <35.941467, 36.382236, 42.507957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626270, 36.599304, 42.458519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003407, 36.476223, 42.509712>,  <37.229687, 36.402374, 42.540428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003407, 36.476223, 42.509712>,  <36.626270, 36.599304, 42.458519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003407, 36.476223, 42.509712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102952, -0.096311, -0.990013,
		0.316953, 0.946596, -0.059127,
		0.942837, -0.307701, 0.127980,
		37.286259, 36.383911, 42.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231186, 37.017509, 42.085503>,  <36.626270, 36.599304, 42.458519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231186, 37.017509, 42.085503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300323, 36.626568, 42.134323>,  <37.341805, 36.392002, 42.163616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300323, 36.626568, 42.134323>,  <37.231186, 37.017509, 42.085503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300323, 36.626568, 42.134323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009093, -0.125494, -0.992053,
		0.984908, 0.170356, -0.030578,
		0.172840, -0.977359, 0.122051,
		37.352177, 36.333359, 42.170937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897015, 36.736416, 41.795277>,  <37.231186, 37.017509, 42.085503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897015, 36.736416, 41.795277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625977, 36.442974, 41.774529>,  <37.463356, 36.266911, 41.762081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625977, 36.442974, 41.774529>,  <37.897015, 36.736416, 41.795277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625977, 36.442974, 41.774529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149993, -0.068803, -0.986290,
		0.719979, -0.676083, 0.156656,
		-0.677593, -0.733606, -0.051871,
		37.422699, 36.222893, 41.758968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202972, 36.244495, 41.349056>,  <37.897015, 36.736416, 41.795277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202972, 36.244495, 41.349056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810719, 36.166950, 41.360134>,  <37.575367, 36.120422, 41.366779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810719, 36.166950, 41.360134>,  <38.202972, 36.244495, 41.349056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810719, 36.166950, 41.360134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008923, -0.097014, -0.995243,
		0.195632, -0.976219, 0.093406,
		-0.980637, -0.193868, 0.027690,
		37.516529, 36.108791, 41.368443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021053, 35.790588, 40.864120>,  <38.202972, 36.244495, 41.349056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021053, 35.790588, 40.864120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636700, 35.886238, 40.919998>,  <37.406086, 35.943626, 40.953526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636700, 35.886238, 40.919998>,  <38.021053, 35.790588, 40.864120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636700, 35.886238, 40.919998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178841, -0.150663, -0.972274,
		-0.211445, -0.959229, 0.187535,
		-0.960889, 0.239122, 0.139693,
		37.348434, 35.957973, 40.961906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627827, 35.250198, 40.650795>,  <38.021053, 35.790588, 40.864120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627827, 35.250198, 40.650795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412647, 35.584225, 40.604702>,  <37.283539, 35.784641, 40.577045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412647, 35.584225, 40.604702>,  <37.627827, 35.250198, 40.650795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412647, 35.584225, 40.604702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104075, -0.201441, -0.973956,
		-0.836528, -0.511946, 0.195275,
		-0.537949, 0.835065, -0.115231,
		37.251263, 35.834743, 40.570133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426193, 35.146126, 39.962090>,  <37.627827, 35.250198, 40.650795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426193, 35.146126, 39.962090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249378, 35.497456, 40.034920>,  <37.143288, 35.708252, 40.078617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249378, 35.497456, 40.034920>,  <37.426193, 35.146126, 39.962090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249378, 35.497456, 40.034920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059878, 0.173640, -0.982987,
		-0.894997, -0.445418, -0.024163,
		-0.442036, 0.878323, 0.182078,
		37.116768, 35.760952, 40.089542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816566, 35.168900, 39.542671>,  <37.426193, 35.146126, 39.962090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816566, 35.168900, 39.542671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965611, 35.526367, 39.642685>,  <37.055038, 35.740849, 39.702694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965611, 35.526367, 39.642685>,  <36.816566, 35.168900, 39.542671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965611, 35.526367, 39.642685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034603, 0.282634, -0.958604,
		-0.927341, 0.348537, 0.136237,
		0.372614, 0.893667, 0.250038,
		37.077396, 35.794468, 39.717697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494549, 35.764957, 39.225147>,  <36.816566, 35.168900, 39.542671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494549, 35.764957, 39.225147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864639, 35.902618, 39.289040>,  <37.086693, 35.985214, 39.327374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864639, 35.902618, 39.289040>,  <36.494549, 35.764957, 39.225147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864639, 35.902618, 39.289040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064391, 0.272454, -0.960012,
		-0.373911, 0.898513, 0.229922,
		0.925226, 0.344155, 0.159730,
		37.142208, 36.005863, 39.336960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565376, 36.428719, 38.891747>,  <36.494549, 35.764957, 39.225147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565376, 36.428719, 38.891747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938812, 36.296074, 38.946075>,  <37.162872, 36.216488, 38.978672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938812, 36.296074, 38.946075>,  <36.565376, 36.428719, 38.891747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938812, 36.296074, 38.946075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217717, 0.223854, -0.949994,
		0.284625, 0.916473, 0.281185,
		0.933588, -0.331611, 0.135818,
		37.218887, 36.196590, 38.986820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072281, 36.963360, 38.624142>,  <36.565376, 36.428719, 38.891747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072281, 36.963360, 38.624142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269405, 36.615307, 38.625641>,  <37.387680, 36.406475, 38.626541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269405, 36.615307, 38.625641>,  <37.072281, 36.963360, 38.624142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269405, 36.615307, 38.625641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292411, 0.161547, -0.942549,
		0.819534, 0.465592, 0.334047,
		0.492808, -0.870130, 0.003751,
		37.417248, 36.354267, 38.626766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611637, 37.114815, 38.139416>,  <37.072281, 36.963360, 38.624142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611637, 37.114815, 38.139416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611145, 36.718575, 38.194134>,  <37.610851, 36.480831, 38.226967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611145, 36.718575, 38.194134>,  <37.611637, 37.114815, 38.139416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611145, 36.718575, 38.194134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365163, -0.127795, -0.922130,
		0.930943, 0.048820, 0.361887,
		-0.001229, -0.990598, 0.136797,
		37.610775, 36.421394, 38.235172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332333, 36.860634, 38.128784>,  <37.611637, 37.114815, 38.139416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332333, 36.860634, 38.128784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075039, 36.577175, 38.012806>,  <37.920662, 36.407101, 37.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075039, 36.577175, 38.012806>,  <38.332333, 36.860634, 38.128784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075039, 36.577175, 38.012806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436508, -0.028291, -0.899255,
		0.629051, -0.704997, 0.327527,
		-0.643238, -0.708646, -0.289941,
		37.882069, 36.364582, 37.925823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822529, 36.305828, 37.893295>,  <38.332333, 36.860634, 38.128784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822529, 36.305828, 37.893295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453651, 36.285759, 37.739910>,  <38.232327, 36.273720, 37.647881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453651, 36.285759, 37.739910>,  <38.822529, 36.305828, 37.893295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453651, 36.285759, 37.739910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378714, 0.083672, -0.921724,
		0.078292, -0.995232, -0.058177,
		-0.922197, -0.050131, -0.383459,
		38.176994, 36.270706, 37.624870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997196, 35.888165, 37.280216>,  <38.822529, 36.305828, 37.893295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997196, 35.888165, 37.280216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646759, 36.070621, 37.217735>,  <38.436497, 36.180096, 37.180244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646759, 36.070621, 37.217735>,  <38.997196, 35.888165, 37.280216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646759, 36.070621, 37.217735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277578, 0.212272, -0.936958,
		-0.394227, -0.864220, -0.312584,
		-0.876091, 0.456141, -0.156205,
		38.383930, 36.207462, 37.170876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994099, 35.918312, 36.537701>,  <38.997196, 35.888165, 37.280216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994099, 35.918312, 36.537701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657810, 36.125439, 36.601009>,  <38.456036, 36.249714, 36.638996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657810, 36.125439, 36.601009>,  <38.994099, 35.918312, 36.537701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657810, 36.125439, 36.601009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067611, 0.189623, -0.979526,
		-0.537224, -0.834213, -0.124411,
		-0.840725, 0.517814, 0.158272,
		38.405594, 36.280785, 36.648491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528999, 36.360706, 36.842010>,  <38.994099, 35.918312, 36.537701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528999, 36.360706, 36.842010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801075, 36.586716, 37.028816>,  <39.964321, 36.722321, 37.140900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801075, 36.586716, 37.028816>,  <39.528999, 36.360706, 36.842010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801075, 36.586716, 37.028816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578789, -0.023003, -0.815153,
		-0.449834, 0.824757, -0.342673,
		0.680186, 0.565019, 0.467012,
		40.005131, 36.756222, 37.168919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641323, 36.939018, 36.436447>,  <39.528999, 36.360706, 36.842010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641323, 36.939018, 36.436447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951462, 36.880466, 36.682182>,  <40.137547, 36.845337, 36.829624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951462, 36.880466, 36.682182>,  <39.641323, 36.939018, 36.436447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951462, 36.880466, 36.682182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630198, 0.116068, -0.767710,
		0.041072, 0.982396, 0.182242,
		0.775347, -0.146380, 0.614337,
		40.184067, 36.836552, 36.866482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874557, 37.525017, 36.215450>,  <39.641323, 36.939018, 36.436447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874557, 37.525017, 36.215450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150826, 37.292759, 36.387878>,  <40.316586, 37.153404, 36.491337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150826, 37.292759, 36.387878>,  <39.874557, 37.525017, 36.215450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150826, 37.292759, 36.387878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704381, 0.405172, -0.582823,
		0.163755, 0.706179, 0.688837,
		0.690674, -0.580644, 0.431070,
		40.358028, 37.118565, 36.517200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565361, 37.875084, 36.434193>,  <39.874557, 37.525017, 36.215450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565361, 37.875084, 36.434193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650188, 37.486149, 36.395042>,  <40.701084, 37.252789, 36.371552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650188, 37.486149, 36.395042>,  <40.565361, 37.875084, 36.434193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650188, 37.486149, 36.395042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835380, 0.232345, -0.498153,
		0.507115, 0.023879, 0.861547,
		0.212071, -0.972340, -0.097878,
		40.713810, 37.194447, 36.365681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283684, 37.681690, 36.770496>,  <40.565361, 37.875084, 36.434193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283684, 37.681690, 36.770496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165146, 37.419384, 36.492744>,  <41.094025, 37.262001, 36.326096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165146, 37.419384, 36.492744>,  <41.283684, 37.681690, 36.770496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165146, 37.419384, 36.492744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837459, 0.171128, -0.519016,
		0.459178, -0.735318, 0.498461,
		-0.296341, -0.655761, -0.694377,
		41.076244, 37.222656, 36.284431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846935, 37.687393, 36.363453>,  <41.283684, 37.681690, 36.770496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846935, 37.687393, 36.363453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609924, 37.433357, 36.165234>,  <41.467716, 37.280933, 36.046303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609924, 37.433357, 36.165234>,  <41.846935, 37.687393, 36.363453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609924, 37.433357, 36.165234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654241, -0.020493, -0.756008,
		0.469981, -0.772163, 0.427647,
		-0.592526, -0.635094, -0.495550,
		41.432167, 37.242828, 36.016567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312233, 37.314137, 36.092934>,  <41.846935, 37.687393, 36.363453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312233, 37.314137, 36.092934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991863, 37.322624, 35.853577>,  <41.799641, 37.327717, 35.709961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991863, 37.322624, 35.853577>,  <42.312233, 37.314137, 36.092934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991863, 37.322624, 35.853577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597705, -0.031280, -0.801105,
		-0.035741, -0.999285, 0.012351,
		-0.800919, 0.021250, -0.598396,
		41.751587, 37.328991, 35.674057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612679, 36.627621, 36.274395>,  <42.312233, 37.314137, 36.092934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612679, 36.627621, 36.274395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400414, 36.495777, 35.962048>,  <42.273056, 36.416672, 35.774639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400414, 36.495777, 35.962048>,  <42.612679, 36.627621, 36.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400414, 36.495777, 35.962048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564817, -0.824437, -0.035838,
		-0.631964, -0.460066, 0.623667,
		-0.530663, -0.329610, -0.780868,
		42.241215, 36.396893, 35.727787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248375, 35.916874, 36.304050>,  <42.612679, 36.627621, 36.274395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248375, 35.916874, 36.304050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343639, 35.988304, 35.922184>,  <42.400799, 36.031162, 35.693062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343639, 35.988304, 35.922184>,  <42.248375, 35.916874, 36.304050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343639, 35.988304, 35.922184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619183, -0.785210, 0.007593,
		-0.748260, -0.592922, -0.297576,
		0.238162, 0.178573, -0.954668,
		42.415089, 36.041878, 35.635784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040668, 35.321636, 35.893967>,  <42.248375, 35.916874, 36.304050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040668, 35.321636, 35.893967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336651, 35.517738, 35.709743>,  <42.514240, 35.635399, 35.599209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336651, 35.517738, 35.709743>,  <42.040668, 35.321636, 35.893967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336651, 35.517738, 35.709743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491590, -0.861484, -0.127220,
		-0.459135, -0.132269, -0.878465,
		0.739956, 0.490256, -0.460559,
		42.558636, 35.664814, 35.571575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126408, 35.039642, 35.243202>,  <42.040668, 35.321636, 35.893967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126408, 35.039642, 35.243202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475769, 35.187759, 35.369724>,  <42.685387, 35.276630, 35.445637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475769, 35.187759, 35.369724>,  <42.126408, 35.039642, 35.243202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475769, 35.187759, 35.369724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425911, -0.895749, -0.127412,
		0.236150, 0.246000, -0.940062,
		0.873403, 0.370294, 0.316306,
		42.737789, 35.298847, 35.464615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676994, 35.091129, 34.760761>,  <42.126408, 35.039642, 35.243202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676994, 35.091129, 34.760761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862682, 35.039650, 35.111290>,  <42.974094, 35.008762, 35.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862682, 35.039650, 35.111290>,  <42.676994, 35.091129, 34.760761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862682, 35.039650, 35.111290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409433, -0.846152, -0.341162,
		0.785408, 0.517168, -0.340104,
		0.464218, -0.128702, 0.876320,
		43.001949, 35.001038, 35.374187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338406, 35.162895, 34.793896>,  <42.676994, 35.091129, 34.760761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338406, 35.162895, 34.793896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257278, 34.876667, 35.061275>,  <43.208603, 34.704929, 35.221703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257278, 34.876667, 35.061275>,  <43.338406, 35.162895, 34.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257278, 34.876667, 35.061275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484327, -0.666595, -0.566637,
		0.851054, 0.208826, 0.481765,
		-0.202814, -0.715571, 0.668449,
		43.196434, 34.661995, 35.261810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981136, 34.866554, 34.939781>,  <43.338406, 35.162895, 34.793896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981136, 34.866554, 34.939781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677544, 34.623596, 35.033607>,  <43.495388, 34.477821, 35.089905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677544, 34.623596, 35.033607>,  <43.981136, 34.866554, 34.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677544, 34.623596, 35.033607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419164, -0.731476, -0.537814,
		0.498246, -0.309867, 0.809773,
		-0.758981, -0.607392, 0.234570,
		43.449848, 34.441380, 35.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743851, 34.489182, 34.848446>,  <43.981136, 34.866554, 34.939781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743851, 34.489182, 34.848446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606976, 34.454937, 35.222736>,  <44.524849, 34.434391, 35.447311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606976, 34.454937, 35.222736>,  <44.743851, 34.489182, 34.848446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606976, 34.454937, 35.222736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298171, -0.954265, 0.021729,
		0.891068, 0.286441, 0.352065,
		-0.342187, -0.085613, 0.935723,
		44.504318, 34.429253, 35.503452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383892, 34.170113, 34.945793>,  <44.743851, 34.489182, 34.848446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383892, 34.170113, 34.945793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522984, 33.866089, 34.726192>,  <45.606438, 33.683674, 34.594433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522984, 33.866089, 34.726192>,  <45.383892, 34.170113, 34.945793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522984, 33.866089, 34.726192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694043, 0.602345, -0.394315,
		0.630389, -0.243916, 0.736963,
		0.347726, -0.760056, -0.549001,
		45.627300, 33.638073, 34.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073940, 34.145649, 34.979317>,  <45.383892, 34.170113, 34.945793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073940, 34.145649, 34.979317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994915, 33.985981, 34.621181>,  <45.947498, 33.890179, 34.406300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994915, 33.985981, 34.621181>,  <46.073940, 34.145649, 34.979317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994915, 33.985981, 34.621181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447006, 0.776172, -0.444682,
		0.872441, -0.488075, 0.025090,
		-0.197564, -0.399174, -0.895337,
		45.935646, 33.866230, 34.352581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231598, 34.950924, 34.833553>,  <46.073940, 34.145649, 34.979317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231598, 34.950924, 34.833553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439514, 34.825748, 34.515587>,  <46.564262, 34.750645, 34.324806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439514, 34.825748, 34.515587>,  <46.231598, 34.950924, 34.833553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439514, 34.825748, 34.515587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701450, -0.374791, 0.606218,
		-0.487636, -0.872698, 0.024699,
		0.519789, -0.312939, -0.794915,
		46.595451, 34.731869, 34.277111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870281, 35.361042, 34.542191>,  <46.231598, 34.950924, 34.833553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870281, 35.361042, 34.542191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236126, 35.455864, 34.673214>,  <47.455631, 35.512756, 34.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236126, 35.455864, 34.673214>,  <46.870281, 35.361042, 34.542191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236126, 35.455864, 34.673214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030235, -0.847941, 0.529227,
		0.403204, -0.474133, -0.782703,
		0.914611, 0.237051, 0.327558,
		47.510509, 35.526978, 34.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311321, 34.715328, 34.449612>,  <46.870281, 35.361042, 34.542191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311321, 34.715328, 34.449612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459091, 34.942284, 34.743984>,  <47.547752, 35.078457, 34.920609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459091, 34.942284, 34.743984>,  <47.311321, 34.715328, 34.449612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.459091, 34.942284, 34.743984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010774, -0.789288, 0.613929,
		0.929199, -0.234728, -0.285468,
		0.369423, 0.567386, 0.735934,
		47.569920, 35.112499, 34.964764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853676, 34.365891, 34.900024>,  <47.311321, 34.715328, 34.449612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853676, 34.365891, 34.900024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698856, 34.668568, 35.110779>,  <47.605965, 34.850174, 35.237232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698856, 34.668568, 35.110779>,  <47.853676, 34.365891, 34.900024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.698856, 34.668568, 35.110779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167238, -0.619551, 0.766934,
		0.906767, 0.208724, 0.366343,
		-0.387046, 0.756697, 0.526882,
		47.582741, 34.895576, 35.268845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.838253, 31.937990, 28.474607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439762, 31.972702, 28.475355>,  <34.200668, 31.993528, 28.475803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439762, 31.972702, 28.475355>,  <34.838253, 31.937990, 28.474607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439762, 31.972702, 28.475355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045950, 0.508994, 0.859543,
		0.073637, 0.856385, -0.511060,
		-0.996226, 0.086778, 0.001870,
		34.140896, 31.998735, 28.475916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688644, 32.612404, 28.772459>,  <34.838253, 31.937990, 28.474607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688644, 32.612404, 28.772459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356869, 32.390797, 28.801003>,  <34.157803, 32.257832, 28.818129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356869, 32.390797, 28.801003>,  <34.688644, 32.612404, 28.772459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356869, 32.390797, 28.801003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201782, 0.416285, 0.886561,
		-0.520877, 0.720950, -0.457075,
		-0.829440, -0.554019, 0.071359,
		34.108036, 32.224590, 28.822411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238407, 33.053726, 29.127150>,  <34.688644, 32.612404, 28.772459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238407, 33.053726, 29.127150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068604, 32.696835, 29.188761>,  <33.966721, 32.482700, 29.225727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068604, 32.696835, 29.188761>,  <34.238407, 33.053726, 29.127150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068604, 32.696835, 29.188761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184772, 0.251903, 0.949950,
		-0.886369, 0.374804, -0.271794,
		-0.424511, -0.892226, 0.154026,
		33.941250, 32.429169, 29.234968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713661, 33.205002, 29.638693>,  <34.238407, 33.053726, 29.127150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713661, 33.205002, 29.638693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727623, 32.805355, 29.648121>,  <33.736000, 32.565567, 29.653778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727623, 32.805355, 29.648121>,  <33.713661, 33.205002, 29.638693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727623, 32.805355, 29.648121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145673, 0.018248, 0.989165,
		-0.988717, -0.037956, -0.144907,
		0.034901, -0.999113, 0.023572,
		33.738094, 32.505623, 29.655193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169411, 32.949669, 30.094011>,  <33.713661, 33.205002, 29.638693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169411, 32.949669, 30.094011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439888, 32.655025, 30.099407>,  <33.602173, 32.478241, 30.102644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439888, 32.655025, 30.099407>,  <33.169411, 32.949669, 30.094011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439888, 32.655025, 30.099407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082369, -0.057393, 0.994948,
		-0.732110, -0.673884, -0.099482,
		0.676189, -0.736605, 0.013489,
		33.642746, 32.434044, 30.103455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948238, 32.373531, 30.560810>,  <33.169411, 32.949669, 30.094011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948238, 32.373531, 30.560810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.344860, 32.335361, 30.525673>,  <33.582832, 32.312462, 30.504591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.344860, 32.335361, 30.525673>,  <32.948238, 32.373531, 30.560810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344860, 32.335361, 30.525673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083952, -0.044067, 0.995495,
		-0.098868, -0.994460, -0.035683,
		0.991553, -0.095427, -0.087844,
		33.642326, 32.306736, 30.499319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181057, 32.073944, 31.089872>,  <32.948238, 32.373531, 30.560810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181057, 32.073944, 31.089872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540348, 32.211414, 30.980276>,  <33.755924, 32.293896, 30.914518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540348, 32.211414, 30.980276>,  <33.181057, 32.073944, 31.089872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540348, 32.211414, 30.980276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222809, 0.181304, 0.957854,
		0.378867, -0.921420, 0.086279,
		0.898229, 0.343676, -0.273991,
		33.809818, 32.314518, 30.898079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697559, 31.799849, 31.588320>,  <33.181057, 32.073944, 31.089872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697559, 31.799849, 31.588320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863304, 32.133801, 31.443390>,  <33.962753, 32.334171, 31.356432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863304, 32.133801, 31.443390>,  <33.697559, 31.799849, 31.588320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863304, 32.133801, 31.443390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250511, 0.278107, 0.927308,
		0.874955, -0.475010, -0.093908,
		0.414365, 0.834878, -0.362326,
		33.987614, 32.384262, 31.334692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472710, 31.909029, 31.787169>,  <33.697559, 31.799849, 31.588320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472710, 31.909029, 31.787169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331799, 32.271641, 31.694128>,  <34.247253, 32.489208, 31.638304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331799, 32.271641, 31.694128>,  <34.472710, 31.909029, 31.787169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331799, 32.271641, 31.694128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299872, 0.344762, 0.889503,
		0.886555, 0.243599, -0.393294,
		-0.352275, 0.906531, -0.232602,
		34.226116, 32.543602, 31.624348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932056, 32.330921, 32.027683>,  <34.472710, 31.909029, 31.787169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932056, 32.330921, 32.027683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620838, 32.575798, 31.971304>,  <34.434109, 32.722725, 31.937477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620838, 32.575798, 31.971304>,  <34.932056, 32.330921, 32.027683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620838, 32.575798, 31.971304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230430, 0.486835, 0.842552,
		0.584426, 0.623062, -0.519847,
		-0.778042, 0.612197, -0.140947,
		34.387424, 32.759457, 31.929020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215611, 33.015682, 32.147141>,  <34.932056, 32.330921, 32.027683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215611, 33.015682, 32.147141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819660, 33.039257, 32.198795>,  <34.582092, 33.053402, 32.229786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819660, 33.039257, 32.198795>,  <35.215611, 33.015682, 32.147141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819660, 33.039257, 32.198795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140664, 0.285236, 0.948079,
		0.019048, 0.956643, -0.290639,
		-0.989874, 0.058941, 0.129132,
		34.522697, 33.056938, 32.237534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113457, 33.672539, 32.545086>,  <35.215611, 33.015682, 32.147141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113457, 33.672539, 32.545086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797752, 33.430847, 32.588856>,  <34.608330, 33.285831, 32.615116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797752, 33.430847, 32.588856>,  <35.113457, 33.672539, 32.545086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797752, 33.430847, 32.588856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083206, 0.071320, 0.993977,
		-0.608395, 0.793611, -0.006015,
		-0.789260, -0.604230, 0.109424,
		34.560974, 33.249577, 32.621681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805050, 33.884274, 33.117184>,  <35.113457, 33.672539, 32.545086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805050, 33.884274, 33.117184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593067, 33.545406, 33.101902>,  <34.465878, 33.342087, 33.092731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593067, 33.545406, 33.101902>,  <34.805050, 33.884274, 33.117184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593067, 33.545406, 33.101902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083598, 0.007354, 0.996472,
		-0.843895, 0.531279, -0.074719,
		-0.529955, -0.847165, -0.038208,
		34.434082, 33.291256, 33.090439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234077, 33.980537, 33.589211>,  <34.805050, 33.884274, 33.117184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234077, 33.980537, 33.589211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286327, 33.586666, 33.542988>,  <34.317677, 33.350346, 33.515255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286327, 33.586666, 33.542988>,  <34.234077, 33.980537, 33.589211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286327, 33.586666, 33.542988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074347, -0.106503, 0.991529,
		-0.988641, -0.138108, 0.059296,
		0.130623, -0.984674, -0.115561,
		34.325516, 33.291264, 33.508320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865040, 33.710823, 34.184258>,  <34.234077, 33.980537, 33.589211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865040, 33.710823, 34.184258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107544, 33.416679, 34.063129>,  <34.253044, 33.240192, 33.990452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107544, 33.416679, 34.063129>,  <33.865040, 33.710823, 34.184258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107544, 33.416679, 34.063129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295784, -0.144963, 0.944191,
		-0.738216, -0.661993, 0.129623,
		0.606257, -0.735358, -0.302821,
		34.289421, 33.196072, 33.972282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672848, 33.007095, 34.491631>,  <33.865040, 33.710823, 34.184258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672848, 33.007095, 34.491631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062588, 32.980274, 34.405701>,  <34.296432, 32.964184, 34.354141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062588, 32.980274, 34.405701>,  <33.672848, 33.007095, 34.491631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062588, 32.980274, 34.405701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195152, -0.223681, 0.954926,
		-0.112080, -0.972354, -0.204858,
		0.974348, -0.067050, -0.214827,
		34.354893, 32.960159, 34.341251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075764, 32.540424, 34.974674>,  <33.672848, 33.007095, 34.491631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075764, 32.540424, 34.974674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.411957, 32.706432, 34.835335>,  <34.613674, 32.806038, 34.751732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.411957, 32.706432, 34.835335>,  <34.075764, 32.540424, 34.974674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411957, 32.706432, 34.835335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445740, -0.164066, 0.879999,
		0.308066, -0.894897, -0.322886,
		0.840483, 0.415021, -0.348348,
		34.664101, 32.830940, 34.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644138, 32.075798, 35.165489>,  <34.075764, 32.540424, 34.974674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644138, 32.075798, 35.165489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828106, 32.418655, 35.072731>,  <34.938488, 32.624371, 35.017078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828106, 32.418655, 35.072731>,  <34.644138, 32.075798, 35.165489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828106, 32.418655, 35.072731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599117, -0.106797, 0.793507,
		0.655385, -0.503883, -0.562648,
		0.459923, 0.857145, -0.231891,
		34.966084, 32.675800, 35.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356407, 31.984121, 35.254372>,  <34.644138, 32.075798, 35.165489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356407, 31.984121, 35.254372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288700, 32.376389, 35.293636>,  <35.248074, 32.611748, 35.317196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288700, 32.376389, 35.293636>,  <35.356407, 31.984121, 35.254372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288700, 32.376389, 35.293636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569914, 0.016139, 0.821546,
		0.804081, 0.195007, -0.561629,
		-0.169272, 0.980669, 0.098160,
		35.237919, 32.670589, 35.323086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005135, 32.267963, 35.350082>,  <35.356407, 31.984121, 35.254372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005135, 32.267963, 35.350082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736973, 32.532734, 35.484192>,  <35.576077, 32.691597, 35.564655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736973, 32.532734, 35.484192>,  <36.005135, 32.267963, 35.350082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736973, 32.532734, 35.484192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458731, 0.014599, 0.888455,
		0.583201, 0.749423, -0.313435,
		-0.670405, 0.661930, 0.335270,
		35.535851, 32.731312, 35.584774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382492, 32.833801, 35.574688>,  <36.005135, 32.267963, 35.350082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382492, 32.833801, 35.574688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029598, 32.808598, 35.761322>,  <35.817863, 32.793476, 35.873302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029598, 32.808598, 35.761322>,  <36.382492, 32.833801, 35.574688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029598, 32.808598, 35.761322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445802, 0.206946, 0.870881,
		-0.151427, 0.976322, -0.154486,
		-0.882230, -0.063005, 0.466583,
		35.764931, 32.789696, 35.901299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396706, 33.265308, 36.103867>,  <36.382492, 32.833801, 35.574688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396706, 33.265308, 36.103867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112339, 33.011108, 36.224361>,  <35.941719, 32.858589, 36.296658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112339, 33.011108, 36.224361>,  <36.396706, 33.265308, 36.103867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112339, 33.011108, 36.224361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220544, 0.205279, 0.953531,
		-0.667805, 0.744314, -0.005780,
		-0.710912, -0.635498, 0.301240,
		35.899067, 32.820457, 36.314735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136497, 33.472694, 36.157200>,  <36.396706, 33.265308, 36.103867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136497, 33.472694, 36.157200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523335, 33.567169, 36.119377>,  <37.755436, 33.623852, 36.096684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523335, 33.567169, 36.119377>,  <37.136497, 33.472694, 36.157200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523335, 33.567169, 36.119377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013895, -0.322083, -0.946610,
		-0.254028, 0.916777, -0.308203,
		0.967097, 0.236182, -0.094557,
		37.813465, 33.638023, 36.091011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157444, 33.796745, 35.552029>,  <37.136497, 33.472694, 36.157200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157444, 33.796745, 35.552029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526512, 33.655350, 35.613647>,  <37.747952, 33.570515, 35.650620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526512, 33.655350, 35.613647>,  <37.157444, 33.796745, 35.552029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526512, 33.655350, 35.613647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084833, -0.575813, -0.813169,
		0.376148, 0.737216, -0.561271,
		0.922668, -0.353487, 0.154051,
		37.803314, 33.549305, 35.659863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432636, 34.081547, 35.006577>,  <37.157444, 33.796745, 35.552029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432636, 34.081547, 35.006577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693989, 33.810432, 35.141457>,  <37.850800, 33.647766, 35.222385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693989, 33.810432, 35.141457>,  <37.432636, 34.081547, 35.006577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693989, 33.810432, 35.141457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076060, -0.384392, -0.920031,
		0.753198, 0.626779, -0.199603,
		0.653382, -0.677784, 0.337196,
		37.890003, 33.607098, 35.242615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070431, 34.161835, 34.558689>,  <37.432636, 34.081547, 35.006577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070431, 34.161835, 34.558689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071964, 33.797405, 34.723583>,  <38.072884, 33.578747, 34.822521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071964, 33.797405, 34.723583>,  <38.070431, 34.161835, 34.558689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071964, 33.797405, 34.723583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126346, -0.409376, -0.903575,
		0.991979, -0.048616, -0.116681,
		0.003838, -0.911069, 0.412235,
		38.073116, 33.524086, 34.847252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564884, 33.794796, 34.151924>,  <38.070431, 34.161835, 34.558689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564884, 33.794796, 34.151924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377354, 33.490887, 34.332119>,  <38.264835, 33.308540, 34.440235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377354, 33.490887, 34.332119>,  <38.564884, 33.794796, 34.151924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377354, 33.490887, 34.332119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054039, -0.484388, -0.873183,
		0.881635, -0.433716, 0.186038,
		-0.468828, -0.759775, 0.450491,
		38.236706, 33.262955, 34.467266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918446, 33.171658, 33.892220>,  <38.564884, 33.794796, 34.151924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918446, 33.171658, 33.892220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542671, 33.090443, 34.002655>,  <38.317207, 33.041714, 34.068916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542671, 33.090443, 34.002655>,  <38.918446, 33.171658, 33.892220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542671, 33.090443, 34.002655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200674, -0.327160, -0.923416,
		0.277816, -0.922898, 0.266603,
		-0.939440, -0.203040, 0.276092,
		38.260838, 33.029530, 34.085484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724083, 32.479221, 33.691631>,  <38.918446, 33.171658, 33.892220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724083, 32.479221, 33.691631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377529, 32.672569, 33.741806>,  <38.169598, 32.788578, 33.771912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377529, 32.672569, 33.741806>,  <38.724083, 32.479221, 33.691631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377529, 32.672569, 33.741806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371484, -0.455959, -0.808765,
		-0.333741, -0.747297, 0.574599,
		-0.866382, 0.483372, 0.125437,
		38.117615, 32.817581, 33.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161644, 31.980698, 33.596497>,  <38.724083, 32.479221, 33.691631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161644, 31.980698, 33.596497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948723, 32.315029, 33.542763>,  <37.820969, 32.515629, 33.510525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948723, 32.315029, 33.542763>,  <38.161644, 31.980698, 33.596497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948723, 32.315029, 33.542763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408828, -0.392761, -0.823771,
		-0.741290, -0.383579, 0.550778,
		-0.532305, 0.835827, -0.134332,
		37.789032, 32.565777, 33.502464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443993, 31.748402, 33.527130>,  <38.161644, 31.980698, 33.596497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443993, 31.748402, 33.527130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483761, 32.108433, 33.357433>,  <37.507622, 32.324451, 33.255615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483761, 32.108433, 33.357433>,  <37.443993, 31.748402, 33.527130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483761, 32.108433, 33.357433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442250, -0.341957, -0.829144,
		-0.891365, 0.270051, 0.364062,
		0.099417, 0.900076, -0.424239,
		37.513584, 32.378456, 33.230164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647453, 31.989601, 33.283985>,  <37.443993, 31.748402, 33.527130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647453, 31.989601, 33.283985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943169, 32.174038, 33.087681>,  <37.120598, 32.284698, 32.969898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943169, 32.174038, 33.087681>,  <36.647453, 31.989601, 33.283985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943169, 32.174038, 33.087681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435425, -0.228611, -0.870714,
		-0.513674, 0.857397, 0.031762,
		0.739286, 0.461093, -0.490764,
		37.164955, 32.312366, 32.940453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348995, 32.406361, 32.685333>,  <36.647453, 31.989601, 33.283985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348995, 32.406361, 32.685333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740204, 32.382305, 32.605476>,  <36.974930, 32.367870, 32.557560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740204, 32.382305, 32.605476>,  <36.348995, 32.406361, 32.685333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740204, 32.382305, 32.605476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204495, -0.089764, -0.974743,
		0.040700, 0.994146, -0.100090,
		0.978021, -0.060140, -0.199645,
		37.033611, 32.364262, 32.545582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313629, 32.738327, 32.027252>,  <36.348995, 32.406361, 32.685333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313629, 32.738327, 32.027252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662964, 32.545406, 32.054577>,  <36.872566, 32.429653, 32.070972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662964, 32.545406, 32.054577>,  <36.313629, 32.738327, 32.027252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662964, 32.545406, 32.054577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015486, -0.167653, -0.985725,
		0.486868, 0.859813, -0.153886,
		0.873338, -0.482301, 0.068310,
		36.924965, 32.400715, 32.075069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728939, 33.024761, 31.582647>,  <36.313629, 32.738327, 32.027252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728939, 33.024761, 31.582647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884663, 32.661015, 31.641291>,  <36.978096, 32.442768, 31.676476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884663, 32.661015, 31.641291>,  <36.728939, 33.024761, 31.582647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884663, 32.661015, 31.641291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036167, -0.174133, -0.984058,
		0.920396, 0.377802, -0.100681,
		0.389311, -0.909364, 0.146607,
		37.001457, 32.388206, 31.685272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122017, 32.968781, 31.045118>,  <36.728939, 33.024761, 31.582647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122017, 32.968781, 31.045118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102867, 32.591248, 31.175892>,  <37.091377, 32.364727, 31.254356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102867, 32.591248, 31.175892>,  <37.122017, 32.968781, 31.045118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102867, 32.591248, 31.175892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050638, -0.324596, -0.944496,
		0.997569, -0.061773, -0.032253,
		-0.047875, -0.943833, 0.326935,
		37.088505, 32.308098, 31.273972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534832, 32.597179, 30.515751>,  <37.122017, 32.968781, 31.045118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534832, 32.597179, 30.515751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318272, 32.314892, 30.698549>,  <37.188335, 32.145519, 30.808228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318272, 32.314892, 30.698549>,  <37.534832, 32.597179, 30.515751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318272, 32.314892, 30.698549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179767, -0.433813, -0.882887,
		0.821319, -0.560152, 0.108003,
		-0.541404, -0.705717, 0.456996,
		37.155849, 32.103176, 30.835648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807953, 31.905333, 30.312473>,  <37.534832, 32.597179, 30.515751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807953, 31.905333, 30.312473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423428, 31.905170, 30.422661>,  <37.192715, 31.905073, 30.488773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423428, 31.905170, 30.422661>,  <37.807953, 31.905333, 30.312473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423428, 31.905170, 30.422661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257182, -0.356950, -0.898022,
		0.098694, -0.934123, 0.343035,
		-0.961310, -0.000407, 0.275468,
		37.135033, 31.905048, 30.505301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584835, 31.331499, 30.059933>,  <37.807953, 31.905333, 30.312473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584835, 31.331499, 30.059933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267757, 31.570433, 30.108646>,  <37.077511, 31.713793, 30.137875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267757, 31.570433, 30.108646>,  <37.584835, 31.331499, 30.059933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267757, 31.570433, 30.108646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358336, -0.294936, -0.885781,
		-0.493190, -0.745790, 0.447840,
		-0.792691, 0.597336, 0.121784,
		37.029949, 31.749634, 30.145182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111340, 30.878714, 29.982168>,  <37.584835, 31.331499, 30.059933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111340, 30.878714, 29.982168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963997, 31.245461, 29.920630>,  <36.875591, 31.465508, 29.883707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963997, 31.245461, 29.920630>,  <37.111340, 30.878714, 29.982168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963997, 31.245461, 29.920630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326339, -0.282470, -0.902061,
		-0.870526, -0.282075, 0.403259,
		-0.368358, 0.916867, -0.153846,
		36.853489, 31.520521, 29.874475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.304039, 30.760088, 29.656984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.413071, 31.140636, 29.599577>,  <36.478489, 31.368965, 29.565132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.413071, 31.140636, 29.599577>,  <36.304039, 30.760088, 29.656984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413071, 31.140636, 29.599577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116484, -0.115436, -0.986461,
		-0.955056, 0.285607, 0.079354,
		0.272580, 0.951369, -0.143516,
		36.494846, 31.426046, 29.556522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886379, 30.910967, 29.193596>,  <36.304039, 30.760088, 29.656984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886379, 30.910967, 29.193596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166401, 31.194138, 29.156158>,  <36.334415, 31.364040, 29.133696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166401, 31.194138, 29.156158>,  <35.886379, 30.910967, 29.193596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166401, 31.194138, 29.156158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067385, -0.064993, -0.995608,
		-0.710899, 0.703290, 0.002205,
		0.700058, 0.707926, -0.093595,
		36.376419, 31.406515, 29.128080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601810, 31.374731, 28.818998>,  <35.886379, 30.910967, 29.193596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601810, 31.374731, 28.818998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991718, 31.454708, 28.779293>,  <36.225662, 31.502695, 28.755470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991718, 31.454708, 28.779293>,  <35.601810, 31.374731, 28.818998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991718, 31.454708, 28.779293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135433, 0.176228, -0.974988,
		-0.177451, 0.963829, 0.198861,
		0.974766, 0.199944, -0.099262,
		36.284149, 31.514692, 28.749514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749657, 32.069927, 28.469395>,  <35.601810, 31.374731, 28.818998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749657, 32.069927, 28.469395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083702, 31.855059, 28.422009>,  <36.284130, 31.726137, 28.393578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083702, 31.855059, 28.422009>,  <35.749657, 32.069927, 28.469395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083702, 31.855059, 28.422009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091001, 0.347304, -0.933327,
		0.542498, 0.768654, 0.338921,
		0.835114, -0.537170, -0.118464,
		36.334236, 31.693907, 28.386469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128353, 32.495857, 28.057817>,  <35.749657, 32.069927, 28.469395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128353, 32.495857, 28.057817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285950, 32.129662, 28.025196>,  <36.380508, 31.909945, 28.005623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285950, 32.129662, 28.025196>,  <36.128353, 32.495857, 28.057817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285950, 32.129662, 28.025196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101606, 0.131572, -0.986086,
		0.913480, 0.380223, 0.144857,
		0.393992, -0.915488, -0.081555,
		36.404148, 31.855015, 28.000731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642673, 32.596416, 27.579458>,  <36.128353, 32.495857, 28.057817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642673, 32.596416, 27.579458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583778, 32.201015, 27.565708>,  <36.548443, 31.963774, 27.557459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583778, 32.201015, 27.565708>,  <36.642673, 32.596416, 27.579458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583778, 32.201015, 27.565708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025615, 0.030929, -0.999193,
		0.988770, -0.147998, 0.020767,
		-0.147236, -0.988504, -0.034373,
		36.539608, 31.904465, 27.555397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090786, 32.359951, 27.128578>,  <36.642673, 32.596416, 27.579458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090786, 32.359951, 27.128578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829453, 32.059547, 27.166843>,  <36.672653, 31.879307, 27.189802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829453, 32.059547, 27.166843>,  <37.090786, 32.359951, 27.128578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829453, 32.059547, 27.166843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123710, -0.230564, -0.965161,
		0.746898, -0.618734, 0.243541,
		-0.653330, -0.751005, 0.095664,
		36.633453, 31.834246, 27.195543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381668, 31.801418, 26.704935>,  <37.090786, 32.359951, 27.128578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381668, 31.801418, 26.704935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988773, 31.741207, 26.749760>,  <36.753036, 31.705080, 26.776655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988773, 31.741207, 26.749760>,  <37.381668, 31.801418, 26.704935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988773, 31.741207, 26.749760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058795, -0.320239, -0.945510,
		0.178214, -0.935301, 0.305699,
		-0.982234, -0.150530, 0.112062,
		36.694103, 31.696049, 26.783379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263447, 31.059093, 26.586132>,  <37.381668, 31.801418, 26.704935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263447, 31.059093, 26.586132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922119, 31.263269, 26.543608>,  <36.717323, 31.385775, 26.518093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922119, 31.263269, 26.543608>,  <37.263447, 31.059093, 26.586132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922119, 31.263269, 26.543608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192810, -0.498369, -0.845253,
		-0.484420, -0.700778, 0.523686,
		-0.853324, 0.510429, -0.106303,
		36.666122, 31.416401, 26.511715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781551, 30.599802, 26.262310>,  <37.263447, 31.059093, 26.586132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781551, 30.599802, 26.262310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639664, 30.959543, 26.160065>,  <36.554531, 31.175388, 26.098719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639664, 30.959543, 26.160065>,  <36.781551, 30.599802, 26.262310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639664, 30.959543, 26.160065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101885, -0.308943, -0.945607,
		-0.929405, -0.309381, 0.201219,
		-0.354718, 0.899354, -0.255612,
		36.533249, 31.229349, 26.083382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224583, 30.426374, 25.789001>,  <36.781551, 30.599802, 26.262310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224583, 30.426374, 25.789001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309433, 30.811043, 25.719503>,  <36.360344, 31.041843, 25.677805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309433, 30.811043, 25.719503>,  <36.224583, 30.426374, 25.789001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309433, 30.811043, 25.719503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102171, -0.154991, -0.982618,
		-0.971886, 0.226194, 0.065376,
		0.212129, 0.961672, -0.173744,
		36.373074, 31.099545, 25.667379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532207, 30.695976, 25.380058>,  <36.224583, 30.426374, 25.789001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532207, 30.695976, 25.380058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827427, 30.953403, 25.298956>,  <36.004559, 31.107861, 25.250294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827427, 30.953403, 25.298956>,  <35.532207, 30.695976, 25.380058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827427, 30.953403, 25.298956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114173, -0.177046, -0.977558,
		-0.665023, 0.744630, -0.057190,
		0.738044, 0.643569, -0.202757,
		36.048840, 31.146475, 25.238129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316559, 31.129467, 24.741817>,  <35.532207, 30.695976, 25.380058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316559, 31.129467, 24.741817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713860, 31.169668, 24.764999>,  <35.952240, 31.193789, 24.778908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713860, 31.169668, 24.764999>,  <35.316559, 31.129467, 24.741817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713860, 31.169668, 24.764999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061555, -0.033101, -0.997555,
		-0.098341, 0.994386, -0.039064,
		0.993247, 0.100505, 0.057954,
		36.011833, 31.199820, 24.782385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469646, 31.659973, 24.288645>,  <35.316559, 31.129467, 24.741817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469646, 31.659973, 24.288645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813576, 31.465382, 24.350676>,  <36.019932, 31.348627, 24.387894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813576, 31.465382, 24.350676>,  <35.469646, 31.659973, 24.288645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813576, 31.465382, 24.350676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215501, 0.070413, -0.973962,
		0.462891, 0.870851, 0.165379,
		0.859820, -0.486478, 0.155075,
		36.071522, 31.319439, 24.397198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008343, 31.995804, 23.958509>,  <35.469646, 31.659973, 24.288645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008343, 31.995804, 23.958509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185852, 31.638971, 23.992590>,  <36.292358, 31.424871, 24.013039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185852, 31.638971, 23.992590>,  <36.008343, 31.995804, 23.958509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185852, 31.638971, 23.992590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301617, 0.059157, -0.951592,
		0.843855, 0.447990, 0.295318,
		0.443774, -0.892079, 0.085202,
		36.318985, 31.371347, 24.018150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549839, 32.071976, 23.615686>,  <36.008343, 31.995804, 23.958509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549839, 32.071976, 23.615686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530525, 31.674303, 23.654181>,  <36.518936, 31.435698, 23.677277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530525, 31.674303, 23.654181>,  <36.549839, 32.071976, 23.615686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530525, 31.674303, 23.654181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104249, -0.100840, -0.989426,
		0.993378, -0.037745, 0.108512,
		-0.048288, -0.994187, 0.096237,
		36.516037, 31.376047, 23.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143482, 31.703098, 23.379793>,  <36.549839, 32.071976, 23.615686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143482, 31.703098, 23.379793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845669, 31.437582, 23.351355>,  <36.666981, 31.278273, 23.334291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845669, 31.437582, 23.351355>,  <37.143482, 31.703098, 23.379793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845669, 31.437582, 23.351355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250920, -0.179559, -0.951209,
		0.618639, -0.726043, 0.300245,
		-0.744530, -0.663793, -0.071096,
		36.622311, 31.238443, 23.330027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504795, 31.149439, 23.111116>,  <37.143482, 31.703098, 23.379793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504795, 31.149439, 23.111116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.117611, 31.092218, 23.028572>,  <36.885300, 31.057886, 22.979046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.117611, 31.092218, 23.028572>,  <37.504795, 31.149439, 23.111116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117611, 31.092218, 23.028572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244785, -0.354515, -0.902440,
		0.055937, -0.924042, 0.378175,
		-0.967962, -0.143052, -0.206361,
		36.827221, 31.049303, 22.966663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605228, 30.762020, 22.621407>,  <37.504795, 31.149439, 23.111116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605228, 30.762020, 22.621407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212177, 30.824429, 22.581192>,  <36.976349, 30.861874, 22.557064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212177, 30.824429, 22.581192>,  <37.605228, 30.762020, 22.621407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212177, 30.824429, 22.581192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065138, -0.217318, -0.973925,
		-0.173795, -0.963552, 0.203379,
		-0.982625, 0.156016, -0.100533,
		36.917389, 30.871235, 22.551031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368141, 30.268490, 22.104288>,  <37.605228, 30.762020, 22.621407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368141, 30.268490, 22.104288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100658, 30.565836, 22.098137>,  <36.940166, 30.744244, 22.094446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100658, 30.565836, 22.098137>,  <37.368141, 30.268490, 22.104288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100658, 30.565836, 22.098137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002074, -0.022546, -0.999744,
		-0.743521, -0.668505, 0.016619,
		-0.668709, 0.743365, -0.015377,
		36.900047, 30.788845, 22.093523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867214, 30.076120, 21.598442>,  <37.368141, 30.268490, 22.104288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867214, 30.076120, 21.598442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824657, 30.470394, 21.650759>,  <36.799122, 30.706959, 21.682148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824657, 30.470394, 21.650759>,  <36.867214, 30.076120, 21.598442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824657, 30.470394, 21.650759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018098, 0.129597, -0.991401,
		-0.994160, -0.107843, 0.004051,
		-0.106391, 0.985685, 0.130792,
		36.792740, 30.766100, 21.689997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262421, 30.224112, 21.290897>,  <36.867214, 30.076120, 21.598442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262421, 30.224112, 21.290897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446701, 30.578283, 21.315449>,  <36.557270, 30.790787, 21.330179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446701, 30.578283, 21.315449>,  <36.262421, 30.224112, 21.290897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446701, 30.578283, 21.315449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058642, 0.099369, -0.993321,
		-0.885616, 0.454024, 0.097703,
		0.460700, 0.885431, 0.061378,
		36.584911, 30.843912, 21.333862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816483, 30.812656, 20.959871>,  <36.262421, 30.224112, 21.290897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816483, 30.812656, 20.959871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213634, 30.858652, 20.947451>,  <36.451927, 30.886250, 20.939999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213634, 30.858652, 20.947451>,  <35.816483, 30.812656, 20.959871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213634, 30.858652, 20.947451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053991, 0.202113, -0.977873,
		-0.106169, 0.972588, 0.206882,
		0.992881, 0.114990, -0.031053,
		36.511497, 30.893148, 20.938135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468987, 30.188936, 20.921766>,  <35.816483, 30.812656, 20.959871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468987, 30.188936, 20.921766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559856, 30.436489, 21.222532>,  <35.614376, 30.585022, 21.402992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559856, 30.436489, 21.222532>,  <35.468987, 30.188936, 20.921766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559856, 30.436489, 21.222532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496647, 0.737775, -0.457198,
		-0.837696, -0.269575, 0.474968,
		0.227171, 0.618885, 0.751915,
		35.628006, 30.622154, 21.448107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933910, 30.596937, 20.755526>,  <35.468987, 30.188936, 20.921766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933910, 30.596937, 20.755526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546112, 30.499426, 20.745306>,  <34.313435, 30.440920, 20.739174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546112, 30.499426, 20.745306>,  <34.933910, 30.596937, 20.755526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546112, 30.499426, 20.745306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102377, 0.308026, 0.945854,
		-0.222709, 0.919616, -0.323586,
		-0.969494, -0.243778, -0.025548,
		34.255264, 30.426292, 20.737642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539284, 31.133242, 21.103344>,  <34.933910, 30.596937, 20.755526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539284, 31.133242, 21.103344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311131, 30.804691, 21.103567>,  <34.174240, 30.607561, 21.103701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311131, 30.804691, 21.103567>,  <34.539284, 31.133242, 21.103344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311131, 30.804691, 21.103567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322024, 0.224247, 0.919790,
		-0.755620, 0.524454, -0.392410,
		-0.570385, -0.821378, 0.000558,
		34.140015, 30.558277, 21.103735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855087, 31.374390, 21.303717>,  <34.539284, 31.133242, 21.103344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855087, 31.374390, 21.303717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839348, 30.977917, 21.354326>,  <33.829906, 30.740032, 21.384691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839348, 30.977917, 21.354326>,  <33.855087, 31.374390, 21.303717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839348, 30.977917, 21.354326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514375, 0.128648, 0.847861,
		-0.856663, -0.031720, -0.514901,
		-0.039347, -0.991183, 0.126524,
		33.827545, 30.680561, 21.392284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162285, 31.205843, 21.482100>,  <33.855087, 31.374390, 21.303717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162285, 31.205843, 21.482100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400402, 30.924128, 21.636814>,  <33.543270, 30.755098, 21.729643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400402, 30.924128, 21.636814>,  <33.162285, 31.205843, 21.482100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400402, 30.924128, 21.636814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320564, 0.233236, 0.918063,
		-0.736796, -0.670504, -0.086927,
		0.595290, -0.704291, 0.386787,
		33.578991, 30.712841, 21.752850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737320, 30.945963, 22.082270>,  <33.162285, 31.205843, 21.482100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737320, 30.945963, 22.082270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114594, 30.829920, 22.147070>,  <33.340958, 30.760294, 22.185949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114594, 30.829920, 22.147070>,  <32.737320, 30.945963, 22.082270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114594, 30.829920, 22.147070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104587, 0.203566, 0.973459,
		-0.315385, -0.935093, 0.161658,
		0.943183, -0.290107, 0.162000,
		33.397549, 30.742887, 22.195669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634476, 30.460161, 22.530115>,  <32.737320, 30.945963, 22.082270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634476, 30.460161, 22.530115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021439, 30.559395, 22.550457>,  <33.253616, 30.618935, 22.562662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021439, 30.559395, 22.550457>,  <32.634476, 30.460161, 22.530115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021439, 30.559395, 22.550457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119752, 0.271201, 0.955044,
		0.223134, -0.930004, 0.292069,
		0.967404, 0.248079, 0.050856,
		33.311661, 30.633820, 22.565714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789116, 30.201836, 23.153793>,  <32.634476, 30.460161, 22.530115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789116, 30.201836, 23.153793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063877, 30.485899, 23.092022>,  <33.228733, 30.656336, 23.054958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063877, 30.485899, 23.092022>,  <32.789116, 30.201836, 23.153793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063877, 30.485899, 23.092022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118048, 0.318695, 0.940478,
		0.717102, -0.627782, 0.302744,
		0.686898, 0.710157, -0.154429,
		33.269947, 30.698946, 23.045694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244278, 30.164776, 23.759026>,  <32.789116, 30.201836, 23.153793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244278, 30.164776, 23.759026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322346, 30.520578, 23.593769>,  <33.369186, 30.734060, 23.494616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322346, 30.520578, 23.593769>,  <33.244278, 30.164776, 23.759026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322346, 30.520578, 23.593769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179101, 0.381835, 0.906711,
		0.964278, -0.250957, -0.084789,
		0.195170, 0.889507, -0.413142,
		33.380898, 30.787430, 23.469826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938839, 30.411531, 24.019318>,  <33.244278, 30.164776, 23.759026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938839, 30.411531, 24.019318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715012, 30.716198, 23.888624>,  <33.580715, 30.898998, 23.810207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715012, 30.716198, 23.888624>,  <33.938839, 30.411531, 24.019318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715012, 30.716198, 23.888624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068794, 0.435557, 0.897529,
		0.825927, 0.479748, -0.296120,
		-0.559565, 0.761664, -0.326734,
		33.547142, 30.944696, 23.790604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335552, 31.055346, 24.109428>,  <33.938839, 30.411531, 24.019318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335552, 31.055346, 24.109428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945312, 31.141693, 24.125502>,  <33.711170, 31.193502, 24.135145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945312, 31.141693, 24.125502>,  <34.335552, 31.055346, 24.109428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945312, 31.141693, 24.125502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160930, 0.578445, 0.799689,
		0.149386, 0.786639, -0.599068,
		-0.975595, 0.215870, 0.040182,
		33.652634, 31.206453, 24.137556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474926, 31.581348, 24.316833>,  <34.335552, 31.055346, 24.109428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474926, 31.581348, 24.316833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084702, 31.521530, 24.381222>,  <33.850567, 31.485640, 24.419855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084702, 31.521530, 24.381222>,  <34.474926, 31.581348, 24.316833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084702, 31.521530, 24.381222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090831, 0.392593, 0.915216,
		-0.200064, 0.907472, -0.369416,
		-0.975563, -0.149548, 0.160970,
		33.792034, 31.476665, 24.429512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211712, 32.193413, 24.553696>,  <34.474926, 31.581348, 24.316833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211712, 32.193413, 24.553696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966099, 31.912315, 24.697430>,  <33.818733, 31.743658, 24.783670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966099, 31.912315, 24.697430>,  <34.211712, 32.193413, 24.553696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966099, 31.912315, 24.697430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310984, 0.203033, 0.928475,
		-0.725435, 0.681859, 0.093873,
		-0.614030, -0.702741, 0.359335,
		33.781891, 31.701492, 24.805229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000351, 32.464119, 25.154015>,  <34.211712, 32.193413, 24.553696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000351, 32.464119, 25.154015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904270, 32.080883, 25.216463>,  <33.846622, 31.850943, 25.253933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904270, 32.080883, 25.216463>,  <34.000351, 32.464119, 25.154015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904270, 32.080883, 25.216463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141739, 0.124490, 0.982045,
		-0.960319, 0.258020, 0.105895,
		-0.240204, -0.958085, 0.156122,
		33.832211, 31.793457, 25.263300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529388, 32.434505, 25.698681>,  <34.000351, 32.464119, 25.154015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529388, 32.434505, 25.698681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679310, 32.064041, 25.681967>,  <33.769264, 31.841763, 25.671938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679310, 32.064041, 25.681967>,  <33.529388, 32.434505, 25.698681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679310, 32.064041, 25.681967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115762, 0.002033, 0.993275,
		-0.919849, -0.377119, 0.107977,
		0.374802, -0.926163, -0.041786,
		33.791752, 31.786192, 25.669432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173847, 32.112888, 26.155472>,  <33.529388, 32.434505, 25.698681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173847, 32.112888, 26.155472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474617, 31.854267, 26.103977>,  <33.655079, 31.699095, 26.073080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474617, 31.854267, 26.103977>,  <33.173847, 32.112888, 26.155472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474617, 31.854267, 26.103977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113993, -0.064823, 0.991365,
		-0.649316, -0.760109, 0.024960,
		0.751927, -0.646554, -0.128737,
		33.700195, 31.660301, 26.065355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977661, 31.635345, 26.532261>,  <33.173847, 32.112888, 26.155472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977661, 31.635345, 26.532261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372215, 31.574667, 26.506857>,  <33.608948, 31.538260, 26.491613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372215, 31.574667, 26.506857>,  <32.977661, 31.635345, 26.532261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372215, 31.574667, 26.506857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016518, -0.292855, 0.956014,
		-0.163622, -0.944047, -0.286362,
		0.986385, -0.151695, -0.063511,
		33.668129, 31.529158, 26.487803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135235, 31.054577, 26.935581>,  <32.977661, 31.635345, 26.532261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135235, 31.054577, 26.935581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464069, 31.280876, 26.909954>,  <33.661369, 31.416656, 26.894577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464069, 31.280876, 26.909954>,  <33.135235, 31.054577, 26.935581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464069, 31.280876, 26.909954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137471, -0.088030, 0.986586,
		0.552520, -0.819865, -0.150142,
		0.822084, 0.565749, -0.064069,
		33.710693, 31.450602, 26.890734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472420, 30.824705, 27.483511>,  <33.135235, 31.054577, 26.935581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472420, 30.824705, 27.483511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658730, 31.164143, 27.383158>,  <33.770515, 31.367805, 27.322945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658730, 31.164143, 27.383158>,  <33.472420, 30.824705, 27.483511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658730, 31.164143, 27.383158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293731, 0.119176, 0.948430,
		0.834729, -0.515451, -0.193748,
		0.465779, 0.848592, -0.250884,
		33.798462, 31.418720, 27.307892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061977, 30.858736, 27.940298>,  <33.472420, 30.824705, 27.483511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061977, 30.858736, 27.940298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995064, 31.232777, 27.815336>,  <33.954914, 31.457201, 27.740358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995064, 31.232777, 27.815336>,  <34.061977, 30.858736, 27.940298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995064, 31.232777, 27.815336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242481, 0.346160, 0.906299,
		0.955625, 0.075859, -0.284652,
		-0.167286, 0.935104, -0.312404,
		33.944878, 31.513308, 27.721615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569641, 31.239176, 28.316849>,  <34.061977, 30.858736, 27.940298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569641, 31.239176, 28.316849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307640, 31.524334, 28.216654>,  <34.150440, 31.695429, 28.156536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307640, 31.524334, 28.216654>,  <34.569641, 31.239176, 28.316849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307640, 31.524334, 28.216654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059425, 0.379072, 0.923457,
		0.753284, 0.589985, -0.290658,
		-0.655006, 0.712897, -0.250489,
		34.111137, 31.738203, 28.141506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.071354, 31.918970, 31.878521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704483, 32.043781, 31.977654>,  <37.484360, 32.118668, 32.037132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704483, 32.043781, 31.977654>,  <38.071354, 31.918970, 31.878521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704483, 32.043781, 31.977654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379923, 0.497216, 0.780022,
		0.120162, 0.809578, -0.574583,
		-0.917180, 0.312026, 0.247831,
		37.429329, 32.137390, 32.052002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297714, 32.502365, 32.304058>,  <38.071354, 31.918970, 31.878521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297714, 32.502365, 32.304058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905071, 32.461922, 32.368843>,  <37.669487, 32.437656, 32.407715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905071, 32.461922, 32.368843>,  <38.297714, 32.502365, 32.304058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905071, 32.461922, 32.368843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097066, 0.466208, 0.879334,
		-0.164418, 0.878878, -0.447817,
		-0.981603, -0.101111, 0.161962,
		37.610592, 32.431587, 32.417431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957668, 33.144539, 32.343231>,  <38.297714, 32.502365, 32.304058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957668, 33.144539, 32.343231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716656, 32.890099, 32.536037>,  <37.572048, 32.737434, 32.651722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716656, 32.890099, 32.536037>,  <37.957668, 33.144539, 32.343231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716656, 32.890099, 32.536037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236669, 0.434386, 0.869078,
		-0.762200, 0.637722, -0.111185,
		-0.602527, -0.636097, 0.482018,
		37.535896, 32.699268, 32.680641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445511, 33.546894, 32.756516>,  <37.957668, 33.144539, 32.343231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445511, 33.546894, 32.756516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471371, 33.179543, 32.912670>,  <37.486885, 32.959133, 33.006363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471371, 33.179543, 32.912670>,  <37.445511, 33.546894, 32.756516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471371, 33.179543, 32.912670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110780, 0.395389, 0.911809,
		-0.991740, -0.015701, 0.127300,
		0.064649, -0.918380, 0.390384,
		37.490765, 32.904030, 33.029785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044422, 33.602402, 33.393448>,  <37.445511, 33.546894, 32.756516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044422, 33.602402, 33.393448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293457, 33.291267, 33.427750>,  <37.442879, 33.104588, 33.448330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293457, 33.291267, 33.427750>,  <37.044422, 33.602402, 33.393448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293457, 33.291267, 33.427750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153534, 0.228869, 0.961273,
		-0.767339, -0.585314, 0.261916,
		0.622591, -0.777835, 0.085755,
		37.480236, 33.057919, 33.453476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946720, 33.336018, 34.080376>,  <37.044422, 33.602402, 33.393448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946720, 33.336018, 34.080376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302525, 33.194317, 33.964947>,  <37.516006, 33.109295, 33.895691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302525, 33.194317, 33.964947>,  <36.946720, 33.336018, 34.080376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302525, 33.194317, 33.964947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344141, 0.103984, 0.933142,
		-0.300564, -0.929349, 0.214409,
		0.889510, -0.354256, -0.288573,
		37.569378, 33.088039, 33.878376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038406, 32.787819, 34.545643>,  <36.946720, 33.336018, 34.080376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038406, 32.787819, 34.545643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406723, 32.862091, 34.408436>,  <37.627712, 32.906654, 34.326111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406723, 32.862091, 34.408436>,  <37.038406, 32.787819, 34.545643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406723, 32.862091, 34.408436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358039, -0.053467, 0.932174,
		0.154745, -0.981155, -0.115713,
		0.920794, 0.185679, -0.343018,
		37.682961, 32.917793, 34.305531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521210, 32.264061, 34.866669>,  <37.038406, 32.787819, 34.545643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521210, 32.264061, 34.866669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.728493, 32.589512, 34.761242>,  <37.852863, 32.784782, 34.697987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.728493, 32.589512, 34.761242>,  <37.521210, 32.264061, 34.866669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728493, 32.589512, 34.761242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334742, 0.090634, 0.937941,
		0.787024, -0.574277, -0.225388,
		0.518210, 0.813629, -0.263566,
		37.883957, 32.833599, 34.682171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028858, 32.291321, 35.320541>,  <37.521210, 32.264061, 34.866669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028858, 32.291321, 35.320541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057785, 32.667213, 35.186874>,  <38.075142, 32.892750, 35.106674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057785, 32.667213, 35.186874>,  <38.028858, 32.291321, 35.320541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057785, 32.667213, 35.186874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274528, 0.303351, 0.912476,
		0.958856, -0.157728, -0.236045,
		0.072318, 0.939734, -0.334170,
		38.079479, 32.949135, 35.086624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608658, 32.620670, 35.660671>,  <38.028858, 32.291321, 35.320541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608658, 32.620670, 35.660671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.404293, 32.932220, 35.515163>,  <38.281673, 33.119148, 35.427856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.404293, 32.932220, 35.515163>,  <38.608658, 32.620670, 35.660671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404293, 32.932220, 35.515163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322903, 0.566062, 0.758490,
		0.796685, 0.270056, -0.540706,
		-0.510908, 0.778873, -0.363771,
		38.251022, 33.165882, 35.406033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043034, 33.178734, 35.769039>,  <38.608658, 32.620670, 35.660671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043034, 33.178734, 35.769039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664413, 33.302685, 35.733242>,  <38.437241, 33.377056, 35.711765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664413, 33.302685, 35.733242>,  <39.043034, 33.178734, 35.769039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664413, 33.302685, 35.733242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139426, 0.643289, 0.752821,
		0.290853, 0.700109, -0.652114,
		-0.946554, 0.309882, -0.089489,
		38.380447, 33.395649, 35.706394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087132, 33.889477, 35.888054>,  <39.043034, 33.178734, 35.769039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087132, 33.889477, 35.888054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706501, 33.791752, 35.962692>,  <38.478123, 33.733116, 36.007477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706501, 33.791752, 35.962692>,  <39.087132, 33.889477, 35.888054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706501, 33.791752, 35.962692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005646, 0.620767, 0.783975,
		-0.307368, 0.744957, -0.592085,
		-0.951574, -0.244312, 0.186598,
		38.421028, 33.718460, 36.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692463, 34.527401, 35.869884>,  <39.087132, 33.889477, 35.888054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692463, 34.527401, 35.869884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524128, 34.250126, 36.103939>,  <38.423126, 34.083763, 36.244373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524128, 34.250126, 36.103939>,  <38.692463, 34.527401, 35.869884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524128, 34.250126, 36.103939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067460, 0.619342, 0.782218,
		-0.904624, 0.368661, -0.213880,
		-0.420838, -0.693185, 0.585141,
		38.397877, 34.042171, 36.279480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227859, 34.761314, 36.214844>,  <38.692463, 34.527401, 35.869884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227859, 34.761314, 36.214844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.386845, 34.504787, 36.477367>,  <38.482235, 34.350872, 36.634880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.386845, 34.504787, 36.477367>,  <38.227859, 34.761314, 36.214844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386845, 34.504787, 36.477367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032560, 0.724633, 0.688365,
		-0.917040, -0.252231, 0.308897,
		0.397464, -0.641316, 0.656305,
		38.506084, 34.312393, 36.674259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380142, 35.453781, 36.196507>,  <38.227859, 34.761314, 36.214844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380142, 35.453781, 36.196507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.307426, 35.842087, 36.259201>,  <38.263798, 36.075069, 36.296818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.307426, 35.842087, 36.259201>,  <38.380142, 35.453781, 36.196507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307426, 35.842087, 36.259201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089182, 0.175014, -0.980519,
		-0.979286, -0.164266, -0.118390,
		-0.181786, 0.970766, 0.156739,
		38.252892, 36.133316, 36.306221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886192, 35.695984, 35.710381>,  <38.380142, 35.453781, 36.196507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886192, 35.695984, 35.710381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064957, 36.038147, 35.815113>,  <38.172215, 36.243443, 35.877953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064957, 36.038147, 35.815113>,  <37.886192, 35.695984, 35.710381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064957, 36.038147, 35.815113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249225, 0.162043, -0.954793,
		-0.859161, 0.491962, -0.140769,
		0.446911, 0.855404, 0.261830,
		38.199032, 36.294769, 35.893661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632259, 36.205791, 35.282303>,  <37.886192, 35.695984, 35.710381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632259, 36.205791, 35.282303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938141, 36.407112, 35.443264>,  <38.121670, 36.527905, 35.539841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938141, 36.407112, 35.443264>,  <37.632259, 36.205791, 35.282303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938141, 36.407112, 35.443264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222566, 0.379748, -0.897918,
		-0.604730, 0.776198, 0.178376,
		0.764700, 0.503298, 0.402400,
		38.167549, 36.558102, 35.563984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533154, 36.946194, 34.902782>,  <37.632259, 36.205791, 35.282303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533154, 36.946194, 34.902782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898548, 36.844769, 35.030060>,  <38.117786, 36.783913, 35.106426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898548, 36.844769, 35.030060>,  <37.533154, 36.946194, 34.902782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898548, 36.844769, 35.030060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364034, 0.160105, -0.917521,
		0.181703, 0.953978, 0.238559,
		0.913490, -0.253559, 0.318189,
		38.172596, 36.768700, 35.125515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004044, 37.463905, 34.678535>,  <37.533154, 36.946194, 34.902782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004044, 37.463905, 34.678535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243332, 37.151115, 34.748573>,  <38.386906, 36.963444, 34.790596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243332, 37.151115, 34.748573>,  <38.004044, 37.463905, 34.678535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243332, 37.151115, 34.748573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327048, 0.038770, -0.944212,
		0.731557, 0.622109, 0.278934,
		0.598217, -0.781970, 0.175097,
		38.422798, 36.916523, 34.801102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644409, 37.628372, 34.384346>,  <38.004044, 37.463905, 34.678535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644409, 37.628372, 34.384346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624832, 37.228863, 34.387192>,  <38.613087, 36.989155, 34.388897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624832, 37.228863, 34.387192>,  <38.644409, 37.628372, 34.384346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624832, 37.228863, 34.387192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104871, -0.012219, -0.994411,
		0.993281, -0.047927, 0.105341,
		-0.048946, -0.998776, 0.007111,
		38.610149, 36.929230, 34.389324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083809, 37.487923, 33.849655>,  <38.644409, 37.628372, 34.384346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083809, 37.487923, 33.849655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883247, 37.146030, 33.903362>,  <38.762909, 36.940895, 33.935589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883247, 37.146030, 33.903362>,  <39.083809, 37.487923, 33.849655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883247, 37.146030, 33.903362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020846, -0.143208, -0.989473,
		0.864961, -0.498926, 0.053988,
		-0.501405, -0.854731, 0.134270,
		38.732826, 36.889610, 33.943642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454624, 36.910194, 33.576344>,  <39.083809, 37.487923, 33.849655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454624, 36.910194, 33.576344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083012, 36.762333, 33.582748>,  <38.860043, 36.673618, 33.586594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083012, 36.762333, 33.582748>,  <39.454624, 36.910194, 33.576344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083012, 36.762333, 33.582748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104449, -0.303538, -0.947077,
		0.354949, -0.878193, 0.320607,
		-0.929032, -0.369651, 0.016014,
		38.804302, 36.651436, 33.587551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517696, 36.211060, 33.375771>,  <39.454624, 36.910194, 33.576344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517696, 36.211060, 33.375771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128437, 36.281876, 33.316940>,  <38.894882, 36.324368, 33.281643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128437, 36.281876, 33.316940>,  <39.517696, 36.211060, 33.375771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128437, 36.281876, 33.316940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048595, -0.466552, -0.883158,
		-0.224975, -0.866594, 0.445423,
		-0.973152, 0.177043, -0.147075,
		38.836491, 36.334988, 33.272820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329239, 35.649868, 33.021801>,  <39.517696, 36.211060, 33.375771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329239, 35.649868, 33.021801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000328, 35.876259, 32.998028>,  <38.802982, 36.012093, 32.983765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000328, 35.876259, 32.998028>,  <39.329239, 35.649868, 33.021801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000328, 35.876259, 32.998028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229798, -0.425761, -0.875169,
		-0.520629, -0.705974, 0.480153,
		-0.822276, 0.565977, -0.059432,
		38.753647, 36.046051, 32.980198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788586, 35.207268, 32.973816>,  <39.329239, 35.649868, 33.021801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788586, 35.207268, 32.973816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715824, 35.546387, 32.774559>,  <38.672165, 35.749859, 32.655003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715824, 35.546387, 32.774559>,  <38.788586, 35.207268, 32.973816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715824, 35.546387, 32.774559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040509, -0.499705, -0.865247,
		-0.982481, -0.177574, 0.056556,
		-0.181907, 0.847798, -0.498144,
		38.661251, 35.800728, 32.625114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249908, 35.119503, 32.478725>,  <38.788586, 35.207268, 32.973816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249908, 35.119503, 32.478725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396996, 35.456787, 32.321861>,  <38.485249, 35.659157, 32.227745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396996, 35.456787, 32.321861>,  <38.249908, 35.119503, 32.478725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396996, 35.456787, 32.321861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083576, -0.390031, -0.917001,
		-0.926175, 0.369970, -0.072948,
		0.367715, 0.843207, -0.392157,
		38.507309, 35.709751, 32.204212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778400, 35.245499, 31.953375>,  <38.249908, 35.119503, 32.478725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778400, 35.245499, 31.953375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094048, 35.469147, 31.851645>,  <38.283436, 35.603336, 31.790607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094048, 35.469147, 31.851645>,  <37.778400, 35.245499, 31.953375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094048, 35.469147, 31.851645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019105, -0.436188, -0.899653,
		-0.613945, 0.705073, -0.354885,
		0.789118, 0.559117, -0.254324,
		38.330784, 35.636883, 31.775347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539238, 35.597179, 31.452538>,  <37.778400, 35.245499, 31.953375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539238, 35.597179, 31.452538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934155, 35.627029, 31.396402>,  <38.171104, 35.644939, 31.362722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934155, 35.627029, 31.396402>,  <37.539238, 35.597179, 31.452538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934155, 35.627029, 31.396402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124260, -0.188177, -0.974243,
		-0.099108, 0.979296, -0.176513,
		0.987288, 0.074621, -0.140337,
		38.230339, 35.649414, 31.354301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101070, 36.137558, 31.237652>,  <37.539238, 35.597179, 31.452538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101070, 36.137558, 31.237652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.763962, 36.330921, 31.142950>,  <36.561695, 36.446938, 31.086130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.763962, 36.330921, 31.142950>,  <37.101070, 36.137558, 31.237652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763962, 36.330921, 31.142950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163275, 0.189532, 0.968204,
		0.512907, 0.854633, -0.080805,
		-0.842774, 0.483405, -0.236753,
		36.511131, 36.475941, 31.071924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144806, 36.637314, 31.763725>,  <37.101070, 36.137558, 31.237652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144806, 36.637314, 31.763725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770237, 36.636265, 31.623375>,  <36.545498, 36.635635, 31.539165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770237, 36.636265, 31.623375>,  <37.144806, 36.637314, 31.763725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770237, 36.636265, 31.623375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345737, 0.177551, 0.921380,
		0.059879, 0.984108, -0.167170,
		-0.936419, -0.002626, -0.350874,
		36.489311, 36.635479, 31.518112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813370, 37.298370, 32.053970>,  <37.144806, 36.637314, 31.763725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813370, 37.298370, 32.053970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548527, 37.008236, 31.978601>,  <36.389622, 36.834156, 31.933380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548527, 37.008236, 31.978601>,  <36.813370, 37.298370, 32.053970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548527, 37.008236, 31.978601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357871, 0.085115, 0.929884,
		-0.658440, 0.683114, -0.315932,
		-0.662107, -0.725335, -0.188424,
		36.349895, 36.790634, 31.922073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182415, 37.596355, 32.339855>,  <36.813370, 37.298370, 32.053970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182415, 37.596355, 32.339855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132858, 37.202866, 32.287807>,  <36.103123, 36.966770, 32.256577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132858, 37.202866, 32.287807>,  <36.182415, 37.596355, 32.339855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132858, 37.202866, 32.287807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428085, -0.065313, 0.901375,
		-0.895206, 0.167380, -0.413026,
		-0.123896, -0.983727, -0.130121,
		36.095688, 36.907749, 32.248772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426636, 37.459217, 32.330196>,  <36.182415, 37.596355, 32.339855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426636, 37.459217, 32.330196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.588978, 37.109890, 32.437973>,  <35.686382, 36.900295, 32.502640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.588978, 37.109890, 32.437973>,  <35.426636, 37.459217, 32.330196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588978, 37.109890, 32.437973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602912, -0.034271, 0.797071,
		-0.686859, -0.485950, -0.540441,
		0.405858, -0.873314, 0.269446,
		35.710735, 36.847897, 32.518806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878189, 37.152882, 32.561905>,  <35.426636, 37.459217, 32.330196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878189, 37.152882, 32.561905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191578, 36.962101, 32.721249>,  <35.379612, 36.847633, 32.816856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191578, 36.962101, 32.721249>,  <34.878189, 37.152882, 32.561905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191578, 36.962101, 32.721249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450396, 0.005845, 0.892810,
		-0.428152, -0.878912, -0.210236,
		0.783472, -0.476947, 0.398362,
		35.426620, 36.819016, 32.840755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634060, 36.763424, 33.046867>,  <34.878189, 37.152882, 32.561905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634060, 36.763424, 33.046867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014286, 36.787903, 33.168648>,  <35.242420, 36.802589, 33.241714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014286, 36.787903, 33.168648>,  <34.634060, 36.763424, 33.046867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014286, 36.787903, 33.168648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291915, -0.158324, 0.943249,
		0.105926, -0.985489, -0.132633,
		0.950561, 0.061197, 0.304449,
		35.299454, 36.806263, 33.259983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709698, 36.251217, 33.468437>,  <34.634060, 36.763424, 33.046867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709698, 36.251217, 33.468437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.016342, 36.483055, 33.578979>,  <35.200329, 36.622158, 33.645306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.016342, 36.483055, 33.578979>,  <34.709698, 36.251217, 33.468437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016342, 36.483055, 33.578979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379324, 0.061531, 0.923216,
		0.518088, -0.812578, 0.267025,
		0.766615, 0.579596, 0.276353,
		35.246326, 36.656933, 33.661884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828293, 35.950874, 34.065701>,  <34.709698, 36.251217, 33.468437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828293, 35.950874, 34.065701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.020679, 36.300896, 34.087425>,  <35.136112, 36.510910, 34.100460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.020679, 36.300896, 34.087425>,  <34.828293, 35.950874, 34.065701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020679, 36.300896, 34.087425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384886, 0.155077, 0.909843,
		0.787737, -0.458513, 0.411383,
		0.480970, 0.875053, 0.054316,
		35.164970, 36.563412, 34.103722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235851, 35.916145, 34.687115>,  <34.828293, 35.950874, 34.065701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235851, 35.916145, 34.687115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.140274, 36.293068, 34.593342>,  <35.082928, 36.519222, 34.537079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.140274, 36.293068, 34.593342>,  <35.235851, 35.916145, 34.687115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140274, 36.293068, 34.593342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349201, 0.141893, 0.926243,
		0.906072, 0.303182, 0.295151,
		-0.238940, 0.942310, -0.234436,
		35.068592, 36.575760, 34.523010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364349, 36.308777, 35.270470>,  <35.235851, 35.916145, 34.687115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364349, 36.308777, 35.270470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116467, 36.549706, 35.069202>,  <34.967739, 36.694263, 34.948441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116467, 36.549706, 35.069202>,  <35.364349, 36.308777, 35.270470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116467, 36.549706, 35.069202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368159, 0.343102, 0.864141,
		0.693128, 0.720757, 0.009128,
		-0.619704, 0.602321, -0.503167,
		34.930557, 36.730400, 34.918251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456757, 36.996422, 35.542084>,  <35.364349, 36.308777, 35.270470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456757, 36.996422, 35.542084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098740, 36.983891, 35.364132>,  <34.883930, 36.976372, 35.257362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098740, 36.983891, 35.364132>,  <35.456757, 36.996422, 35.542084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098740, 36.983891, 35.364132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445967, 0.071194, 0.892214,
		0.003724, 0.996971, -0.077692,
		-0.895042, -0.031326, -0.444881,
		34.830227, 36.974491, 35.230667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.773972, 36.763035, 27.507671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377544, 36.816303, 27.510464>,  <36.139687, 36.848263, 27.512138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377544, 36.816303, 27.510464>,  <36.773972, 36.763035, 27.507671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377544, 36.816303, 27.510464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023444, 0.122469, 0.992195,
		0.131279, 0.983497, -0.124497,
		-0.991068, 0.133173, 0.006979,
		36.080223, 36.856255, 27.512558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729031, 37.289822, 27.980043>,  <36.773972, 36.763035, 27.507671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729031, 37.289822, 27.980043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407703, 37.051609, 27.978464>,  <36.214905, 36.908680, 27.977516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407703, 37.051609, 27.978464>,  <36.729031, 37.289822, 27.980043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407703, 37.051609, 27.978464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000126, -0.006800, 0.999977,
		-0.595545, 0.803303, 0.005538,
		-0.803322, -0.595531, -0.003948,
		36.166706, 36.872952, 27.977280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328106, 37.484421, 28.484543>,  <36.729031, 37.289822, 27.980043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328106, 37.484421, 28.484543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197540, 37.111324, 28.423290>,  <36.119202, 36.887466, 28.386538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197540, 37.111324, 28.423290>,  <36.328106, 37.484421, 28.484543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197540, 37.111324, 28.423290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222601, -0.081595, 0.971489,
		-0.918642, 0.351194, -0.180995,
		-0.326413, -0.932741, -0.153133,
		36.099617, 36.831501, 28.377350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740841, 37.464413, 28.825197>,  <36.328106, 37.484421, 28.484543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740841, 37.464413, 28.825197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837456, 37.077152, 28.798805>,  <35.895424, 36.844795, 28.782970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837456, 37.077152, 28.798805>,  <35.740841, 37.464413, 28.825197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837456, 37.077152, 28.798805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080560, -0.087762, 0.992879,
		-0.967043, -0.234499, -0.099192,
		0.241535, -0.968147, -0.065978,
		35.909916, 36.786709, 28.779013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240177, 37.109425, 29.255098>,  <35.740841, 37.464413, 28.825197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240177, 37.109425, 29.255098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558517, 36.874477, 29.196281>,  <35.749523, 36.733509, 29.160992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558517, 36.874477, 29.196281>,  <35.240177, 37.109425, 29.255098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558517, 36.874477, 29.196281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090536, -0.124680, 0.988058,
		-0.598682, -0.799662, -0.046050,
		0.795854, -0.587363, -0.147042,
		35.797272, 36.698269, 29.152168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096920, 36.519367, 29.691797>,  <35.240177, 37.109425, 29.255098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096920, 36.519367, 29.691797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493366, 36.530766, 29.639845>,  <35.731236, 36.537605, 29.608673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493366, 36.530766, 29.639845>,  <35.096920, 36.519367, 29.691797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493366, 36.530766, 29.639845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130178, -0.008759, 0.991452,
		0.027108, -0.999556, -0.012390,
		0.991120, 0.028489, -0.129883,
		35.790703, 36.539314, 29.600880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375820, 36.088650, 30.175688>,  <35.096920, 36.519367, 29.691797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375820, 36.088650, 30.175688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701717, 36.293930, 30.067749>,  <35.897255, 36.417099, 30.002987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701717, 36.293930, 30.067749>,  <35.375820, 36.088650, 30.175688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701717, 36.293930, 30.067749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396675, -0.153914, 0.904963,
		0.422897, -0.844354, -0.328975,
		0.814743, 0.513203, -0.269844,
		35.946140, 36.447891, 29.986795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075096, 35.728088, 30.457079>,  <35.375820, 36.088650, 30.175688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075096, 35.728088, 30.457079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166836, 36.111809, 30.391174>,  <36.221878, 36.342041, 30.351631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166836, 36.111809, 30.391174>,  <36.075096, 35.728088, 30.457079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166836, 36.111809, 30.391174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287348, 0.094999, 0.953103,
		0.929963, -0.265936, -0.253865,
		0.229347, 0.959298, -0.164761,
		36.235641, 36.399597, 30.341745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796707, 35.871731, 30.632925>,  <36.075096, 35.728088, 30.457079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796707, 35.871731, 30.632925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609844, 36.223789, 30.666632>,  <36.497726, 36.435024, 30.686855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609844, 36.223789, 30.666632>,  <36.796707, 35.871731, 30.632925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609844, 36.223789, 30.666632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271995, 0.052372, 0.960873,
		0.841296, 0.471803, -0.263862,
		-0.467161, 0.880148, 0.084267,
		36.469696, 36.487835, 30.691912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636894, 36.030807, 30.710253>,  <36.796707, 35.871731, 30.632925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636894, 36.030807, 30.710253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986130, 35.857021, 30.798758>,  <38.195671, 35.752750, 30.851860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986130, 35.857021, 30.798758>,  <37.636894, 36.030807, 30.710253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986130, 35.857021, 30.798758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162502, -0.168557, -0.972204,
		0.459683, 0.884777, -0.076564,
		0.873089, -0.434464, 0.221261,
		38.248058, 35.726681, 30.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986012, 36.339516, 30.182751>,  <37.636894, 36.030807, 30.710253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986012, 36.339516, 30.182751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165714, 36.000626, 30.296152>,  <38.273537, 35.797291, 30.364193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165714, 36.000626, 30.296152>,  <37.986012, 36.339516, 30.182751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165714, 36.000626, 30.296152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207779, -0.209546, -0.955468,
		0.868904, 0.488158, 0.081895,
		0.449259, -0.847226, 0.283504,
		38.300491, 35.746456, 30.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714268, 36.298889, 29.837000>,  <37.986012, 36.339516, 30.182751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714268, 36.298889, 29.837000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559536, 35.937927, 29.912930>,  <38.466698, 35.721352, 29.958487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559536, 35.937927, 29.912930>,  <38.714268, 36.298889, 29.837000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559536, 35.937927, 29.912930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245470, -0.299185, -0.922080,
		0.888881, -0.310088, 0.337246,
		-0.386825, -0.902404, 0.189823,
		38.443489, 35.667206, 29.969877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044899, 35.922581, 29.348553>,  <38.714268, 36.298889, 29.837000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044899, 35.922581, 29.348553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786510, 35.649536, 29.485233>,  <38.631477, 35.485710, 29.567242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786510, 35.649536, 29.485233>,  <39.044899, 35.922581, 29.348553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786510, 35.649536, 29.485233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203426, -0.585373, -0.784829,
		0.735757, -0.437466, 0.516996,
		-0.645972, -0.682614, 0.341700,
		38.592720, 35.444752, 29.587744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377808, 35.308296, 29.396975>,  <39.044899, 35.922581, 29.348553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377808, 35.308296, 29.396975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989487, 35.230164, 29.341274>,  <38.756493, 35.183285, 29.307854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989487, 35.230164, 29.341274>,  <39.377808, 35.308296, 29.396975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989487, 35.230164, 29.341274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232052, -0.617559, -0.751514,
		0.060800, -0.761883, 0.644854,
		-0.970801, -0.195332, -0.139249,
		38.698246, 35.171562, 29.299500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379803, 34.600838, 29.253679>,  <39.377808, 35.308296, 29.396975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379803, 34.600838, 29.253679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028172, 34.734638, 29.117832>,  <38.817192, 34.814919, 29.036324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028172, 34.734638, 29.117832>,  <39.379803, 34.600838, 29.253679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028172, 34.734638, 29.117832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170182, -0.445273, -0.879073,
		-0.445273, -0.830567, 0.334501,
		0.879073, -0.334501, 0.339616,
		38.764450, 34.834988, 29.015947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982815, 34.022224, 29.011816>,  <39.379803, 34.600838, 29.253679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982815, 34.022224, 29.011816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784103, 34.323483, 28.839312>,  <38.664875, 34.504238, 28.735809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784103, 34.323483, 28.839312>,  <38.982815, 34.022224, 29.011816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784103, 34.323483, 28.839312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128266, -0.555170, -0.821787,
		-0.858346, -0.352931, 0.372400,
		-0.496779, 0.753144, -0.431259,
		38.635071, 34.549427, 28.709934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309109, 33.807911, 28.758595>,  <38.982815, 34.022224, 29.011816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309109, 33.807911, 28.758595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363220, 34.121460, 28.516190>,  <38.395687, 34.309589, 28.370747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363220, 34.121460, 28.516190>,  <38.309109, 33.807911, 28.758595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363220, 34.121460, 28.516190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342326, -0.536992, -0.771008,
		-0.929792, 0.311751, 0.195698,
		0.135274, 0.783870, -0.606011,
		38.403801, 34.356621, 28.334387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768333, 33.657398, 28.301222>,  <38.309109, 33.807911, 28.758595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768333, 33.657398, 28.301222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006542, 33.932396, 28.134993>,  <38.149467, 34.097397, 28.035255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006542, 33.932396, 28.134993>,  <37.768333, 33.657398, 28.301222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006542, 33.932396, 28.134993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296996, -0.292240, -0.909060,
		-0.746423, 0.664789, 0.030149,
		0.595522, 0.687497, -0.415574,
		38.185200, 34.138645, 28.010321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399368, 34.051094, 27.702072>,  <37.768333, 33.657398, 28.301222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399368, 34.051094, 27.702072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794720, 34.075996, 27.646605>,  <38.031933, 34.090939, 27.613325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794720, 34.075996, 27.646605>,  <37.399368, 34.051094, 27.702072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794720, 34.075996, 27.646605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102189, -0.403204, -0.909386,
		-0.112522, 0.912990, -0.392158,
		0.988381, 0.062252, -0.138667,
		38.091232, 34.094673, 27.605005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519123, 34.352623, 27.024115>,  <37.399368, 34.051094, 27.702072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519123, 34.352623, 27.024115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872375, 34.189659, 27.117147>,  <38.084328, 34.091881, 27.172968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872375, 34.189659, 27.117147>,  <37.519123, 34.352623, 27.024115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872375, 34.189659, 27.117147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012842, -0.474603, -0.880107,
		0.468948, 0.780238, -0.413905,
		0.883133, -0.407409, 0.232584,
		38.137314, 34.067436, 27.186922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963131, 34.560604, 26.418898>,  <37.519123, 34.352623, 27.024115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963131, 34.560604, 26.418898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136276, 34.269382, 26.631527>,  <38.240162, 34.094650, 26.759104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136276, 34.269382, 26.631527>,  <37.963131, 34.560604, 26.418898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136276, 34.269382, 26.631527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214644, -0.489479, -0.845186,
		0.875534, 0.479946, -0.055604,
		0.432860, -0.728054, 0.531573,
		38.266132, 34.050968, 26.790998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695133, 34.554211, 26.216072>,  <37.963131, 34.560604, 26.418898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695133, 34.554211, 26.216072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562073, 34.204918, 26.358511>,  <38.482239, 33.995342, 26.443974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562073, 34.204918, 26.358511>,  <38.695133, 34.554211, 26.216072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562073, 34.204918, 26.358511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045314, -0.391965, -0.918863,
		0.941961, -0.289523, 0.169957,
		-0.332649, -0.873235, 0.356097,
		38.462276, 33.942947, 26.465340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045876, 34.148132, 25.846842>,  <38.695133, 34.554211, 26.216072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045876, 34.148132, 25.846842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788868, 33.878101, 25.991856>,  <38.634663, 33.716084, 26.078865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788868, 33.878101, 25.991856>,  <39.045876, 34.148132, 25.846842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788868, 33.878101, 25.991856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023467, -0.490232, -0.871276,
		0.765909, -0.551305, 0.330827,
		-0.642521, -0.675081, 0.362536,
		38.596111, 33.675575, 26.100616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.795679, 33.232899, 26.734034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.118597, 33.468544, 26.720045>,  <31.312347, 33.609932, 26.711653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.118597, 33.468544, 26.720045>,  <30.795679, 33.232899, 26.734034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118597, 33.468544, 26.720045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076981, -0.046372, 0.995954,
		0.585105, -0.806721, -0.082786,
		0.807296, 0.589110, -0.034970,
		31.360786, 33.645279, 26.709555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422718, 32.952366, 27.244484>,  <30.795679, 33.232899, 26.734034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422718, 32.952366, 27.244484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.474443, 33.343849, 27.180721>,  <31.505478, 33.578739, 27.142464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.474443, 33.343849, 27.180721>,  <31.422718, 32.952366, 27.244484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474443, 33.343849, 27.180721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093856, 0.147956, 0.984530,
		0.987152, -0.142275, -0.072725,
		0.129314, 0.978707, -0.159408,
		31.513237, 33.637463, 27.132898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054447, 33.084518, 27.504272>,  <31.422718, 32.952366, 27.244484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054447, 33.084518, 27.504272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.873264, 33.440517, 27.483345>,  <31.764555, 33.654118, 27.470789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.873264, 33.440517, 27.483345>,  <32.054447, 33.084518, 27.504272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873264, 33.440517, 27.483345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294423, 0.204719, 0.933491,
		0.841514, 0.407427, -0.354764,
		-0.452956, 0.889996, -0.052318,
		31.737377, 33.707516, 27.467649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513596, 33.456467, 27.892479>,  <32.054447, 33.084518, 27.504272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513596, 33.456467, 27.892479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164612, 33.649536, 27.861921>,  <31.955221, 33.765377, 27.843588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164612, 33.649536, 27.861921>,  <32.513596, 33.456467, 27.892479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164612, 33.649536, 27.861921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113482, 0.352162, 0.929034,
		0.475326, 0.801876, -0.362023,
		-0.872460, 0.482677, -0.076393,
		31.902874, 33.794338, 27.839003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610336, 34.265133, 28.255142>,  <32.513596, 33.456467, 27.892479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610336, 34.265133, 28.255142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.230515, 34.144962, 28.219173>,  <32.002621, 34.072861, 28.197592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.230515, 34.144962, 28.219173>,  <32.610336, 34.265133, 28.255142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230515, 34.144962, 28.219173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119776, 0.082443, 0.989372,
		-0.289821, 0.950235, -0.114268,
		-0.949556, -0.300428, -0.089922,
		31.945648, 34.054832, 28.192198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268269, 34.846363, 28.490488>,  <32.610336, 34.265133, 28.255142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268269, 34.846363, 28.490488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018970, 34.535240, 28.522932>,  <31.869392, 34.348568, 28.542398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018970, 34.535240, 28.522932>,  <32.268269, 34.846363, 28.490488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018970, 34.535240, 28.522932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198779, 0.257878, 0.945508,
		-0.756342, 0.573160, -0.315333,
		-0.623245, -0.777809, 0.081112,
		31.831997, 34.301899, 28.547266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674709, 35.115818, 28.894627>,  <32.268269, 34.846363, 28.490488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674709, 35.115818, 28.894627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.675346, 34.716202, 28.912167>,  <31.675730, 34.476433, 28.922691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.675346, 34.716202, 28.912167>,  <31.674709, 35.115818, 28.894627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675346, 34.716202, 28.912167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261083, 0.041913, 0.964406,
		-0.965315, -0.012987, -0.260765,
		0.001595, -0.999037, 0.043850,
		31.675825, 34.416492, 28.925322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095215, 34.851406, 29.343082>,  <31.674709, 35.115818, 28.894627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095215, 34.851406, 29.343082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316082, 34.518921, 29.317156>,  <31.448603, 34.319431, 29.301600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316082, 34.518921, 29.317156>,  <31.095215, 34.851406, 29.343082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316082, 34.518921, 29.317156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216563, -0.218069, 0.951602,
		-0.805116, -0.511406, -0.300420,
		0.552166, -0.831210, -0.064819,
		31.481731, 34.269558, 29.297710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744347, 34.351040, 29.735441>,  <31.095215, 34.851406, 29.343082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744347, 34.351040, 29.735441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.114481, 34.199390, 29.737219>,  <31.336561, 34.108402, 29.738285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.114481, 34.199390, 29.737219>,  <30.744347, 34.351040, 29.735441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114481, 34.199390, 29.737219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087491, -0.202103, 0.975448,
		-0.368914, -0.903007, -0.220183,
		0.925336, -0.379120, 0.004446,
		31.392082, 34.085655, 29.738552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687349, 33.822773, 30.224630>,  <30.744347, 34.351040, 29.735441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687349, 33.822773, 30.224630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.083982, 33.861076, 30.189777>,  <31.321962, 33.884060, 30.168865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.083982, 33.861076, 30.189777>,  <30.687349, 33.822773, 30.224630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083982, 33.861076, 30.189777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094420, -0.074434, 0.992746,
		0.088579, -0.992618, -0.082849,
		0.991584, 0.095759, -0.087130,
		31.381458, 33.889805, 30.163639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059681, 33.136581, 30.545612>,  <30.687349, 33.822773, 30.224630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059681, 33.136581, 30.545612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.296844, 33.458603, 30.538069>,  <31.439142, 33.651814, 30.533543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.296844, 33.458603, 30.538069>,  <31.059681, 33.136581, 30.545612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296844, 33.458603, 30.538069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280591, -0.184588, 0.941911,
		0.754804, -0.563758, -0.335333,
		0.592908, 0.805050, -0.018858,
		31.474716, 33.700119, 30.532412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587965, 32.870872, 30.960661>,  <31.059681, 33.136581, 30.545612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587965, 32.870872, 30.960661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.637541, 33.267773, 30.964388>,  <31.667286, 33.505913, 30.966623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.637541, 33.267773, 30.964388>,  <31.587965, 32.870872, 30.960661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637541, 33.267773, 30.964388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233258, -0.038260, 0.971662,
		0.964484, -0.118255, -0.236191,
		0.123940, 0.992246, 0.009317,
		31.674723, 33.565445, 30.967182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250015, 33.028408, 31.132208>,  <31.587965, 32.870872, 30.960661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250015, 33.028408, 31.132208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.045643, 33.358177, 31.229595>,  <31.923021, 33.556038, 31.288027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.045643, 33.358177, 31.229595>,  <32.250015, 33.028408, 31.132208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045643, 33.358177, 31.229595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255603, -0.124715, 0.958704,
		0.820744, 0.552059, -0.147005,
		-0.510927, 0.824426, 0.243467,
		31.892365, 33.605503, 31.302635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666061, 33.300762, 31.584492>,  <32.250015, 33.028408, 31.132208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666061, 33.300762, 31.584492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.348953, 33.528130, 31.672512>,  <32.158688, 33.664551, 31.725325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.348953, 33.528130, 31.672512>,  <32.666061, 33.300762, 31.584492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348953, 33.528130, 31.672512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207680, -0.087518, 0.974274,
		0.573051, 0.818073, -0.048667,
		-0.792768, 0.568416, 0.220050,
		32.111122, 33.698654, 31.738527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370537, 33.534225, 31.672714>,  <32.666061, 33.300762, 31.584492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370537, 33.534225, 31.672714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.695705, 33.312466, 31.744049>,  <33.890808, 33.179409, 31.786850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.695705, 33.312466, 31.744049>,  <33.370537, 33.534225, 31.672714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695705, 33.312466, 31.744049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081381, -0.195079, -0.977405,
		0.576661, 0.809066, -0.113466,
		0.812920, -0.554397, 0.178337,
		33.939583, 33.146145, 31.797550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885551, 33.685974, 31.131689>,  <33.370537, 33.534225, 31.672714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885551, 33.685974, 31.131689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999454, 33.341885, 31.300886>,  <34.067795, 33.135429, 31.402405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999454, 33.341885, 31.300886>,  <33.885551, 33.685974, 31.131689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999454, 33.341885, 31.300886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054867, -0.455164, -0.888716,
		0.957028, 0.229861, -0.176810,
		0.284758, -0.860227, 0.422993,
		34.084881, 33.083817, 31.427784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491848, 33.450821, 30.751438>,  <33.885551, 33.685974, 31.131689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491848, 33.450821, 30.751438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322689, 33.130077, 30.920286>,  <34.221195, 32.937634, 31.021595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322689, 33.130077, 30.920286>,  <34.491848, 33.450821, 30.751438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322689, 33.130077, 30.920286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014602, -0.471795, -0.881587,
		0.906059, -0.366658, 0.211230,
		-0.422899, -0.801855, 0.422120,
		34.195820, 32.889523, 31.046923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922100, 32.822720, 30.565840>,  <34.491848, 33.450821, 30.751438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922100, 32.822720, 30.565840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561661, 32.678864, 30.662729>,  <34.345398, 32.592548, 30.720863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561661, 32.678864, 30.662729>,  <34.922100, 32.822720, 30.565840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561661, 32.678864, 30.662729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069010, -0.432553, -0.898964,
		0.428080, -0.826774, 0.364955,
		-0.901102, -0.359642, 0.242223,
		34.291328, 32.570972, 30.735395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891701, 32.287823, 30.142309>,  <34.922100, 32.822720, 30.565840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891701, 32.287823, 30.142309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.516068, 32.281307, 30.279634>,  <34.290688, 32.277397, 30.362030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.516068, 32.281307, 30.279634>,  <34.891701, 32.287823, 30.142309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516068, 32.281307, 30.279634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319286, -0.328396, -0.888939,
		0.127225, -0.944400, 0.303188,
		-0.939079, -0.016291, 0.343314,
		34.234344, 32.276421, 30.382629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625488, 31.626474, 29.961794>,  <34.891701, 32.287823, 30.142309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625488, 31.626474, 29.961794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.316063, 31.875008, 30.011663>,  <34.130409, 32.024128, 30.041586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.316063, 31.875008, 30.011663>,  <34.625488, 31.626474, 29.961794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316063, 31.875008, 30.011663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229133, -0.090806, -0.969150,
		-0.590846, -0.778266, 0.212612,
		-0.773563, 0.621335, 0.124674,
		34.083996, 32.061409, 30.049067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096035, 31.290958, 29.670698>,  <34.625488, 31.626474, 29.961794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096035, 31.290958, 29.670698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981262, 31.673948, 29.658609>,  <33.912399, 31.903742, 29.651356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981262, 31.673948, 29.658609>,  <34.096035, 31.290958, 29.670698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981262, 31.673948, 29.658609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387063, -0.144735, -0.910623,
		-0.876271, -0.249591, 0.412132,
		-0.286933, 0.957474, -0.030220,
		33.895184, 31.961191, 29.649544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376698, 31.263475, 29.394766>,  <34.096035, 31.290958, 29.670698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376698, 31.263475, 29.394766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565250, 31.613226, 29.348705>,  <33.678383, 31.823076, 29.321070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565250, 31.613226, 29.348705>,  <33.376698, 31.263475, 29.394766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565250, 31.613226, 29.348705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158454, -0.044476, -0.986364,
		-0.867577, 0.483203, 0.117584,
		0.471384, 0.874378, -0.115152,
		33.706665, 31.875540, 29.314159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942612, 31.681004, 28.888466>,  <33.376698, 31.263475, 29.394766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942612, 31.681004, 28.888466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.310196, 31.835648, 28.857372>,  <33.530746, 31.928434, 28.838717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.310196, 31.835648, 28.857372>,  <32.942612, 31.681004, 28.888466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310196, 31.835648, 28.857372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120845, 0.088447, -0.988723,
		-0.375374, 0.917993, 0.127999,
		0.918962, 0.386609, -0.077734,
		33.585884, 31.951630, 28.834053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868290, 32.214195, 28.451023>,  <32.942612, 31.681004, 28.888466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868290, 32.214195, 28.451023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.260990, 32.138264, 28.455523>,  <33.496613, 32.092705, 28.458221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.260990, 32.138264, 28.455523>,  <32.868290, 32.214195, 28.451023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260990, 32.138264, 28.455523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010838, -0.003203, -0.999936,
		0.189852, 0.981812, -0.001087,
		0.981753, -0.189828, 0.011249,
		33.555515, 32.081314, 28.458897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103104, 32.557529, 27.835276>,  <32.868290, 32.214195, 28.451023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103104, 32.557529, 27.835276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.405148, 32.313995, 27.932545>,  <33.586372, 32.167873, 27.990906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.405148, 32.313995, 27.932545>,  <33.103104, 32.557529, 27.835276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405148, 32.313995, 27.932545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171173, -0.174961, -0.969582,
		0.632860, 0.773764, -0.027898,
		0.755108, -0.608834, 0.243173,
		33.631680, 32.131344, 28.005497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627758, 32.717224, 27.443457>,  <33.103104, 32.557529, 27.835276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627758, 32.717224, 27.443457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718029, 32.335575, 27.522161>,  <33.772190, 32.106586, 27.569384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718029, 32.335575, 27.522161>,  <33.627758, 32.717224, 27.443457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718029, 32.335575, 27.522161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125362, -0.171852, -0.977114,
		0.966103, 0.245177, 0.080828,
		0.225675, -0.954125, 0.196762,
		33.785732, 32.049339, 27.581190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306786, 32.559311, 27.090824>,  <33.627758, 32.717224, 27.443457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306786, 32.559311, 27.090824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.193310, 32.183552, 27.167820>,  <34.125225, 31.958096, 27.214018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.193310, 32.183552, 27.167820>,  <34.306786, 32.559311, 27.090824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193310, 32.183552, 27.167820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156098, -0.243299, -0.957308,
		0.946127, -0.241528, 0.215659,
		-0.283686, -0.939399, 0.192490,
		34.108204, 31.901731, 27.225567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830906, 32.093891, 26.885164>,  <34.306786, 32.559311, 27.090824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830906, 32.093891, 26.885164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503441, 31.864740, 26.869150>,  <34.306961, 31.727249, 26.859543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503441, 31.864740, 26.869150>,  <34.830906, 32.093891, 26.885164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503441, 31.864740, 26.869150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175935, -0.183836, -0.967084,
		0.546660, -0.798759, 0.251289,
		-0.818663, -0.572877, -0.040034,
		34.257843, 31.692877, 26.857140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393196, 31.499758, 26.958256>,  <34.830906, 32.093891, 26.885164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393196, 31.499758, 26.958256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.783772, 31.559486, 26.895929>,  <36.018116, 31.595324, 26.858534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.783772, 31.559486, 26.895929>,  <35.393196, 31.499758, 26.958256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783772, 31.559486, 26.895929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189576, -0.248457, 0.949911,
		0.103128, -0.957065, -0.270910,
		0.976435, 0.149320, -0.155814,
		36.076702, 31.604282, 26.849186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702206, 30.946674, 27.343283>,  <35.393196, 31.499758, 26.958256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702206, 30.946674, 27.343283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.998398, 31.205322, 27.269987>,  <36.176113, 31.360510, 27.226009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.998398, 31.205322, 27.269987>,  <35.702206, 30.946674, 27.343283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998398, 31.205322, 27.269987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400112, -0.205065, 0.893230,
		0.540003, -0.734733, -0.410566,
		0.740478, 0.646619, -0.183239,
		36.220543, 31.399307, 27.215015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235718, 30.640228, 27.586367>,  <35.702206, 30.946674, 27.343283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235718, 30.640228, 27.586367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369873, 31.017023, 27.581104>,  <36.450367, 31.243101, 27.577948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369873, 31.017023, 27.581104>,  <36.235718, 30.640228, 27.586367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369873, 31.017023, 27.581104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158975, -0.042828, 0.986353,
		0.928570, -0.332903, -0.164116,
		0.335389, 0.941988, -0.013154,
		36.470490, 31.299620, 27.577158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942776, 30.701754, 27.855556>,  <36.235718, 30.640228, 27.586367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942776, 30.701754, 27.855556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794426, 31.071327, 27.893072>,  <36.705418, 31.293072, 27.915581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794426, 31.071327, 27.893072>,  <36.942776, 30.701754, 27.855556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794426, 31.071327, 27.893072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155324, -0.037856, 0.987138,
		0.915603, 0.380670, -0.129469,
		-0.370872, 0.923936, 0.093788,
		36.683163, 31.348509, 27.921209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455608, 31.110670, 28.243610>,  <36.942776, 30.701754, 27.855556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455608, 31.110670, 28.243610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105053, 31.300068, 28.278831>,  <36.894722, 31.413706, 28.299963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105053, 31.300068, 28.278831>,  <37.455608, 31.110670, 28.243610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105053, 31.300068, 28.278831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148212, 0.091202, 0.984741,
		0.458238, 0.876063, -0.150105,
		-0.876385, 0.473494, 0.088051,
		36.842136, 31.442116, 28.305246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578690, 31.602642, 28.723530>,  <37.455608, 31.110670, 28.243610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578690, 31.602642, 28.723530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179325, 31.588848, 28.705742>,  <36.939705, 31.580572, 28.695068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179325, 31.588848, 28.705742>,  <37.578690, 31.602642, 28.723530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179325, 31.588848, 28.705742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052235, 0.273922, 0.960332,
		-0.020937, 0.961133, -0.275290,
		-0.998415, -0.034487, -0.044470,
		36.879799, 31.578503, 28.692402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350113, 32.245777, 29.036747>,  <37.578690, 31.602642, 28.723530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350113, 32.245777, 29.036747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049118, 31.985237, 29.075741>,  <36.868523, 31.828913, 29.099138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049118, 31.985237, 29.075741>,  <37.350113, 32.245777, 29.036747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049118, 31.985237, 29.075741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115146, 0.275849, 0.954279,
		-0.648462, 0.706858, -0.282574,
		-0.752488, -0.651351, 0.097486,
		36.823372, 31.789831, 29.104986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835102, 32.647427, 29.269018>,  <37.350113, 32.245777, 29.036747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835102, 32.647427, 29.269018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751026, 32.269402, 29.369160>,  <36.700581, 32.042587, 29.429245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751026, 32.269402, 29.369160>,  <36.835102, 32.647427, 29.269018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751026, 32.269402, 29.369160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136382, 0.281915, 0.949697,
		-0.968100, 0.165477, -0.188146,
		-0.210195, -0.945061, 0.250354,
		36.687969, 31.985884, 29.444265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279560, 32.658371, 29.757267>,  <36.835102, 32.647427, 29.269018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279560, 32.658371, 29.757267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440933, 32.294674, 29.798281>,  <36.537758, 32.076454, 29.822889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440933, 32.294674, 29.798281>,  <36.279560, 32.658371, 29.757267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440933, 32.294674, 29.798281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153295, 0.043314, 0.987231,
		-0.902078, -0.413998, -0.121909,
		0.403431, -0.909247, 0.102537,
		36.561962, 32.021900, 29.829042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902813, 32.359646, 30.447008>,  <36.279560, 32.658371, 29.757267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902813, 32.359646, 30.447008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224472, 32.133087, 30.374847>,  <36.417469, 31.997152, 30.331551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224472, 32.133087, 30.374847>,  <35.902813, 32.359646, 30.447008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224472, 32.133087, 30.374847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136933, -0.118820, 0.983428,
		-0.578442, -0.815525, -0.017991,
		0.804148, -0.566393, -0.180403,
		36.465717, 31.963169, 30.320726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874474, 31.786091, 30.855309>,  <35.902813, 32.359646, 30.447008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874474, 31.786091, 30.855309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254940, 31.835045, 30.741959>,  <36.483219, 31.864418, 30.673948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254940, 31.835045, 30.741959>,  <35.874474, 31.786091, 30.855309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254940, 31.835045, 30.741959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288280, -0.024054, 0.957244,
		0.110337, -0.992191, -0.058161,
		0.951168, 0.122386, -0.283375,
		36.540291, 31.871759, 30.656946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285881, 31.271763, 31.210455>,  <35.874474, 31.786091, 30.855309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285881, 31.271763, 31.210455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539658, 31.567179, 31.119207>,  <36.691925, 31.744429, 31.064459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539658, 31.567179, 31.119207>,  <36.285881, 31.271763, 31.210455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539658, 31.567179, 31.119207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371484, -0.032522, 0.927870,
		0.677850, -0.673424, -0.294989,
		0.634444, 0.738540, -0.228121,
		36.729992, 31.788740, 31.050772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922367, 31.073706, 31.501673>,  <36.285881, 31.271763, 31.210455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922367, 31.073706, 31.501673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976761, 31.466444, 31.448776>,  <37.009396, 31.702087, 31.417038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976761, 31.466444, 31.448776>,  <36.922367, 31.073706, 31.501673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976761, 31.466444, 31.448776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457483, 0.056167, 0.887443,
		0.878760, -0.181172, -0.441540,
		0.135980, 0.981846, -0.132241,
		37.017555, 31.760998, 31.409103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564884, 31.251440, 31.845427>,  <36.922367, 31.073706, 31.501673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564884, 31.251440, 31.845427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.384247, 31.606125, 31.805828>,  <37.275864, 31.818935, 31.782068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.384247, 31.606125, 31.805828>,  <37.564884, 31.251440, 31.845427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384247, 31.606125, 31.805828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375120, 0.289366, 0.880655,
		0.809534, 0.360565, -0.463300,
		-0.451596, 0.886713, -0.098997,
		37.248768, 31.872139, 31.776129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.473701, 33.506866, 25.877827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080799, 33.437798, 25.848557>,  <38.845058, 33.396355, 25.830994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080799, 33.437798, 25.848557>,  <39.473701, 33.506866, 25.877827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080799, 33.437798, 25.848557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135315, -0.382372, -0.914047,
		0.129854, -0.907730, 0.398954,
		-0.982256, -0.172677, -0.073177,
		38.786121, 33.385994, 25.826603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406357, 32.793438, 25.703039>,  <39.473701, 33.506866, 25.877827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406357, 32.793438, 25.703039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062527, 32.960453, 25.585192>,  <38.856228, 33.060661, 25.514484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062527, 32.960453, 25.585192>,  <39.406357, 32.793438, 25.703039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062527, 32.960453, 25.585192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119386, -0.396499, -0.910239,
		-0.496872, -0.817590, 0.290972,
		-0.859573, 0.417534, -0.294618,
		38.804653, 33.085712, 25.496807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205833, 32.520584, 25.080379>,  <39.406357, 32.793438, 25.703039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205833, 32.520584, 25.080379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892239, 32.768082, 25.060291>,  <38.704082, 32.916580, 25.048239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892239, 32.768082, 25.060291>,  <39.205833, 32.520584, 25.080379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892239, 32.768082, 25.060291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284229, -0.429700, -0.857071,
		-0.551886, -0.657659, 0.512744,
		-0.783987, 0.618743, -0.050220,
		38.657043, 32.953705, 25.045225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589905, 32.132679, 24.869944>,  <39.205833, 32.520584, 25.080379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589905, 32.132679, 24.869944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525230, 32.516651, 24.778383>,  <38.486427, 32.747032, 24.723448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525230, 32.516651, 24.778383>,  <38.589905, 32.132679, 24.869944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525230, 32.516651, 24.778383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281075, -0.267141, -0.921755,
		-0.945967, -0.084698, 0.313005,
		-0.161687, 0.959928, -0.228900,
		38.476723, 32.804630, 24.709713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069962, 32.129501, 24.305519>,  <38.589905, 32.132679, 24.869944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069962, 32.129501, 24.305519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211803, 32.502064, 24.272663>,  <38.296909, 32.725601, 24.252949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211803, 32.502064, 24.272663>,  <38.069962, 32.129501, 24.305519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211803, 32.502064, 24.272663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372119, 0.059985, -0.926245,
		-0.857780, 0.359014, 0.367863,
		0.354601, 0.931403, -0.082142,
		38.318184, 32.781483, 24.248020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517551, 32.585724, 24.114910>,  <38.069962, 32.129501, 24.305519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517551, 32.585724, 24.114910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869781, 32.746021, 24.013725>,  <38.081120, 32.842197, 23.953014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869781, 32.746021, 24.013725>,  <37.517551, 32.585724, 24.114910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869781, 32.746021, 24.013725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325819, 0.124334, -0.937221,
		-0.344131, 0.907716, 0.240055,
		0.880577, 0.400741, -0.252963,
		38.133953, 32.866245, 23.937836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360329, 33.290176, 23.817913>,  <37.517551, 32.585724, 24.114910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360329, 33.290176, 23.817913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710911, 33.180161, 23.659838>,  <37.921261, 33.114151, 23.564993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710911, 33.180161, 23.659838>,  <37.360329, 33.290176, 23.817913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710911, 33.180161, 23.659838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384620, 0.093802, -0.918297,
		0.289642, 0.956845, -0.023575,
		0.876456, -0.275044, -0.395191,
		37.973846, 33.097649, 23.541281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342953, 33.710869, 23.145077>,  <37.360329, 33.290176, 23.817913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342953, 33.710869, 23.145077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633152, 33.435890, 23.132021>,  <37.807270, 33.270901, 23.124187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633152, 33.435890, 23.132021>,  <37.342953, 33.710869, 23.145077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633152, 33.435890, 23.132021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130202, -0.090527, -0.987346,
		0.675796, 0.720567, -0.155185,
		0.725498, -0.687450, -0.032642,
		37.850800, 33.229656, 23.122229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731285, 33.994778, 22.651056>,  <37.342953, 33.710869, 23.145077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731285, 33.994778, 22.651056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789177, 33.599884, 22.677660>,  <37.823914, 33.362949, 22.693623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789177, 33.599884, 22.677660>,  <37.731285, 33.994778, 22.651056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789177, 33.599884, 22.677660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284119, -0.105849, -0.952929,
		0.947802, 0.119023, -0.295811,
		0.144732, -0.987233, 0.066507,
		37.832596, 33.303715, 22.697613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166214, 33.890602, 22.101702>,  <37.731285, 33.994778, 22.651056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166214, 33.890602, 22.101702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028244, 33.531948, 22.212749>,  <37.945461, 33.316753, 22.279377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028244, 33.531948, 22.212749>,  <38.166214, 33.890602, 22.101702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028244, 33.531948, 22.212749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227635, -0.207032, -0.951483,
		0.910611, -0.391382, -0.132696,
		-0.344921, -0.896637, 0.277617,
		37.924767, 33.262959, 22.296034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548103, 33.409794, 21.612299>,  <38.166214, 33.890602, 22.101702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548103, 33.409794, 21.612299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230114, 33.213020, 21.754301>,  <38.039322, 33.094955, 21.839502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230114, 33.213020, 21.754301>,  <38.548103, 33.409794, 21.612299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230114, 33.213020, 21.754301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286865, -0.210801, -0.934490,
		0.534541, -0.844728, 0.026462,
		-0.794968, -0.491932, 0.355004,
		37.991623, 33.065441, 21.860802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514278, 32.771130, 21.234301>,  <38.548103, 33.409794, 21.612299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514278, 32.771130, 21.234301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.147564, 32.788315, 21.393127>,  <37.927536, 32.798626, 21.488424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.147564, 32.788315, 21.393127>,  <38.514278, 32.771130, 21.234301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147564, 32.788315, 21.393127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382842, -0.377726, -0.843063,
		0.113763, -0.924920, 0.362740,
		-0.916782, 0.042962, 0.397070,
		37.872528, 32.801205, 21.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196350, 32.050449, 21.126911>,  <38.514278, 32.771130, 21.234301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196350, 32.050449, 21.126911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903423, 32.320038, 21.165846>,  <37.727669, 32.481792, 21.189207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903423, 32.320038, 21.165846>,  <38.196350, 32.050449, 21.126911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903423, 32.320038, 21.165846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461500, -0.386101, -0.798714,
		-0.500728, -0.629833, 0.593786,
		-0.732317, 0.673971, 0.097337,
		37.683727, 32.522228, 21.195047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524162, 31.746742, 21.072229>,  <38.196350, 32.050449, 21.126911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524162, 31.746742, 21.072229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.506683, 32.131344, 20.963709>,  <37.496197, 32.362103, 20.898596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.506683, 32.131344, 20.963709>,  <37.524162, 31.746742, 21.072229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506683, 32.131344, 20.963709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353167, -0.268894, -0.896085,
		-0.934539, 0.056662, 0.351320,
		-0.043694, 0.961502, -0.271303,
		37.493576, 32.419796, 20.882318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089012, 31.932032, 21.608335>,  <37.524162, 31.746742, 21.072229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089012, 31.932032, 21.608335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903389, 31.593563, 21.503531>,  <36.792015, 31.390482, 21.440647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903389, 31.593563, 21.503531>,  <37.089012, 31.932032, 21.608335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903389, 31.593563, 21.503531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237739, -0.165967, 0.957045,
		-0.853308, 0.506411, -0.124149,
		-0.464054, -0.846169, -0.262015,
		36.764172, 31.339712, 21.424927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454357, 32.018360, 21.811531>,  <37.089012, 31.932032, 21.608335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454357, 32.018360, 21.811531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514858, 31.624939, 21.772034>,  <36.551159, 31.388887, 21.748335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514858, 31.624939, 21.772034>,  <36.454357, 32.018360, 21.811531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514858, 31.624939, 21.772034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270428, -0.137256, 0.952906,
		-0.950785, -0.117426, -0.286740,
		0.151253, -0.983551, -0.098745,
		36.560234, 31.329874, 21.742411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940239, 31.620747, 22.136354>,  <36.454357, 32.018360, 21.811531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940239, 31.620747, 22.136354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219700, 31.337936, 22.092545>,  <36.387379, 31.168249, 22.066257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219700, 31.337936, 22.092545>,  <35.940239, 31.620747, 22.136354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219700, 31.337936, 22.092545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112838, -0.260058, 0.958977,
		-0.706506, -0.657635, -0.261470,
		0.698654, -0.707027, -0.109526,
		36.429295, 31.125828, 22.059687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668648, 30.900934, 22.242994>,  <35.940239, 31.620747, 22.136354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668648, 30.900934, 22.242994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042713, 30.978893, 22.361307>,  <36.267151, 31.025669, 22.432295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042713, 30.978893, 22.361307>,  <35.668648, 30.900934, 22.242994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042713, 30.978893, 22.361307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262082, -0.181046, 0.947911,
		0.238295, -0.963970, -0.118228,
		0.935162, 0.194897, 0.295781,
		36.323261, 31.037363, 22.450041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537998, 30.998304, 22.874199>,  <35.668648, 30.900934, 22.242994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537998, 30.998304, 22.874199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937370, 30.976000, 22.872150>,  <36.176994, 30.962616, 22.870922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937370, 30.976000, 22.872150>,  <35.537998, 30.998304, 22.874199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937370, 30.976000, 22.872150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001423, -0.116646, 0.993173,
		-0.055974, -0.991607, -0.116543,
		0.998431, -0.055758, -0.005118,
		36.236900, 30.959270, 22.870615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688545, 30.339176, 23.288630>,  <35.537998, 30.998304, 22.874199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688545, 30.339176, 23.288630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970345, 30.622547, 23.305626>,  <36.139423, 30.792570, 23.315825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970345, 30.622547, 23.305626>,  <35.688545, 30.339176, 23.288630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970345, 30.622547, 23.305626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068192, 0.007975, 0.997640,
		0.706419, -0.705737, 0.053928,
		0.704501, 0.708430, 0.042491,
		36.181694, 30.835075, 23.318373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132652, 30.100403, 23.790283>,  <35.688545, 30.339176, 23.288630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132652, 30.100403, 23.790283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.242908, 30.483177, 23.753845>,  <36.309063, 30.712841, 23.731983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.242908, 30.483177, 23.753845>,  <36.132652, 30.100403, 23.790283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242908, 30.483177, 23.753845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076940, 0.072499, 0.994396,
		0.958176, -0.281107, -0.053643,
		0.275643, 0.956934, -0.091095,
		36.325600, 30.770258, 23.726517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803276, 30.184607, 24.185307>,  <36.132652, 30.100403, 23.790283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803276, 30.184607, 24.185307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646790, 30.550106, 24.141464>,  <36.552898, 30.769405, 24.115158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646790, 30.550106, 24.141464>,  <36.803276, 30.184607, 24.185307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646790, 30.550106, 24.141464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000295, 0.119224, 0.992867,
		0.920299, 0.388392, -0.046912,
		-0.391215, 0.913749, -0.109607,
		36.529427, 30.824230, 24.108582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205509, 30.646887, 24.488819>,  <36.803276, 30.184607, 24.185307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205509, 30.646887, 24.488819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847824, 30.825533, 24.476715>,  <36.633213, 30.932720, 24.469452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847824, 30.825533, 24.476715>,  <37.205509, 30.646887, 24.488819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847824, 30.825533, 24.476715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036913, 0.140940, 0.989330,
		0.446117, 0.883555, -0.142516,
		-0.894213, 0.446617, -0.030261,
		36.579559, 30.959518, 24.467636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305370, 31.242258, 24.800098>,  <37.205509, 30.646887, 24.488819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305370, 31.242258, 24.800098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907097, 31.205444, 24.795408>,  <36.668133, 31.183355, 24.792595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907097, 31.205444, 24.795408>,  <37.305370, 31.242258, 24.800098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907097, 31.205444, 24.795408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032916, 0.232257, 0.972098,
		-0.086745, 0.968291, -0.234284,
		-0.995687, -0.092036, -0.011725,
		36.608391, 31.177834, 24.791891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079472, 31.931486, 25.006952>,  <37.305370, 31.242258, 24.800098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079472, 31.931486, 25.006952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775333, 31.683287, 25.083742>,  <36.592850, 31.534367, 25.129816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775333, 31.683287, 25.083742>,  <37.079472, 31.931486, 25.006952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775333, 31.683287, 25.083742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040018, 0.339756, 0.939662,
		-0.648283, 0.706786, -0.283164,
		-0.760347, -0.620499, 0.191974,
		36.547230, 31.497137, 25.141335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569309, 32.338329, 25.424393>,  <37.079472, 31.931486, 25.006952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569309, 32.338329, 25.424393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507187, 31.947735, 25.484201>,  <36.469913, 31.713379, 25.520086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507187, 31.947735, 25.484201>,  <36.569309, 32.338329, 25.424393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507187, 31.947735, 25.484201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003091, 0.151837, 0.988401,
		-0.987861, 0.153046, -0.026600,
		-0.155310, -0.976485, 0.149521,
		36.460594, 31.654789, 25.529058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011883, 32.387257, 25.873844>,  <36.569309, 32.338329, 25.424393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011883, 32.387257, 25.873844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175968, 32.026375, 25.927132>,  <36.274422, 31.809845, 25.959105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175968, 32.026375, 25.927132>,  <36.011883, 32.387257, 25.873844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175968, 32.026375, 25.927132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077815, 0.110915, 0.990779,
		-0.908663, -0.416799, -0.024707,
		0.410215, -0.902206, 0.133218,
		36.299034, 31.755713, 25.967096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486374, 32.029266, 26.359455>,  <36.011883, 32.387257, 25.873844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486374, 32.029266, 26.359455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850677, 31.868452, 26.397146>,  <36.069260, 31.771963, 26.419760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850677, 31.868452, 26.397146>,  <35.486374, 32.029266, 26.359455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850677, 31.868452, 26.397146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058428, 0.100422, 0.993228,
		-0.408777, -0.910100, 0.067970,
		0.910762, -0.402038, 0.094226,
		36.123905, 31.747841, 26.425413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973186, 31.519991, 26.334978>,  <35.486374, 32.029266, 26.359455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973186, 31.519991, 26.334978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577141, 31.526627, 26.390690>,  <34.339512, 31.530607, 26.424118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577141, 31.526627, 26.390690>,  <34.973186, 31.519991, 26.334978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577141, 31.526627, 26.390690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139580, -0.214556, -0.966687,
		0.013849, -0.976571, 0.214750,
		-0.990114, 0.016588, 0.139281,
		34.280106, 31.531603, 26.432474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785530, 30.996857, 25.937330>,  <34.973186, 31.519991, 26.334978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785530, 30.996857, 25.937330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459435, 31.225910, 25.971916>,  <34.263779, 31.363342, 25.992668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459435, 31.225910, 25.971916>,  <34.785530, 30.996857, 25.937330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459435, 31.225910, 25.971916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214936, -0.160539, -0.963343,
		-0.537765, -0.803937, 0.253958,
		-0.815237, 0.572637, 0.086463,
		34.214863, 31.397701, 25.997854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378437, 30.636065, 25.479841>,  <34.785530, 30.996857, 25.937330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378437, 30.636065, 25.479841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193611, 30.985460, 25.541182>,  <34.082718, 31.195097, 25.577986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193611, 30.985460, 25.541182>,  <34.378437, 30.636065, 25.479841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193611, 30.985460, 25.541182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412914, -0.058864, -0.908866,
		-0.784858, -0.483270, 0.387875,
		-0.462060, 0.873490, 0.153349,
		34.054993, 31.247507, 25.587187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591972, 30.565010, 25.434000>,  <34.378437, 30.636065, 25.479841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591972, 30.565010, 25.434000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650272, 30.957232, 25.381428>,  <33.685253, 31.192564, 25.349884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650272, 30.957232, 25.381428>,  <33.591972, 30.565010, 25.434000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650272, 30.957232, 25.381428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589968, -0.020499, -0.807166,
		-0.794163, 0.195184, 0.575507,
		0.145749, 0.980552, -0.131432,
		33.693996, 31.251398, 25.341997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937180, 30.794014, 25.228569>,  <33.591972, 30.565010, 25.434000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937180, 30.794014, 25.228569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213017, 31.047356, 25.088095>,  <33.378517, 31.199360, 25.003811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213017, 31.047356, 25.088095>,  <32.937180, 30.794014, 25.228569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213017, 31.047356, 25.088095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400332, -0.070719, -0.913637,
		-0.603490, 0.770625, 0.204784,
		0.689590, 0.633353, -0.351184,
		33.419895, 31.237362, 24.982740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545746, 31.232141, 24.792120>,  <32.937180, 30.794014, 25.228569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545746, 31.232141, 24.792120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919357, 31.312687, 24.674105>,  <33.143524, 31.361013, 24.603296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919357, 31.312687, 24.674105>,  <32.545746, 31.232141, 24.792120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919357, 31.312687, 24.674105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295865, -0.026682, -0.954857,
		-0.200144, 0.979153, 0.034654,
		0.934027, 0.201362, -0.295037,
		33.199566, 31.373095, 24.585594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519207, 31.858450, 24.250418>,  <32.545746, 31.232141, 24.792120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519207, 31.858450, 24.250418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856976, 31.653328, 24.188467>,  <33.059635, 31.530254, 24.151297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856976, 31.653328, 24.188467>,  <32.519207, 31.858450, 24.250418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856976, 31.653328, 24.188467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183781, -0.005755, -0.982951,
		0.503172, 0.858485, -0.099103,
		0.844419, -0.512806, -0.154878,
		33.110302, 31.499487, 24.142004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527672, 32.585529, 24.044107>,  <32.519207, 31.858450, 24.250418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527672, 32.585529, 24.044107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238987, 32.856453, 23.986998>,  <32.065777, 33.019005, 23.952732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238987, 32.856453, 23.986998>,  <32.527672, 32.585529, 24.044107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238987, 32.856453, 23.986998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012408, 0.193571, 0.981008,
		0.692079, 0.709780, -0.131298,
		-0.721715, 0.677306, -0.142773,
		32.022472, 33.059647, 23.944166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683205, 32.958168, 24.566425>,  <32.527672, 32.585529, 24.044107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683205, 32.958168, 24.566425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324711, 33.109703, 24.474129>,  <32.109615, 33.200623, 24.418751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324711, 33.109703, 24.474129>,  <32.683205, 32.958168, 24.566425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324711, 33.109703, 24.474129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105125, 0.323965, 0.940210,
		0.430941, 0.866907, -0.250524,
		-0.896236, 0.378839, -0.230743,
		32.055840, 33.223354, 24.404905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622364, 33.742661, 24.661579>,  <32.683205, 32.958168, 24.566425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622364, 33.742661, 24.661579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261944, 33.574631, 24.704758>,  <32.045692, 33.473812, 24.730665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261944, 33.574631, 24.704758>,  <32.622364, 33.742661, 24.661579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261944, 33.574631, 24.704758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052757, 0.353191, 0.934062,
		-0.430499, 0.835940, -0.340403,
		-0.901048, -0.420071, 0.107947,
		31.991629, 33.448608, 24.737143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260891, 34.250050, 25.013607>,  <32.622364, 33.742661, 24.661579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260891, 34.250050, 25.013607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037155, 33.929161, 25.097113>,  <31.902914, 33.736629, 25.147215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037155, 33.929161, 25.097113>,  <32.260891, 34.250050, 25.013607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037155, 33.929161, 25.097113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196278, 0.372855, 0.906893,
		-0.805365, 0.466286, -0.366011,
		-0.559341, -0.802220, 0.208762,
		31.869352, 33.688496, 25.159740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570818, 34.598179, 25.326525>,  <32.260891, 34.250050, 25.013607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570818, 34.598179, 25.326525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.623154, 34.212437, 25.418526>,  <31.654554, 33.980991, 25.473726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.623154, 34.212437, 25.418526>,  <31.570818, 34.598179, 25.326525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623154, 34.212437, 25.418526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278370, 0.186930, 0.942108,
		-0.951521, -0.187289, -0.243990,
		0.130837, -0.964355, 0.230004,
		31.662405, 33.923130, 25.487526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945904, 34.429768, 25.650320>,  <31.570818, 34.598179, 25.326525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945904, 34.429768, 25.650320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240353, 34.184093, 25.764091>,  <31.417021, 34.036690, 25.832355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240353, 34.184093, 25.764091>,  <30.945904, 34.429768, 25.650320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240353, 34.184093, 25.764091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273145, 0.114928, 0.955083,
		-0.619290, -0.780746, -0.083161,
		0.736120, -0.614188, 0.284431,
		31.461189, 33.999836, 25.849421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674715, 33.833096, 26.024923>,  <30.945904, 34.429768, 25.650320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674715, 33.833096, 26.024923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.058487, 33.833500, 26.137699>,  <31.288750, 33.833744, 26.205364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.058487, 33.833500, 26.137699>,  <30.674715, 33.833096, 26.024923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058487, 33.833500, 26.137699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281915, -0.010653, 0.959380,
		0.004018, -0.999943, -0.009923,
		0.959431, 0.001057, 0.281941,
		31.346315, 33.833805, 26.222281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.482403, 34.933701, 20.816298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.681526, 34.665894, 21.036821>,  <35.800999, 34.505211, 21.169136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.681526, 34.665894, 21.036821>,  <35.482403, 34.933701, 20.816298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681526, 34.665894, 21.036821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853537, -0.490945, 0.174492,
		0.153837, -0.557425, -0.815850,
		0.497804, -0.669515, 0.551309,
		35.830868, 34.465038, 21.202213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219109, 35.112473, 21.482979>,  <35.482403, 34.933701, 20.816298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219109, 35.112473, 21.482979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.539890, 34.873993, 21.498018>,  <35.732361, 34.730907, 21.507042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.539890, 34.873993, 21.498018>,  <35.219109, 35.112473, 21.482979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539890, 34.873993, 21.498018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007595, 0.052755, 0.998579,
		-0.597332, -0.801103, 0.037779,
		0.801958, -0.596196, 0.037597,
		35.780479, 34.695133, 21.509296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981586, 34.721485, 21.920729>,  <35.219109, 35.112473, 21.482979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981586, 34.721485, 21.920729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.376999, 34.664543, 21.940905>,  <35.614246, 34.630379, 21.953011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.376999, 34.664543, 21.940905>,  <34.981586, 34.721485, 21.920729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376999, 34.664543, 21.940905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055742, -0.033517, 0.997883,
		-0.140368, -0.989247, -0.041068,
		0.988529, -0.142360, 0.050438,
		35.673557, 34.621834, 21.956036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174595, 34.111126, 22.380524>,  <34.981586, 34.721485, 21.920729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174595, 34.111126, 22.380524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.503834, 34.338287, 22.380299>,  <35.701378, 34.474586, 22.380163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.503834, 34.338287, 22.380299>,  <35.174595, 34.111126, 22.380524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503834, 34.338287, 22.380299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095773, -0.137833, 0.985814,
		0.559772, -0.811471, -0.167839,
		0.823093, 0.567906, -0.000562,
		35.750763, 34.508659, 22.380131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627178, 33.816364, 22.820339>,  <35.174595, 34.111126, 22.380524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627178, 33.816364, 22.820339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784168, 34.184200, 22.813263>,  <35.878365, 34.404903, 22.809017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784168, 34.184200, 22.813263>,  <35.627178, 33.816364, 22.820339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784168, 34.184200, 22.813263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162419, -0.050361, 0.985436,
		0.905307, -0.389636, -0.169125,
		0.392479, 0.919591, -0.017692,
		35.901913, 34.460079, 22.807955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907093, 33.926601, 23.499779>,  <35.627178, 33.816364, 22.820339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907093, 33.926601, 23.499779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.975044, 34.291313, 23.350220>,  <36.015816, 34.510139, 23.260485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.975044, 34.291313, 23.350220>,  <35.907093, 33.926601, 23.499779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975044, 34.291313, 23.350220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097475, 0.393100, 0.914315,
		0.980632, -0.118878, 0.155656,
		0.169880, 0.911779, -0.373899,
		36.026009, 34.564846, 23.238050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507607, 34.284485, 23.895391>,  <35.907093, 33.926601, 23.499779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507607, 34.284485, 23.895391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.272999, 34.565990, 23.735035>,  <36.132236, 34.734894, 23.638821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.272999, 34.565990, 23.735035>,  <36.507607, 34.284485, 23.895391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272999, 34.565990, 23.735035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127580, 0.408508, 0.903794,
		0.799825, 0.581237, -0.149811,
		-0.586518, 0.703765, -0.400889,
		36.097042, 34.777119, 23.614769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776550, 34.979019, 24.079582>,  <36.507607, 34.284485, 23.895391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776550, 34.979019, 24.079582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.392075, 35.040890, 23.988201>,  <36.161388, 35.078011, 23.933372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.392075, 35.040890, 23.988201>,  <36.776550, 34.979019, 24.079582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392075, 35.040890, 23.988201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104015, 0.563793, 0.819340,
		0.255529, 0.811304, -0.525824,
		-0.961190, 0.154672, -0.228453,
		36.103718, 35.087292, 23.919664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642857, 35.722881, 24.175102>,  <36.776550, 34.979019, 24.079582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642857, 35.722881, 24.175102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.273457, 35.569935, 24.187368>,  <36.051815, 35.478165, 24.194729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.273457, 35.569935, 24.187368>,  <36.642857, 35.722881, 24.175102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273457, 35.569935, 24.187368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151842, 0.437801, 0.886157,
		-0.352266, 0.813710, -0.462369,
		-0.923500, -0.382370, 0.030667,
		35.996407, 35.455223, 24.196568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186829, 36.252987, 24.317045>,  <36.642857, 35.722881, 24.175102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186829, 36.252987, 24.317045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.987823, 35.920971, 24.417852>,  <35.868420, 35.721760, 24.478336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.987823, 35.920971, 24.417852>,  <36.186829, 36.252987, 24.317045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987823, 35.920971, 24.417852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013168, 0.297719, 0.954563,
		-0.867354, 0.471592, -0.159050,
		-0.497517, -0.830039, 0.252018,
		35.838570, 35.671959, 24.493458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601536, 36.501019, 24.647526>,  <36.186829, 36.252987, 24.317045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601536, 36.501019, 24.647526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.649651, 36.120705, 24.761751>,  <35.678520, 35.892517, 24.830286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.649651, 36.120705, 24.761751>,  <35.601536, 36.501019, 24.647526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649651, 36.120705, 24.761751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060498, 0.280095, 0.958064,
		-0.990894, -0.132516, -0.023830,
		0.120284, -0.950782, 0.285562,
		35.685738, 35.835468, 24.847420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094505, 36.392288, 25.156336>,  <35.601536, 36.501019, 24.647526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094505, 36.392288, 25.156336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.337212, 36.082207, 25.226645>,  <35.482834, 35.896156, 25.268829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.337212, 36.082207, 25.226645>,  <35.094505, 36.392288, 25.156336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337212, 36.082207, 25.226645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163232, 0.094901, 0.982013,
		-0.777940, -0.624543, -0.068955,
		0.606765, -0.775203, 0.175773,
		35.519241, 35.849648, 25.279377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453239, 36.217693, 24.933058>,  <35.094505, 36.392288, 25.156336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453239, 36.217693, 24.933058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.174480, 36.496979, 24.867548>,  <34.007225, 36.664551, 24.828243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.174480, 36.496979, 24.867548>,  <34.453239, 36.217693, 24.933058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174480, 36.496979, 24.867548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195784, -0.404912, -0.893149,
		-0.689926, -0.590372, 0.418883,
		-0.696901, 0.698217, -0.163774,
		33.965408, 36.706444, 24.818417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810188, 35.873981, 24.561222>,  <34.453239, 36.217693, 24.933058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810188, 35.873981, 24.561222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.765900, 36.262718, 24.478024>,  <33.739326, 36.495960, 24.428104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.765900, 36.262718, 24.478024>,  <33.810188, 35.873981, 24.561222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765900, 36.262718, 24.478024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153814, -0.223515, -0.962487,
		-0.981877, -0.074572, 0.174231,
		-0.110718, 0.971844, -0.207994,
		33.732685, 36.554272, 24.415625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160656, 35.938591, 24.238537>,  <33.810188, 35.873981, 24.561222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160656, 35.938591, 24.238537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.328812, 36.291397, 24.153381>,  <33.429707, 36.503082, 24.102289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.328812, 36.291397, 24.153381>,  <33.160656, 35.938591, 24.238537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328812, 36.291397, 24.153381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179760, -0.149015, -0.972358,
		-0.889360, 0.447036, 0.095908,
		0.420388, 0.882017, -0.212887,
		33.454929, 36.556004, 24.089516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635288, 36.351372, 23.759199>,  <33.160656, 35.938591, 24.238537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635288, 36.351372, 23.759199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.004650, 36.487190, 23.687597>,  <33.226265, 36.568680, 23.644636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.004650, 36.487190, 23.687597>,  <32.635288, 36.351372, 23.759199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004650, 36.487190, 23.687597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190326, 0.000048, -0.981721,
		-0.333328, 0.940591, 0.064668,
		0.923401, 0.339543, -0.179002,
		33.281670, 36.589054, 23.633896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583733, 36.811836, 23.219969>,  <32.635288, 36.351372, 23.759199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583733, 36.811836, 23.219969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969875, 36.708286, 23.233114>,  <33.201561, 36.646156, 23.241001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969875, 36.708286, 23.233114>,  <32.583733, 36.811836, 23.219969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969875, 36.708286, 23.233114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056574, -0.330558, -0.942089,
		0.254743, 0.907588, -0.333750,
		0.965352, -0.258872, 0.032861,
		33.259480, 36.630623, 23.242973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810608, 36.971081, 22.555765>,  <32.583733, 36.811836, 23.219969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810608, 36.971081, 22.555765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.093121, 36.716385, 22.679525>,  <33.262630, 36.563568, 22.753782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.093121, 36.716385, 22.679525>,  <32.810608, 36.971081, 22.555765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093121, 36.716385, 22.679525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093118, -0.349695, -0.932224,
		0.701778, 0.687226, -0.187692,
		0.706283, -0.636737, 0.309402,
		33.305004, 36.525364, 22.772346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299477, 37.039745, 22.069460>,  <32.810608, 36.971081, 22.555765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299477, 37.039745, 22.069460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356659, 36.683464, 22.242065>,  <33.390968, 36.469696, 22.345629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356659, 36.683464, 22.242065>,  <33.299477, 37.039745, 22.069460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356659, 36.683464, 22.242065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088573, -0.422730, -0.901917,
		0.985758, 0.167151, 0.018463,
		0.142952, -0.890707, 0.431514,
		33.399544, 36.416252, 22.371519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716579, 36.749550, 21.660686>,  <33.299477, 37.039745, 22.069460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716579, 36.749550, 21.660686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.568272, 36.433189, 21.855421>,  <33.479286, 36.243374, 21.972261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.568272, 36.433189, 21.855421>,  <33.716579, 36.749550, 21.660686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568272, 36.433189, 21.855421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104990, -0.556534, -0.824164,
		0.922771, -0.254461, 0.289382,
		-0.370769, -0.790898, 0.486838,
		33.457043, 36.195919, 22.001472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064522, 36.165161, 21.376200>,  <33.716579, 36.749550, 21.660686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064522, 36.165161, 21.376200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743492, 36.011318, 21.558605>,  <33.550873, 35.919010, 21.668049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743492, 36.011318, 21.558605>,  <34.064522, 36.165161, 21.376200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743492, 36.011318, 21.558605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154277, -0.604595, -0.781449,
		0.576258, -0.697523, 0.425896,
		-0.802574, -0.384611, 0.456015,
		33.502720, 35.895935, 21.695410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124393, 35.490204, 21.423109>,  <34.064522, 36.165161, 21.376200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124393, 35.490204, 21.423109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.733891, 35.576206, 21.433615>,  <33.499588, 35.627808, 21.439919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.733891, 35.576206, 21.433615>,  <34.124393, 35.490204, 21.423109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733891, 35.576206, 21.433615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127101, -0.470459, -0.873220,
		-0.175390, -0.855828, 0.486618,
		-0.976260, 0.215004, 0.026263,
		33.441013, 35.640709, 21.441494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768852, 34.917610, 21.228567>,  <34.124393, 35.490204, 21.423109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768852, 34.917610, 21.228567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.475395, 35.186962, 21.192072>,  <33.299320, 35.348572, 21.170174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.475395, 35.186962, 21.192072>,  <33.768852, 34.917610, 21.228567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475395, 35.186962, 21.192072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308041, -0.449239, -0.838627,
		-0.605704, -0.587148, 0.537010,
		-0.733644, 0.673381, -0.091240,
		33.255302, 35.388977, 21.164700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168751, 34.531975, 20.976336>,  <33.768852, 34.917610, 21.228567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168751, 34.531975, 20.976336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.062027, 34.908840, 20.895199>,  <32.997993, 35.134960, 20.846516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.062027, 34.908840, 20.895199>,  <33.168751, 34.531975, 20.976336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062027, 34.908840, 20.895199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361668, -0.292973, -0.885078,
		-0.893314, -0.162782, 0.418917,
		-0.266806, 0.942162, -0.202844,
		32.981983, 35.191490, 20.834345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432728, 34.524055, 20.783281>,  <33.168751, 34.531975, 20.976336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432728, 34.524055, 20.783281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582634, 34.860584, 20.627476>,  <32.672577, 35.062504, 20.533993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582634, 34.860584, 20.627476>,  <32.432728, 34.524055, 20.783281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582634, 34.860584, 20.627476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430161, -0.214382, -0.876927,
		-0.821287, 0.496196, 0.281563,
		0.374766, 0.841326, -0.389513,
		32.695065, 35.112984, 20.510622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738098, 34.356163, 20.733866>,  <32.432728, 34.524055, 20.783281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738098, 34.356163, 20.733866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.394962, 34.174210, 20.829525>,  <31.189081, 34.065037, 20.886921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.394962, 34.174210, 20.829525>,  <31.738098, 34.356163, 20.733866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394962, 34.174210, 20.829525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339667, -0.152635, 0.928078,
		-0.385664, 0.877374, 0.285445,
		-0.857840, -0.454882, 0.239149,
		31.137609, 34.037746, 20.901270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512840, 34.667931, 21.456995>,  <31.738098, 34.356163, 20.733866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512840, 34.667931, 21.456995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352396, 34.305370, 21.404007>,  <31.256128, 34.087833, 21.372213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352396, 34.305370, 21.404007>,  <31.512840, 34.667931, 21.456995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352396, 34.305370, 21.404007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307250, -0.269361, 0.912711,
		-0.862964, 0.325398, 0.386536,
		-0.401112, -0.906400, -0.132470,
		31.232063, 34.033451, 21.364265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220020, 34.595028, 22.030241>,  <31.512840, 34.667931, 21.456995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220020, 34.595028, 22.030241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.228674, 34.223839, 21.881435>,  <31.233866, 34.001125, 21.792152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.228674, 34.223839, 21.881435>,  <31.220020, 34.595028, 22.030241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228674, 34.223839, 21.881435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289231, -0.350380, 0.890831,
		-0.957015, -0.126869, 0.260819,
		0.021633, -0.927975, -0.372014,
		31.235165, 33.945446, 21.769831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744989, 34.148918, 22.485657>,  <31.220020, 34.595028, 22.030241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744989, 34.148918, 22.485657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.999496, 33.911064, 22.289059>,  <31.152201, 33.768353, 22.171101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.999496, 33.911064, 22.289059>,  <30.744989, 34.148918, 22.485657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999496, 33.911064, 22.289059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211837, -0.477934, 0.852469,
		-0.741814, -0.646516, -0.178127,
		0.636268, -0.594640, -0.491495,
		31.190376, 33.732674, 22.141611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512907, 33.501884, 22.660418>,  <30.744989, 34.148918, 22.485657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512907, 33.501884, 22.660418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893539, 33.448643, 22.549583>,  <31.121920, 33.416698, 22.483084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893539, 33.448643, 22.549583>,  <30.512907, 33.501884, 22.660418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893539, 33.448643, 22.549583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185941, -0.468541, 0.863652,
		-0.244785, -0.873356, -0.421104,
		0.951581, -0.133109, -0.277084,
		31.179014, 33.408710, 22.466457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799467, 32.756100, 22.991833>,  <30.512907, 33.501884, 22.660418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799467, 32.756100, 22.991833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.126974, 32.971294, 22.911640>,  <31.323479, 33.100410, 22.863523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.126974, 32.971294, 22.911640>,  <30.799467, 32.756100, 22.991833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126974, 32.971294, 22.911640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408326, -0.300183, 0.862067,
		0.403597, -0.787695, -0.465453,
		0.818767, 0.537984, -0.200483,
		31.372604, 33.132690, 22.851496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358379, 32.310436, 23.249422>,  <30.799467, 32.756100, 22.991833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358379, 32.310436, 23.249422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526428, 32.672306, 23.220955>,  <31.627256, 32.889427, 23.203875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526428, 32.672306, 23.220955>,  <31.358379, 32.310436, 23.249422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526428, 32.672306, 23.220955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414760, -0.121671, 0.901760,
		0.807138, -0.408366, -0.426339,
		0.420121, 0.904673, -0.071169,
		31.652464, 32.943707, 23.199604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037918, 32.199295, 23.463924>,  <31.358379, 32.310436, 23.249422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037918, 32.199295, 23.463924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.963186, 32.590729, 23.498482>,  <31.918346, 32.825588, 23.519217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.963186, 32.590729, 23.498482>,  <32.037918, 32.199295, 23.463924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963186, 32.590729, 23.498482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131743, -0.062190, 0.989331,
		0.973518, 0.196219, -0.117303,
		-0.186830, 0.978586, 0.086394,
		31.907137, 32.884304, 23.524401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761742, 31.935062, 23.471666>,  <32.037918, 32.199295, 23.463924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761742, 31.935062, 23.471666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.030376, 31.652498, 23.561071>,  <33.191559, 31.482960, 23.614716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.030376, 31.652498, 23.561071>,  <32.761742, 31.935062, 23.471666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030376, 31.652498, 23.561071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021868, -0.320435, -0.947018,
		0.740603, 0.631117, -0.230647,
		0.671587, -0.706408, 0.223514,
		33.231853, 31.440577, 23.628126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413052, 31.947012, 22.959747>,  <32.761742, 31.935062, 23.471666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413052, 31.947012, 22.959747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.419956, 31.575279, 23.107283>,  <33.424099, 31.352240, 23.195805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.419956, 31.575279, 23.107283>,  <33.413052, 31.947012, 22.959747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419956, 31.575279, 23.107283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235660, -0.354720, -0.904786,
		0.971682, 0.102540, 0.212883,
		0.017263, -0.929333, 0.368840,
		33.425137, 31.296480, 23.217936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044014, 31.674295, 22.762844>,  <33.413052, 31.947012, 22.959747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044014, 31.674295, 22.762844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.847252, 31.341497, 22.865461>,  <33.729195, 31.141819, 22.927031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.847252, 31.341497, 22.865461>,  <34.044014, 31.674295, 22.762844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847252, 31.341497, 22.865461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175013, -0.383132, -0.906962,
		0.852875, -0.401245, 0.334076,
		-0.491909, -0.831993, 0.256541,
		33.699680, 31.091900, 22.942423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514164, 31.085094, 22.675825>,  <34.044014, 31.674295, 22.762844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514164, 31.085094, 22.675825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.147987, 30.928364, 22.639086>,  <33.928280, 30.834326, 22.617043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.147987, 30.928364, 22.639086>,  <34.514164, 31.085094, 22.675825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147987, 30.928364, 22.639086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298524, -0.508059, -0.807936,
		0.269906, -0.767038, 0.582068,
		-0.915442, -0.391828, -0.091851,
		33.873356, 30.810816, 22.611530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604069, 30.338678, 22.457182>,  <34.514164, 31.085094, 22.675825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604069, 30.338678, 22.457182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.225395, 30.435120, 22.371712>,  <33.998192, 30.492985, 22.320431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.225395, 30.435120, 22.371712>,  <34.604069, 30.338678, 22.457182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225395, 30.435120, 22.371712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133238, -0.310856, -0.941072,
		-0.293310, -0.919370, 0.262160,
		-0.946687, 0.241096, -0.213672,
		33.941391, 30.507450, 22.307610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237679, 29.694921, 22.246397>,  <34.604069, 30.338678, 22.457182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237679, 29.694921, 22.246397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.054527, 30.011589, 22.084604>,  <33.944637, 30.201590, 21.987530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.054527, 30.011589, 22.084604>,  <34.237679, 29.694921, 22.246397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054527, 30.011589, 22.084604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073591, -0.419662, -0.904692,
		-0.885963, -0.444006, 0.133895,
		-0.457879, 0.791671, -0.404480,
		33.917164, 30.249090, 21.963261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895515, 29.425886, 21.755573>,  <34.237679, 29.694921, 22.246397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895515, 29.425886, 21.755573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.892017, 29.810381, 21.645336>,  <33.889919, 30.041077, 21.579195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.892017, 29.810381, 21.645336>,  <33.895515, 29.425886, 21.755573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892017, 29.810381, 21.645336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048439, -0.274871, -0.960260,
		-0.998788, -0.021744, -0.044158,
		-0.008742, 0.961235, -0.275591,
		33.889393, 30.098751, 21.562658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403187, 29.465387, 21.223909>,  <33.895515, 29.425886, 21.755573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403187, 29.465387, 21.223909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636932, 29.787214, 21.181587>,  <33.777180, 29.980310, 21.156195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636932, 29.787214, 21.181587>,  <33.403187, 29.465387, 21.223909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636932, 29.787214, 21.181587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011027, -0.138243, -0.990337,
		-0.811419, 0.577548, -0.089656,
		0.584361, 0.804567, -0.105804,
		33.812241, 30.028584, 21.149845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009495, 29.928986, 20.787809>,  <33.403187, 29.465387, 21.223909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009495, 29.928986, 20.787809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.397163, 30.026714, 20.775129>,  <33.629765, 30.085352, 20.767521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.397163, 30.026714, 20.775129>,  <33.009495, 29.928986, 20.787809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397163, 30.026714, 20.775129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006705, -0.102455, -0.994715,
		-0.246279, 0.964266, -0.097659,
		0.969176, 0.244322, -0.031698,
		33.687916, 30.100012, 20.765619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.991138, 32.407227, 36.753933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250526, 32.677612, 36.613899>,  <35.406158, 32.839844, 36.529877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250526, 32.677612, 36.613899>,  <34.991138, 32.407227, 36.753933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250526, 32.677612, 36.613899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585691, 0.149264, -0.796672,
		-0.486264, 0.721661, 0.492699,
		0.648469, 0.675962, -0.350089,
		35.445068, 32.880402, 36.508873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676083, 33.094326, 36.474842>,  <34.991138, 32.407227, 36.753933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676083, 33.094326, 36.474842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035851, 33.042286, 36.307934>,  <35.251713, 33.011063, 36.207790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035851, 33.042286, 36.307934>,  <34.676083, 33.094326, 36.474842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035851, 33.042286, 36.307934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373985, 0.265044, -0.888756,
		0.226219, 0.955419, 0.189732,
		0.899422, -0.130097, -0.417271,
		35.305676, 33.003258, 36.182751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767948, 33.673779, 36.046680>,  <34.676083, 33.094326, 36.474842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767948, 33.673779, 36.046680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004799, 33.381344, 35.911091>,  <35.146908, 33.205883, 35.829739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004799, 33.381344, 35.911091>,  <34.767948, 33.673779, 36.046680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004799, 33.381344, 35.911091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247892, 0.234995, -0.939855,
		0.766772, 0.640539, -0.042085,
		0.592123, -0.731087, -0.338972,
		35.182434, 33.162018, 35.809399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877373, 33.893444, 35.402622>,  <34.767948, 33.673779, 36.046680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877373, 33.893444, 35.402622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021214, 33.520489, 35.387978>,  <35.107517, 33.296715, 35.379192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021214, 33.520489, 35.387978>,  <34.877373, 33.893444, 35.402622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021214, 33.520489, 35.387978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189574, -0.034588, -0.981257,
		0.913644, 0.359806, -0.189194,
		0.359606, -0.932386, -0.036609,
		35.129097, 33.240772, 35.376995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437267, 33.891830, 34.829445>,  <34.877373, 33.893444, 35.402622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437267, 33.891830, 34.829445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274361, 33.532867, 34.897324>,  <35.176617, 33.317490, 34.938049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274361, 33.532867, 34.897324>,  <35.437267, 33.891830, 34.829445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274361, 33.532867, 34.897324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134525, -0.124834, -0.983015,
		0.903347, -0.423179, -0.069882,
		-0.407268, -0.897405, 0.169697,
		35.152180, 33.263645, 34.948231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701141, 33.460091, 34.270092>,  <35.437267, 33.891830, 34.829445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701141, 33.460091, 34.270092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371010, 33.284130, 34.411697>,  <35.172932, 33.178555, 34.496658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371010, 33.284130, 34.411697>,  <35.701141, 33.460091, 34.270092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371010, 33.284130, 34.411697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215531, -0.334053, -0.917581,
		0.521900, -0.833606, 0.180892,
		-0.825328, -0.439897, 0.354010,
		35.123413, 33.152161, 34.517899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607361, 32.884949, 33.896637>,  <35.701141, 33.460091, 34.270092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607361, 32.884949, 33.896637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238140, 32.895767, 34.050125>,  <35.016609, 32.902260, 34.142220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238140, 32.895767, 34.050125>,  <35.607361, 32.884949, 33.896637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238140, 32.895767, 34.050125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381658, -0.189025, -0.904769,
		0.048062, -0.981600, 0.184802,
		-0.923053, 0.027047, 0.383721,
		34.961224, 32.903881, 34.165241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273537, 32.405788, 33.556549>,  <35.607361, 32.884949, 33.896637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273537, 32.405788, 33.556549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982727, 32.648357, 33.685349>,  <34.808239, 32.793900, 33.762627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982727, 32.648357, 33.685349>,  <35.273537, 32.405788, 33.556549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982727, 32.648357, 33.685349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344149, 0.083952, -0.935154,
		-0.594132, -0.790697, 0.147665,
		-0.727027, 0.606424, 0.321996,
		34.764618, 32.830284, 33.781948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679234, 32.083054, 33.226067>,  <35.273537, 32.405788, 33.556549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679234, 32.083054, 33.226067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523731, 32.436066, 33.331905>,  <34.430431, 32.647873, 33.395409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523731, 32.436066, 33.331905>,  <34.679234, 32.083054, 33.226067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523731, 32.436066, 33.331905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387796, 0.103778, -0.915885,
		-0.835755, -0.458662, 0.301898,
		-0.388752, 0.882530, 0.264600,
		34.407104, 32.700825, 33.411285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913284, 32.144279, 32.937775>,  <34.679234, 32.083054, 33.226067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913284, 32.144279, 32.937775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102226, 32.494682, 32.976746>,  <34.215591, 32.704926, 33.000130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102226, 32.494682, 32.976746>,  <33.913284, 32.144279, 32.937775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102226, 32.494682, 32.976746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318830, 0.272866, -0.907685,
		-0.821724, 0.397685, 0.408187,
		0.472353, 0.876008, 0.097427,
		34.243931, 32.757484, 33.005974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433365, 32.607475, 32.684910>,  <33.913284, 32.144279, 32.937775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433365, 32.607475, 32.684910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797806, 32.771175, 32.665279>,  <34.016472, 32.869396, 32.653500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797806, 32.771175, 32.665279>,  <33.433365, 32.607475, 32.684910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797806, 32.771175, 32.665279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245204, 0.442453, -0.862618,
		-0.331309, 0.797968, 0.503469,
		0.911103, 0.409246, -0.049077,
		34.071136, 32.893948, 32.650555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202682, 33.215752, 32.379211>,  <33.433365, 32.607475, 32.684910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202682, 33.215752, 32.379211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591908, 33.151310, 32.313251>,  <33.825443, 33.112644, 32.273674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591908, 33.151310, 32.313251>,  <33.202682, 33.215752, 32.379211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591908, 33.151310, 32.313251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102610, 0.337864, -0.935585,
		0.206442, 0.927304, 0.312232,
		0.973064, -0.161106, -0.164900,
		33.883827, 33.102978, 32.263783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817604, 33.829967, 32.153244>,  <33.202682, 33.215752, 32.379211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817604, 33.829967, 32.153244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418842, 33.801910, 32.167458>,  <32.179585, 33.785076, 32.175983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418842, 33.801910, 32.167458>,  <32.817604, 33.829967, 32.153244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418842, 33.801910, 32.167458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010529, 0.328721, 0.944368,
		-0.077916, 0.941819, -0.326965,
		-0.996904, -0.070139, 0.035529,
		32.119770, 33.780869, 32.178116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689552, 34.461193, 32.457729>,  <32.817604, 33.829967, 32.153244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689552, 34.461193, 32.457729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366020, 34.233425, 32.516460>,  <32.171902, 34.096764, 32.551697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366020, 34.233425, 32.516460>,  <32.689552, 34.461193, 32.457729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366020, 34.233425, 32.516460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038997, 0.301074, 0.952803,
		-0.586751, 0.764928, -0.265723,
		-0.808828, -0.569420, 0.146826,
		32.123371, 34.062599, 32.560509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167713, 34.887470, 32.611916>,  <32.689552, 34.461193, 32.457729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167713, 34.887470, 32.611916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034058, 34.537163, 32.751274>,  <31.953863, 34.326981, 32.834888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034058, 34.537163, 32.751274>,  <32.167713, 34.887470, 32.611916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034058, 34.537163, 32.751274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217711, 0.431367, 0.875514,
		-0.917034, 0.216696, -0.334802,
		-0.334143, -0.875766, 0.348401,
		31.933815, 34.274433, 32.855793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483721, 34.998337, 32.925785>,  <32.167713, 34.887470, 32.611916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483721, 34.998337, 32.925785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645893, 34.665848, 33.077938>,  <31.743196, 34.466354, 33.169231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645893, 34.665848, 33.077938>,  <31.483721, 34.998337, 32.925785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645893, 34.665848, 33.077938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111777, 0.367915, 0.923117,
		-0.907267, -0.416776, 0.056252,
		0.405429, -0.831226, 0.380383,
		31.767523, 34.416481, 33.192051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130379, 34.974258, 33.487595>,  <31.483721, 34.998337, 32.925785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130379, 34.974258, 33.487595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424307, 34.714008, 33.564247>,  <31.600664, 34.557858, 33.610237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424307, 34.714008, 33.564247>,  <31.130379, 34.974258, 33.487595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424307, 34.714008, 33.564247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110453, 0.393548, 0.912645,
		-0.669209, -0.649463, 0.361051,
		0.734819, -0.650629, 0.191631,
		31.644753, 34.518818, 33.621735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010740, 34.755867, 34.197922>,  <31.130379, 34.974258, 33.487595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010740, 34.755867, 34.197922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382872, 34.633934, 34.116371>,  <31.606150, 34.560776, 34.067440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382872, 34.633934, 34.116371>,  <31.010740, 34.755867, 34.197922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382872, 34.633934, 34.116371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295865, 0.295399, 0.908407,
		-0.216688, -0.905437, 0.365007,
		0.930328, -0.304834, -0.203878,
		31.661970, 34.542484, 34.055206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161524, 34.282669, 34.716549>,  <31.010740, 34.755867, 34.197922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161524, 34.282669, 34.716549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507122, 34.429050, 34.578220>,  <31.714481, 34.516880, 34.495224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507122, 34.429050, 34.578220>,  <31.161524, 34.282669, 34.716549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507122, 34.429050, 34.578220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186754, 0.404911, 0.895081,
		0.467589, -0.837926, 0.281496,
		0.863993, 0.365960, -0.345818,
		31.766321, 34.538837, 34.474476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619366, 34.209763, 35.261261>,  <31.161524, 34.282669, 34.716549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619366, 34.209763, 35.261261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771729, 34.491821, 35.022038>,  <31.863146, 34.661057, 34.878502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771729, 34.491821, 35.022038>,  <31.619366, 34.209763, 35.261261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771729, 34.491821, 35.022038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074273, 0.621396, 0.779968,
		0.921625, -0.341516, 0.184321,
		0.380908, 0.705148, -0.598060,
		31.886002, 34.703365, 34.842621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088844, 34.523449, 35.673573>,  <31.619366, 34.209763, 35.261261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088844, 34.523449, 35.673573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054474, 34.808296, 35.394859>,  <32.033852, 34.979206, 35.227631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054474, 34.808296, 35.394859>,  <32.088844, 34.523449, 35.673573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054474, 34.808296, 35.394859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065532, 0.693815, 0.717165,
		0.994144, 0.107287, -0.012952,
		-0.085929, 0.712117, -0.696783,
		32.028694, 35.021931, 35.185825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551823, 35.008064, 35.945156>,  <32.088844, 34.523449, 35.673573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551823, 35.008064, 35.945156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307125, 35.212124, 35.703327>,  <32.160305, 35.334560, 35.558231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307125, 35.212124, 35.703327>,  <32.551823, 35.008064, 35.945156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307125, 35.212124, 35.703327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033489, 0.780281, 0.624532,
		0.790344, 0.361809, -0.494419,
		-0.611747, 0.510153, -0.604573,
		32.123600, 35.365170, 35.521954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891315, 35.668449, 35.934769>,  <32.551823, 35.008064, 35.945156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891315, 35.668449, 35.934769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506844, 35.707928, 35.831699>,  <32.276161, 35.731617, 35.769855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506844, 35.707928, 35.831699>,  <32.891315, 35.668449, 35.934769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506844, 35.707928, 35.831699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032205, 0.887329, 0.460011,
		0.274047, 0.450451, -0.849701,
		-0.961177, 0.098700, -0.257677,
		32.218491, 35.737537, 35.754395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785740, 36.297020, 35.558285>,  <32.891315, 35.668449, 35.934769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785740, 36.297020, 35.558285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404869, 36.238224, 35.665428>,  <32.176346, 36.202946, 35.729713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404869, 36.238224, 35.665428>,  <32.785740, 36.297020, 35.558285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404869, 36.238224, 35.665428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105011, 0.980706, 0.164889,
		-0.286932, 0.128875, -0.949242,
		-0.952178, -0.146993, 0.267863,
		32.119217, 36.194126, 35.745789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389408, 36.822552, 35.179005>,  <32.785740, 36.297020, 35.558285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389408, 36.822552, 35.179005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139709, 36.714489, 35.472218>,  <31.989891, 36.649651, 35.648144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139709, 36.714489, 35.472218>,  <32.389408, 36.822552, 35.179005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139709, 36.714489, 35.472218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186474, 0.962709, 0.196006,
		-0.758646, -0.014335, -0.651345,
		-0.624246, -0.270158, 0.733029,
		31.952436, 36.633442, 35.692127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697636, 37.129559, 35.071838>,  <32.389408, 36.822552, 35.179005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697636, 37.129559, 35.071838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711668, 37.029663, 35.458908>,  <31.720087, 36.969727, 35.691151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711668, 37.029663, 35.458908>,  <31.697636, 37.129559, 35.071838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711668, 37.029663, 35.458908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340013, 0.907528, 0.246544,
		-0.939766, -0.337672, -0.053081,
		0.035079, -0.249742, 0.967677,
		31.722191, 36.954739, 35.749210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388763, 37.673126, 35.446022>,  <31.697636, 37.129559, 35.071838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388763, 37.673126, 35.446022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411161, 37.459030, 35.783157>,  <31.424601, 37.330574, 35.985439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411161, 37.459030, 35.783157>,  <31.388763, 37.673126, 35.446022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411161, 37.459030, 35.783157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580352, 0.669463, 0.463693,
		-0.812439, -0.515108, -0.273143,
		0.055993, -0.535241, 0.842842,
		31.427959, 37.298458, 36.036011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818087, 38.175114, 35.497780>,  <31.388763, 37.673126, 35.446022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818087, 38.175114, 35.497780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186356, 38.312988, 35.571053>,  <32.407318, 38.395714, 35.615017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186356, 38.312988, 35.571053>,  <31.818087, 38.175114, 35.497780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186356, 38.312988, 35.571053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143190, 0.138350, -0.979978,
		-0.363124, 0.928468, 0.078020,
		0.920672, 0.344682, 0.183185,
		32.462559, 38.416393, 35.626007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796103, 38.717690, 35.019249>,  <31.818087, 38.175114, 35.497780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796103, 38.717690, 35.019249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170483, 38.596004, 35.090187>,  <32.395111, 38.522995, 35.132748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170483, 38.596004, 35.090187>,  <31.796103, 38.717690, 35.019249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170483, 38.596004, 35.090187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200434, 0.046172, -0.978619,
		0.289518, 0.951485, 0.104189,
		0.935952, -0.304211, 0.177343,
		32.451267, 38.504742, 35.143391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218643, 39.181053, 34.672871>,  <31.796103, 38.717690, 35.019249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218643, 39.181053, 34.672871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.403908, 38.826546, 34.671188>,  <32.515064, 38.613842, 34.670177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.403908, 38.826546, 34.671188>,  <32.218643, 39.181053, 34.672871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403908, 38.826546, 34.671188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241881, 0.130973, -0.961426,
		0.852629, 0.444276, 0.275032,
		0.463160, -0.886265, -0.004210,
		32.542854, 38.560665, 34.669926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907742, 39.293144, 34.265095>,  <32.218643, 39.181053, 34.672871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907742, 39.293144, 34.265095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787041, 38.911827, 34.259586>,  <32.714622, 38.683037, 34.256283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787041, 38.911827, 34.259586>,  <32.907742, 39.293144, 34.265095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787041, 38.911827, 34.259586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295508, -0.079786, -0.952003,
		0.906435, -0.291334, 0.305779,
		-0.301748, -0.953288, -0.013771,
		32.696518, 38.625839, 34.255455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394562, 38.906914, 33.774670>,  <32.907742, 39.293144, 34.265095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394562, 38.906914, 33.774670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081657, 38.659225, 33.801922>,  <32.893917, 38.510612, 33.818275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081657, 38.659225, 33.801922>,  <33.394562, 38.906914, 33.774670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081657, 38.659225, 33.801922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107210, -0.241556, -0.964446,
		0.613662, -0.747140, 0.255345,
		-0.782256, -0.619220, 0.068133,
		32.846981, 38.473461, 33.822361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596127, 38.335155, 33.383091>,  <33.394562, 38.906914, 33.774670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596127, 38.335155, 33.383091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196987, 38.325954, 33.407616>,  <32.957504, 38.320435, 33.422333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196987, 38.325954, 33.407616>,  <33.596127, 38.335155, 33.383091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196987, 38.325954, 33.407616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055756, -0.192709, -0.979671,
		0.034354, -0.980986, 0.191012,
		-0.997853, -0.023005, 0.061316,
		32.897633, 38.319054, 33.426010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435787, 37.776318, 33.013809>,  <33.596127, 38.335155, 33.383091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435787, 37.776318, 33.013809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102867, 37.997787, 33.024502>,  <32.903114, 38.130669, 33.030918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102867, 37.997787, 33.024502>,  <33.435787, 37.776318, 33.013809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102867, 37.997787, 33.024502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136058, -0.157309, -0.978132,
		-0.537366, -0.817737, 0.206261,
		-0.832301, 0.553678, 0.026727,
		32.853176, 38.163891, 33.032520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838493, 37.361794, 32.787170>,  <33.435787, 37.776318, 33.013809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838493, 37.361794, 32.787170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749500, 37.747246, 32.727940>,  <32.696106, 37.978516, 32.692402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749500, 37.747246, 32.727940>,  <32.838493, 37.361794, 32.787170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749500, 37.747246, 32.727940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255355, -0.204181, -0.945042,
		-0.940902, -0.172439, 0.291493,
		-0.222479, 0.963626, -0.148081,
		32.682755, 38.036335, 32.683514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361324, 37.271839, 32.338688>,  <32.838493, 37.361794, 32.787170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361324, 37.271839, 32.338688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434879, 37.662426, 32.293606>,  <32.479012, 37.896778, 32.266556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434879, 37.662426, 32.293606>,  <32.361324, 37.271839, 32.338688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434879, 37.662426, 32.293606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171561, -0.081015, -0.981837,
		-0.967860, 0.199882, 0.152626,
		0.183886, 0.976465, -0.112703,
		32.490044, 37.955364, 32.259796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918520, 37.408989, 31.748337>,  <32.361324, 37.271839, 32.338688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918520, 37.408989, 31.748337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181343, 37.708126, 31.786283>,  <32.339039, 37.887608, 31.809052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181343, 37.708126, 31.786283>,  <31.918520, 37.408989, 31.748337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181343, 37.708126, 31.786283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032526, 0.153856, -0.987558,
		-0.753137, 0.645798, 0.125417,
		0.657059, 0.747846, 0.094869,
		32.378460, 37.932480, 31.814745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558054, 37.931938, 31.316214>,  <31.918520, 37.408989, 31.748337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558054, 37.931938, 31.316214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950462, 38.001778, 31.349955>,  <32.185905, 38.043682, 31.370199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950462, 38.001778, 31.349955>,  <31.558054, 37.931938, 31.316214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950462, 38.001778, 31.349955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071703, 0.077539, -0.994408,
		-0.180160, 0.981582, 0.063548,
		0.981020, 0.174596, 0.084351,
		32.244770, 38.054157, 31.375259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663998, 38.449642, 30.869436>,  <31.558054, 37.931938, 31.316214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663998, 38.449642, 30.869436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044525, 38.334595, 30.913746>,  <32.272842, 38.265568, 30.940332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044525, 38.334595, 30.913746>,  <31.663998, 38.449642, 30.869436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044525, 38.334595, 30.913746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090216, -0.083821, -0.992388,
		0.294710, 0.954071, -0.053793,
		0.951318, -0.287614, 0.110776,
		32.329922, 38.248310, 30.946980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040115, 38.832367, 30.443411>,  <31.663998, 38.449642, 30.869436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040115, 38.832367, 30.443411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281097, 38.518188, 30.500141>,  <32.425686, 38.329681, 30.534180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281097, 38.518188, 30.500141>,  <32.040115, 38.832367, 30.443411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281097, 38.518188, 30.500141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169438, -0.047786, -0.984382,
		0.779959, 0.617079, 0.104296,
		0.602457, -0.785449, 0.141828,
		32.461834, 38.282555, 30.542690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548088, 39.048794, 29.967590>,  <32.040115, 38.832367, 30.443411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548088, 39.048794, 29.967590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642830, 38.667446, 30.042410>,  <32.699677, 38.438637, 30.087301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642830, 38.667446, 30.042410>,  <32.548088, 39.048794, 29.967590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642830, 38.667446, 30.042410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360197, -0.092636, -0.928266,
		0.902306, 0.287242, 0.321458,
		0.236858, -0.953368, 0.187050,
		32.713886, 38.381435, 30.098524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305672, 38.808323, 29.701881>,  <32.548088, 39.048794, 29.967590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305672, 38.808323, 29.701881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096218, 38.468342, 29.725157>,  <32.970547, 38.264355, 29.739122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096218, 38.468342, 29.725157>,  <33.305672, 38.808323, 29.701881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096218, 38.468342, 29.725157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264422, -0.227074, -0.937293,
		0.809867, -0.475415, 0.343651,
		-0.523637, -0.849952, 0.058190,
		32.939129, 38.213356, 29.742613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653198, 38.331654, 29.325012>,  <33.305672, 38.808323, 29.701881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653198, 38.331654, 29.325012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285599, 38.174458, 29.337612>,  <33.065037, 38.080139, 29.345173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285599, 38.174458, 29.337612>,  <33.653198, 38.331654, 29.325012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285599, 38.174458, 29.337612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056540, -0.210448, -0.975969,
		0.390180, -0.895135, 0.215621,
		-0.919001, -0.392995, 0.031501,
		33.009899, 38.056561, 29.347063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791676, 37.692608, 29.005838>,  <33.653198, 38.331654, 29.325012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791676, 37.692608, 29.005838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396877, 37.744331, 28.967625>,  <33.160000, 37.775368, 28.944696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396877, 37.744331, 28.967625>,  <33.791676, 37.692608, 29.005838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396877, 37.744331, 28.967625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064809, -0.223791, -0.972480,
		-0.147130, -0.966021, 0.212500,
		-0.986992, 0.129309, -0.095533,
		33.100780, 37.783127, 28.938965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500736, 37.111481, 28.729662>,  <33.791676, 37.692608, 29.005838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500736, 37.111481, 28.729662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252728, 37.414982, 28.649801>,  <33.103920, 37.597084, 28.601885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252728, 37.414982, 28.649801>,  <33.500736, 37.111481, 28.729662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252728, 37.414982, 28.649801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025573, -0.273877, -0.961425,
		-0.784165, -0.591002, 0.189215,
		-0.620025, 0.758754, -0.199651,
		33.066719, 37.642609, 28.589907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011082, 36.861198, 28.399529>,  <33.500736, 37.111481, 28.729662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011082, 36.861198, 28.399529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974640, 37.242729, 28.285046>,  <32.952774, 37.471649, 28.216356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974640, 37.242729, 28.285046>,  <33.011082, 36.861198, 28.399529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974640, 37.242729, 28.285046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057692, -0.291974, -0.954685,
		-0.994169, -0.070462, 0.081628,
		-0.091102, 0.953827, -0.286207,
		32.947308, 37.528877, 28.199184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490292, 36.837357, 28.004377>,  <33.011082, 36.861198, 28.399529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490292, 36.837357, 28.004377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659016, 37.185860, 27.903996>,  <32.760250, 37.394962, 27.843765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659016, 37.185860, 27.903996>,  <32.490292, 36.837357, 28.004377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659016, 37.185860, 27.903996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006949, -0.279884, -0.960009,
		-0.906656, 0.403200, -0.124113,
		0.421813, 0.871261, -0.250957,
		32.785561, 37.447239, 27.828709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058655, 37.118622, 27.415501>,  <32.490292, 36.837357, 28.004377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058655, 37.118622, 27.415501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415157, 37.299889, 27.408567>,  <32.629059, 37.408649, 27.404408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415157, 37.299889, 27.408567>,  <32.058655, 37.118622, 27.415501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415157, 37.299889, 27.408567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104270, -0.241966, -0.964666,
		-0.441344, 0.857961, -0.262905,
		0.891259, 0.453163, -0.017331,
		32.682533, 37.435837, 27.403368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160854, 37.400333, 26.686321>,  <32.058655, 37.118622, 27.415501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160854, 37.400333, 26.686321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532513, 37.383732, 26.833273>,  <32.755508, 37.373772, 26.921444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532513, 37.383732, 26.833273>,  <32.160854, 37.400333, 26.686321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532513, 37.383732, 26.833273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349061, -0.228985, -0.908693,
		0.121842, 0.972544, -0.198271,
		0.929145, -0.041509, 0.367377,
		32.811256, 37.371281, 26.943485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537064, 37.856354, 26.198545>,  <32.160854, 37.400333, 26.686321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537064, 37.856354, 26.198545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802265, 37.636066, 26.401379>,  <32.961388, 37.503895, 26.523079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802265, 37.636066, 26.401379>,  <32.537064, 37.856354, 26.198545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802265, 37.636066, 26.401379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525466, -0.140105, -0.839200,
		0.533205, 0.822851, 0.196491,
		0.663007, -0.550715, 0.507085,
		33.001167, 37.470852, 26.553505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158504, 38.185913, 26.047194>,  <32.537064, 37.856354, 26.198545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158504, 38.185913, 26.047194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250278, 37.805859, 26.131676>,  <33.305344, 37.577827, 26.182365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250278, 37.805859, 26.131676>,  <33.158504, 38.185913, 26.047194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250278, 37.805859, 26.131676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258434, -0.149736, -0.954354,
		0.938388, 0.273543, 0.211193,
		0.229434, -0.950133, 0.211204,
		33.319107, 37.520817, 26.195036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799168, 38.099167, 25.744545>,  <33.158504, 38.185913, 26.047194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799168, 38.099167, 25.744545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679626, 37.722748, 25.807932>,  <33.607903, 37.496895, 25.845964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679626, 37.722748, 25.807932>,  <33.799168, 38.099167, 25.744545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679626, 37.722748, 25.807932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386324, -0.271146, -0.881608,
		0.872606, -0.202250, 0.444583,
		-0.298852, -0.941050, 0.158469,
		33.589970, 37.440434, 25.855473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358273, 37.639576, 25.580757>,  <33.799168, 38.099167, 25.744545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358273, 37.639576, 25.580757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055077, 37.379196, 25.564201>,  <33.873158, 37.222969, 25.554268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055077, 37.379196, 25.564201>,  <34.358273, 37.639576, 25.580757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055077, 37.379196, 25.564201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296003, -0.286742, -0.911132,
		0.581236, -0.702879, 0.410032,
		-0.757988, -0.650954, -0.041389,
		33.827679, 37.183910, 25.551785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648876, 36.909805, 25.481510>,  <34.358273, 37.639576, 25.580757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648876, 36.909805, 25.481510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268581, 36.934986, 25.360096>,  <34.040405, 36.950096, 25.287247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268581, 36.934986, 25.360096>,  <34.648876, 36.909805, 25.481510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268581, 36.934986, 25.360096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269867, -0.313740, -0.910351,
		-0.152541, -0.947420, 0.281295,
		-0.950738, 0.062953, -0.303535,
		33.983360, 36.953873, 25.269035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820896, 36.141552, 25.773602>,  <34.648876, 36.909805, 25.481510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820896, 36.141552, 25.773602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186501, 35.981159, 25.748928>,  <35.405861, 35.884922, 25.734123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186501, 35.981159, 25.748928>,  <34.820896, 36.141552, 25.773602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186501, 35.981159, 25.748928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040824, -0.060370, 0.997341,
		-0.403640, -0.914095, -0.038809,
		0.914007, -0.400982, -0.061685,
		35.460701, 35.860867, 25.730423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843891, 35.597588, 26.256960>,  <34.820896, 36.141552, 25.773602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843891, 35.597588, 26.256960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231461, 35.680916, 26.203609>,  <35.464001, 35.730915, 26.171598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231461, 35.680916, 26.203609>,  <34.843891, 35.597588, 26.256960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231461, 35.680916, 26.203609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142157, -0.027690, 0.989457,
		0.202434, -0.977668, -0.056444,
		0.968923, 0.208323, -0.133377,
		35.522137, 35.743412, 26.163597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295132, 35.107845, 26.601404>,  <34.843891, 35.597588, 26.256960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295132, 35.107845, 26.601404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545055, 35.418415, 26.568464>,  <35.695007, 35.604755, 26.548700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545055, 35.418415, 26.568464>,  <35.295132, 35.107845, 26.601404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545055, 35.418415, 26.568464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125243, 0.004444, 0.992116,
		0.770669, -0.630195, -0.094465,
		0.624807, 0.776424, -0.082352,
		35.732498, 35.651340, 26.543758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800064, 35.055847, 27.051279>,  <35.295132, 35.107845, 26.601404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800064, 35.055847, 27.051279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856728, 35.446369, 26.985838>,  <35.890724, 35.680683, 26.946573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856728, 35.446369, 26.985838>,  <35.800064, 35.055847, 27.051279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856728, 35.446369, 26.985838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185590, 0.136148, 0.973150,
		0.972363, -0.168219, -0.161905,
		0.141660, 0.976302, -0.163605,
		35.899227, 35.739262, 26.936756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413609, 35.226810, 27.508181>,  <35.800064, 35.055847, 27.051279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413609, 35.226810, 27.508181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224789, 35.564743, 27.407444>,  <36.111496, 35.767502, 27.347002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224789, 35.564743, 27.407444>,  <36.413609, 35.226810, 27.508181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224789, 35.564743, 27.407444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191033, 0.376913, 0.906335,
		0.860625, 0.379726, -0.339313,
		-0.472051, 0.844834, -0.251840,
		36.083172, 35.818192, 27.331892>
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
