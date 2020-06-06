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
	<24.788290, 34.955257, 34.967636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391542, 35.004173, 34.953541>,  <24.153494, 35.033524, 34.945084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391542, 35.004173, 34.953541>,  <24.788290, 34.955257, 34.967636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391542, 35.004173, 34.953541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087327, 0.855413, 0.510531,
		0.092572, 0.503303, -0.859137,
		-0.991869, 0.122286, -0.035235,
		24.093981, 35.040859, 34.942970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508459, 34.801964, 35.032249>,  <24.788290, 34.955257, 34.967636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508459, 34.801964, 35.032249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439541, 34.513348, 35.300488>,  <25.398190, 34.340179, 35.461430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439541, 34.513348, 35.300488>,  <25.508459, 34.801964, 35.032249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439541, 34.513348, 35.300488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979040, -0.200496, 0.035818,
		0.108608, 0.662710, 0.740959,
		-0.172296, -0.721538, 0.670594,
		25.387852, 34.296886, 35.501667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928469, 34.999874, 35.622913>,  <25.508459, 34.801964, 35.032249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928469, 34.999874, 35.622913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848007, 34.608051, 35.621803>,  <25.799730, 34.372959, 35.621140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848007, 34.608051, 35.621803>,  <25.928469, 34.999874, 35.622913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848007, 34.608051, 35.621803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931206, -0.192104, 0.309761,
		-0.303960, 0.059729, 0.950810,
		-0.201156, -0.979555, -0.002772,
		25.787661, 34.314186, 35.620972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120453, 34.671238, 36.189129>,  <25.928469, 34.999874, 35.622913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120453, 34.671238, 36.189129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145809, 34.405846, 35.890930>,  <26.161024, 34.246609, 35.712009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145809, 34.405846, 35.890930>,  <26.120453, 34.671238, 36.189129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145809, 34.405846, 35.890930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985371, -0.076795, 0.152137,
		-0.158192, -0.744238, 0.648910,
		0.063393, -0.663484, -0.745500,
		26.164827, 34.206799, 35.667282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683126, 34.586536, 36.580788>,  <26.120453, 34.671238, 36.189129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683126, 34.586536, 36.580788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610968, 34.453136, 36.210655>,  <26.567673, 34.373096, 35.988575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610968, 34.453136, 36.210655>,  <26.683126, 34.586536, 36.580788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610968, 34.453136, 36.210655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980567, -0.134721, -0.142612,
		-0.077100, -0.933075, 0.351321,
		-0.180398, -0.333498, -0.925330,
		26.556849, 34.353088, 35.933056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231586, 35.026066, 36.501850>,  <26.683126, 34.586536, 36.580788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231586, 35.026066, 36.501850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622429, 35.067825, 36.427704>,  <27.856936, 35.092880, 36.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622429, 35.067825, 36.427704>,  <27.231586, 35.026066, 36.501850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622429, 35.067825, 36.427704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002665, 0.877260, 0.480009,
		0.212727, -0.468526, 0.857455,
		0.977108, 0.104396, -0.185369,
		27.915562, 35.099144, 36.372093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562813, 35.191113, 37.066299>,  <27.231586, 35.026066, 36.501850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562813, 35.191113, 37.066299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804945, 35.379292, 36.809471>,  <27.950224, 35.492199, 36.655373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804945, 35.379292, 36.809471>,  <27.562813, 35.191113, 37.066299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804945, 35.379292, 36.809471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085106, 0.840275, 0.535439,
		0.791410, -0.269474, 0.548683,
		0.605332, 0.470448, -0.642069,
		27.986544, 35.520428, 36.616852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012665, 35.676361, 37.438576>,  <27.562813, 35.191113, 37.066299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012665, 35.676361, 37.438576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018208, 35.820164, 37.065361>,  <28.021532, 35.906445, 36.841431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018208, 35.820164, 37.065361>,  <28.012665, 35.676361, 37.438576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018208, 35.820164, 37.065361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030684, 0.932845, 0.358971,
		0.999433, 0.023656, 0.023956,
		0.013856, 0.359502, -0.933041,
		28.022364, 35.928013, 36.785450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222580, 36.415924, 37.550686>,  <28.012665, 35.676361, 37.438576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222580, 36.415924, 37.550686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130486, 36.433949, 37.161850>,  <28.075228, 36.444763, 36.928547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130486, 36.433949, 37.161850>,  <28.222580, 36.415924, 37.550686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130486, 36.433949, 37.161850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156825, 0.984152, 0.082766,
		0.960415, 0.171504, -0.219523,
		-0.230238, 0.045063, -0.972090,
		28.061415, 36.447468, 36.870224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676847, 37.008602, 37.213890>,  <28.222580, 36.415924, 37.550686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676847, 37.008602, 37.213890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355064, 36.968128, 36.979759>,  <28.161995, 36.943844, 36.839279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355064, 36.968128, 36.979759>,  <28.676847, 37.008602, 37.213890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355064, 36.968128, 36.979759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119785, 0.992775, -0.006998,
		0.581809, 0.064485, -0.810765,
		-0.804456, -0.101189, -0.585330,
		28.113728, 36.937771, 36.804161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735643, 37.460499, 36.658810>,  <28.676847, 37.008602, 37.213890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735643, 37.460499, 36.658810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343981, 37.399723, 36.712719>,  <28.108982, 37.363258, 36.745064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343981, 37.399723, 36.712719>,  <28.735643, 37.460499, 36.658810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343981, 37.399723, 36.712719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161766, 0.984675, -0.065175,
		-0.122808, -0.085619, -0.988730,
		-0.979158, -0.151939, 0.134776,
		28.050234, 37.354141, 36.753151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442684, 37.810711, 36.167149>,  <28.735643, 37.460499, 36.658810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442684, 37.810711, 36.167149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144630, 37.777065, 36.431782>,  <27.965797, 37.756878, 36.590561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144630, 37.777065, 36.431782>,  <28.442684, 37.810711, 36.167149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144630, 37.777065, 36.431782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177991, 0.981114, -0.075729,
		-0.642722, -0.174185, -0.746035,
		-0.745136, -0.084114, 0.661587,
		27.921089, 37.751831, 36.630257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036242, 38.416428, 35.986301>,  <28.442684, 37.810711, 36.167149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036242, 38.416428, 35.986301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867107, 38.299294, 36.329338>,  <27.765627, 38.229012, 36.535160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867107, 38.299294, 36.329338>,  <28.036242, 38.416428, 35.986301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867107, 38.299294, 36.329338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209181, 0.952332, 0.222052,
		-0.881733, -0.085499, -0.463937,
		-0.422836, -0.292838, 0.857587,
		27.740257, 38.211441, 36.586613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340588, 38.738216, 36.046745>,  <28.036242, 38.416428, 35.986301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340588, 38.738216, 36.046745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483545, 38.668579, 36.413780>,  <27.569321, 38.626797, 36.633999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483545, 38.668579, 36.413780>,  <27.340588, 38.738216, 36.046745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483545, 38.668579, 36.413780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310952, 0.904241, 0.292673,
		-0.880669, -0.389925, 0.269038,
		0.357396, -0.174090, 0.917584,
		27.590765, 38.616352, 36.689056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813217, 39.040783, 36.417786>,  <27.340588, 38.738216, 36.046745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813217, 39.040783, 36.417786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127142, 38.981586, 36.658508>,  <27.315496, 38.946068, 36.802940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127142, 38.981586, 36.658508>,  <26.813217, 39.040783, 36.417786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127142, 38.981586, 36.658508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060309, 0.948223, 0.311827,
		-0.616792, -0.281019, 0.735252,
		0.784812, -0.147990, 0.601804,
		27.362585, 38.937191, 36.839050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600718, 39.441494, 36.933079>,  <26.813217, 39.040783, 36.417786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600718, 39.441494, 36.933079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990753, 39.390064, 37.005379>,  <27.224775, 39.359207, 37.048759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990753, 39.390064, 37.005379>,  <26.600718, 39.441494, 36.933079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990753, 39.390064, 37.005379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050200, 0.921644, 0.384774,
		-0.216059, -0.366116, 0.905140,
		0.975089, -0.128572, 0.180750,
		27.283279, 39.351494, 37.059605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604660, 39.819229, 37.462460>,  <26.600718, 39.441494, 36.933079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604660, 39.819229, 37.462460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990330, 39.786358, 37.361572>,  <27.221731, 39.766636, 37.301041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990330, 39.786358, 37.361572>,  <26.604660, 39.819229, 37.462460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990330, 39.786358, 37.361572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154195, 0.947301, 0.280793,
		0.215855, -0.309625, 0.926034,
		0.964174, -0.082179, -0.252222,
		27.279581, 39.761703, 37.285904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068836, 39.977848, 38.110332>,  <26.604660, 39.819229, 37.462460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068836, 39.977848, 38.110332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252701, 40.057495, 37.764137>,  <27.363020, 40.105282, 37.556419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252701, 40.057495, 37.764137>,  <27.068836, 39.977848, 38.110332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252701, 40.057495, 37.764137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050590, 0.967089, 0.249359,
		0.886653, -0.158405, 0.434458,
		0.459659, 0.199116, -0.865486,
		27.390598, 40.117229, 37.504490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622471, 40.416332, 38.339802>,  <27.068836, 39.977848, 38.110332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622471, 40.416332, 38.339802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563210, 40.479599, 37.949306>,  <27.527653, 40.517559, 37.715012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563210, 40.479599, 37.949306>,  <27.622471, 40.416332, 38.339802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563210, 40.479599, 37.949306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056249, 0.986878, 0.151354,
		0.987363, -0.032488, -0.155108,
		-0.148156, 0.158166, -0.976234,
		27.518763, 40.527050, 37.656437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917654, 41.014374, 38.274521>,  <27.622471, 40.416332, 38.339802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917654, 41.014374, 38.274521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714909, 40.986145, 37.930866>,  <27.593262, 40.969208, 37.724674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714909, 40.986145, 37.930866>,  <27.917654, 41.014374, 38.274521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714909, 40.986145, 37.930866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000194, 0.996634, -0.081982,
		0.862026, -0.041720, -0.505144,
		-0.506864, -0.070573, -0.859132,
		27.562849, 40.964973, 37.673126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189972, 41.529995, 37.996937>,  <27.917654, 41.014374, 38.274521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189972, 41.529995, 37.996937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852882, 41.452312, 37.796101>,  <27.650629, 41.405701, 37.675598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852882, 41.452312, 37.796101>,  <28.189972, 41.529995, 37.996937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852882, 41.452312, 37.796101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293118, 0.947823, 0.125356,
		0.451551, 0.252813, -0.855679,
		-0.842724, -0.194210, -0.502095,
		27.600065, 41.394051, 37.645473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077324, 42.115311, 37.440407>,  <28.189972, 41.529995, 37.996937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077324, 42.115311, 37.440407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728226, 41.936874, 37.519726>,  <27.518766, 41.829815, 37.567318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728226, 41.936874, 37.519726>,  <28.077324, 42.115311, 37.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728226, 41.936874, 37.519726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429504, 0.894726, 0.122437,
		-0.232041, 0.021687, -0.972465,
		-0.872745, -0.446088, 0.198298,
		27.466402, 41.803047, 37.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505726, 42.460373, 37.127735>,  <28.077324, 42.115311, 37.440407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505726, 42.460373, 37.127735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310930, 42.264400, 37.416958>,  <27.194052, 42.146816, 37.590492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310930, 42.264400, 37.416958>,  <27.505726, 42.460373, 37.127735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310930, 42.264400, 37.416958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561899, 0.809532, 0.170077,
		-0.668662, -0.323458, -0.669527,
		-0.486991, -0.489931, 0.723054,
		27.164833, 42.117420, 37.633873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692585, 42.498177, 36.994537>,  <27.505726, 42.460373, 37.127735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692585, 42.498177, 36.994537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746449, 42.402668, 37.379215>,  <26.778767, 42.345364, 37.610023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746449, 42.402668, 37.379215>,  <26.692585, 42.498177, 36.994537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746449, 42.402668, 37.379215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610304, 0.744615, 0.270329,
		-0.780638, -0.623328, -0.045454,
		0.134658, -0.238770, 0.961694,
		26.786846, 42.331036, 37.667725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013723, 42.336452, 37.289417>,  <26.692585, 42.498177, 36.994537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013723, 42.336452, 37.289417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254501, 42.428909, 37.595158>,  <26.398968, 42.484383, 37.778603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254501, 42.428909, 37.595158>,  <26.013723, 42.336452, 37.289417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254501, 42.428909, 37.595158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660350, 0.682293, 0.313711,
		-0.449001, -0.693577, 0.563337,
		0.601943, 0.231143, 0.764354,
		26.435085, 42.498253, 37.824463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670107, 42.404510, 37.972015>,  <26.013723, 42.336452, 37.289417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670107, 42.404510, 37.972015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995388, 42.637226, 37.966072>,  <26.190557, 42.776855, 37.962505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995388, 42.637226, 37.966072>,  <25.670107, 42.404510, 37.972015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995388, 42.637226, 37.966072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499043, 0.710229, 0.496519,
		0.299423, -0.396356, 0.867898,
		0.813205, 0.581788, -0.014861,
		26.239349, 42.811764, 37.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961483, 42.519051, 38.716095>,  <25.670107, 42.404510, 37.972015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961483, 42.519051, 38.716095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061899, 42.838314, 38.497036>,  <26.122149, 43.029873, 38.365601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061899, 42.838314, 38.497036>,  <25.961483, 42.519051, 38.716095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061899, 42.838314, 38.497036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511635, 0.589686, 0.624900,
		0.821711, 0.123321, 0.556401,
		0.251039, 0.798162, -0.547647,
		26.137211, 43.077763, 38.332741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491228, 43.079941, 39.046612>,  <25.961483, 42.519051, 38.716095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491228, 43.079941, 39.046612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229103, 43.243355, 38.792477>,  <26.071827, 43.341404, 38.639996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229103, 43.243355, 38.792477>,  <26.491228, 43.079941, 39.046612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229103, 43.243355, 38.792477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457098, 0.455145, 0.764137,
		0.601352, 0.791163, -0.111521,
		-0.655315, 0.408539, -0.635341,
		26.032509, 43.365917, 38.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372046, 43.829193, 39.206249>,  <26.491228, 43.079941, 39.046612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372046, 43.829193, 39.206249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066065, 43.693165, 38.987453>,  <25.882477, 43.611546, 38.856174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066065, 43.693165, 38.987453>,  <26.372046, 43.829193, 39.206249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066065, 43.693165, 38.987453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606270, 0.093452, 0.789749,
		-0.217455, 0.935744, -0.277663,
		-0.764951, -0.340074, -0.546991,
		25.836580, 43.591141, 38.823357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935381, 44.242584, 38.839687>,  <26.372046, 43.829193, 39.206249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935381, 44.242584, 38.839687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804054, 44.609997, 38.751591>,  <26.725258, 44.830444, 38.698734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804054, 44.609997, 38.751591>,  <26.935381, 44.242584, 38.839687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804054, 44.609997, 38.751591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793475, 0.141700, -0.591877,
		-0.512451, -0.369076, -0.775356,
		-0.328315, 0.918534, -0.220238,
		26.705559, 44.885555, 38.685520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007116, 44.379395, 38.120430>,  <26.935381, 44.242584, 38.839687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007116, 44.379395, 38.120430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056259, 44.711838, 38.337376>,  <27.085745, 44.911304, 38.467545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056259, 44.711838, 38.337376>,  <27.007116, 44.379395, 38.120430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056259, 44.711838, 38.337376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837971, 0.205922, -0.505372,
		-0.531705, 0.516574, -0.671149,
		0.122857, 0.831112, 0.542364,
		27.093117, 44.961170, 38.500084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456890, 44.907894, 38.126621>,  <27.007116, 44.379395, 38.120430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456890, 44.907894, 38.126621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645926, 45.088326, 37.823784>,  <27.759346, 45.196587, 37.642082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645926, 45.088326, 37.823784>,  <27.456890, 44.907894, 38.126621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645926, 45.088326, 37.823784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129218, -0.885260, -0.446786,
		-0.871760, 0.113316, -0.476650,
		0.472587, 0.451081, -0.757091,
		27.787701, 45.223648, 37.596657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239824, 44.685589, 37.387421>,  <27.456890, 44.907894, 38.126621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239824, 44.685589, 37.387421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613914, 44.802807, 37.307949>,  <27.838369, 44.873138, 37.260265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613914, 44.802807, 37.307949>,  <27.239824, 44.685589, 37.387421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613914, 44.802807, 37.307949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160701, -0.851381, -0.499324,
		-0.315475, 0.435055, -0.843328,
		0.935228, 0.293048, -0.198676,
		27.894484, 44.890720, 37.248344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208973, 44.578499, 36.736656>,  <27.239824, 44.685589, 37.387421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208973, 44.578499, 36.736656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578476, 44.548969, 36.886974>,  <27.800177, 44.531250, 36.977165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578476, 44.548969, 36.886974>,  <27.208973, 44.578499, 36.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578476, 44.548969, 36.886974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128452, -0.864681, -0.485620,
		0.360799, 0.496866, -0.789270,
		0.923755, -0.073828, 0.375800,
		27.855602, 44.526821, 36.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731825, 44.718487, 36.214863>,  <27.208973, 44.578499, 36.736656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731825, 44.718487, 36.214863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800058, 44.432587, 36.486168>,  <27.840998, 44.261047, 36.648952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800058, 44.432587, 36.486168>,  <27.731825, 44.718487, 36.214863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800058, 44.432587, 36.486168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103586, -0.697545, -0.709015,
		0.979884, 0.050687, -0.193026,
		0.170582, -0.714746, 0.678262,
		27.851233, 44.218163, 36.689648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278416, 44.379280, 35.952763>,  <27.731825, 44.718487, 36.214863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278416, 44.379280, 35.952763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042612, 44.141380, 36.171398>,  <27.901131, 43.998642, 36.302578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042612, 44.141380, 36.171398>,  <28.278416, 44.379280, 35.952763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042612, 44.141380, 36.171398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009878, -0.671308, -0.741112,
		0.807703, -0.442290, 0.389866,
		-0.589507, -0.594747, 0.546586,
		27.865759, 43.962955, 36.335373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664557, 43.857574, 36.028339>,  <28.278416, 44.379280, 35.952763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664557, 43.857574, 36.028339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327991, 43.685127, 36.158669>,  <28.126053, 43.581657, 36.236866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327991, 43.685127, 36.158669>,  <28.664557, 43.857574, 36.028339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327991, 43.685127, 36.158669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225623, -0.828136, -0.513114,
		0.491040, -0.358227, 0.794074,
		-0.841412, -0.431121, 0.325824,
		28.075567, 43.555790, 36.256416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875736, 43.131310, 36.217354>,  <28.664557, 43.857574, 36.028339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875736, 43.131310, 36.217354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479271, 43.135902, 36.164497>,  <28.241392, 43.138657, 36.132782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479271, 43.135902, 36.164497>,  <28.875736, 43.131310, 36.217354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479271, 43.135902, 36.164497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059922, -0.850042, -0.523296,
		-0.118333, -0.526591, 0.841843,
		-0.991164, 0.011478, -0.132142,
		28.181921, 43.139347, 36.124855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626348, 42.503868, 36.488171>,  <28.875736, 43.131310, 36.217354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626348, 42.503868, 36.488171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371002, 42.639881, 36.211948>,  <28.217794, 42.721489, 36.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371002, 42.639881, 36.211948>,  <28.626348, 42.503868, 36.488171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371002, 42.639881, 36.211948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058133, -0.873277, -0.483743,
		-0.767533, -0.348950, 0.537705,
		-0.638368, 0.340030, -0.690555,
		28.179491, 42.741890, 36.004784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212461, 42.067978, 36.369896>,  <28.626348, 42.503868, 36.488171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212461, 42.067978, 36.369896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145752, 42.281670, 36.038406>,  <28.105726, 42.409885, 35.839512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145752, 42.281670, 36.038406>,  <28.212461, 42.067978, 36.369896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145752, 42.281670, 36.038406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054376, -0.834237, -0.548720,
		-0.984495, -0.136575, 0.110080,
		-0.166775, 0.534225, -0.828727,
		28.095720, 42.441936, 35.789787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658003, 41.766922, 36.034512>,  <28.212461, 42.067978, 36.369896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658003, 41.766922, 36.034512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818491, 42.008759, 35.759266>,  <27.914783, 42.153858, 35.594120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818491, 42.008759, 35.759266>,  <27.658003, 41.766922, 36.034512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818491, 42.008759, 35.759266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041659, -0.738405, -0.673069,
		-0.915034, 0.298714, -0.271076,
		0.401219, 0.604589, -0.688110,
		27.938856, 42.190136, 35.552834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434229, 41.470127, 35.466518>,  <27.658003, 41.766922, 36.034512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434229, 41.470127, 35.466518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766644, 41.671135, 35.371143>,  <27.966093, 41.791740, 35.313919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766644, 41.671135, 35.371143>,  <27.434229, 41.470127, 35.466518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766644, 41.671135, 35.371143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272321, -0.741380, -0.613349,
		-0.484994, 0.444783, -0.752960,
		0.831037, 0.502518, -0.238441,
		28.015955, 41.821892, 35.299610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435080, 41.526051, 34.748913>,  <27.434229, 41.470127, 35.466518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435080, 41.526051, 34.748913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816084, 41.602318, 34.843880>,  <28.044687, 41.648079, 34.900860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816084, 41.602318, 34.843880>,  <27.435080, 41.526051, 34.748913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816084, 41.602318, 34.843880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295590, -0.766229, -0.570544,
		0.073127, 0.613627, -0.786203,
		0.952512, 0.190672, 0.237414,
		28.101837, 41.659519, 34.915104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838726, 41.611382, 34.187969>,  <27.435080, 41.526051, 34.748913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838726, 41.611382, 34.187969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095785, 41.499260, 34.473186>,  <28.250021, 41.431988, 34.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095785, 41.499260, 34.473186>,  <27.838726, 41.611382, 34.187969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095785, 41.499260, 34.473186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233741, -0.814576, -0.530878,
		0.729638, 0.507835, -0.457965,
		0.642646, -0.280303, 0.713047,
		28.288578, 41.415169, 34.687099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451092, 41.345966, 33.859035>,  <27.838726, 41.611382, 34.187969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451092, 41.345966, 33.859035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505249, 41.204601, 34.229282>,  <28.537745, 41.119781, 34.451431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505249, 41.204601, 34.229282>,  <28.451092, 41.345966, 33.859035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505249, 41.204601, 34.229282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463740, -0.802967, -0.374419,
		0.875565, 0.479940, 0.055175,
		0.135395, -0.353415, 0.925617,
		28.545868, 41.098576, 34.506966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179989, 41.125931, 33.948750>,  <28.451092, 41.345966, 33.859035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179989, 41.125931, 33.948750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953663, 40.928917, 34.213253>,  <28.817867, 40.810707, 34.371956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953663, 40.928917, 34.213253>,  <29.179989, 41.125931, 33.948750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953663, 40.928917, 34.213253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477597, -0.849517, -0.224100,
		0.672129, 0.189016, 0.715902,
		-0.565813, -0.492537, 0.661259,
		28.783918, 40.781155, 34.411629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582323, 40.550503, 34.102085>,  <29.179989, 41.125931, 33.948750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582323, 40.550503, 34.102085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238804, 40.430725, 34.268364>,  <29.032692, 40.358860, 34.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238804, 40.430725, 34.268364>,  <29.582323, 40.550503, 34.102085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238804, 40.430725, 34.268364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279043, -0.953883, -0.110642,
		0.429655, 0.020977, 0.902749,
		-0.858796, -0.299444, 0.415695,
		28.981165, 40.340893, 34.393074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827450, 40.004154, 34.460773>,  <29.582323, 40.550503, 34.102085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827450, 40.004154, 34.460773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434233, 39.939388, 34.426346>,  <29.198301, 39.900528, 34.405689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434233, 39.939388, 34.426346>,  <29.827450, 40.004154, 34.460773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434233, 39.939388, 34.426346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170308, -0.980178, -0.101222,
		-0.067971, -0.114164, 0.991134,
		-0.983044, -0.161918, -0.086066,
		29.139320, 39.890812, 34.400524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742666, 39.595142, 35.039726>,  <29.827450, 40.004154, 34.460773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742666, 39.595142, 35.039726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410725, 39.505501, 34.835327>,  <29.211559, 39.451717, 34.712688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410725, 39.505501, 34.835327>,  <29.742666, 39.595142, 35.039726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410725, 39.505501, 34.835327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159254, -0.972835, 0.168021,
		-0.534775, 0.058053, 0.842998,
		-0.829852, -0.224104, -0.511002,
		29.161770, 39.438271, 34.682026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315184, 39.072998, 35.426231>,  <29.742666, 39.595142, 35.039726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315184, 39.072998, 35.426231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133657, 39.015694, 35.074429>,  <29.024742, 38.981312, 34.863346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133657, 39.015694, 35.074429>,  <29.315184, 39.072998, 35.426231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133657, 39.015694, 35.074429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178787, -0.981561, 0.067632,
		-0.872975, -0.126552, 0.471062,
		-0.453817, -0.143261, -0.879504,
		28.997513, 38.972717, 34.810577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700094, 38.592979, 35.489464>,  <29.315184, 39.072998, 35.426231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700094, 38.592979, 35.489464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824692, 38.579811, 35.109592>,  <28.899450, 38.571911, 34.881668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824692, 38.579811, 35.109592>,  <28.700094, 38.592979, 35.489464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824692, 38.579811, 35.109592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099808, -0.992738, 0.067155,
		-0.944992, -0.115704, -0.305945,
		0.311493, -0.032925, -0.949678,
		28.918140, 38.569935, 34.824688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420029, 37.975193, 35.316666>,  <28.700094, 38.592979, 35.489464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420029, 37.975193, 35.316666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670208, 38.024284, 35.008446>,  <28.820314, 38.053738, 34.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670208, 38.024284, 35.008446>,  <28.420029, 37.975193, 35.316666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670208, 38.024284, 35.008446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297437, -0.950486, 0.090037,
		-0.721351, -0.285505, -0.630984,
		0.625447, 0.122729, -0.770554,
		28.857841, 38.061104, 34.777279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330912, 37.409393, 34.921963>,  <28.420029, 37.975193, 35.316666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330912, 37.409393, 34.921963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695332, 37.547062, 34.831158>,  <28.913984, 37.629662, 34.776672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695332, 37.547062, 34.831158>,  <28.330912, 37.409393, 34.921963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695332, 37.547062, 34.831158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370516, -0.924960, 0.084652,
		-0.180846, -0.161235, -0.970205,
		0.911050, 0.344168, -0.227016,
		28.968647, 37.650311, 34.763054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693880, 36.965530, 34.392685>,  <28.330912, 37.409393, 34.921963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693880, 36.965530, 34.392685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977352, 37.164116, 34.593201>,  <29.147436, 37.283268, 34.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977352, 37.164116, 34.593201>,  <28.693880, 36.965530, 34.392685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977352, 37.164116, 34.593201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514626, -0.849792, 0.114078,
		0.482631, 0.177134, -0.857724,
		0.708680, 0.496465, 0.501293,
		29.189957, 37.313057, 34.743587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255827, 36.702576, 34.135902>,  <28.693880, 36.965530, 34.392685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255827, 36.702576, 34.135902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402704, 36.850113, 34.477459>,  <29.490831, 36.938637, 34.682392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402704, 36.850113, 34.477459>,  <29.255827, 36.702576, 34.135902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402704, 36.850113, 34.477459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601258, -0.794557, 0.084660,
		0.709689, 0.482320, -0.513526,
		0.367193, 0.368843, 0.853888,
		29.512861, 36.960766, 34.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975159, 36.480843, 34.084396>,  <29.255827, 36.702576, 34.135902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975159, 36.480843, 34.084396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942732, 36.606960, 34.462608>,  <29.923277, 36.682632, 34.689533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942732, 36.606960, 34.462608>,  <29.975159, 36.480843, 34.084396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942732, 36.606960, 34.462608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704270, -0.653159, 0.278183,
		0.705288, 0.688457, -0.169103,
		-0.081066, 0.315294, 0.945525,
		29.918411, 36.701550, 34.746265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672621, 36.678196, 34.386086>,  <29.975159, 36.480843, 34.084396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672621, 36.678196, 34.386086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414892, 36.534405, 34.656086>,  <30.260256, 36.448132, 34.818085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414892, 36.534405, 34.656086>,  <30.672621, 36.678196, 34.386086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414892, 36.534405, 34.656086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730653, -0.549995, 0.404539,
		0.225826, 0.753845, 0.617026,
		-0.644321, -0.359476, 0.675002,
		30.221596, 36.426563, 34.858585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717850, 37.001259, 35.023815>,  <30.672621, 36.678196, 34.386086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717850, 37.001259, 35.023815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641460, 36.608803, 35.035770>,  <30.595627, 36.373329, 35.042942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641460, 36.608803, 35.035770>,  <30.717850, 37.001259, 35.023815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641460, 36.608803, 35.035770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926265, -0.170048, 0.336327,
		-0.324902, 0.091914, 0.941271,
		-0.190974, -0.981140, 0.029887,
		30.584167, 36.314461, 35.044735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040215, 36.872143, 35.632553>,  <30.717850, 37.001259, 35.023815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040215, 36.872143, 35.632553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019577, 36.527096, 35.431263>,  <31.007195, 36.320068, 35.310490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019577, 36.527096, 35.431263>,  <31.040215, 36.872143, 35.632553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019577, 36.527096, 35.431263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866522, -0.289167, 0.406843,
		-0.496465, -0.415063, 0.762395,
		-0.051594, -0.862615, -0.503222,
		31.004099, 36.268311, 35.280296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130239, 36.194035, 36.036381>,  <31.040215, 36.872143, 35.632553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130239, 36.194035, 36.036381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272495, 36.119991, 35.669937>,  <31.357849, 36.075565, 35.450069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272495, 36.119991, 35.669937>,  <31.130239, 36.194035, 36.036381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272495, 36.119991, 35.669937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814354, -0.419624, 0.400928,
		-0.458638, -0.888622, 0.001511,
		0.355640, -0.185112, -0.916108,
		31.379187, 36.064457, 35.395103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551676, 35.710613, 36.068508>,  <31.130239, 36.194035, 36.036381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551676, 35.710613, 36.068508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678099, 35.809002, 35.701988>,  <31.753952, 35.868034, 35.482075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678099, 35.809002, 35.701988>,  <31.551676, 35.710613, 36.068508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678099, 35.809002, 35.701988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878088, -0.441565, 0.184340,
		-0.359264, -0.862854, -0.355545,
		0.316055, 0.245973, -0.916300,
		31.772915, 35.882793, 35.427097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242878, 35.304253, 36.130859>,  <31.551676, 35.710613, 36.068508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242878, 35.304253, 36.130859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213448, 35.549496, 35.816235>,  <32.195789, 35.696640, 35.627460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213448, 35.549496, 35.816235>,  <32.242878, 35.304253, 36.130859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213448, 35.549496, 35.816235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991074, -0.042972, -0.126196,
		-0.111172, -0.788829, -0.604475,
		-0.073571, 0.613109, -0.786565,
		32.191376, 35.733429, 35.580265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922676, 34.671280, 35.838306>,  <32.242878, 35.304253, 36.130859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922676, 34.671280, 35.838306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873695, 34.301357, 35.982388>,  <31.844307, 34.079403, 36.068836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873695, 34.301357, 35.982388>,  <31.922676, 34.671280, 35.838306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873695, 34.301357, 35.982388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013570, 0.361340, 0.932335,
		-0.992381, 0.119056, -0.031697,
		-0.122453, -0.924802, 0.360203,
		31.836960, 34.023918, 36.090446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403126, 34.653530, 36.316540>,  <31.922676, 34.671280, 35.838306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403126, 34.653530, 36.316540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625425, 34.331692, 36.400219>,  <31.758804, 34.138588, 36.450428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625425, 34.331692, 36.400219>,  <31.403126, 34.653530, 36.316540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625425, 34.331692, 36.400219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005409, 0.255132, 0.966891,
		-0.831333, -0.536216, 0.146142,
		0.555748, -0.804599, 0.209199,
		31.792150, 34.090313, 36.462978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130804, 34.265633, 36.895496>,  <31.403126, 34.653530, 36.316540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130804, 34.265633, 36.895496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518240, 34.166183, 36.893623>,  <31.750702, 34.106514, 36.892502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518240, 34.166183, 36.893623>,  <31.130804, 34.265633, 36.895496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518240, 34.166183, 36.893623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065609, 0.237358, 0.969204,
		-0.239860, -0.939066, 0.246214,
		0.968588, -0.248627, -0.004679,
		31.808817, 34.091595, 36.892220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223818, 33.592541, 37.334198>,  <31.130804, 34.265633, 36.895496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223818, 33.592541, 37.334198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582865, 33.768753, 37.340076>,  <31.798294, 33.874481, 37.343605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582865, 33.768753, 37.340076>,  <31.223818, 33.592541, 37.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582865, 33.768753, 37.340076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042870, -0.120436, 0.991795,
		0.438682, -0.889624, -0.126991,
		0.897619, 0.440527, 0.014695,
		31.852150, 33.900909, 37.344486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526752, 33.310963, 37.878105>,  <31.223818, 33.592541, 37.334198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526752, 33.310963, 37.878105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756624, 33.629913, 37.804417>,  <31.894548, 33.821281, 37.760204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756624, 33.629913, 37.804417>,  <31.526752, 33.310963, 37.878105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756624, 33.629913, 37.804417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131408, 0.132276, 0.982464,
		0.807759, -0.588810, -0.028765,
		0.574680, 0.797374, -0.184222,
		31.929028, 33.869125, 37.749149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027096, 33.313511, 38.327991>,  <31.526752, 33.310963, 37.878105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027096, 33.313511, 38.327991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076851, 33.700665, 38.240608>,  <32.106705, 33.932957, 38.188179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076851, 33.700665, 38.240608>,  <32.027096, 33.313511, 38.327991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076851, 33.700665, 38.240608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279621, 0.177051, 0.943645,
		0.952018, -0.178467, -0.248618,
		0.124391, 0.967886, -0.218459,
		32.114170, 33.991032, 38.175072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467606, 33.403366, 38.847866>,  <32.027096, 33.313511, 38.327991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467606, 33.403366, 38.847866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389160, 33.772701, 38.715816>,  <32.342094, 33.994305, 38.636589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389160, 33.772701, 38.715816>,  <32.467606, 33.403366, 38.847866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389160, 33.772701, 38.715816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279034, 0.375288, 0.883911,
		0.940042, 0.081232, -0.331243,
		-0.196113, 0.923342, -0.330121,
		32.330326, 34.049706, 38.616779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124218, 33.676090, 38.738289>,  <32.467606, 33.403366, 38.847866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124218, 33.676090, 38.738289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875652, 33.987129, 38.776608>,  <32.726513, 34.173752, 38.799599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875652, 33.987129, 38.776608>,  <33.124218, 33.676090, 38.738289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875652, 33.987129, 38.776608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445337, 0.249970, 0.859761,
		0.644603, 0.576935, -0.501630,
		-0.621419, 0.777600, 0.095799,
		32.689228, 34.220409, 38.805347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544125, 34.126804, 38.987301>,  <33.124218, 33.676090, 38.738289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544125, 34.126804, 38.987301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194096, 34.289192, 39.092705>,  <32.984077, 34.386623, 39.155945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194096, 34.289192, 39.092705>,  <33.544125, 34.126804, 38.987301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194096, 34.289192, 39.092705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412243, 0.339946, 0.845277,
		0.253579, 0.848307, -0.464836,
		-0.875073, 0.405969, 0.263505,
		32.931572, 34.410984, 39.171757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775932, 34.715141, 39.398014>,  <33.544125, 34.126804, 38.987301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775932, 34.715141, 39.398014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385128, 34.684551, 39.477623>,  <33.150646, 34.666195, 39.525387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385128, 34.684551, 39.477623>,  <33.775932, 34.715141, 39.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385128, 34.684551, 39.477623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171661, 0.271473, 0.947014,
		-0.126454, 0.959403, -0.252102,
		-0.977007, -0.076477, 0.199021,
		33.092026, 34.661610, 39.537331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509689, 35.371967, 39.827854>,  <33.775932, 34.715141, 39.398014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509689, 35.371967, 39.827854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277641, 35.054924, 39.902946>,  <33.138412, 34.864700, 39.948002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277641, 35.054924, 39.902946>,  <33.509689, 35.371967, 39.827854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277641, 35.054924, 39.902946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063516, 0.185753, 0.980541,
		-0.812054, 0.580751, -0.057415,
		-0.580116, -0.792606, 0.187728,
		33.103607, 34.817142, 39.959267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062824, 35.648670, 40.401012>,  <33.509689, 35.371967, 39.827854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062824, 35.648670, 40.401012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036312, 35.249653, 40.392002>,  <33.020405, 35.010242, 40.386597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036312, 35.249653, 40.392002>,  <33.062824, 35.648670, 40.401012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036312, 35.249653, 40.392002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151602, -0.032383, 0.987911,
		-0.986217, 0.062067, 0.153377,
		-0.066283, -0.997547, -0.022527,
		33.016426, 34.950390, 40.385242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481907, 35.415115, 40.917282>,  <33.062824, 35.648670, 40.401012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481907, 35.415115, 40.917282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747139, 35.125957, 40.839561>,  <32.906277, 34.952465, 40.792927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747139, 35.125957, 40.839561>,  <32.481907, 35.415115, 40.917282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747139, 35.125957, 40.839561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082210, -0.187679, 0.978784,
		-0.744021, -0.664985, -0.065017,
		0.663079, -0.722891, -0.194305,
		32.946064, 34.909092, 40.781269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396328, 35.016106, 41.419388>,  <32.481907, 35.415115, 40.917282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396328, 35.016106, 41.419388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739689, 34.856846, 41.290001>,  <32.945705, 34.761292, 41.212368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739689, 34.856846, 41.290001>,  <32.396328, 35.016106, 41.419388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739689, 34.856846, 41.290001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207751, -0.306729, 0.928847,
		-0.469036, -0.864521, -0.180580,
		0.858397, -0.398146, -0.323472,
		32.997208, 34.737404, 41.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514095, 34.372467, 41.794968>,  <32.396328, 35.016106, 41.419388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514095, 34.372467, 41.794968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891056, 34.443104, 41.681335>,  <33.117233, 34.485485, 41.613155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891056, 34.443104, 41.681335>,  <32.514095, 34.372467, 41.794968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891056, 34.443104, 41.681335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318929, -0.218334, 0.922288,
		0.100845, -0.959763, -0.262078,
		0.942399, 0.176592, -0.284079,
		33.173775, 34.496082, 41.596111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932667, 33.759991, 42.086380>,  <32.514095, 34.372467, 41.794968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932667, 33.759991, 42.086380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156548, 34.079414, 41.997807>,  <33.290878, 34.271069, 41.944664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156548, 34.079414, 41.997807>,  <32.932667, 33.759991, 42.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156548, 34.079414, 41.997807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481047, -0.095510, 0.871477,
		0.674778, -0.594289, -0.437602,
		0.559704, 0.798560, -0.221432,
		33.324459, 34.318981, 41.931377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605343, 33.530403, 42.192829>,  <32.932667, 33.759991, 42.086380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605343, 33.530403, 42.192829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600979, 33.930355, 42.188526>,  <33.598362, 34.170326, 42.185944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600979, 33.930355, 42.188526>,  <33.605343, 33.530403, 42.192829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600979, 33.930355, 42.188526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397793, 0.014208, 0.917365,
		0.917410, 0.005729, -0.397901,
		-0.010909, 0.999883, -0.010756,
		33.597706, 34.230320, 42.185299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280678, 33.718979, 42.547504>,  <33.605343, 33.530403, 42.192829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280678, 33.718979, 42.547504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041054, 34.038174, 42.573895>,  <33.897282, 34.229691, 42.589729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041054, 34.038174, 42.573895>,  <34.280678, 33.718979, 42.547504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041054, 34.038174, 42.573895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302301, 0.149103, 0.941479,
		0.741447, 0.583945, -0.330553,
		-0.599058, 0.797983, 0.065975,
		33.861336, 34.277569, 42.593685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618832, 34.187859, 43.035583>,  <34.280678, 33.718979, 42.547504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618832, 34.187859, 43.035583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236294, 34.304630, 43.030029>,  <34.006771, 34.374691, 43.026699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236294, 34.304630, 43.030029>,  <34.618832, 34.187859, 43.035583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236294, 34.304630, 43.030029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031492, 0.150159, 0.988160,
		0.290553, 0.944581, -0.152796,
		-0.956340, 0.291925, -0.013883,
		33.949390, 34.392208, 43.025864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528172, 34.725750, 43.562222>,  <34.618832, 34.187859, 43.035583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528172, 34.725750, 43.562222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151928, 34.605682, 43.498772>,  <33.926182, 34.533642, 43.460701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151928, 34.605682, 43.498772>,  <34.528172, 34.725750, 43.562222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151928, 34.605682, 43.498772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194828, 0.094619, 0.976263,
		-0.278033, 0.949183, -0.147480,
		-0.940606, -0.300166, -0.158620,
		33.869747, 34.515633, 43.451187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139793, 35.236874, 43.892582>,  <34.528172, 34.725750, 43.562222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139793, 35.236874, 43.892582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926472, 34.902256, 43.842331>,  <33.798481, 34.701485, 43.812180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926472, 34.902256, 43.842331>,  <34.139793, 35.236874, 43.892582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926472, 34.902256, 43.842331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189037, -0.026899, 0.981601,
		-0.824534, 0.547236, -0.143793,
		-0.533299, -0.836546, -0.125627,
		33.766483, 34.651291, 43.804642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483986, 35.299622, 44.262012>,  <34.139793, 35.236874, 43.892582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483986, 35.299622, 44.262012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462059, 34.902092, 44.223400>,  <33.448902, 34.663574, 44.200233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462059, 34.902092, 44.223400>,  <33.483986, 35.299622, 44.262012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462059, 34.902092, 44.223400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468151, -0.059808, 0.881622,
		-0.881947, 0.093515, -0.461980,
		-0.054815, -0.993820, -0.096527,
		33.445614, 34.603947, 44.194443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837826, 35.001385, 44.523785>,  <33.483986, 35.299622, 44.262012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837826, 35.001385, 44.523785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027950, 34.650150, 44.545868>,  <33.142025, 34.439411, 44.559116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027950, 34.650150, 44.545868>,  <32.837826, 35.001385, 44.523785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027950, 34.650150, 44.545868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291480, -0.097953, 0.951549,
		-0.830133, -0.468372, -0.302502,
		0.475310, -0.878085, 0.055208,
		33.170544, 34.386726, 44.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385296, 34.456295, 44.831867>,  <32.837826, 35.001385, 44.523785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385296, 34.456295, 44.831867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753887, 34.322643, 44.911098>,  <32.975040, 34.242455, 44.958637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753887, 34.322643, 44.911098>,  <32.385296, 34.456295, 44.831867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753887, 34.322643, 44.911098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291262, -0.256986, 0.921480,
		-0.256986, -0.906818, -0.334125,
		-0.921480, 0.334125, -0.198080,
		33.030331, 34.222404, 44.970524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337193, 33.726307, 45.081108>,  <32.385296, 34.456295, 44.831867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337193, 33.726307, 45.081108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691418, 33.855148, 45.214993>,  <32.903954, 33.932453, 45.295322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691418, 33.855148, 45.214993>,  <32.337193, 33.726307, 45.081108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691418, 33.855148, 45.214993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224657, -0.333706, 0.915516,
		0.406583, -0.885941, -0.223155,
		0.885561, 0.322100, 0.334712,
		32.957085, 33.951778, 45.315407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494232, 33.250553, 45.575436>,  <32.337193, 33.726307, 45.081108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494232, 33.250553, 45.575436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747120, 33.550304, 45.654156>,  <32.898853, 33.730156, 45.701389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747120, 33.550304, 45.654156>,  <32.494232, 33.250553, 45.575436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747120, 33.550304, 45.654156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025061, -0.234096, 0.971890,
		0.774388, -0.619375, -0.129219,
		0.632215, 0.749382, 0.196803,
		32.936783, 33.775120, 45.713196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075401, 32.943386, 45.953926>,  <32.494232, 33.250553, 45.575436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075401, 32.943386, 45.953926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106956, 33.327927, 46.059444>,  <33.125889, 33.558651, 46.122757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106956, 33.327927, 46.059444>,  <33.075401, 32.943386, 45.953926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106956, 33.327927, 46.059444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246325, -0.275212, 0.929291,
		0.965972, -0.008328, -0.258514,
		0.078885, 0.961348, 0.263795,
		33.130623, 33.616329, 46.138584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591389, 32.976501, 46.304039>,  <33.075401, 32.943386, 45.953926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591389, 32.976501, 46.304039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379681, 33.294987, 46.421280>,  <33.252655, 33.486080, 46.491627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379681, 33.294987, 46.421280>,  <33.591389, 32.976501, 46.304039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379681, 33.294987, 46.421280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224840, -0.201486, 0.953336,
		0.818117, 0.570478, -0.072380,
		-0.529274, 0.796215, 0.293105,
		33.220898, 33.533852, 46.509212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009666, 33.214375, 46.728813>,  <33.591389, 32.976501, 46.304039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009666, 33.214375, 46.728813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659649, 33.380615, 46.828064>,  <33.449638, 33.480358, 46.887615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659649, 33.380615, 46.828064>,  <34.009666, 33.214375, 46.728813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659649, 33.380615, 46.828064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219613, -0.115933, 0.968674,
		0.431349, 0.902128, 0.010175,
		-0.875047, 0.415602, 0.248127,
		33.397133, 33.505295, 46.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086090, 33.569038, 47.290829>,  <34.009666, 33.214375, 46.728813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086090, 33.569038, 47.290829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688000, 33.564281, 47.329571>,  <33.449146, 33.561428, 47.352818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688000, 33.564281, 47.329571>,  <34.086090, 33.569038, 47.290829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688000, 33.564281, 47.329571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097571, -0.106344, 0.989531,
		-0.001469, 0.994258, 0.106997,
		-0.995228, -0.011893, 0.096854,
		33.389431, 33.560715, 47.358627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928539, 34.058590, 47.769836>,  <34.086090, 33.569038, 47.290829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928539, 34.058590, 47.769836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603760, 33.825161, 47.775097>,  <33.408890, 33.685104, 47.778255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603760, 33.825161, 47.775097>,  <33.928539, 34.058590, 47.769836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603760, 33.825161, 47.775097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129368, -0.157929, 0.978939,
		-0.569206, 0.796555, 0.203727,
		-0.811953, -0.583574, 0.013155,
		33.360172, 33.650089, 47.779045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541031, 34.338837, 48.261730>,  <33.928539, 34.058590, 47.769836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541031, 34.338837, 48.261730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433090, 33.954136, 48.242920>,  <33.368324, 33.723316, 48.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433090, 33.954136, 48.242920>,  <33.541031, 34.338837, 48.261730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433090, 33.954136, 48.242920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129133, -0.084542, 0.988017,
		-0.954203, 0.260549, 0.147008,
		-0.269855, -0.961752, -0.047025,
		33.352135, 33.665611, 48.228813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179356, 34.223782, 48.821785>,  <33.541031, 34.338837, 48.261730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179356, 34.223782, 48.821785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232071, 33.837704, 48.731415>,  <33.263699, 33.606056, 48.677193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232071, 33.837704, 48.731415>,  <33.179356, 34.223782, 48.821785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232071, 33.837704, 48.731415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002643, -0.228250, 0.973599,
		-0.991275, -0.127707, -0.032630,
		0.131784, -0.965190, -0.225921,
		33.271606, 33.548145, 48.663639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836521, 33.839725, 49.320740>,  <33.179356, 34.223782, 48.821785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836521, 33.839725, 49.320740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091831, 33.575943, 49.161884>,  <33.245018, 33.417675, 49.066570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091831, 33.575943, 49.161884>,  <32.836521, 33.839725, 49.320740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091831, 33.575943, 49.161884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267597, -0.293652, 0.917693,
		-0.721797, -0.692018, -0.010964,
		0.638279, -0.659454, -0.397140,
		33.283314, 33.378105, 49.042744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691788, 33.257748, 49.678558>,  <32.836521, 33.839725, 49.320740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691788, 33.257748, 49.678558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057644, 33.204571, 49.525845>,  <33.277157, 33.172665, 49.434216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057644, 33.204571, 49.525845>,  <32.691788, 33.257748, 49.678558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057644, 33.204571, 49.525845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323877, -0.324215, 0.888813,
		-0.241941, -0.936595, -0.253483,
		0.914641, -0.132943, -0.381783,
		33.332035, 33.164688, 49.411308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994690, 32.641666, 49.935085>,  <32.691788, 33.257748, 49.678558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994690, 32.641666, 49.935085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332798, 32.826385, 49.827557>,  <33.535664, 32.937218, 49.763039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332798, 32.826385, 49.827557>,  <32.994690, 32.641666, 49.935085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332798, 32.826385, 49.827557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421306, -0.266528, 0.866870,
		0.328671, -0.845993, -0.419846,
		0.845267, 0.461799, -0.268822,
		33.586380, 32.964924, 49.746910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327381, 32.562298, 50.590641>,  <32.994690, 32.641666, 49.935085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327381, 32.562298, 50.590641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604504, 32.665924, 50.321449>,  <33.770779, 32.728100, 50.159935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604504, 32.665924, 50.321449>,  <33.327381, 32.562298, 50.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604504, 32.665924, 50.321449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720655, -0.282311, 0.633212,
		-0.025943, -0.923680, -0.382287,
		0.692809, 0.259070, -0.672978,
		33.812347, 32.743645, 50.119556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754986, 31.949135, 50.564854>,  <33.327381, 32.562298, 50.590641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754986, 31.949135, 50.564854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957199, 32.271431, 50.441422>,  <34.078526, 32.464809, 50.367363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957199, 32.271431, 50.441422>,  <33.754986, 31.949135, 50.564854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957199, 32.271431, 50.441422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732892, -0.212279, 0.646380,
		0.455310, -0.552919, -0.697834,
		0.505532, 0.805741, -0.308577,
		34.108860, 32.513153, 50.348846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509399, 31.802210, 50.514046>,  <33.754986, 31.949135, 50.564854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509399, 31.802210, 50.514046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441971, 32.191578, 50.576065>,  <34.401512, 32.425198, 50.613277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441971, 32.191578, 50.576065>,  <34.509399, 31.802210, 50.514046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441971, 32.191578, 50.576065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685206, 0.002648, 0.728344,
		0.708573, 0.229020, -0.667439,
		-0.168572, 0.973418, 0.155050,
		34.391399, 32.483604, 50.622581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184669, 32.075150, 50.599712>,  <34.509399, 31.802210, 50.514046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184669, 32.075150, 50.599712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916763, 32.306534, 50.785961>,  <34.756020, 32.445366, 50.897709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916763, 32.306534, 50.785961>,  <35.184669, 32.075150, 50.599712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916763, 32.306534, 50.785961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443825, -0.190878, 0.875548,
		0.595346, 0.793064, -0.128892,
		-0.669763, 0.578459, 0.465620,
		34.715836, 32.480072, 50.925648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627815, 32.373844, 51.135612>,  <35.184669, 32.075150, 50.599712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627815, 32.373844, 51.135612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268135, 32.478977, 51.275532>,  <35.052326, 32.542057, 51.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268135, 32.478977, 51.275532>,  <35.627815, 32.373844, 51.135612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268135, 32.478977, 51.275532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217217, -0.425832, 0.878342,
		0.379815, 0.865786, 0.325815,
		-0.899198, 0.262835, 0.349800,
		34.998375, 32.557827, 51.380470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719994, 32.731941, 51.762325>,  <35.627815, 32.373844, 51.135612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719994, 32.731941, 51.762325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345810, 32.590656, 51.767391>,  <35.121300, 32.505886, 51.770432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345810, 32.590656, 51.767391>,  <35.719994, 32.731941, 51.762325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345810, 32.590656, 51.767391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130985, -0.313193, 0.940613,
		-0.328267, 0.881563, 0.339244,
		-0.935459, -0.353209, 0.012661,
		35.065174, 32.484695, 51.771191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344452, 33.139553, 52.276764>,  <35.719994, 32.731941, 51.762325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344452, 33.139553, 52.276764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196739, 32.772480, 52.218113>,  <35.108112, 32.552238, 52.182922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196739, 32.772480, 52.218113>,  <35.344452, 33.139553, 52.276764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196739, 32.772480, 52.218113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035460, -0.143748, 0.988979,
		-0.928642, 0.370408, 0.020542,
		-0.369278, -0.917679, -0.146626,
		35.085957, 32.497177, 52.174126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772449, 33.121620, 52.543755>,  <35.344452, 33.139553, 52.276764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772449, 33.121620, 52.543755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932919, 32.755226, 52.541519>,  <35.029198, 32.535389, 52.540180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932919, 32.755226, 52.541519>,  <34.772449, 33.121620, 52.543755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932919, 32.755226, 52.541519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205597, -0.095982, 0.973918,
		-0.892633, -0.389557, -0.226830,
		0.401169, -0.915987, -0.005585,
		35.053268, 32.480431, 52.539845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308533, 32.587795, 53.016178>,  <34.772449, 33.121620, 52.543755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308533, 32.587795, 53.016178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692059, 32.484497, 52.968887>,  <34.922176, 32.422520, 52.940514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692059, 32.484497, 52.968887>,  <34.308533, 32.587795, 53.016178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692059, 32.484497, 52.968887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071423, -0.183659, 0.980392,
		-0.274898, -0.948460, -0.157650,
		0.958817, -0.258249, -0.118229,
		34.979702, 32.407024, 52.933418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569683, 32.616383, 53.623047>,  <34.308533, 32.587795, 53.016178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569683, 32.616383, 53.623047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179440, 32.565495, 53.551491>,  <33.945293, 32.534962, 53.508556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179440, 32.565495, 53.551491>,  <34.569683, 32.616383, 53.623047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179440, 32.565495, 53.551491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186319, -0.910809, -0.368391,
		-0.116071, -0.392736, 0.912297,
		-0.975609, -0.127219, -0.178893,
		33.886757, 32.527328, 53.497822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362717, 32.012852, 53.952709>,  <34.569683, 32.616383, 53.623047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362717, 32.012852, 53.952709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133415, 32.102913, 53.637573>,  <33.995834, 32.156948, 53.448494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133415, 32.102913, 53.637573>,  <34.362717, 32.012852, 53.952709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133415, 32.102913, 53.637573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177107, -0.904730, -0.387423,
		-0.800007, -0.361624, 0.478766,
		-0.573256, 0.225149, -0.787836,
		33.961437, 32.170456, 53.401222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917099, 31.444588, 53.710407>,  <34.362717, 32.012852, 53.952709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917099, 31.444588, 53.710407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967724, 31.681334, 53.391991>,  <33.998100, 31.823381, 53.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967724, 31.681334, 53.391991>,  <33.917099, 31.444588, 53.710407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967724, 31.681334, 53.391991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187152, -0.802328, -0.566783,
		-0.974144, -0.077246, -0.212315,
		0.126564, 0.591863, -0.796040,
		34.005692, 31.858892, 53.153179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814419, 30.885401, 54.178871>,  <33.917099, 31.444588, 53.710407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814419, 30.885401, 54.178871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124306, 30.735636, 54.382687>,  <34.310238, 30.645777, 54.504974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124306, 30.735636, 54.382687>,  <33.814419, 30.885401, 54.178871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124306, 30.735636, 54.382687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288468, -0.507809, -0.811737,
		0.562671, 0.775852, -0.285403,
		0.774718, -0.374411, 0.509538,
		34.356720, 30.623312, 54.535549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486683, 30.996778, 53.820549>,  <33.814419, 30.885401, 54.178871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486683, 30.996778, 53.820549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559834, 30.667147, 54.035007>,  <34.603725, 30.469368, 54.163681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559834, 30.667147, 54.035007>,  <34.486683, 30.996778, 53.820549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559834, 30.667147, 54.035007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213576, -0.499016, -0.839862,
		0.959656, 0.268101, 0.084744,
		0.182880, -0.824078, 0.536144,
		34.614697, 30.419924, 54.195850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241890, 30.924934, 53.983131>,  <34.486683, 30.996778, 53.820549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241890, 30.924934, 53.983131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301819, 30.531681, 53.941181>,  <35.337776, 30.295729, 53.916012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301819, 30.531681, 53.941181>,  <35.241890, 30.924934, 53.983131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301819, 30.531681, 53.941181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252598, 0.140617, -0.957299,
		0.955901, 0.116937, 0.269406,
		0.149827, -0.983134, -0.104878,
		35.346767, 30.236740, 53.909718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880306, 30.607349, 53.634647>,  <35.241890, 30.924934, 53.983131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880306, 30.607349, 53.634647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595612, 30.331123, 53.583199>,  <35.424793, 30.165388, 53.552330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595612, 30.331123, 53.583199>,  <35.880306, 30.607349, 53.634647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595612, 30.331123, 53.583199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113389, 0.067754, -0.991238,
		0.693231, -0.720088, 0.030079,
		-0.711740, -0.690567, -0.128619,
		35.382088, 30.123953, 53.544613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052208, 30.051392, 53.140888>,  <35.880306, 30.607349, 53.634647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052208, 30.051392, 53.140888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652557, 30.067705, 53.137333>,  <35.412766, 30.077494, 53.135201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652557, 30.067705, 53.137333>,  <36.052208, 30.051392, 53.140888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652557, 30.067705, 53.137333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007212, -0.041114, -0.999128,
		-0.041114, -0.998322, 0.040784,
		0.999128, -0.040784, 0.008890,
		35.352818, 30.079941, 53.134666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849274, 29.520449, 52.742062>,  <36.052208, 30.051392, 53.140888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849274, 29.520449, 52.742062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592861, 29.827169, 52.728794>,  <35.439014, 30.011202, 52.720833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592861, 29.827169, 52.728794>,  <35.849274, 29.520449, 52.742062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592861, 29.827169, 52.728794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066469, -0.098511, -0.992914,
		-0.764634, -0.634281, 0.114117,
		-0.641028, 0.766800, -0.033165,
		35.400551, 30.057209, 52.718845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483746, 29.324852, 52.247501>,  <35.849274, 29.520449, 52.742062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483746, 29.324852, 52.247501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389889, 29.712246, 52.280926>,  <35.333572, 29.944681, 52.300980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389889, 29.712246, 52.280926>,  <35.483746, 29.324852, 52.247501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389889, 29.712246, 52.280926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102785, 0.060765, -0.992846,
		-0.966632, -0.241554, 0.085287,
		-0.234644, 0.968483, 0.083565,
		35.319496, 30.002790, 52.305996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892334, 29.321060, 51.920689>,  <35.483746, 29.324852, 52.247501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892334, 29.321060, 51.920689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027229, 29.697296, 51.904877>,  <35.108166, 29.923038, 51.895390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027229, 29.697296, 51.904877>,  <34.892334, 29.321060, 51.920689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027229, 29.697296, 51.904877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068267, -0.017450, -0.997514,
		-0.938941, 0.339098, 0.058327,
		0.337238, 0.940589, -0.039534,
		35.128399, 29.979473, 51.893017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539093, 29.681309, 51.334839>,  <34.892334, 29.321060, 51.920689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539093, 29.681309, 51.334839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836216, 29.939236, 51.406891>,  <35.014488, 30.093992, 51.450123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836216, 29.939236, 51.406891>,  <34.539093, 29.681309, 51.334839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836216, 29.939236, 51.406891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174221, 0.073611, -0.981951,
		-0.646438, 0.760784, -0.057661,
		0.742808, 0.644817, 0.180130,
		35.059059, 30.132681, 51.460930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450981, 30.301643, 50.921864>,  <34.539093, 29.681309, 51.334839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450981, 30.301643, 50.921864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840195, 30.289858, 51.013367>,  <35.073723, 30.282787, 51.068268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840195, 30.289858, 51.013367>,  <34.450981, 30.301643, 50.921864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840195, 30.289858, 51.013367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230647, 0.126656, -0.964759,
		-0.000548, 0.991509, 0.130037,
		0.973037, -0.029464, 0.228758,
		35.132107, 30.281019, 51.081993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798832, 30.853926, 50.609642>,  <34.450981, 30.301643, 50.921864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798832, 30.853926, 50.609642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085258, 30.578964, 50.658169>,  <35.257114, 30.413986, 50.687286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085258, 30.578964, 50.658169>,  <34.798832, 30.853926, 50.609642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085258, 30.578964, 50.658169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290625, 0.135577, -0.947183,
		0.634650, 0.713508, 0.296860,
		0.716070, -0.687405, 0.121320,
		35.300079, 30.372744, 50.694565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340290, 31.147430, 50.317062>,  <34.798832, 30.853926, 50.609642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340290, 31.147430, 50.317062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445805, 30.762186, 50.338329>,  <35.509113, 30.531038, 50.351089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445805, 30.762186, 50.338329>,  <35.340290, 31.147430, 50.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445805, 30.762186, 50.338329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329656, 0.038212, -0.943327,
		0.906499, 0.266369, 0.327576,
		0.263791, -0.963113, 0.053171,
		35.524940, 30.473251, 50.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965084, 31.072718, 50.037594>,  <35.340290, 31.147430, 50.317062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965084, 31.072718, 50.037594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815590, 30.702091, 50.020630>,  <35.725891, 30.479715, 50.010452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815590, 30.702091, 50.020630>,  <35.965084, 31.072718, 50.037594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815590, 30.702091, 50.020630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344451, -0.096192, -0.933863,
		0.861205, -0.363628, 0.355106,
		-0.373738, -0.926564, -0.042411,
		35.703468, 30.424122, 50.007908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467499, 30.650076, 49.711967>,  <35.965084, 31.072718, 50.037594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467499, 30.650076, 49.711967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137478, 30.433781, 49.646381>,  <35.939465, 30.304005, 49.607029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137478, 30.433781, 49.646381>,  <36.467499, 30.650076, 49.711967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137478, 30.433781, 49.646381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237666, -0.068834, -0.968905,
		0.512637, -0.838370, 0.185307,
		-0.825056, -0.540737, -0.163965,
		35.889961, 30.271559, 49.597191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762329, 30.126848, 49.258343>,  <36.467499, 30.650076, 49.711967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762329, 30.126848, 49.258343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363323, 30.129984, 49.230328>,  <36.123920, 30.131866, 49.213520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363323, 30.129984, 49.230328>,  <36.762329, 30.126848, 49.258343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363323, 30.129984, 49.230328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068560, -0.122133, -0.990143,
		-0.016314, -0.992483, 0.121292,
		-0.997514, 0.007838, -0.070037,
		36.064068, 30.132336, 49.209316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668694, 29.701647, 48.727905>,  <36.762329, 30.126848, 49.258343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668694, 29.701647, 48.727905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335262, 29.922483, 48.735260>,  <36.135204, 30.054985, 48.739674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335262, 29.922483, 48.735260>,  <36.668694, 29.701647, 48.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335262, 29.922483, 48.735260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029721, -0.011596, -0.999491,
		-0.551595, -0.833704, 0.026075,
		-0.833582, 0.552089, 0.018382,
		36.085186, 30.088110, 48.740776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195530, 29.340878, 48.330727>,  <36.668694, 29.701647, 48.727905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195530, 29.340878, 48.330727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055798, 29.715637, 48.325172>,  <35.971958, 29.940493, 48.321842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055798, 29.715637, 48.325172>,  <36.195530, 29.340878, 48.330727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055798, 29.715637, 48.325172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077552, 0.014144, -0.996888,
		-0.933785, -0.349320, -0.077599,
		-0.349330, 0.936897, -0.013883,
		35.951000, 29.996706, 48.321007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711407, 29.369001, 47.826099>,  <36.195530, 29.340878, 48.330727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711407, 29.369001, 47.826099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798618, 29.754299, 47.888866>,  <35.850945, 29.985477, 47.926529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798618, 29.754299, 47.888866>,  <35.711407, 29.369001, 47.826099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798618, 29.754299, 47.888866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089897, 0.179928, -0.979563,
		-0.971793, 0.199466, 0.125822,
		0.218028, 0.963244, 0.156921,
		35.864025, 30.043272, 47.935944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265263, 29.747839, 47.396523>,  <35.711407, 29.369001, 47.826099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265263, 29.747839, 47.396523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555908, 30.011154, 47.475193>,  <35.730297, 30.169144, 47.522396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555908, 30.011154, 47.475193>,  <35.265263, 29.747839, 47.396523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555908, 30.011154, 47.475193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126317, 0.153384, -0.980060,
		-0.675330, 0.736973, 0.028298,
		0.726618, 0.658289, 0.196676,
		35.773895, 30.208641, 47.534195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049404, 30.354904, 47.114513>,  <35.265263, 29.747839, 47.396523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049404, 30.354904, 47.114513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449078, 30.341866, 47.123985>,  <35.688881, 30.334042, 47.129669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449078, 30.341866, 47.123985>,  <35.049404, 30.354904, 47.114513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449078, 30.341866, 47.123985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025545, 0.057896, -0.997996,
		0.031162, 0.997790, 0.058682,
		0.999188, -0.032599, 0.023684,
		35.748833, 30.332087, 47.131092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279736, 30.638407, 46.479801>,  <35.049404, 30.354904, 47.114513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279736, 30.638407, 46.479801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616474, 30.472652, 46.618122>,  <35.818516, 30.373199, 46.701115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616474, 30.472652, 46.618122>,  <35.279736, 30.638407, 46.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616474, 30.472652, 46.618122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315998, -0.140978, -0.938227,
		0.437537, 0.899117, 0.012262,
		0.841847, -0.414384, 0.345802,
		35.869030, 30.348337, 46.721863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709370, 31.039635, 46.167362>,  <35.279736, 30.638407, 46.479801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709370, 31.039635, 46.167362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868374, 30.681553, 46.247948>,  <35.963776, 30.466703, 46.296299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868374, 30.681553, 46.247948>,  <35.709370, 31.039635, 46.167362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868374, 30.681553, 46.247948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118902, -0.167455, -0.978683,
		0.909860, 0.412994, 0.039877,
		0.397513, -0.895206, 0.201467,
		35.987629, 30.412991, 46.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382336, 31.091003, 45.879841>,  <35.709370, 31.039635, 46.167362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382336, 31.091003, 45.879841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283710, 30.703684, 45.895847>,  <36.224537, 30.471292, 45.905453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283710, 30.703684, 45.895847>,  <36.382336, 31.091003, 45.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283710, 30.703684, 45.895847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156938, -0.080640, -0.984311,
		0.956336, -0.236411, 0.171846,
		-0.246559, -0.968301, 0.040017,
		36.209743, 30.413193, 45.907852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800583, 30.812490, 45.395233>,  <36.382336, 31.091003, 45.879841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800583, 30.812490, 45.395233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542355, 30.511679, 45.448437>,  <36.387417, 30.331192, 45.480358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542355, 30.511679, 45.448437>,  <36.800583, 30.812490, 45.395233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542355, 30.511679, 45.448437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020320, -0.157188, -0.987360,
		0.763430, -0.640114, 0.086195,
		-0.645571, -0.752028, 0.133009,
		36.348682, 30.286070, 45.488338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026474, 30.288002, 44.959732>,  <36.800583, 30.812490, 45.395233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026474, 30.288002, 44.959732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630939, 30.249660, 45.005371>,  <36.393620, 30.226656, 45.032753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630939, 30.249660, 45.005371>,  <37.026474, 30.288002, 44.959732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630939, 30.249660, 45.005371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072972, -0.356101, -0.931594,
		0.129927, -0.929518, 0.345130,
		-0.988835, -0.095854, 0.114095,
		36.334290, 30.220903, 45.039600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833237, 29.641108, 44.598354>,  <37.026474, 30.288002, 44.959732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833237, 29.641108, 44.598354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481251, 29.828714, 44.628502>,  <36.270058, 29.941278, 44.646591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481251, 29.828714, 44.628502>,  <36.833237, 29.641108, 44.598354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481251, 29.828714, 44.628502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231771, -0.285406, -0.929960,
		-0.414657, -0.835803, 0.359852,
		-0.879967, 0.469017, 0.075370,
		36.217262, 29.969419, 44.651112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346035, 29.163483, 44.331238>,  <36.833237, 29.641108, 44.598354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346035, 29.163483, 44.331238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141418, 29.507038, 44.321201>,  <36.018646, 29.713171, 44.315178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141418, 29.507038, 44.321201>,  <36.346035, 29.163483, 44.331238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141418, 29.507038, 44.321201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429655, -0.280966, -0.858169,
		-0.744122, -0.428212, 0.512754,
		-0.511545, 0.858890, -0.025090,
		35.987953, 29.764706, 44.313675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693027, 28.943890, 44.217251>,  <36.346035, 29.163483, 44.331238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693027, 28.943890, 44.217251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744400, 29.319811, 44.090588>,  <35.775223, 29.545364, 44.014587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744400, 29.319811, 44.090588>,  <35.693027, 28.943890, 44.217251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744400, 29.319811, 44.090588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384688, -0.247094, -0.889359,
		-0.914068, 0.236035, 0.329798,
		0.128428, 0.939804, -0.316661,
		35.782928, 29.601751, 43.995590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040810, 29.054449, 43.805294>,  <35.693027, 28.943890, 44.217251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040810, 29.054449, 43.805294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267460, 29.367191, 43.701263>,  <35.403450, 29.554836, 43.638847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267460, 29.367191, 43.701263>,  <35.040810, 29.054449, 43.805294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267460, 29.367191, 43.701263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415476, -0.001463, -0.909603,
		-0.711560, 0.623456, 0.324014,
		0.566624, 0.781857, -0.260072,
		35.437447, 29.601748, 43.623241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587204, 29.666975, 43.567848>,  <35.040810, 29.054449, 43.805294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587204, 29.666975, 43.567848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952408, 29.712284, 43.411087>,  <35.171528, 29.739470, 43.317032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952408, 29.712284, 43.411087>,  <34.587204, 29.666975, 43.567848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952408, 29.712284, 43.411087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400872, 0.071035, -0.913376,
		-0.075623, 0.991021, 0.110264,
		0.913008, 0.113274, -0.391900,
		35.226311, 29.746265, 43.293518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527714, 30.230528, 43.220966>,  <34.587204, 29.666975, 43.567848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527714, 30.230528, 43.220966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829243, 30.021765, 43.061283>,  <35.010159, 29.896507, 42.965473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829243, 30.021765, 43.061283>,  <34.527714, 30.230528, 43.220966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829243, 30.021765, 43.061283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331003, 0.223210, -0.916850,
		0.567620, 0.823278, -0.004494,
		0.753820, -0.521910, -0.399206,
		35.055389, 29.865192, 42.941521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992092, 30.665491, 42.939156>,  <34.527714, 30.230528, 43.220966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992092, 30.665491, 42.939156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063541, 30.338596, 42.719986>,  <35.106411, 30.142460, 42.588486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063541, 30.338596, 42.719986>,  <34.992092, 30.665491, 42.939156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063541, 30.338596, 42.719986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262813, 0.497016, -0.826986,
		0.948168, 0.291723, -0.126000,
		0.178627, -0.817235, -0.547923,
		35.117130, 30.093426, 42.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321457, 30.892645, 42.280491>,  <34.992092, 30.665491, 42.939156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321457, 30.892645, 42.280491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203339, 30.520369, 42.194130>,  <35.132469, 30.297003, 42.142315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203339, 30.520369, 42.194130>,  <35.321457, 30.892645, 42.280491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203339, 30.520369, 42.194130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314954, 0.308173, -0.897682,
		0.902001, -0.197079, -0.384127,
		-0.295292, -0.930693, -0.215901,
		35.114750, 30.241161, 42.129360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660763, 30.681208, 41.662350>,  <35.321457, 30.892645, 42.280491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660763, 30.681208, 41.662350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348015, 30.434229, 41.696857>,  <35.160366, 30.286041, 41.717560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348015, 30.434229, 41.696857>,  <35.660763, 30.681208, 41.662350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348015, 30.434229, 41.696857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284223, 0.229861, -0.930796,
		0.554890, -0.752277, -0.355214,
		-0.781866, -0.617449, 0.086267,
		35.113457, 30.248995, 41.722736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639553, 30.454153, 41.137039>,  <35.660763, 30.681208, 41.662350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639553, 30.454153, 41.137039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264515, 30.372541, 41.249664>,  <35.039490, 30.323574, 41.317242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264515, 30.372541, 41.249664>,  <35.639553, 30.454153, 41.137039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264515, 30.372541, 41.249664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310285, 0.125453, -0.942329,
		0.156944, -0.970892, -0.180933,
		-0.937599, -0.204034, 0.281564,
		34.983234, 30.311333, 41.334133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387135, 30.012693, 40.734840>,  <35.639553, 30.454153, 41.137039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387135, 30.012693, 40.734840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035172, 30.152405, 40.863689>,  <34.823994, 30.236231, 40.940998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035172, 30.152405, 40.863689>,  <35.387135, 30.012693, 40.734840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035172, 30.152405, 40.863689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251685, 0.232402, -0.939491,
		-0.403007, -0.907741, -0.116584,
		-0.879909, 0.349279, 0.322124,
		34.771198, 30.257189, 40.960327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755665, 29.785692, 40.270718>,  <35.387135, 30.012693, 40.734840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755665, 29.785692, 40.270718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586643, 30.090601, 40.466835>,  <34.485229, 30.273546, 40.584507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586643, 30.090601, 40.466835>,  <34.755665, 29.785692, 40.270718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586643, 30.090601, 40.466835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446081, 0.295989, -0.844632,
		-0.788960, -0.575615, 0.214963,
		-0.422556, 0.762272, 0.490294,
		34.459877, 30.319283, 40.613922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088047, 29.819845, 39.904049>,  <34.755665, 29.785692, 40.270718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088047, 29.819845, 39.904049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160408, 30.158010, 40.105068>,  <34.203823, 30.360909, 40.225681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160408, 30.158010, 40.105068>,  <34.088047, 29.819845, 39.904049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160408, 30.158010, 40.105068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401574, 0.529935, -0.746932,
		-0.897782, -0.066689, 0.435362,
		0.180902, 0.845412, 0.502547,
		34.214680, 30.411634, 40.255833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511108, 30.202639, 39.964508>,  <34.088047, 29.819845, 39.904049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511108, 30.202639, 39.964508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812378, 30.464823, 39.986778>,  <33.993141, 30.622133, 40.000141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812378, 30.464823, 39.986778>,  <33.511108, 30.202639, 39.964508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812378, 30.464823, 39.986778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391480, 0.514641, -0.762816,
		-0.528651, 0.552736, 0.644214,
		0.753174, 0.655460, 0.055680,
		34.038330, 30.661461, 40.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178627, 30.797089, 39.684135>,  <33.511108, 30.202639, 39.964508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178627, 30.797089, 39.684135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578068, 30.817698, 39.688942>,  <33.817730, 30.830063, 39.691826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578068, 30.817698, 39.688942>,  <33.178627, 30.797089, 39.684135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578068, 30.817698, 39.688942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013215, 0.462932, -0.886295,
		-0.051227, 0.884895, 0.462964,
		0.998600, 0.051520, 0.012021,
		33.877647, 30.833153, 39.692547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275677, 31.449701, 39.575043>,  <33.178627, 30.797089, 39.684135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275677, 31.449701, 39.575043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626324, 31.273096, 39.498516>,  <33.836712, 31.167133, 39.452599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626324, 31.273096, 39.498516>,  <33.275677, 31.449701, 39.575043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626324, 31.273096, 39.498516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022098, 0.434124, -0.900582,
		0.480673, 0.785242, 0.390319,
		0.876621, -0.441511, -0.191320,
		33.889309, 31.140642, 39.441120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719608, 32.005871, 39.382164>,  <33.275677, 31.449701, 39.575043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719608, 32.005871, 39.382164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854889, 31.662689, 39.227486>,  <33.936058, 31.456781, 39.134678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854889, 31.662689, 39.227486>,  <33.719608, 32.005871, 39.382164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854889, 31.662689, 39.227486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010224, 0.407538, -0.913131,
		0.941017, 0.312780, 0.129060,
		0.338206, -0.857952, -0.386698,
		33.956352, 31.405304, 39.111477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240494, 32.237614, 38.911488>,  <33.719608, 32.005871, 39.382164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240494, 32.237614, 38.911488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153610, 31.865158, 38.794327>,  <34.101479, 31.641684, 38.724030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153610, 31.865158, 38.794327>,  <34.240494, 32.237614, 38.911488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153610, 31.865158, 38.794327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102882, 0.276556, -0.955475,
		0.970688, -0.237674, 0.035727,
		-0.217211, -0.931143, -0.292902,
		34.088448, 31.585815, 38.706455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722290, 32.072140, 38.385994>,  <34.240494, 32.237614, 38.911488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722290, 32.072140, 38.385994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408112, 31.834291, 38.317303>,  <34.219604, 31.691582, 38.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408112, 31.834291, 38.317303>,  <34.722290, 32.072140, 38.385994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408112, 31.834291, 38.317303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097406, 0.155241, -0.983063,
		0.611213, -0.788873, -0.064014,
		-0.785449, -0.594626, -0.171726,
		34.172478, 31.655905, 38.265785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469955, 31.848045, 38.390579>,  <34.722290, 32.072140, 38.385994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469955, 31.848045, 38.390579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727970, 31.580898, 38.242054>,  <35.882778, 31.420610, 38.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727970, 31.580898, 38.242054>,  <35.469955, 31.848045, 38.390579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727970, 31.580898, 38.242054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373177, -0.148714, 0.915764,
		-0.666829, -0.729271, 0.153307,
		0.645041, -0.667869, -0.371314,
		35.921482, 31.380537, 38.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458920, 31.262297, 38.890240>,  <35.469955, 31.848045, 38.390579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458920, 31.262297, 38.890240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795631, 31.290018, 38.676098>,  <35.997658, 31.306652, 38.547611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795631, 31.290018, 38.676098>,  <35.458920, 31.262297, 38.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795631, 31.290018, 38.676098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539128, -0.158182, 0.827236,
		-0.027350, -0.984975, -0.170520,
		0.841780, 0.069307, -0.535354,
		36.048164, 31.310810, 38.515491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947807, 30.734377, 38.977062>,  <35.458920, 31.262297, 38.890240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947807, 30.734377, 38.977062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170235, 31.038610, 38.843018>,  <36.303692, 31.221151, 38.762589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170235, 31.038610, 38.843018>,  <35.947807, 30.734377, 38.977062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170235, 31.038610, 38.843018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627182, -0.119417, 0.769664,
		0.545377, -0.638161, -0.543428,
		0.556064, 0.760586, -0.335116,
		36.337055, 31.266787, 38.742481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672516, 30.562738, 38.918167>,  <35.947807, 30.734377, 38.977062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672516, 30.562738, 38.918167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683868, 30.960745, 38.956406>,  <36.690681, 31.199549, 38.979347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683868, 30.960745, 38.956406>,  <36.672516, 30.562738, 38.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683868, 30.960745, 38.956406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686537, -0.088914, 0.721638,
		0.726540, 0.045145, -0.685639,
		0.028385, 0.995016, 0.095593,
		36.692383, 31.259249, 38.985085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346703, 30.775167, 38.928444>,  <36.672516, 30.562738, 38.918167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346703, 30.775167, 38.928444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174210, 31.094688, 39.096233>,  <37.070713, 31.286400, 39.196907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174210, 31.094688, 39.096233>,  <37.346703, 30.775167, 38.928444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174210, 31.094688, 39.096233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631221, -0.065093, 0.772867,
		0.644671, 0.598065, -0.476149,
		-0.431230, 0.798800, 0.419475,
		37.044842, 31.334328, 39.222076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895821, 31.277071, 39.079632>,  <37.346703, 30.775167, 38.928444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895821, 31.277071, 39.079632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583694, 31.335958, 39.322758>,  <37.396420, 31.371290, 39.468632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583694, 31.335958, 39.322758>,  <37.895821, 31.277071, 39.079632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583694, 31.335958, 39.322758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625375, 0.177811, 0.759796,
		0.003780, 0.972990, -0.230815,
		-0.780315, 0.147218, 0.607812,
		37.349602, 31.380123, 39.505100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176167, 31.779362, 39.523003>,  <37.895821, 31.277071, 39.079632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176167, 31.779362, 39.523003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832916, 31.682131, 39.703903>,  <37.626965, 31.623793, 39.812443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832916, 31.682131, 39.703903>,  <38.176167, 31.779362, 39.523003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832916, 31.682131, 39.703903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478346, -0.058439, 0.876225,
		-0.186559, 0.968245, 0.166422,
		-0.858126, -0.243075, 0.452254,
		37.575478, 31.609209, 39.839581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112400, 32.207188, 40.015671>,  <38.176167, 31.779362, 39.523003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112400, 32.207188, 40.015671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901619, 31.884575, 40.122871>,  <37.775150, 31.691008, 40.187191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901619, 31.884575, 40.122871>,  <38.112400, 32.207188, 40.015671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901619, 31.884575, 40.122871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435293, 0.014717, 0.900169,
		-0.729959, 0.591007, 0.343322,
		-0.526953, -0.806532, 0.268004,
		37.743534, 31.642614, 40.203274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839321, 32.401756, 40.733994>,  <38.112400, 32.207188, 40.015671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839321, 32.401756, 40.733994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810242, 32.003147, 40.717716>,  <37.792793, 31.763981, 40.707951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810242, 32.003147, 40.717716>,  <37.839321, 32.401756, 40.733994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810242, 32.003147, 40.717716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495176, -0.071483, 0.865847,
		-0.865746, 0.042792, 0.498652,
		-0.072696, -0.996523, -0.040696,
		37.788433, 31.704189, 40.705509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543808, 32.205219, 41.339039>,  <37.839321, 32.401756, 40.733994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543808, 32.205219, 41.339039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752869, 31.892357, 41.203358>,  <37.878307, 31.704639, 41.121948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752869, 31.892357, 41.203358>,  <37.543808, 32.205219, 41.339039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752869, 31.892357, 41.203358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394605, -0.130744, 0.909501,
		-0.755724, -0.609206, 0.240310,
		0.522655, -0.782159, -0.339202,
		37.909664, 31.657709, 41.101597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384148, 31.638062, 41.811234>,  <37.543808, 32.205219, 41.339039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384148, 31.638062, 41.811234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724579, 31.523445, 41.635254>,  <37.928837, 31.454676, 41.529667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724579, 31.523445, 41.635254>,  <37.384148, 31.638062, 41.811234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724579, 31.523445, 41.635254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424259, -0.118308, 0.897779,
		-0.309302, -0.950735, 0.020879,
		0.851079, -0.286543, -0.439950,
		37.979904, 31.437483, 41.503269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409794, 30.996204, 42.100254>,  <37.384148, 31.638062, 41.811234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409794, 30.996204, 42.100254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773399, 31.078005, 41.954994>,  <37.991562, 31.127085, 41.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773399, 31.078005, 41.954994>,  <37.409794, 30.996204, 42.100254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773399, 31.078005, 41.954994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403992, -0.218242, 0.888347,
		0.102412, -0.954228, -0.281000,
		0.909012, 0.204499, -0.363150,
		38.046104, 31.139355, 41.846050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747467, 30.553343, 42.432987>,  <37.409794, 30.996204, 42.100254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747467, 30.553343, 42.432987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039837, 30.799185, 42.314323>,  <38.215260, 30.946690, 42.243126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039837, 30.799185, 42.314323>,  <37.747467, 30.553343, 42.432987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039837, 30.799185, 42.314323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412115, -0.051016, 0.909703,
		0.543972, -0.787185, -0.290576,
		0.730928, 0.614603, -0.296659,
		38.259117, 30.983566, 42.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345840, 30.179190, 42.569427>,  <37.747467, 30.553343, 42.432987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345840, 30.179190, 42.569427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420517, 30.572153, 42.571308>,  <38.465324, 30.807930, 42.572437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420517, 30.572153, 42.571308>,  <38.345840, 30.179190, 42.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420517, 30.572153, 42.571308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352847, -0.071517, 0.932944,
		0.916867, -0.172513, -0.359991,
		0.186691, 0.982408, 0.004701,
		38.476524, 30.866875, 42.572720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029884, 30.218473, 42.863285>,  <38.345840, 30.179190, 42.569427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029884, 30.218473, 42.863285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873669, 30.582737, 42.917221>,  <38.779942, 30.801294, 42.949581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873669, 30.582737, 42.917221>,  <39.029884, 30.218473, 42.863285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873669, 30.582737, 42.917221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080163, -0.112275, 0.990439,
		0.917090, 0.397612, -0.029154,
		-0.390537, 0.910659, 0.134840,
		38.756508, 30.855934, 42.957672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564804, 30.620272, 43.173187>,  <39.029884, 30.218473, 42.863285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564804, 30.620272, 43.173187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215736, 30.804863, 43.237049>,  <39.006294, 30.915617, 43.275368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215736, 30.804863, 43.237049>,  <39.564804, 30.620272, 43.173187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215736, 30.804863, 43.237049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175097, -0.009488, 0.984506,
		0.455841, 0.887102, -0.072523,
		-0.872668, 0.461477, 0.159653,
		38.953938, 30.943306, 43.284946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811363, 31.113522, 43.689892>,  <39.564804, 30.620272, 43.173187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811363, 31.113522, 43.689892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412003, 31.092196, 43.697468>,  <39.172386, 31.079399, 43.702015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412003, 31.092196, 43.697468>,  <39.811363, 31.113522, 43.689892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412003, 31.092196, 43.697468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009248, 0.176446, 0.984267,
		-0.055819, 0.982865, -0.175671,
		-0.998398, -0.053317, 0.018938,
		39.112484, 31.076200, 43.703148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577946, 31.657091, 44.028160>,  <39.811363, 31.113522, 43.689892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577946, 31.657091, 44.028160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297359, 31.376389, 44.077938>,  <39.129009, 31.207968, 44.107803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297359, 31.376389, 44.077938>,  <39.577946, 31.657091, 44.028160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297359, 31.376389, 44.077938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037258, 0.138266, 0.989694,
		-0.711731, 0.698870, -0.070842,
		-0.701463, -0.701757, 0.124446,
		39.086922, 31.165861, 44.115273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098003, 31.934473, 44.611897>,  <39.577946, 31.657091, 44.028160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098003, 31.934473, 44.611897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005310, 31.548523, 44.562401>,  <38.949692, 31.316952, 44.532703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005310, 31.548523, 44.562401>,  <39.098003, 31.934473, 44.611897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005310, 31.548523, 44.562401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193219, -0.079013, 0.977969,
		-0.953396, 0.250541, -0.168122,
		-0.231737, -0.964876, -0.123740,
		38.935787, 31.259060, 44.525280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528172, 31.868095, 44.912205>,  <39.098003, 31.934473, 44.611897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528172, 31.868095, 44.912205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673618, 31.495481, 44.914307>,  <38.760887, 31.271914, 44.915569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673618, 31.495481, 44.914307>,  <38.528172, 31.868095, 44.912205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673618, 31.495481, 44.914307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136067, -0.047526, 0.989559,
		-0.921556, -0.360539, -0.144033,
		0.363620, -0.931533, 0.005259,
		38.782703, 31.216022, 44.915886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123310, 31.472647, 45.332539>,  <38.528172, 31.868095, 44.912205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123310, 31.472647, 45.332539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450077, 31.241947, 45.333328>,  <38.646137, 31.103527, 45.333801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450077, 31.241947, 45.333328>,  <38.123310, 31.472647, 45.332539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450077, 31.241947, 45.333328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135719, -0.188913, 0.972570,
		-0.560556, -0.794779, -0.232602,
		0.816920, -0.576748, 0.001970,
		38.695152, 31.068924, 45.333920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844162, 30.912428, 45.572937>,  <38.123310, 31.472647, 45.332539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844162, 30.912428, 45.572937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237286, 30.901569, 45.645977>,  <38.473160, 30.895054, 45.689800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237286, 30.901569, 45.645977>,  <37.844162, 30.912428, 45.572937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237286, 30.901569, 45.645977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183363, -0.028846, 0.982622,
		-0.021365, -0.999216, -0.033320,
		0.982813, -0.027103, 0.182603,
		38.532127, 30.893425, 45.700756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850899, 30.431887, 46.110466>,  <37.844162, 30.912428, 45.572937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850899, 30.431887, 46.110466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222942, 30.578220, 46.123482>,  <38.446171, 30.666019, 46.131290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222942, 30.578220, 46.123482>,  <37.850899, 30.431887, 46.110466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222942, 30.578220, 46.123482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047874, 0.032922, 0.998311,
		0.364144, -0.930098, 0.048135,
		0.930111, 0.365834, 0.032540,
		38.501976, 30.687971, 46.133244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298443, 29.934200, 46.467762>,  <37.850899, 30.431887, 46.110466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298443, 29.934200, 46.467762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453144, 30.302301, 46.491619>,  <38.545963, 30.523163, 46.505932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453144, 30.302301, 46.491619>,  <38.298443, 29.934200, 46.467762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453144, 30.302301, 46.491619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130527, -0.009392, 0.991400,
		0.912899, -0.391211, 0.116486,
		0.386752, 0.920253, 0.059638,
		38.569168, 30.578377, 46.509510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645660, 29.891512, 47.033855>,  <38.298443, 29.934200, 46.467762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645660, 29.891512, 47.033855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644447, 30.289848, 46.997437>,  <38.643719, 30.528851, 46.975586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644447, 30.289848, 46.997437>,  <38.645660, 29.891512, 47.033855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644447, 30.289848, 46.997437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258108, 0.087186, 0.962174,
		0.966111, 0.026418, 0.256771,
		-0.003032, 0.995842, -0.091050,
		38.643539, 30.588600, 46.970123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919331, 30.060368, 47.699558>,  <38.645660, 29.891512, 47.033855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919331, 30.060368, 47.699558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756840, 30.395016, 47.552559>,  <38.659348, 30.595804, 47.464359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756840, 30.395016, 47.552559>,  <38.919331, 30.060368, 47.699558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756840, 30.395016, 47.552559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042307, 0.384521, 0.922146,
		0.912794, 0.390144, -0.120807,
		-0.406223, 0.836619, -0.367495,
		38.634972, 30.646002, 47.442310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331707, 30.684902, 47.952160>,  <38.919331, 30.060368, 47.699558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331707, 30.684902, 47.952160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956921, 30.782400, 47.852020>,  <38.732048, 30.840899, 47.791935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956921, 30.782400, 47.852020>,  <39.331707, 30.684902, 47.952160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956921, 30.782400, 47.852020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133872, 0.411389, 0.901575,
		0.322745, 0.878264, -0.352829,
		-0.936971, 0.243744, -0.250349,
		38.675831, 30.855524, 47.776917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328564, 31.340967, 48.117764>,  <39.331707, 30.684902, 47.952160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328564, 31.340967, 48.117764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939629, 31.257826, 48.075138>,  <38.706268, 31.207941, 48.049564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939629, 31.257826, 48.075138>,  <39.328564, 31.340967, 48.117764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939629, 31.257826, 48.075138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214809, 0.616557, 0.757439,
		-0.091736, 0.759377, -0.644151,
		-0.972338, -0.207854, -0.106561,
		38.647926, 31.195469, 48.043171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963528, 31.892231, 48.226421>,  <39.328564, 31.340967, 48.117764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963528, 31.892231, 48.226421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662476, 31.632524, 48.270245>,  <38.481846, 31.476700, 48.296539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662476, 31.632524, 48.270245>,  <38.963528, 31.892231, 48.226421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662476, 31.632524, 48.270245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296784, 0.483032, 0.823772,
		-0.587767, 0.587480, -0.556235,
		-0.752629, -0.649267, 0.109555,
		38.436687, 31.437744, 48.303112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397125, 32.362358, 48.346302>,  <38.963528, 31.892231, 48.226421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397125, 32.362358, 48.346302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348862, 32.000053, 48.508801>,  <38.319904, 31.782671, 48.606300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348862, 32.000053, 48.508801>,  <38.397125, 32.362358, 48.346302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348862, 32.000053, 48.508801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253870, 0.423782, 0.869459,
		-0.959683, 0.001770, -0.281077,
		-0.120655, -0.905763, 0.406247,
		38.312664, 31.728325, 48.630676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689365, 32.334801, 48.700352>,  <38.397125, 32.362358, 48.346302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689365, 32.334801, 48.700352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967819, 32.090767, 48.851711>,  <38.134892, 31.944345, 48.942528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967819, 32.090767, 48.851711>,  <37.689365, 32.334801, 48.700352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967819, 32.090767, 48.851711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207043, 0.334084, 0.919522,
		-0.687407, -0.718458, 0.106254,
		0.696136, -0.610087, 0.378403,
		38.176659, 31.907742, 48.965233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419041, 32.357327, 49.343693>,  <37.689365, 32.334801, 48.700352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419041, 32.357327, 49.343693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754379, 32.143730, 49.387581>,  <37.955582, 32.015572, 49.413914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754379, 32.143730, 49.387581>,  <37.419041, 32.357327, 49.343693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754379, 32.143730, 49.387581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051247, 0.277571, 0.959337,
		-0.542731, -0.798630, 0.260065,
		0.838342, -0.533990, 0.109719,
		38.005882, 31.983534, 49.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252342, 31.678843, 49.817265>,  <37.419041, 32.357327, 49.343693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252342, 31.678843, 49.817265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640415, 31.775797, 49.816925>,  <37.873257, 31.833969, 49.816719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640415, 31.775797, 49.816925>,  <37.252342, 31.678843, 49.817265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640415, 31.775797, 49.816925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043072, 0.175861, 0.983472,
		0.238535, -0.954107, 0.181056,
		0.970178, 0.242391, -0.000854,
		37.931469, 31.848513, 49.816669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570377, 31.472860, 50.549400>,  <37.252342, 31.678843, 49.817265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570377, 31.472860, 50.549400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829342, 31.728933, 50.383976>,  <37.984718, 31.882578, 50.284721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829342, 31.728933, 50.383976>,  <37.570377, 31.472860, 50.549400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829342, 31.728933, 50.383976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163571, 0.413268, 0.895798,
		0.744385, -0.647592, 0.162836,
		0.647407, 0.640183, -0.413558,
		38.023563, 31.920988, 50.259907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222980, 31.401649, 50.936291>,  <37.570377, 31.472860, 50.549400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222980, 31.401649, 50.936291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209171, 31.763630, 50.766644>,  <38.200886, 31.980818, 50.664856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209171, 31.763630, 50.766644>,  <38.222980, 31.401649, 50.936291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209171, 31.763630, 50.766644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084361, 0.425491, 0.901022,
		0.995837, -0.004675, -0.091031,
		-0.034521, 0.904950, -0.424114,
		38.198814, 32.035114, 50.639408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723091, 31.863329, 51.275459>,  <38.222980, 31.401649, 50.936291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723091, 31.863329, 51.275459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493305, 32.124344, 51.077797>,  <38.355434, 32.280952, 50.959202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493305, 32.124344, 51.077797>,  <38.723091, 31.863329, 51.275459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493305, 32.124344, 51.077797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026750, 0.618352, 0.785446,
		0.818094, 0.437990, -0.372675,
		-0.574462, 0.652538, -0.494153,
		38.320965, 32.320107, 50.929550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050770, 32.598495, 51.388626>,  <38.723091, 31.863329, 51.275459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050770, 32.598495, 51.388626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669373, 32.655876, 51.282593>,  <38.440533, 32.690304, 51.218971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669373, 32.655876, 51.282593>,  <39.050770, 32.598495, 51.388626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669373, 32.655876, 51.282593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148046, 0.543175, 0.826465,
		0.262544, 0.827275, -0.496677,
		-0.953495, 0.143452, -0.265082,
		38.383324, 32.698914, 51.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931183, 33.065636, 51.886742>,  <39.050770, 32.598495, 51.388626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931183, 33.065636, 51.886742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567719, 33.047943, 51.720669>,  <38.349640, 33.037327, 51.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567719, 33.047943, 51.720669>,  <38.931183, 33.065636, 51.886742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567719, 33.047943, 51.720669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344356, 0.641718, 0.685286,
		0.236117, 0.765664, -0.598337,
		-0.908663, -0.044233, -0.415182,
		38.295120, 33.034672, 51.596115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595470, 33.808601, 51.794449>,  <38.931183, 33.065636, 51.886742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595470, 33.808601, 51.794449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325478, 33.515461, 51.828690>,  <38.163483, 33.339577, 51.849236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325478, 33.515461, 51.828690>,  <38.595470, 33.808601, 51.794449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325478, 33.515461, 51.828690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536194, 0.566898, 0.625398,
		-0.506855, 0.376230, -0.775596,
		-0.674978, -0.732856, 0.085603,
		38.122986, 33.295605, 51.854370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263382, 34.535378, 51.888626>,  <38.595470, 33.808601, 51.794449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263382, 34.535378, 51.888626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501534, 34.842861, 51.795151>,  <38.644424, 35.027351, 51.739063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501534, 34.842861, 51.795151>,  <38.263382, 34.535378, 51.888626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501534, 34.842861, 51.795151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286555, -0.068568, -0.955607,
		-0.750607, 0.635914, 0.179453,
		0.595379, 0.768708, -0.233692,
		38.680149, 35.073475, 51.725044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798645, 35.009922, 51.420959>,  <38.263382, 34.535378, 51.888626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798645, 35.009922, 51.420959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178360, 35.104656, 51.338245>,  <38.406189, 35.161495, 51.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178360, 35.104656, 51.338245>,  <37.798645, 35.009922, 51.420959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178360, 35.104656, 51.338245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249803, 0.168780, -0.953474,
		-0.190917, 0.956777, 0.219383,
		0.949289, 0.236837, -0.206783,
		38.463146, 35.175709, 51.276211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729076, 35.504612, 50.905949>,  <37.798645, 35.009922, 51.420959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729076, 35.504612, 50.905949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116638, 35.407448, 50.887142>,  <38.349174, 35.349152, 50.875858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116638, 35.407448, 50.887142>,  <37.729076, 35.504612, 50.905949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116638, 35.407448, 50.887142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063667, -0.061163, -0.996095,
		0.239085, 0.968119, -0.074727,
		0.968909, -0.242909, -0.047014,
		38.407310, 35.334576, 50.873039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941807, 35.800774, 50.328560>,  <37.729076, 35.504612, 50.905949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941807, 35.800774, 50.328560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237545, 35.539268, 50.393021>,  <38.414986, 35.382366, 50.431698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237545, 35.539268, 50.393021>,  <37.941807, 35.800774, 50.328560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237545, 35.539268, 50.393021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142287, -0.082234, -0.986403,
		0.658124, 0.752219, 0.032223,
		0.739342, -0.653761, 0.161152,
		38.459347, 35.343140, 50.441364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476112, 35.838993, 49.803059>,  <37.941807, 35.800774, 50.328560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476112, 35.838993, 49.803059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541718, 35.478172, 49.962757>,  <38.581081, 35.261681, 50.058575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541718, 35.478172, 49.962757>,  <38.476112, 35.838993, 49.803059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541718, 35.478172, 49.962757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160044, -0.375028, -0.913094,
		0.973388, 0.213657, 0.082858,
		0.164015, -0.902056, 0.399243,
		38.590923, 35.207554, 50.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135849, 35.618008, 49.548145>,  <38.476112, 35.838993, 49.803059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135849, 35.618008, 49.548145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915340, 35.302715, 49.657543>,  <38.783035, 35.113541, 49.723183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915340, 35.302715, 49.657543>,  <39.135849, 35.618008, 49.548145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915340, 35.302715, 49.657543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228457, -0.457880, -0.859159,
		0.802440, -0.411147, 0.432491,
		-0.551269, -0.788229, 0.273492,
		38.749958, 35.066246, 49.739590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477039, 35.055836, 49.398006>,  <39.135849, 35.618008, 49.548145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477039, 35.055836, 49.398006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092129, 34.947308, 49.406075>,  <38.861183, 34.882191, 49.410915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092129, 34.947308, 49.406075>,  <39.477039, 35.055836, 49.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092129, 34.947308, 49.406075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096215, -0.408705, -0.907581,
		0.254493, -0.871403, 0.419393,
		-0.962276, -0.271325, 0.020170,
		38.803444, 34.865910, 49.412125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479931, 34.384312, 49.190037>,  <39.477039, 35.055836, 49.398006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479931, 34.384312, 49.190037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095318, 34.470772, 49.122234>,  <38.864552, 34.522648, 49.081554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095318, 34.470772, 49.122234>,  <39.479931, 34.384312, 49.190037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095318, 34.470772, 49.122234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088874, -0.339095, -0.936545,
		-0.259912, -0.915584, 0.306841,
		-0.961534, 0.216149, -0.169506,
		38.806858, 34.535618, 49.071381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193855, 33.900917, 48.904045>,  <39.479931, 34.384312, 49.190037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193855, 33.900917, 48.904045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952114, 34.195770, 48.783119>,  <38.807068, 34.372681, 48.710564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952114, 34.195770, 48.783119>,  <39.193855, 33.900917, 48.904045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952114, 34.195770, 48.783119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062054, -0.334743, -0.940264,
		-0.794298, -0.587009, 0.156561,
		-0.604351, 0.737134, -0.302312,
		38.770809, 34.416912, 48.692425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682045, 33.581627, 48.365074>,  <39.193855, 33.900917, 48.904045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682045, 33.581627, 48.365074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690186, 33.976109, 48.299358>,  <38.695068, 34.212795, 48.259930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690186, 33.976109, 48.299358>,  <38.682045, 33.581627, 48.365074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690186, 33.976109, 48.299358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043773, -0.165047, -0.985314,
		-0.998834, 0.012861, -0.046528,
		0.020351, 0.986202, -0.164292,
		38.696289, 34.271969, 48.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269978, 33.598019, 47.834492>,  <38.682045, 33.581627, 48.365074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269978, 33.598019, 47.834492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476788, 33.940399, 47.837029>,  <38.600872, 34.145828, 47.838551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476788, 33.940399, 47.837029>,  <38.269978, 33.598019, 47.834492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476788, 33.940399, 47.837029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024956, -0.007669, -0.999659,
		-0.855608, 0.517004, -0.025327,
		0.517022, 0.855949, 0.006341,
		38.631893, 34.197186, 47.838932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909000, 33.793880, 47.329712>,  <38.269978, 33.598019, 47.834492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909000, 33.793880, 47.329712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225185, 34.036201, 47.365871>,  <38.414898, 34.181595, 47.387566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225185, 34.036201, 47.365871>,  <37.909000, 33.793880, 47.329712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225185, 34.036201, 47.365871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139280, -0.034057, -0.989667,
		-0.596460, 0.794889, -0.111296,
		0.790466, 0.605798, 0.090398,
		38.462326, 34.217941, 47.392990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821537, 34.280861, 46.889561>,  <37.909000, 33.793880, 47.329712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821537, 34.280861, 46.889561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216068, 34.279682, 46.955475>,  <38.452785, 34.278973, 46.995022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216068, 34.279682, 46.955475>,  <37.821537, 34.280861, 46.889561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216068, 34.279682, 46.955475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164558, -0.037435, -0.985657,
		0.009076, 0.999295, -0.036438,
		0.986326, -0.002949, 0.164782,
		38.511967, 34.278797, 47.004910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106762, 34.654152, 46.381447>,  <37.821537, 34.280861, 46.889561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106762, 34.654152, 46.381447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416805, 34.450554, 46.531185>,  <38.602829, 34.328396, 46.621029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416805, 34.450554, 46.531185>,  <38.106762, 34.654152, 46.381447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416805, 34.450554, 46.531185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402213, -0.059430, -0.913615,
		0.487274, 0.858714, 0.158660,
		0.775105, -0.508996, 0.374345,
		38.649338, 34.297855, 46.643490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668713, 34.952190, 46.100082>,  <38.106762, 34.654152, 46.381447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668713, 34.952190, 46.100082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799999, 34.594006, 46.220360>,  <38.878769, 34.379093, 46.292526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799999, 34.594006, 46.220360>,  <38.668713, 34.952190, 46.100082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799999, 34.594006, 46.220360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418117, -0.147724, -0.896301,
		0.847027, 0.419902, 0.325925,
		0.328212, -0.895466, 0.300694,
		38.898464, 34.325367, 46.310570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406384, 34.849583, 45.848236>,  <38.668713, 34.952190, 46.100082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406384, 34.849583, 45.848236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257359, 34.485874, 45.922455>,  <39.167942, 34.267651, 45.966988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257359, 34.485874, 45.922455>,  <39.406384, 34.849583, 45.848236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257359, 34.485874, 45.922455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235493, -0.286029, -0.928833,
		0.897630, -0.302353, 0.320690,
		-0.372562, -0.909269, 0.185547,
		39.145592, 34.213093, 45.978119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860851, 34.422398, 45.558720>,  <39.406384, 34.849583, 45.848236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860851, 34.422398, 45.558720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543373, 34.191692, 45.636070>,  <39.352886, 34.053268, 45.682480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543373, 34.191692, 45.636070>,  <39.860851, 34.422398, 45.558720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543373, 34.191692, 45.636070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115322, -0.454777, -0.883107,
		0.597288, -0.678615, 0.427467,
		-0.793692, -0.576766, 0.193373,
		39.305264, 34.018661, 45.694084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082630, 33.755024, 45.468433>,  <39.860851, 34.422398, 45.558720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082630, 33.755024, 45.468433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685493, 33.759693, 45.420879>,  <39.447212, 33.762497, 45.392349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685493, 33.759693, 45.420879>,  <40.082630, 33.755024, 45.468433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685493, 33.759693, 45.420879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107733, -0.342375, -0.933366,
		-0.051600, -0.939491, 0.338666,
		-0.992840, 0.011676, -0.118880,
		39.387642, 33.763195, 45.385216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879879, 33.046700, 45.179970>,  <40.082630, 33.755024, 45.468433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879879, 33.046700, 45.179970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599865, 33.323227, 45.108383>,  <39.431858, 33.489143, 45.065430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599865, 33.323227, 45.108383>,  <39.879879, 33.046700, 45.179970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599865, 33.323227, 45.108383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081792, -0.171345, -0.981810,
		-0.709409, -0.701939, 0.063403,
		-0.700035, 0.691319, -0.178966,
		39.389854, 33.530624, 45.054695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770859, 32.849377, 44.518215>,  <39.879879, 33.046700, 45.179970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770859, 32.849377, 44.518215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564651, 33.191532, 44.538460>,  <39.440929, 33.396824, 44.550606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564651, 33.191532, 44.538460>,  <39.770859, 32.849377, 44.518215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564651, 33.191532, 44.538460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097841, -0.000079, -0.995202,
		-0.851276, -0.517994, 0.083733,
		-0.515515, 0.855384, 0.050614,
		39.409996, 33.448147, 44.553642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263035, 32.800423, 43.987877>,  <39.770859, 32.849377, 44.518215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263035, 32.800423, 43.987877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233612, 33.188316, 44.081009>,  <39.215958, 33.421051, 44.136887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233612, 33.188316, 44.081009>,  <39.263035, 32.800423, 43.987877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233612, 33.188316, 44.081009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234194, 0.210139, -0.949208,
		-0.969403, -0.124348, 0.211648,
		-0.073557, 0.969732, 0.232831,
		39.211544, 33.479237, 44.150860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580177, 32.962292, 43.811413>,  <39.263035, 32.800423, 43.987877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580177, 32.962292, 43.811413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834713, 33.270542, 43.825356>,  <38.987434, 33.455494, 43.833721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834713, 33.270542, 43.825356>,  <38.580177, 32.962292, 43.811413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834713, 33.270542, 43.825356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055829, 0.091077, -0.994278,
		-0.769390, 0.630748, 0.100979,
		0.636335, 0.770625, 0.034859,
		39.025612, 33.501728, 43.835812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211311, 33.440170, 43.368069>,  <38.580177, 32.962292, 43.811413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211311, 33.440170, 43.368069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580772, 33.587368, 43.410873>,  <38.802448, 33.675686, 43.436558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580772, 33.587368, 43.410873>,  <38.211311, 33.440170, 43.368069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580772, 33.587368, 43.410873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055027, 0.148996, -0.987306,
		-0.379266, 0.917813, 0.117370,
		0.923650, 0.367993, 0.107014,
		38.857868, 33.697765, 43.442978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298176, 33.880791, 42.826969>,  <38.211311, 33.440170, 43.368069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298176, 33.880791, 42.826969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661564, 33.753174, 42.934967>,  <38.879597, 33.676605, 42.999763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661564, 33.753174, 42.934967>,  <38.298176, 33.880791, 42.826969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661564, 33.753174, 42.934967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236196, -0.141038, -0.961416,
		0.344808, 0.937189, -0.052773,
		0.908471, -0.319039, 0.269991,
		38.934105, 33.657463, 43.015965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796661, 34.287548, 42.455254>,  <38.298176, 33.880791, 42.826969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796661, 34.287548, 42.455254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001728, 33.960056, 42.558674>,  <39.124767, 33.763561, 42.620724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001728, 33.960056, 42.558674>,  <38.796661, 34.287548, 42.455254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001728, 33.960056, 42.558674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372779, -0.059010, -0.926042,
		0.773439, 0.571133, 0.274955,
		0.512668, -0.818734, 0.258547,
		39.155529, 33.714436, 42.636238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430401, 34.364281, 42.095184>,  <38.796661, 34.287548, 42.455254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430401, 34.364281, 42.095184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387726, 33.976276, 42.182545>,  <39.362122, 33.743473, 42.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387726, 33.976276, 42.182545>,  <39.430401, 34.364281, 42.095184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387726, 33.976276, 42.182545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251437, -0.238833, -0.937943,
		0.961975, -0.045157, 0.269378,
		-0.106691, -0.970010, 0.218398,
		39.355717, 33.685272, 42.248062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923698, 34.042473, 41.793430>,  <39.430401, 34.364281, 42.095184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923698, 34.042473, 41.793430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670307, 33.736839, 41.842243>,  <39.518272, 33.553459, 41.871529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670307, 33.736839, 41.842243>,  <39.923698, 34.042473, 41.793430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670307, 33.736839, 41.842243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255316, -0.355285, -0.899214,
		0.730427, -0.538474, 0.420146,
		-0.633475, -0.764080, 0.122029,
		39.480263, 33.507614, 41.878853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347511, 33.469402, 41.662975>,  <39.923698, 34.042473, 41.793430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347511, 33.469402, 41.662975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965054, 33.374317, 41.594528>,  <39.735580, 33.317265, 41.553459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965054, 33.374317, 41.594528>,  <40.347511, 33.469402, 41.662975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965054, 33.374317, 41.594528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207721, -0.138453, -0.968340,
		0.206498, -0.961417, 0.181760,
		-0.956143, -0.237716, -0.171117,
		39.678211, 33.303001, 41.543194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314938, 32.817196, 41.341423>,  <40.347511, 33.469402, 41.662975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314938, 32.817196, 41.341423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948925, 32.952934, 41.254185>,  <39.729317, 33.034378, 41.201843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948925, 32.952934, 41.254185>,  <40.314938, 32.817196, 41.341423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948925, 32.952934, 41.254185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157714, -0.196670, -0.967702,
		-0.371284, -0.919871, 0.126438,
		-0.915027, 0.339351, -0.218096,
		39.674416, 33.054741, 41.188755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211933, 32.313152, 40.953590>,  <40.314938, 32.817196, 41.341423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211933, 32.313152, 40.953590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964046, 32.621563, 40.894993>,  <39.815315, 32.806610, 40.859833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964046, 32.621563, 40.894993>,  <40.211933, 32.313152, 40.953590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964046, 32.621563, 40.894993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154334, -0.063291, -0.985990,
		-0.769498, -0.633648, -0.079773,
		-0.619721, 0.771029, -0.146496,
		39.778130, 32.852871, 40.851044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812664, 31.977846, 40.526337>,  <40.211933, 32.313152, 40.953590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812664, 31.977846, 40.526337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780441, 32.375061, 40.491962>,  <39.761108, 32.613392, 40.471336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780441, 32.375061, 40.491962>,  <39.812664, 31.977846, 40.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780441, 32.375061, 40.491962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014428, -0.087371, -0.996071,
		-0.996645, -0.079004, 0.021367,
		-0.080560, 0.993038, -0.085938,
		39.756271, 32.672974, 40.466183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317177, 32.119228, 40.072117>,  <39.812664, 31.977846, 40.526337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317177, 32.119228, 40.072117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534981, 32.446514, 39.998325>,  <39.665661, 32.642887, 39.954048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534981, 32.446514, 39.998325>,  <39.317177, 32.119228, 40.072117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534981, 32.446514, 39.998325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363368, 0.031882, -0.931100,
		-0.755960, 0.574025, 0.314674,
		0.544507, 0.818217, -0.184481,
		39.698334, 32.691978, 39.942982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923775, 32.530312, 39.570606>,  <39.317177, 32.119228, 40.072117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923775, 32.530312, 39.570606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285145, 32.701797, 39.568832>,  <39.501968, 32.804691, 39.567768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285145, 32.701797, 39.568832>,  <38.923775, 32.530312, 39.570606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285145, 32.701797, 39.568832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134391, 0.273355, -0.952479,
		-0.407134, 0.861091, 0.304573,
		0.903427, 0.428718, -0.004430,
		39.556171, 32.830414, 39.567505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935623, 33.242161, 39.245056>,  <38.923775, 32.530312, 39.570606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935623, 33.242161, 39.245056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321503, 33.142429, 39.211124>,  <39.553028, 33.082592, 39.190765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321503, 33.142429, 39.211124>,  <38.935623, 33.242161, 39.245056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321503, 33.142429, 39.211124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014609, 0.270950, -0.962483,
		0.262956, 0.929743, 0.257742,
		0.964697, -0.249326, -0.084830,
		39.610912, 33.067631, 39.185677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135418, 33.625435, 38.738220>,  <38.935623, 33.242161, 39.245056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135418, 33.625435, 38.738220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415310, 33.339954, 38.750927>,  <39.583244, 33.168667, 38.758549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415310, 33.339954, 38.750927>,  <39.135418, 33.625435, 38.738220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415310, 33.339954, 38.750927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203361, 0.156366, -0.966537,
		0.684852, 0.682774, 0.254552,
		0.699730, -0.713701, 0.031762,
		39.625229, 33.125843, 38.760456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811455, 33.858486, 38.435181>,  <39.135418, 33.625435, 38.738220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811455, 33.858486, 38.435181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823318, 33.461044, 38.391605>,  <39.830437, 33.222580, 38.365459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823318, 33.461044, 38.391605>,  <39.811455, 33.858486, 38.435181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823318, 33.461044, 38.391605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468653, 0.110088, -0.876496,
		0.882885, -0.025060, 0.468921,
		0.029657, -0.993606, -0.108940,
		39.832214, 33.162964, 38.358925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240639, 33.727943, 37.877274>,  <39.811455, 33.858486, 38.435181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240639, 33.727943, 37.877274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099689, 33.355312, 37.913017>,  <40.015118, 33.131733, 37.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099689, 33.355312, 37.913017>,  <40.240639, 33.727943, 37.877274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099689, 33.355312, 37.913017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019553, -0.102796, -0.994510,
		0.935654, -0.348694, 0.054438,
		-0.352376, -0.931582, 0.089364,
		39.993977, 33.075836, 37.939827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697102, 33.293427, 37.493675>,  <40.240639, 33.727943, 37.877274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697102, 33.293427, 37.493675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355667, 33.087563, 37.525986>,  <40.150806, 32.964046, 37.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355667, 33.087563, 37.525986>,  <40.697102, 33.293427, 37.493675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355667, 33.087563, 37.525986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050311, -0.072899, -0.996069,
		0.518522, -0.854292, 0.036333,
		-0.853583, -0.514656, 0.080780,
		40.099594, 32.933167, 37.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791382, 32.700481, 37.060047>,  <40.697102, 33.293427, 37.493675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791382, 32.700481, 37.060047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397934, 32.750023, 37.112423>,  <40.161865, 32.779747, 37.143848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397934, 32.750023, 37.112423>,  <40.791382, 32.700481, 37.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397934, 32.750023, 37.112423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150353, -0.163268, -0.975058,
		-0.099380, -0.978778, 0.179215,
		-0.983625, 0.123846, 0.130936,
		40.102848, 32.787178, 37.151703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704624, 32.964775, 36.276035>,  <40.791382, 32.700481, 37.060047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704624, 32.964775, 36.276035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846630, 33.335056, 36.328251>,  <40.931835, 33.557224, 36.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846630, 33.335056, 36.328251>,  <40.704624, 32.964775, 36.276035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846630, 33.335056, 36.328251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807376, -0.233205, -0.541996,
		-0.471284, 0.297813, -0.830180,
		0.355016, 0.925701, 0.130541,
		40.953136, 33.612766, 36.367413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761734, 33.473766, 35.649593>,  <40.704624, 32.964775, 36.276035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761734, 33.473766, 35.649593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040554, 33.512600, 35.933762>,  <41.207844, 33.535900, 36.104263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040554, 33.512600, 35.933762>,  <40.761734, 33.473766, 35.649593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040554, 33.512600, 35.933762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716684, -0.124946, -0.686114,
		0.022154, 0.987402, -0.156671,
		0.697046, 0.097083, 0.710423,
		41.249668, 33.541725, 36.146889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701420, 34.142551, 35.486954>,  <40.761734, 33.473766, 35.649593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701420, 34.142551, 35.486954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433804, 34.262348, 35.214867>,  <40.273235, 34.334229, 35.051617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433804, 34.262348, 35.214867>,  <40.701420, 34.142551, 35.486954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433804, 34.262348, 35.214867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474244, 0.876711, -0.080439,
		0.572260, -0.376404, -0.728587,
		-0.669038, 0.299496, -0.680214,
		40.233093, 34.352196, 35.010803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026264, 34.194256, 34.805061>,  <40.701420, 34.142551, 35.486954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026264, 34.194256, 34.805061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756218, 34.482349, 34.868900>,  <40.594189, 34.655205, 34.907204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756218, 34.482349, 34.868900>,  <41.026264, 34.194256, 34.805061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756218, 34.482349, 34.868900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737144, 0.667086, 0.107772,
		-0.028843, 0.190404, -0.981282,
		-0.675120, 0.720238, 0.159596,
		40.553680, 34.698421, 34.916779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010773, 34.784698, 34.417271>,  <41.026264, 34.194256, 34.805061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010773, 34.784698, 34.417271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903526, 34.888515, 34.788380>,  <40.839180, 34.950806, 35.011044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903526, 34.888515, 34.788380>,  <41.010773, 34.784698, 34.417271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903526, 34.888515, 34.788380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903432, 0.402165, 0.148574,
		-0.334554, 0.878010, -0.342305,
		-0.268113, 0.259543, 0.927768,
		40.823093, 34.966377, 35.066711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246437, 35.408173, 34.114624>,  <41.010773, 34.784698, 34.417271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246437, 35.408173, 34.114624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500332, 35.712452, 34.168938>,  <41.652668, 35.895020, 34.201527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500332, 35.712452, 34.168938>,  <41.246437, 35.408173, 34.114624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500332, 35.712452, 34.168938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397159, -0.471897, 0.787133,
		0.662851, -0.445696, -0.601651,
		0.634740, 0.760702, 0.135785,
		41.690754, 35.940662, 34.209675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859894, 35.218670, 34.461880>,  <41.246437, 35.408173, 34.114624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859894, 35.218670, 34.461880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604652, 35.011894, 34.233631>,  <41.451508, 34.887829, 34.096684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604652, 35.011894, 34.233631>,  <41.859894, 35.218670, 34.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604652, 35.011894, 34.233631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501332, -0.841429, 0.201653,
		-0.584376, -0.157394, 0.796073,
		-0.638100, -0.516938, -0.570617,
		41.413223, 34.856812, 34.062447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262573, 34.617031, 34.443195>,  <41.859894, 35.218670, 34.461880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262573, 34.617031, 34.443195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625565, 34.480053, 34.540527>,  <42.843361, 34.397865, 34.598927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625565, 34.480053, 34.540527>,  <42.262573, 34.617031, 34.443195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625565, 34.480053, 34.540527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291848, -0.097279, 0.951505,
		-0.302166, -0.934489, -0.188220,
		0.907480, -0.342444, 0.243335,
		42.897808, 34.377319, 34.613529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283611, 33.996700, 34.915768>,  <42.262573, 34.617031, 34.443195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283611, 33.996700, 34.915768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623390, 34.196648, 34.983379>,  <42.827259, 34.316616, 35.023945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623390, 34.196648, 34.983379>,  <42.283611, 33.996700, 34.915768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623390, 34.196648, 34.983379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005854, -0.311377, 0.950268,
		0.527640, -0.808193, -0.261573,
		0.849448, 0.499868, 0.169026,
		42.878223, 34.346607, 35.034088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748482, 33.496243, 35.270485>,  <42.283611, 33.996700, 34.915768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748482, 33.496243, 35.270485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926559, 33.836040, 35.383739>,  <43.033405, 34.039917, 35.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926559, 33.836040, 35.383739>,  <42.748482, 33.496243, 35.270485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926559, 33.836040, 35.383739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083246, -0.354096, 0.931497,
		0.891555, -0.391129, -0.228359,
		0.445196, 0.849490, 0.283136,
		43.060120, 34.090889, 35.468681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397976, 33.357361, 35.567390>,  <42.748482, 33.496243, 35.270485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397976, 33.357361, 35.567390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378521, 33.723179, 35.728012>,  <43.366848, 33.942669, 35.824387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378521, 33.723179, 35.728012>,  <43.397976, 33.357361, 35.567390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378521, 33.723179, 35.728012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076868, -0.397410, 0.914416,
		0.995854, 0.075337, -0.050972,
		-0.048633, 0.914543, 0.401554,
		43.363930, 33.997543, 35.848476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873405, 33.338181, 36.200581>,  <43.397976, 33.357361, 35.567390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873405, 33.338181, 36.200581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643452, 33.658215, 36.269131>,  <43.505478, 33.850235, 36.310261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643452, 33.658215, 36.269131>,  <43.873405, 33.338181, 36.200581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643452, 33.658215, 36.269131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046970, -0.176833, 0.983120,
		0.816883, 0.573233, 0.064079,
		-0.574887, 0.800084, 0.171376,
		43.470985, 33.898239, 36.320545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310596, 33.784523, 36.566082>,  <43.873405, 33.338181, 36.200581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310596, 33.784523, 36.566082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921104, 33.855385, 36.623299>,  <43.687408, 33.897903, 36.657631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921104, 33.855385, 36.623299>,  <44.310596, 33.784523, 36.566082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921104, 33.855385, 36.623299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099800, -0.232608, 0.967437,
		0.204658, 0.956300, 0.208818,
		-0.973732, 0.177154, 0.143044,
		43.628986, 33.908531, 36.666210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227562, 34.333065, 37.105198>,  <44.310596, 33.784523, 36.566082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227562, 34.333065, 37.105198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896564, 34.108475, 37.104931>,  <43.697968, 33.973721, 37.104771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896564, 34.108475, 37.104931>,  <44.227562, 34.333065, 37.105198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896564, 34.108475, 37.104931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073125, -0.108952, 0.991354,
		-0.556695, 0.820289, 0.131215,
		-0.827493, -0.561476, -0.000669,
		43.648315, 33.940033, 37.104729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922291, 34.406437, 37.797344>,  <44.227562, 34.333065, 37.105198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922291, 34.406437, 37.797344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735897, 34.076927, 37.668190>,  <43.624062, 33.879223, 37.590698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735897, 34.076927, 37.668190>,  <43.922291, 34.406437, 37.797344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735897, 34.076927, 37.668190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009563, -0.369593, 0.929145,
		-0.884742, 0.429878, 0.180101,
		-0.465982, -0.823776, -0.322883,
		43.596104, 33.829796, 37.571323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383648, 34.287655, 38.333702>,  <43.922291, 34.406437, 37.797344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383648, 34.287655, 38.333702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372433, 33.945644, 38.126575>,  <43.365704, 33.740437, 38.002300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372433, 33.945644, 38.126575>,  <43.383648, 34.287655, 38.333702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372433, 33.945644, 38.126575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144809, -0.509086, 0.848447,
		-0.989062, 0.098771, -0.109544,
		-0.028034, -0.855030, -0.517821,
		43.364021, 33.689137, 37.971230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775066, 33.853912, 38.565777>,  <43.383648, 34.287655, 38.333702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775066, 33.853912, 38.565777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046577, 33.600834, 38.416676>,  <43.209484, 33.448986, 38.327213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046577, 33.600834, 38.416676>,  <42.775066, 33.853912, 38.565777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046577, 33.600834, 38.416676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156341, -0.620480, 0.768481,
		-0.717508, -0.463351, -0.520085,
		0.678778, -0.632701, -0.372758,
		43.250210, 33.411022, 38.304848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457104, 33.114681, 38.566902>,  <42.775066, 33.853912, 38.565777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457104, 33.114681, 38.566902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856155, 33.089336, 38.577621>,  <43.095585, 33.074127, 38.584053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856155, 33.089336, 38.577621>,  <42.457104, 33.114681, 38.566902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856155, 33.089336, 38.577621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064225, -0.718155, 0.692913,
		-0.024661, -0.692992, -0.720524,
		0.997631, -0.063364, 0.026797,
		43.155445, 33.070328, 38.585659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601017, 32.449890, 38.820961>,  <42.457104, 33.114681, 38.566902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601017, 32.449890, 38.820961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965199, 32.608971, 38.866390>,  <43.183708, 32.704418, 38.893646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965199, 32.608971, 38.866390>,  <42.601017, 32.449890, 38.820961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965199, 32.608971, 38.866390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121856, -0.520332, 0.845225,
		0.395244, -0.755703, -0.522203,
		0.910458, 0.397703, 0.113571,
		43.238335, 32.728283, 38.900463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109463, 31.863634, 38.868729>,  <42.601017, 32.449890, 38.820961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109463, 31.863634, 38.868729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301777, 32.176491, 39.027271>,  <43.417168, 32.364204, 39.122398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301777, 32.176491, 39.027271>,  <43.109463, 31.863634, 38.868729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301777, 32.176491, 39.027271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096221, -0.496363, 0.862766,
		0.871540, -0.376671, -0.313905,
		0.480790, 0.782140, 0.396357,
		43.446014, 32.411133, 39.146179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760468, 31.608675, 39.014080>,  <43.109463, 31.863634, 38.868729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760468, 31.608675, 39.014080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674831, 31.927784, 39.239548>,  <43.623451, 32.119247, 39.374828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674831, 31.927784, 39.239548>,  <43.760468, 31.608675, 39.014080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674831, 31.927784, 39.239548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451719, -0.430788, 0.781263,
		0.866093, 0.421880, -0.268143,
		-0.214087, 0.797771, 0.563674,
		43.610607, 32.167114, 39.408649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400459, 31.722343, 39.437675>,  <43.760468, 31.608675, 39.014080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400459, 31.722343, 39.437675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088566, 31.909019, 39.604630>,  <43.901428, 32.021027, 39.704803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088566, 31.909019, 39.604630>,  <44.400459, 31.722343, 39.437675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088566, 31.909019, 39.604630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184340, -0.465973, 0.865383,
		0.598359, 0.751710, 0.277305,
		-0.779734, 0.466692, 0.417389,
		43.854645, 32.049026, 39.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637531, 31.844694, 40.090027>,  <44.400459, 31.722343, 39.437675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637531, 31.844694, 40.090027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247391, 31.908188, 40.151329>,  <44.013306, 31.946283, 40.188110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247391, 31.908188, 40.151329>,  <44.637531, 31.844694, 40.090027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247391, 31.908188, 40.151329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000693, -0.696796, 0.717269,
		0.220646, 0.699485, 0.679733,
		-0.975354, 0.158734, 0.153260,
		43.954784, 31.955809, 40.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603619, 31.986561, 40.819145>,  <44.637531, 31.844694, 40.090027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603619, 31.986561, 40.819145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238258, 31.880657, 40.695465>,  <44.019043, 31.817116, 40.621258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238258, 31.880657, 40.695465>,  <44.603619, 31.986561, 40.819145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238258, 31.880657, 40.695465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125271, -0.539901, 0.832355,
		-0.387311, 0.799006, 0.459978,
		-0.913399, -0.264758, -0.309202,
		43.964237, 31.801229, 40.602703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302120, 31.906767, 41.422432>,  <44.603619, 31.986561, 40.819145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302120, 31.906767, 41.422432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057800, 31.738552, 41.154083>,  <43.911209, 31.637623, 40.993073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057800, 31.738552, 41.154083>,  <44.302120, 31.906767, 41.422432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057800, 31.738552, 41.154083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138327, -0.777586, 0.613373,
		-0.779606, 0.467450, 0.416780,
		-0.610803, -0.420537, -0.670871,
		43.874557, 31.612391, 40.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701199, 31.653828, 41.768028>,  <44.302120, 31.906767, 41.422432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701199, 31.653828, 41.768028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724808, 31.433407, 41.435078>,  <43.738976, 31.301155, 41.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724808, 31.433407, 41.435078>,  <43.701199, 31.653828, 41.768028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724808, 31.433407, 41.435078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226981, -0.819401, 0.526365,
		-0.972109, 0.157866, -0.173444,
		0.059025, -0.551053, -0.832380,
		43.742516, 31.268091, 41.185364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179138, 31.176579, 41.741352>,  <43.701199, 31.653828, 41.768028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179138, 31.176579, 41.741352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416904, 30.982244, 41.485027>,  <43.559563, 30.865644, 41.331234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416904, 30.982244, 41.485027>,  <43.179138, 31.176579, 41.741352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416904, 30.982244, 41.485027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228232, -0.866023, 0.444875,
		-0.771094, -0.118185, -0.625657,
		0.594411, -0.485835, -0.640812,
		43.595226, 30.836494, 41.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725300, 30.582615, 41.317291>,  <43.179138, 31.176579, 41.741352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725300, 30.582615, 41.317291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113476, 30.486879, 41.304916>,  <43.346382, 30.429438, 41.297493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113476, 30.486879, 41.304916>,  <42.725300, 30.582615, 41.317291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113476, 30.486879, 41.304916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208710, -0.896703, 0.390339,
		-0.121160, -0.372346, -0.920151,
		0.970443, -0.239339, -0.030932,
		43.404610, 30.415077, 41.295635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744232, 29.877800, 41.010502>,  <42.725300, 30.582615, 41.317291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744232, 29.877800, 41.010502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069016, 29.939703, 41.235634>,  <43.263885, 29.976845, 41.370712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069016, 29.939703, 41.235634>,  <42.744232, 29.877800, 41.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069016, 29.939703, 41.235634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139995, -0.884444, 0.445151,
		0.566679, -0.440238, -0.696466,
		0.811958, 0.154756, 0.562827,
		43.312603, 29.986130, 41.404484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640999, 29.351587, 40.453228>,  <42.744232, 29.877800, 41.010502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640999, 29.351587, 40.453228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582699, 29.086292, 40.159595>,  <42.547718, 28.927114, 39.983418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582699, 29.086292, 40.159595>,  <42.640999, 29.351587, 40.453228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582699, 29.086292, 40.159595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956095, -0.285114, 0.067768,
		-0.254242, -0.691971, 0.675675,
		-0.145751, -0.663239, -0.734078,
		42.538975, 28.887321, 39.939373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017536, 28.689730, 40.596706>,  <42.640999, 29.351587, 40.453228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017536, 28.689730, 40.596706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987293, 28.762423, 40.204533>,  <42.969147, 28.806038, 39.969227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987293, 28.762423, 40.204533>,  <43.017536, 28.689730, 40.596706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987293, 28.762423, 40.204533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869915, -0.468561, -0.153938,
		-0.487371, -0.864536, -0.122665,
		-0.075609, 0.181733, -0.980437,
		42.964611, 28.816942, 39.910400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373508, 28.111376, 40.311062>,  <43.017536, 28.689730, 40.596706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373508, 28.111376, 40.311062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355953, 28.440886, 40.084976>,  <43.345421, 28.638592, 39.949326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355953, 28.440886, 40.084976>,  <43.373508, 28.111376, 40.311062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355953, 28.440886, 40.084976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940831, -0.156210, -0.300724,
		-0.336021, -0.544974, -0.768176,
		-0.043890, 0.823773, -0.565218,
		43.342785, 28.688017, 39.915409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210312, 27.836285, 39.610435>,  <43.373508, 28.111376, 40.311062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210312, 27.836285, 39.610435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395378, 28.186575, 39.665638>,  <43.506420, 28.396749, 39.698761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395378, 28.186575, 39.665638>,  <43.210312, 27.836285, 39.610435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395378, 28.186575, 39.665638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833026, -0.376183, -0.405651,
		-0.303322, 0.302645, -0.903549,
		0.462668, 0.875724, 0.138006,
		43.534180, 28.449291, 39.707039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665592, 27.386942, 39.232712>,  <43.210312, 27.836285, 39.610435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665592, 27.386942, 39.232712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448975, 27.054867, 39.179779>,  <43.319004, 26.855621, 39.148018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448975, 27.054867, 39.179779>,  <43.665592, 27.386942, 39.232712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448975, 27.054867, 39.179779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500255, -0.191728, -0.844385,
		0.675628, -0.523474, 0.519136,
		-0.541546, -0.830190, -0.132334,
		43.286510, 26.805809, 39.140079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176323, 26.940136, 39.026882>,  <43.665592, 27.386942, 39.232712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176323, 26.940136, 39.026882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815975, 26.806423, 38.916115>,  <43.599766, 26.726196, 38.849655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815975, 26.806423, 38.916115>,  <44.176323, 26.940136, 39.026882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815975, 26.806423, 38.916115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318761, -0.076423, -0.944749,
		0.294648, -0.939370, 0.175403,
		-0.900874, -0.334280, -0.276917,
		43.545712, 26.706139, 38.833038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243977, 26.460199, 38.499771>,  <44.176323, 26.940136, 39.026882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243977, 26.460199, 38.499771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896999, 26.648966, 38.436733>,  <43.688812, 26.762226, 38.398911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896999, 26.648966, 38.436733>,  <44.243977, 26.460199, 38.499771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896999, 26.648966, 38.436733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224648, 0.088882, -0.970378,
		-0.443928, -0.877153, -0.183115,
		-0.867446, 0.471914, -0.157593,
		43.636765, 26.790541, 38.389454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042271, 26.288162, 37.760750>,  <44.243977, 26.460199, 38.499771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042271, 26.288162, 37.760750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808632, 26.593491, 37.871143>,  <43.668449, 26.776688, 37.937378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808632, 26.593491, 37.871143>,  <44.042271, 26.288162, 37.760750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808632, 26.593491, 37.871143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110368, 0.411545, -0.904682,
		-0.804142, -0.497967, -0.324630,
		-0.584102, 0.763322, 0.275981,
		43.633400, 26.822487, 37.953938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345036, 26.219389, 38.007439>,  <44.042271, 26.288162, 37.760750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345036, 26.219389, 38.007439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019981, 26.220739, 37.774334>,  <42.824947, 26.221550, 37.634472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019981, 26.220739, 37.774334>,  <43.345036, 26.219389, 38.007439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019981, 26.220739, 37.774334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221074, 0.927023, -0.302911,
		0.539206, -0.374990, -0.754082,
		-0.812640, 0.003377, -0.582757,
		42.776188, 26.221752, 37.599506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523422, 26.368013, 37.255295>,  <43.345036, 26.219389, 38.007439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523422, 26.368013, 37.255295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152508, 26.494310, 37.335732>,  <42.929958, 26.570089, 37.383995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152508, 26.494310, 37.335732>,  <43.523422, 26.368013, 37.255295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152508, 26.494310, 37.335732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257012, 0.927562, -0.271243,
		-0.272172, -0.199837, -0.941269,
		-0.927290, 0.315743, 0.201096,
		42.874321, 26.589033, 37.396061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411060, 26.894003, 36.837887>,  <43.523422, 26.368013, 37.255295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411060, 26.894003, 36.837887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095551, 26.946043, 37.078186>,  <42.906242, 26.977266, 37.222366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095551, 26.946043, 37.078186>,  <43.411060, 26.894003, 36.837887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095551, 26.946043, 37.078186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051653, 0.959858, -0.275688,
		-0.612504, -0.248487, -0.750395,
		-0.788778, 0.130100, 0.600752,
		42.858917, 26.985073, 37.258411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838764, 27.066284, 36.483807>,  <43.411060, 26.894003, 36.837887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838764, 27.066284, 36.483807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790806, 27.213713, 36.852539>,  <42.762032, 27.302170, 37.073780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790806, 27.213713, 36.852539>,  <42.838764, 27.066284, 36.483807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790806, 27.213713, 36.852539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039565, 0.929570, -0.366516,
		-0.991998, -0.007472, -0.126036,
		-0.119898, 0.368570, 0.921836,
		42.754837, 27.324284, 37.129089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313068, 27.584991, 36.365677>,  <42.838764, 27.066284, 36.483807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313068, 27.584991, 36.365677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485092, 27.671303, 36.716331>,  <42.588306, 27.723089, 36.926723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485092, 27.671303, 36.716331>,  <42.313068, 27.584991, 36.365677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485092, 27.671303, 36.716331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006968, 0.971782, -0.235779,
		-0.902775, 0.095290, 0.419423,
		0.430055, 0.215777, 0.876637,
		42.614109, 27.736036, 36.979324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960487, 28.147390, 36.586384>,  <42.313068, 27.584991, 36.365677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960487, 28.147390, 36.586384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298580, 28.160946, 36.799713>,  <42.501434, 28.169079, 36.927711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298580, 28.160946, 36.799713>,  <41.960487, 28.147390, 36.586384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298580, 28.160946, 36.799713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090346, 0.974560, -0.205112,
		-0.526710, 0.221551, 0.820665,
		0.845230, 0.033891, 0.533326,
		42.552151, 28.171114, 36.959709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894802, 28.820450, 36.899227>,  <41.960487, 28.147390, 36.586384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894802, 28.820450, 36.899227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283772, 28.728939, 36.881069>,  <42.517151, 28.674032, 36.870174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283772, 28.728939, 36.881069>,  <41.894802, 28.820450, 36.899227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283772, 28.728939, 36.881069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182860, 0.868619, -0.460503,
		0.144784, 0.439501, 0.886497,
		0.972420, -0.228778, -0.045395,
		42.575497, 28.660305, 36.867451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236343, 29.507862, 37.033375>,  <41.894802, 28.820450, 36.899227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236343, 29.507862, 37.033375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561863, 29.290920, 36.949860>,  <42.757175, 29.160755, 36.899750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561863, 29.290920, 36.949860>,  <42.236343, 29.507862, 37.033375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561863, 29.290920, 36.949860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378357, 0.767136, -0.518024,
		0.441117, 0.342570, 0.829494,
		0.813794, -0.542354, -0.208783,
		42.806000, 29.128214, 36.887226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838684, 29.988804, 37.220322>,  <42.236343, 29.507862, 37.033375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838684, 29.988804, 37.220322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970184, 29.721342, 36.953541>,  <43.049084, 29.560865, 36.793472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970184, 29.721342, 36.953541>,  <42.838684, 29.988804, 37.220322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970184, 29.721342, 36.953541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589765, 0.696929, -0.408004,
		0.737631, -0.259211, 0.623467,
		0.328753, -0.668655, -0.666950,
		43.068810, 29.520746, 36.753456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590633, 30.023571, 37.255299>,  <42.838684, 29.988804, 37.220322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590633, 30.023571, 37.255299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480263, 29.869844, 36.902897>,  <43.414040, 29.777609, 36.691456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480263, 29.869844, 36.902897>,  <43.590633, 30.023571, 37.255299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480263, 29.869844, 36.902897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590651, 0.655311, -0.470850,
		0.758286, -0.650284, 0.046180,
		-0.275924, -0.384315, -0.881004,
		43.397484, 29.754549, 36.638596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196053, 29.768635, 36.936237>,  <43.590633, 30.023571, 37.255299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196053, 29.768635, 36.936237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950771, 29.821218, 36.624672>,  <43.803604, 29.852768, 36.437733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950771, 29.821218, 36.624672>,  <44.196053, 29.768635, 36.936237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950771, 29.821218, 36.624672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575833, 0.749390, -0.326850,
		0.540741, -0.648947, -0.535225,
		-0.613201, 0.131459, -0.778912,
		43.766811, 29.860657, 36.390999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545902, 29.680298, 36.318520>,  <44.196053, 29.768635, 36.936237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545902, 29.680298, 36.318520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236099, 29.912695, 36.218452>,  <44.050217, 30.052134, 36.158413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236099, 29.912695, 36.218452>,  <44.545902, 29.680298, 36.318520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236099, 29.912695, 36.218452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622081, 0.627873, -0.467751,
		-0.114683, -0.517904, -0.847717,
		-0.774508, 0.580991, -0.250172,
		44.003746, 30.086992, 36.143402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785202, 29.972818, 35.740929>,  <44.545902, 29.680298, 36.318520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785202, 29.972818, 35.740929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484367, 30.224031, 35.820873>,  <44.303867, 30.374760, 35.868839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484367, 30.224031, 35.820873>,  <44.785202, 29.972818, 35.740929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484367, 30.224031, 35.820873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518377, 0.750952, -0.409092,
		-0.407007, -0.204070, -0.890338,
		-0.752084, 0.628034, 0.199857,
		44.258743, 30.412441, 35.880829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718510, 30.324156, 35.110733>,  <44.785202, 29.972818, 35.740929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718510, 30.324156, 35.110733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555706, 30.539179, 35.406132>,  <44.458023, 30.668192, 35.583370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555706, 30.539179, 35.406132>,  <44.718510, 30.324156, 35.110733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555706, 30.539179, 35.406132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461333, 0.818773, -0.341735,
		-0.788360, 0.201600, -0.581244,
		-0.407013, 0.537558, 0.738493,
		44.433601, 30.700447, 35.627678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412796, 30.883646, 34.851963>,  <44.718510, 30.324156, 35.110733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412796, 30.883646, 34.851963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459202, 30.995132, 35.233299>,  <44.487045, 31.062025, 35.462101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459202, 30.995132, 35.233299>,  <44.412796, 30.883646, 34.851963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459202, 30.995132, 35.233299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367801, 0.879534, -0.301898,
		-0.922639, 0.385664, -0.000474,
		0.116014, 0.278717, 0.953340,
		44.494007, 31.078747, 35.519302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161545, 31.492231, 34.717342>,  <44.412796, 30.883646, 34.851963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161545, 31.492231, 34.717342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356976, 31.510475, 35.065872>,  <44.474236, 31.521421, 35.274990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356976, 31.510475, 35.065872>,  <44.161545, 31.492231, 34.717342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356976, 31.510475, 35.065872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283947, 0.935960, -0.208213,
		-0.825023, 0.349139, 0.444341,
		0.488581, 0.045611, 0.871326,
		44.503551, 31.524158, 35.327271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935673, 32.098560, 35.141315>,  <44.161545, 31.492231, 34.717342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935673, 32.098560, 35.141315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293907, 32.003887, 35.291996>,  <44.508846, 31.947084, 35.382404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293907, 32.003887, 35.291996>,  <43.935673, 32.098560, 35.141315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293907, 32.003887, 35.291996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308447, 0.940525, -0.142382,
		-0.320602, 0.243709, 0.915325,
		0.895586, -0.236682, 0.376706,
		44.562584, 31.932882, 35.405006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020489, 32.546520, 35.741901>,  <43.935673, 32.098560, 35.141315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020489, 32.546520, 35.741901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369106, 32.404686, 35.606445>,  <44.578278, 32.319584, 35.525173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369106, 32.404686, 35.606445>,  <44.020489, 32.546520, 35.741901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369106, 32.404686, 35.606445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344346, 0.934316, -0.092086,
		0.349049, -0.036352, 0.936399,
		0.871545, -0.354588, -0.338639,
		44.630569, 32.298309, 35.504852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477543, 32.835049, 36.164200>,  <44.020489, 32.546520, 35.741901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477543, 32.835049, 36.164200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690823, 32.721371, 35.845470>,  <44.818790, 32.653164, 35.654232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690823, 32.721371, 35.845470>,  <44.477543, 32.835049, 36.164200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690823, 32.721371, 35.845470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282141, 0.947700, -0.149204,
		0.797556, -0.145262, 0.585494,
		0.533198, -0.284191, -0.796828,
		44.850780, 32.636112, 35.606422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072498, 33.065903, 36.287159>,  <44.477543, 32.835049, 36.164200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072498, 33.065903, 36.287159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082081, 33.000919, 35.892590>,  <45.087830, 32.961929, 35.655849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082081, 33.000919, 35.892590>,  <45.072498, 33.065903, 36.287159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082081, 33.000919, 35.892590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424001, 0.895218, -0.137142,
		0.905345, -0.414959, 0.090330,
		0.023956, -0.162461, -0.986424,
		45.089268, 32.952183, 35.596661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783752, 33.183819, 36.177582>,  <45.072498, 33.065903, 36.287159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783752, 33.183819, 36.177582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572487, 33.265713, 35.847946>,  <45.445728, 33.314850, 35.650166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572487, 33.265713, 35.847946>,  <45.783752, 33.183819, 36.177582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572487, 33.265713, 35.847946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396228, 0.917786, -0.025934,
		0.751030, -0.340226, -0.565863,
		-0.528164, 0.204733, -0.824091,
		45.414036, 33.327133, 35.600719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290222, 33.537342, 35.691311>,  <45.783752, 33.183819, 36.177582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290222, 33.537342, 35.691311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930695, 33.624756, 35.539330>,  <45.714977, 33.677204, 35.448143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930695, 33.624756, 35.539330>,  <46.290222, 33.537342, 35.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930695, 33.624756, 35.539330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329930, 0.907993, -0.258255,
		0.288557, -0.357483, -0.888223,
		-0.898822, 0.218530, -0.379952,
		45.661049, 33.690315, 35.425343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407856, 33.725254, 34.959831>,  <46.290222, 33.537342, 35.691311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407856, 33.725254, 34.959831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060993, 33.878544, 35.087067>,  <45.852875, 33.970516, 35.163406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060993, 33.878544, 35.087067>,  <46.407856, 33.725254, 34.959831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060993, 33.878544, 35.087067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291662, 0.908463, -0.299380,
		-0.403703, -0.166834, -0.899550,
		-0.867155, 0.383225, 0.318090,
		45.800846, 33.993511, 35.182495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010914, 33.976303, 34.384991>,  <46.407856, 33.725254, 34.959831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010914, 33.976303, 34.384991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904213, 34.182606, 34.710651>,  <45.840195, 34.306385, 34.906048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904213, 34.182606, 34.710651>,  <46.010914, 33.976303, 34.384991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904213, 34.182606, 34.710651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248000, 0.853046, -0.459139,
		-0.931312, 0.079435, -0.355455,
		-0.266748, 0.515755, 0.814152,
		45.824188, 34.337334, 34.954895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572433, 34.396034, 33.984974>,  <46.010914, 33.976303, 34.384991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572433, 34.396034, 33.984974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486095, 34.690300, 33.728161>,  <46.434292, 34.866859, 33.574074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486095, 34.690300, 33.728161>,  <46.572433, 34.396034, 33.984974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486095, 34.690300, 33.728161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961049, -0.276301, 0.006502,
		-0.172609, 0.618424, 0.766654,
		-0.215848, 0.735670, -0.642028,
		46.421341, 34.910999, 33.535553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289040, 34.640263, 34.118153>,  <46.572433, 34.396034, 33.984974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289040, 34.640263, 34.118153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234818, 34.617680, 34.513817>,  <47.202282, 34.604130, 34.751217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234818, 34.617680, 34.513817>,  <47.289040, 34.640263, 34.118153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234818, 34.617680, 34.513817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840926, -0.534475, 0.084735,
		0.523897, 0.843296, 0.119932,
		-0.135557, -0.056461, 0.989159,
		47.194149, 34.600742, 34.810566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546253, 35.144421, 34.668877>,  <47.289040, 34.640263, 34.118153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546253, 35.144421, 34.668877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782639, 34.950867, 34.927059>,  <47.924469, 34.834732, 35.081966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782639, 34.950867, 34.927059>,  <47.546253, 35.144421, 34.668877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782639, 34.950867, 34.927059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623454, 0.233782, 0.746091,
		-0.511920, -0.843325, -0.163525,
		0.590968, -0.483890, 0.645452,
		47.959930, 34.805698, 35.120693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.543739, 37.279305, 45.101898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348621, 36.930122, 45.102074>,  <35.231548, 36.720612, 45.102180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348621, 36.930122, 45.102074>,  <35.543739, 37.279305, 45.101898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348621, 36.930122, 45.102074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023942, -0.013881, -0.999617,
		0.872628, -0.487601, 0.027671,
		-0.487798, -0.872956, 0.000439,
		35.202282, 36.668236, 45.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822693, 36.800781, 44.590687>,  <35.543739, 37.279305, 45.101898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822693, 36.800781, 44.590687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452663, 36.651096, 44.616608>,  <35.230644, 36.561287, 44.632160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452663, 36.651096, 44.616608>,  <35.822693, 36.800781, 44.590687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452663, 36.651096, 44.616608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120411, 0.127174, -0.984545,
		0.360183, -0.918583, -0.162705,
		-0.925078, -0.374208, 0.064801,
		35.175140, 36.538834, 44.636047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749599, 36.258549, 44.096550>,  <35.822693, 36.800781, 44.590687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749599, 36.258549, 44.096550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377373, 36.377357, 44.182182>,  <35.154037, 36.448643, 44.233562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377373, 36.377357, 44.182182>,  <35.749599, 36.258549, 44.096550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377373, 36.377357, 44.182182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145977, 0.235243, -0.960912,
		-0.335771, -0.925440, -0.175551,
		-0.930563, 0.297019, 0.214081,
		35.098202, 36.466465, 44.246407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354153, 35.860489, 43.688854>,  <35.749599, 36.258549, 44.096550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354153, 35.860489, 43.688854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118591, 36.172112, 43.774879>,  <34.977253, 36.359085, 43.826496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118591, 36.172112, 43.774879>,  <35.354153, 35.860489, 43.688854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118591, 36.172112, 43.774879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022888, 0.249921, -0.967996,
		-0.807877, -0.574981, -0.129349,
		-0.588907, 0.779061, 0.215066,
		34.941917, 36.405830, 43.839397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733818, 35.789139, 43.268093>,  <35.354153, 35.860489, 43.688854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733818, 35.789139, 43.268093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776577, 36.172504, 43.373936>,  <34.802231, 36.402523, 43.437443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776577, 36.172504, 43.373936>,  <34.733818, 35.789139, 43.268093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776577, 36.172504, 43.373936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098329, 0.275018, -0.956398,
		-0.989396, 0.076216, 0.123638,
		0.106896, 0.958414, 0.264607,
		34.808647, 36.460030, 43.453320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131092, 36.062977, 42.986439>,  <34.733818, 35.789139, 43.268093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131092, 36.062977, 42.986439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421406, 36.333187, 43.038448>,  <34.595592, 36.495312, 43.069653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421406, 36.333187, 43.038448>,  <34.131092, 36.062977, 42.986439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421406, 36.333187, 43.038448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188072, 0.376658, -0.907060,
		-0.661713, 0.633877, 0.400419,
		0.725785, 0.675521, 0.130025,
		34.639141, 36.535843, 43.077457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915752, 36.513966, 42.593441>,  <34.131092, 36.062977, 42.986439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915752, 36.513966, 42.593441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303749, 36.606007, 42.624855>,  <34.536549, 36.661232, 42.643703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303749, 36.606007, 42.624855>,  <33.915752, 36.513966, 42.593441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303749, 36.606007, 42.624855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001382, 0.328215, -0.944602,
		-0.243136, 0.916147, 0.318684,
		0.969991, 0.230107, 0.078535,
		34.594746, 36.675037, 42.648415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908943, 37.040878, 42.169205>,  <33.915752, 36.513966, 42.593441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908943, 37.040878, 42.169205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.279373, 36.892021, 42.194180>,  <34.501629, 36.802708, 42.209164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.279373, 36.892021, 42.194180>,  <33.908943, 37.040878, 42.169205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279373, 36.892021, 42.194180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107091, 0.100537, -0.989153,
		0.361829, 0.922715, 0.132958,
		0.926073, -0.372142, 0.062437,
		34.557194, 36.780380, 42.212910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314476, 37.394993, 41.630699>,  <33.908943, 37.040878, 42.169205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314476, 37.394993, 41.630699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550270, 37.083824, 41.717735>,  <34.691746, 36.897121, 41.769958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550270, 37.083824, 41.717735>,  <34.314476, 37.394993, 41.630699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550270, 37.083824, 41.717735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232969, -0.094199, -0.967911,
		0.773458, 0.621257, 0.125704,
		0.589481, -0.777924, 0.217593,
		34.727116, 36.850449, 41.783012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901993, 37.487251, 41.127956>,  <34.314476, 37.394993, 41.630699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901993, 37.487251, 41.127956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909718, 37.101582, 41.233776>,  <34.914352, 36.870178, 41.297268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909718, 37.101582, 41.233776>,  <34.901993, 37.487251, 41.127956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909718, 37.101582, 41.233776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186938, -0.256449, -0.948308,
		0.982182, 0.067771, 0.175288,
		0.019315, -0.964179, 0.264548,
		34.915512, 36.812328, 41.313141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565903, 37.207817, 40.800594>,  <34.901993, 37.487251, 41.127956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565903, 37.207817, 40.800594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315773, 36.899757, 40.850952>,  <35.165695, 36.714924, 40.881165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315773, 36.899757, 40.850952>,  <35.565903, 37.207817, 40.800594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315773, 36.899757, 40.850952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231089, -0.336839, -0.912764,
		0.745367, -0.541678, 0.388604,
		-0.625321, -0.770146, 0.125893,
		35.128178, 36.668713, 40.888721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002296, 36.613941, 40.559338>,  <35.565903, 37.207817, 40.800594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002296, 36.613941, 40.559338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620285, 36.496075, 40.546116>,  <35.391079, 36.425354, 40.538185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620285, 36.496075, 40.546116>,  <36.002296, 36.613941, 40.559338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620285, 36.496075, 40.546116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149059, -0.380745, -0.912587,
		0.256329, -0.876472, 0.407545,
		-0.955027, -0.294671, -0.033050,
		35.333778, 36.407673, 40.536201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075085, 35.859047, 40.644398>,  <36.002296, 36.613941, 40.559338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075085, 35.859047, 40.644398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718918, 35.916908, 40.471779>,  <35.505219, 35.951626, 40.368210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718918, 35.916908, 40.471779>,  <36.075085, 35.859047, 40.644398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718918, 35.916908, 40.471779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342747, -0.410734, -0.844880,
		-0.299462, -0.900208, 0.316147,
		-0.890419, 0.144651, -0.431543,
		35.451794, 35.960304, 40.342316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882408, 35.204674, 40.344120>,  <36.075085, 35.859047, 40.644398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882408, 35.204674, 40.344120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.670242, 35.488438, 40.158478>,  <35.542942, 35.658695, 40.047092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.670242, 35.488438, 40.158478>,  <35.882408, 35.204674, 40.344120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670242, 35.488438, 40.158478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243750, -0.396723, -0.884984,
		-0.811938, -0.582537, 0.037510,
		-0.530417, 0.709409, -0.464108,
		35.511116, 35.701260, 40.019245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416519, 34.803066, 40.024940>,  <35.882408, 35.204674, 40.344120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416519, 34.803066, 40.024940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388786, 35.152935, 39.833046>,  <35.372147, 35.362858, 39.717911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388786, 35.152935, 39.833046>,  <35.416519, 34.803066, 40.024940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388786, 35.152935, 39.833046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017307, -0.479764, -0.877227,
		-0.997444, -0.069118, 0.018123,
		-0.069327, 0.874671, -0.479734,
		35.367989, 35.415337, 39.689125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952526, 34.677715, 39.476017>,  <35.416519, 34.803066, 40.024940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952526, 34.677715, 39.476017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200077, 34.975765, 39.376591>,  <35.348606, 35.154594, 39.316936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200077, 34.975765, 39.376591>,  <34.952526, 34.677715, 39.476017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200077, 34.975765, 39.376591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179162, -0.442009, -0.878936,
		-0.764783, 0.499420, -0.407047,
		0.618877, 0.745123, -0.248564,
		35.385738, 35.199303, 39.302021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890400, 34.770435, 38.818199>,  <34.952526, 34.677715, 39.476017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890400, 34.770435, 38.818199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224636, 34.990101, 38.823891>,  <35.425179, 35.121902, 38.827305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224636, 34.990101, 38.823891>,  <34.890400, 34.770435, 38.818199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224636, 34.990101, 38.823891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365814, -0.536911, -0.760202,
		-0.409836, 0.640425, -0.649531,
		0.835593, 0.549165, 0.014231,
		35.475315, 35.154850, 38.828159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064041, 35.030750, 38.024189>,  <34.890400, 34.770435, 38.818199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064041, 35.030750, 38.024189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393101, 35.035973, 38.251549>,  <35.590534, 35.039104, 38.387966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393101, 35.035973, 38.251549>,  <35.064041, 35.030750, 38.024189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393101, 35.035973, 38.251549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501320, -0.488254, -0.714343,
		0.268198, 0.872604, -0.408206,
		0.822647, 0.013057, 0.568402,
		35.639896, 35.039890, 38.422070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607452, 35.214020, 37.583424>,  <35.064041, 35.030750, 38.024189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607452, 35.214020, 37.583424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769733, 35.033699, 37.901463>,  <35.867104, 34.925507, 38.092285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769733, 35.033699, 37.901463>,  <35.607452, 35.214020, 37.583424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769733, 35.033699, 37.901463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574721, -0.550593, -0.605428,
		0.710704, 0.702584, 0.035708,
		0.405703, -0.450802, 0.795099,
		35.891445, 34.898457, 38.139992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315060, 35.174252, 37.419895>,  <35.607452, 35.214020, 37.583424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315060, 35.174252, 37.419895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266941, 34.923317, 37.727657>,  <36.238071, 34.772758, 37.912315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266941, 34.923317, 37.727657>,  <36.315060, 35.174252, 37.419895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266941, 34.923317, 37.727657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568100, -0.679086, -0.464871,
		0.814120, 0.381175, 0.438081,
		-0.120297, -0.627335, 0.769402,
		36.230850, 34.735115, 37.958477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987324, 34.992416, 37.521660>,  <36.315060, 35.174252, 37.419895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987324, 34.992416, 37.521660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760754, 34.708733, 37.689556>,  <36.624813, 34.538521, 37.790295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760754, 34.708733, 37.689556>,  <36.987324, 34.992416, 37.521660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760754, 34.708733, 37.689556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498193, -0.700395, -0.511126,
		0.656483, -0.080399, 0.750044,
		-0.566421, -0.709212, 0.419743,
		36.590828, 34.495968, 37.815479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467392, 34.490616, 37.606716>,  <36.987324, 34.992416, 37.521660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467392, 34.490616, 37.606716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119614, 34.294998, 37.634708>,  <36.910946, 34.177628, 37.651505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119614, 34.294998, 37.634708>,  <37.467392, 34.490616, 37.606716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119614, 34.294998, 37.634708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347118, -0.705533, -0.617845,
		0.351523, -0.512894, 0.783180,
		-0.869449, -0.489042, 0.069976,
		36.858780, 34.148285, 37.655701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697189, 33.864105, 37.771656>,  <37.467392, 34.490616, 37.606716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697189, 33.864105, 37.771656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945641, 34.141533, 37.625690>,  <38.094711, 34.307991, 37.538113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945641, 34.141533, 37.625690>,  <37.697189, 33.864105, 37.771656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945641, 34.141533, 37.625690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171733, 0.574755, 0.800103,
		0.764664, -0.434298, 0.476104,
		0.621126, 0.693573, -0.364911,
		38.131977, 34.349606, 37.516216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035686, 34.121704, 38.346188>,  <37.697189, 33.864105, 37.771656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035686, 34.121704, 38.346188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086872, 34.401733, 38.065186>,  <38.117584, 34.569752, 37.896584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086872, 34.401733, 38.065186>,  <38.035686, 34.121704, 38.346188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086872, 34.401733, 38.065186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149233, 0.713857, 0.684205,
		0.980487, 0.017284, 0.195823,
		0.127964, 0.700078, -0.702507,
		38.125263, 34.611755, 37.854435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496769, 34.510403, 38.719856>,  <38.035686, 34.121704, 38.346188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496769, 34.510403, 38.719856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352245, 34.723167, 38.413517>,  <38.265530, 34.850826, 38.229713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352245, 34.723167, 38.413517>,  <38.496769, 34.510403, 38.719856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352245, 34.723167, 38.413517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078112, 0.801181, 0.593302,
		0.929168, 0.274188, -0.247926,
		-0.361309, 0.531912, -0.765849,
		38.243851, 34.882740, 38.183762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006706, 35.062984, 38.564632>,  <38.496769, 34.510403, 38.719856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006706, 35.062984, 38.564632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640644, 35.193714, 38.470249>,  <38.421005, 35.272152, 38.413620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640644, 35.193714, 38.470249>,  <39.006706, 35.062984, 38.564632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640644, 35.193714, 38.470249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116766, 0.775198, 0.620833,
		0.385818, 0.540607, -0.747589,
		-0.915156, 0.326821, -0.235961,
		38.366096, 35.291759, 38.399460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147823, 35.715115, 38.351231>,  <39.006706, 35.062984, 38.564632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147823, 35.715115, 38.351231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750362, 35.719704, 38.396000>,  <38.511887, 35.722458, 38.422859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750362, 35.719704, 38.396000>,  <39.147823, 35.715115, 38.351231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750362, 35.719704, 38.396000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082689, 0.749003, 0.657387,
		-0.076288, 0.662468, -0.745196,
		-0.993651, 0.011469, 0.111919,
		38.452267, 35.723145, 38.429577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001400, 36.383224, 38.428867>,  <39.147823, 35.715115, 38.351231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001400, 36.383224, 38.428867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.716892, 36.165443, 38.606705>,  <38.546188, 36.034775, 38.713409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.716892, 36.165443, 38.606705>,  <39.001400, 36.383224, 38.428867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716892, 36.165443, 38.606705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156092, 0.494371, 0.855122,
		-0.685367, 0.677622, -0.266648,
		-0.711272, -0.544450, 0.444596,
		38.503510, 36.002110, 38.740082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645592, 36.884312, 38.771969>,  <39.001400, 36.383224, 38.428867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645592, 36.884312, 38.771969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509701, 36.551186, 38.946789>,  <38.428165, 36.351311, 39.051682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509701, 36.551186, 38.946789>,  <38.645592, 36.884312, 38.771969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509701, 36.551186, 38.946789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086710, 0.490440, 0.867151,
		-0.936520, 0.256695, -0.238827,
		-0.339723, -0.832812, 0.437048,
		38.407784, 36.301342, 39.077904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998734, 37.075909, 39.153759>,  <38.645592, 36.884312, 38.771969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998734, 37.075909, 39.153759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125130, 36.726692, 39.302322>,  <38.200970, 36.517162, 39.391460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125130, 36.726692, 39.302322>,  <37.998734, 37.075909, 39.153759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125130, 36.726692, 39.302322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054031, 0.374269, 0.925745,
		-0.947222, -0.312596, 0.071095,
		0.315993, -0.873044, 0.371405,
		38.219929, 36.464779, 39.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536045, 36.990273, 39.717327>,  <37.998734, 37.075909, 39.153759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536045, 36.990273, 39.717327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831654, 36.732334, 39.795315>,  <38.009018, 36.577572, 39.842110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831654, 36.732334, 39.795315>,  <37.536045, 36.990273, 39.717327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831654, 36.732334, 39.795315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125921, 0.152092, 0.980312,
		-0.661804, -0.749027, 0.031200,
		0.739026, -0.644846, 0.194974,
		38.053360, 36.538879, 39.853806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150757, 36.445671, 40.095806>,  <37.536045, 36.990273, 39.717327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150757, 36.445671, 40.095806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539227, 36.490337, 40.180042>,  <37.772308, 36.517136, 40.230583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539227, 36.490337, 40.180042>,  <37.150757, 36.445671, 40.095806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539227, 36.490337, 40.180042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224566, 0.132366, 0.965427,
		0.079923, -0.984892, 0.153626,
		0.971176, 0.111659, 0.210594,
		37.830578, 36.523838, 40.243221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218983, 36.109703, 40.708260>,  <37.150757, 36.445671, 40.095806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218983, 36.109703, 40.708260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550911, 36.332897, 40.705162>,  <37.750069, 36.466812, 40.703304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550911, 36.332897, 40.705162>,  <37.218983, 36.109703, 40.708260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550911, 36.332897, 40.705162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005343, 0.021828, 0.999748,
		0.558010, -0.829566, 0.021094,
		0.829817, 0.557982, -0.007748,
		37.799854, 36.500290, 40.702839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577339, 35.805279, 41.119949>,  <37.218983, 36.109703, 40.708260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577339, 35.805279, 41.119949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758720, 36.161613, 41.131203>,  <37.867550, 36.375416, 41.137955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758720, 36.161613, 41.131203>,  <37.577339, 35.805279, 41.119949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758720, 36.161613, 41.131203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006093, -0.034665, 0.999380,
		0.891261, -0.452997, -0.021147,
		0.453450, 0.890838, 0.028135,
		37.894756, 36.428864, 41.139645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189957, 35.772907, 41.585781>,  <37.577339, 35.805279, 41.119949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189957, 35.772907, 41.585781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127289, 36.167774, 41.573395>,  <38.089687, 36.404694, 41.565964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127289, 36.167774, 41.573395>,  <38.189957, 35.772907, 41.585781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127289, 36.167774, 41.573395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083391, 0.018023, 0.996354,
		0.984124, 0.158684, 0.079497,
		-0.156672, 0.987165, -0.030970,
		38.080288, 36.463924, 41.564102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738396, 36.039452, 42.008766>,  <38.189957, 35.772907, 41.585781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738396, 36.039452, 42.008766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436569, 36.301933, 42.010532>,  <38.255474, 36.459423, 42.011593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436569, 36.301933, 42.010532>,  <38.738396, 36.039452, 42.008766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436569, 36.301933, 42.010532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069947, 0.073739, 0.994822,
		0.652485, 0.750968, -0.101541,
		-0.754567, 0.656208, 0.004414,
		38.210197, 36.498795, 42.011856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946819, 36.547695, 42.483368>,  <38.738396, 36.039452, 42.008766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946819, 36.547695, 42.483368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.553673, 36.620182, 42.469891>,  <38.317783, 36.663673, 42.461803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.553673, 36.620182, 42.469891>,  <38.946819, 36.547695, 42.483368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553673, 36.620182, 42.469891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001898, 0.192751, 0.981246,
		0.184311, 0.964369, -0.189792,
		-0.982866, 0.181214, -0.033696,
		38.258812, 36.674545, 42.459782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860657, 36.995914, 43.023788>,  <38.946819, 36.547695, 42.483368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860657, 36.995914, 43.023788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489944, 36.856331, 42.968208>,  <38.267517, 36.772579, 42.934860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489944, 36.856331, 42.968208>,  <38.860657, 36.995914, 43.023788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489944, 36.856331, 42.968208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184085, 0.099527, 0.977858,
		-0.327404, 0.931838, -0.156478,
		-0.926779, -0.348959, -0.138952,
		38.211910, 36.751644, 42.926521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471466, 37.472923, 43.476337>,  <38.860657, 36.995914, 43.023788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471466, 37.472923, 43.476337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237526, 37.156700, 43.403706>,  <38.097164, 36.966965, 43.360126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237526, 37.156700, 43.403706>,  <38.471466, 37.472923, 43.476337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237526, 37.156700, 43.403706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359663, 0.052095, 0.931627,
		-0.727047, 0.610165, -0.314803,
		-0.584846, -0.790560, -0.181579,
		38.062073, 36.919533, 43.349232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831734, 37.670631, 43.624477>,  <38.471466, 37.472923, 43.476337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831734, 37.670631, 43.624477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827888, 37.271286, 43.647049>,  <37.825581, 37.031681, 43.660591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827888, 37.271286, 43.647049>,  <37.831734, 37.670631, 43.624477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827888, 37.271286, 43.647049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382815, 0.055805, 0.922138,
		-0.923775, -0.012736, -0.382723,
		-0.009613, -0.998361, 0.056427,
		37.825005, 36.971779, 43.663979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.161213, 37.568974, 43.869530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343121, 37.221558, 43.948338>,  <37.452267, 37.013107, 43.995621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343121, 37.221558, 43.948338>,  <37.161213, 37.568974, 43.869530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343121, 37.221558, 43.948338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250387, 0.087608, 0.964174,
		-0.854687, -0.487809, -0.177630,
		0.454771, -0.868544, 0.197018,
		37.479553, 36.960995, 44.007442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682396, 37.196293, 44.277302>,  <37.161213, 37.568974, 43.869530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682396, 37.196293, 44.277302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003273, 36.976936, 44.371754>,  <37.195797, 36.845322, 44.428425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003273, 36.976936, 44.371754>,  <36.682396, 37.196293, 44.277302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003273, 36.976936, 44.371754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178268, 0.157464, 0.971301,
		-0.569835, -0.821263, 0.028555,
		0.802190, -0.548391, 0.236134,
		37.243931, 36.812420, 44.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476185, 36.514805, 44.719368>,  <36.682396, 37.196293, 44.277302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476185, 36.514805, 44.719368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858406, 36.600220, 44.800671>,  <37.087738, 36.651466, 44.849453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858406, 36.600220, 44.800671>,  <36.476185, 36.514805, 44.719368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858406, 36.600220, 44.800671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205343, -0.012623, 0.978609,
		0.211533, -0.976854, 0.031786,
		0.955556, 0.213535, 0.203261,
		37.145073, 36.664280, 44.861649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677910, 36.050720, 45.280331>,  <36.476185, 36.514805, 44.719368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677910, 36.050720, 45.280331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913166, 36.374180, 45.275028>,  <37.054321, 36.568256, 45.271847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913166, 36.374180, 45.275028>,  <36.677910, 36.050720, 45.280331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913166, 36.374180, 45.275028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032112, -0.006975, 0.999460,
		0.808119, -0.588252, -0.030070,
		0.588143, 0.808648, -0.013254,
		37.089611, 36.616776, 45.271053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983788, 35.960011, 45.943951>,  <36.677910, 36.050720, 45.280331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983788, 35.960011, 45.943951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130913, 36.315922, 45.835865>,  <37.219189, 36.529469, 45.771015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130913, 36.315922, 45.835865>,  <36.983788, 35.960011, 45.943951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130913, 36.315922, 45.835865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158682, 0.226262, 0.961054,
		0.916260, -0.396367, -0.057969,
		0.367813, 0.889775, -0.270211,
		37.241257, 36.582855, 45.754803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648834, 36.075905, 46.250343>,  <36.983788, 35.960011, 45.943951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648834, 36.075905, 46.250343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481117, 36.435604, 46.200470>,  <37.380486, 36.651424, 46.170544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481117, 36.435604, 46.200470>,  <37.648834, 36.075905, 46.250343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481117, 36.435604, 46.200470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014217, 0.143828, 0.989501,
		0.907739, 0.413119, -0.073091,
		-0.419294, 0.899248, -0.124685,
		37.355328, 36.705379, 46.163063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980503, 36.569374, 46.687946>,  <37.648834, 36.075905, 46.250343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980503, 36.569374, 46.687946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634613, 36.753803, 46.608276>,  <37.427078, 36.864460, 46.560474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634613, 36.753803, 46.608276>,  <37.980503, 36.569374, 46.687946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634613, 36.753803, 46.608276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072052, 0.278574, 0.957708,
		0.497055, 0.842503, -0.207668,
		-0.864723, 0.461071, -0.199170,
		37.375195, 36.892124, 46.548527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011108, 37.307709, 46.945774>,  <37.980503, 36.569374, 46.687946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011108, 37.307709, 46.945774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627796, 37.193409, 46.948112>,  <37.397808, 37.124828, 46.949516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627796, 37.193409, 46.948112>,  <38.011108, 37.307709, 46.945774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627796, 37.193409, 46.948112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055236, 0.205227, 0.977155,
		-0.280425, 0.936070, -0.212449,
		-0.958285, -0.285754, 0.005846,
		37.340309, 37.107681, 46.949867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587711, 37.839008, 47.324131>,  <38.011108, 37.307709, 46.945774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587711, 37.839008, 47.324131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349674, 37.517548, 47.323444>,  <37.206852, 37.324669, 47.323032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349674, 37.517548, 47.323444>,  <37.587711, 37.839008, 47.324131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349674, 37.517548, 47.323444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243134, 0.177998, 0.953521,
		-0.765997, 0.567850, -0.301321,
		-0.595092, -0.803656, -0.001717,
		37.171146, 37.276451, 47.322929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034588, 38.050812, 47.744766>,  <37.587711, 37.839008, 47.324131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034588, 38.050812, 47.744766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972492, 37.655663, 47.746143>,  <36.935234, 37.418575, 47.746967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972492, 37.655663, 47.746143>,  <37.034588, 38.050812, 47.744766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972492, 37.655663, 47.746143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269445, 0.045693, 0.961931,
		-0.950420, 0.148406, -0.273270,
		-0.155243, -0.987870, 0.003440,
		36.925919, 37.359303, 47.747177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479198, 37.956615, 48.071205>,  <37.034588, 38.050812, 47.744766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479198, 37.956615, 48.071205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663052, 37.602718, 48.102131>,  <36.773361, 37.390381, 48.120686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663052, 37.602718, 48.102131>,  <36.479198, 37.956615, 48.071205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663052, 37.602718, 48.102131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305711, -0.075885, 0.949095,
		-0.833835, -0.459868, -0.305354,
		0.459630, -0.884739, 0.077311,
		36.800941, 37.337296, 48.125324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115261, 37.677975, 48.511513>,  <36.479198, 37.956615, 48.071205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115261, 37.677975, 48.511513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414536, 37.413471, 48.533272>,  <36.594101, 37.254768, 48.546326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414536, 37.413471, 48.533272>,  <36.115261, 37.677975, 48.511513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414536, 37.413471, 48.533272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177912, -0.120966, 0.976583,
		-0.639195, -0.740340, -0.208150,
		0.748182, -0.661260, 0.054394,
		36.638988, 37.215092, 48.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876865, 37.150230, 48.992680>,  <36.115261, 37.677975, 48.511513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876865, 37.150230, 48.992680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271004, 37.082310, 48.999199>,  <36.507484, 37.041557, 49.003109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271004, 37.082310, 48.999199>,  <35.876865, 37.150230, 48.992680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271004, 37.082310, 48.999199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036728, -0.117885, 0.992348,
		-0.166580, -0.978402, -0.122393,
		0.985344, -0.169801, 0.016298,
		36.566608, 37.031368, 49.004089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984592, 36.478420, 49.382256>,  <35.876865, 37.150230, 48.992680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984592, 36.478420, 49.382256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296185, 36.728390, 49.402905>,  <36.483139, 36.878372, 49.415295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296185, 36.728390, 49.402905>,  <35.984592, 36.478420, 49.382256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296185, 36.728390, 49.402905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010283, -0.095050, 0.995419,
		0.626969, -0.774877, -0.080467,
		0.778976, 0.624925, 0.051625,
		36.529877, 36.915867, 49.418392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424278, 36.150730, 49.925663>,  <35.984592, 36.478420, 49.382256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424278, 36.150730, 49.925663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535713, 36.533607, 49.894238>,  <36.602573, 36.763332, 49.875381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535713, 36.533607, 49.894238>,  <36.424278, 36.150730, 49.925663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535713, 36.533607, 49.894238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062590, 0.063530, 0.996015,
		0.958369, -0.282393, -0.042212,
		0.278586, 0.957193, -0.078561,
		36.619289, 36.820766, 49.870670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106441, 36.151905, 50.193329>,  <36.424278, 36.150730, 49.925663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106441, 36.151905, 50.193329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950436, 36.520226, 50.195030>,  <36.856831, 36.741219, 50.196053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950436, 36.520226, 50.195030>,  <37.106441, 36.151905, 50.193329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950436, 36.520226, 50.195030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263207, 0.107055, 0.958781,
		0.882388, 0.375061, -0.284114,
		-0.390017, 0.920798, 0.004255,
		36.833431, 36.796463, 50.196308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688164, 36.556171, 50.468914>,  <37.106441, 36.151905, 50.193329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688164, 36.556171, 50.468914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356567, 36.770420, 50.533272>,  <37.157612, 36.898972, 50.571888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356567, 36.770420, 50.533272>,  <37.688164, 36.556171, 50.468914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356567, 36.770420, 50.533272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320809, 0.219766, 0.921295,
		0.458108, 0.815358, -0.354016,
		-0.828986, 0.535624, 0.160898,
		37.107872, 36.931107, 50.581543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901318, 37.057510, 50.950073>,  <37.688164, 36.556171, 50.468914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901318, 37.057510, 50.950073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504154, 37.072868, 50.995075>,  <37.265858, 37.082085, 51.022076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504154, 37.072868, 50.995075>,  <37.901318, 37.057510, 50.950073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504154, 37.072868, 50.995075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118062, 0.207881, 0.971003,
		0.013897, 0.977400, -0.210940,
		-0.992909, 0.038398, 0.112505,
		37.206280, 37.084389, 51.028828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787209, 37.591106, 51.355740>,  <37.901318, 37.057510, 50.950073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787209, 37.591106, 51.355740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458164, 37.372299, 51.417820>,  <37.260738, 37.241013, 51.455070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458164, 37.372299, 51.417820>,  <37.787209, 37.591106, 51.355740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458164, 37.372299, 51.417820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146436, 0.059942, 0.987402,
		-0.549432, 0.834971, 0.030794,
		-0.822606, -0.547020, 0.155204,
		37.211384, 37.208195, 51.464382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356083, 38.065514, 51.775478>,  <37.787209, 37.591106, 51.355740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356083, 38.065514, 51.775478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228428, 37.688160, 51.811638>,  <37.151836, 37.461746, 51.833336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228428, 37.688160, 51.811638>,  <37.356083, 38.065514, 51.775478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228428, 37.688160, 51.811638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002588, 0.096258, 0.995353,
		-0.947706, 0.317418, -0.033161,
		-0.319135, -0.943388, 0.090403,
		37.132687, 37.405144, 51.838760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716213, 37.966366, 52.232124>,  <37.356083, 38.065514, 51.775478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716213, 37.966366, 52.232124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874760, 37.599304, 52.243500>,  <36.969887, 37.379066, 52.250324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874760, 37.599304, 52.243500>,  <36.716213, 37.966366, 52.232124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874760, 37.599304, 52.243500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030147, 0.043966, 0.998578,
		-0.917596, -0.394948, 0.045091,
		0.396369, -0.917651, 0.028437,
		36.993671, 37.324009, 52.252029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277428, 37.552444, 52.676285>,  <36.716213, 37.966366, 52.232124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277428, 37.552444, 52.676285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634876, 37.373055, 52.683365>,  <36.849346, 37.265423, 52.687611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634876, 37.373055, 52.683365>,  <36.277428, 37.552444, 52.676285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634876, 37.373055, 52.683365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011195, 0.061686, 0.998033,
		-0.448681, -0.891666, 0.060145,
		0.893622, -0.448472, 0.017696,
		36.902962, 37.238514, 52.688675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590500, 37.401287, 53.074478>,  <36.277428, 37.552444, 52.676285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590500, 37.401287, 53.074478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620430, 37.055000, 53.272438>,  <35.638390, 36.847229, 53.391216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620430, 37.055000, 53.272438>,  <35.590500, 37.401287, 53.074478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620430, 37.055000, 53.272438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935920, 0.110323, 0.334488,
		-0.344172, -0.488216, -0.801991,
		0.074825, -0.865722, 0.494902,
		35.642876, 36.795284, 53.420910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964653, 37.042896, 53.015846>,  <35.590500, 37.401287, 53.074478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964653, 37.042896, 53.015846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.960327, 36.643063, 53.026470>,  <34.957733, 36.403160, 53.032845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.960327, 36.643063, 53.026470>,  <34.964653, 37.042896, 53.015846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960327, 36.643063, 53.026470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029330, -0.026867, -0.999209,
		0.999511, -0.010026, 0.029608,
		-0.010813, -0.999589, 0.026560,
		34.957085, 36.343185, 53.034439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507145, 36.677944, 52.680058>,  <34.964653, 37.042896, 53.015846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507145, 36.677944, 52.680058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228928, 36.390678, 52.688526>,  <35.061996, 36.218319, 52.693607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228928, 36.390678, 52.688526>,  <35.507145, 36.677944, 52.680058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228928, 36.390678, 52.688526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104385, -0.130168, -0.985982,
		0.710858, -0.683586, 0.165503,
		-0.695546, -0.718169, 0.021175,
		35.020264, 36.175228, 52.694878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786045, 36.077030, 52.443108>,  <35.507145, 36.677944, 52.680058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786045, 36.077030, 52.443108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391651, 36.053089, 52.380821>,  <35.155014, 36.038727, 52.343449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391651, 36.053089, 52.380821>,  <35.786045, 36.077030, 52.443108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391651, 36.053089, 52.380821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166566, -0.405080, -0.898980,
		-0.009276, -0.912320, 0.409373,
		-0.985987, -0.059848, -0.155719,
		35.095856, 36.035133, 52.334106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675499, 35.402458, 52.153160>,  <35.786045, 36.077030, 52.443108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675499, 35.402458, 52.153160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.317703, 35.560738, 52.069912>,  <35.103027, 35.655704, 52.019962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.317703, 35.560738, 52.069912>,  <35.675499, 35.402458, 52.153160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317703, 35.560738, 52.069912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034176, -0.403623, -0.914287,
		-0.445794, -0.824926, 0.347510,
		-0.894483, 0.395707, -0.208125,
		35.049358, 35.679447, 52.007473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182796, 34.915771, 51.845913>,  <35.675499, 35.402458, 52.153160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182796, 34.915771, 51.845913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028893, 35.259579, 51.711342>,  <34.936550, 35.465862, 51.630600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028893, 35.259579, 51.711342>,  <35.182796, 34.915771, 51.845913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028893, 35.259579, 51.711342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125354, -0.409765, -0.903537,
		-0.914465, -0.305472, 0.265405,
		-0.384759, 0.859523, -0.336424,
		34.913464, 35.517437, 51.610416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490707, 34.801746, 51.524845>,  <35.182796, 34.915771, 51.845913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490707, 34.801746, 51.524845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624828, 35.146385, 51.372414>,  <34.705303, 35.353168, 51.280956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624828, 35.146385, 51.372414>,  <34.490707, 34.801746, 51.524845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624828, 35.146385, 51.372414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065126, -0.382329, -0.921728,
		-0.939856, 0.333878, -0.072085,
		0.335305, 0.861598, -0.381078,
		34.725418, 35.404865, 51.258091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127197, 34.812370, 50.914131>,  <34.490707, 34.801746, 51.524845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127197, 34.812370, 50.914131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.398411, 35.099491, 50.850849>,  <34.561138, 35.271763, 50.812881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.398411, 35.099491, 50.850849>,  <34.127197, 34.812370, 50.914131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398411, 35.099491, 50.850849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088019, -0.292971, -0.952061,
		-0.729744, 0.631602, -0.261824,
		0.678031, 0.717807, -0.158201,
		34.601822, 35.314835, 50.803391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834076, 35.319183, 50.413574>,  <34.127197, 34.812370, 50.914131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834076, 35.319183, 50.413574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229504, 35.378929, 50.421780>,  <34.466759, 35.414776, 50.426704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229504, 35.378929, 50.421780>,  <33.834076, 35.319183, 50.413574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229504, 35.378929, 50.421780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052618, -0.214282, -0.975354,
		-0.141289, 0.965284, -0.219692,
		0.988569, 0.149367, 0.020516,
		34.526073, 35.423740, 50.427933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911690, 35.857487, 49.879505>,  <33.834076, 35.319183, 50.413574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911690, 35.857487, 49.879505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.247826, 35.656368, 49.960518>,  <34.449509, 35.535698, 50.009125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.247826, 35.656368, 49.960518>,  <33.911690, 35.857487, 49.879505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247826, 35.656368, 49.960518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162725, -0.122408, -0.979049,
		0.517057, 0.855692, -0.021046,
		0.840340, -0.502800, 0.202534,
		34.499928, 35.505527, 50.021278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556179, 36.236225, 49.722488>,  <33.911690, 35.857487, 49.879505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556179, 36.236225, 49.722488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658653, 35.849590, 49.718781>,  <34.720139, 35.617611, 49.716557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658653, 35.849590, 49.718781>,  <34.556179, 36.236225, 49.722488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658653, 35.849590, 49.718781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271137, 0.081055, -0.959122,
		0.927823, 0.243197, 0.282841,
		0.256182, -0.966584, -0.009265,
		34.735508, 35.559616, 49.716000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258976, 36.243767, 49.454807>,  <34.556179, 36.236225, 49.722488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258976, 36.243767, 49.454807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102806, 35.881721, 49.387470>,  <35.009102, 35.664494, 49.347069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102806, 35.881721, 49.387470>,  <35.258976, 36.243767, 49.454807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102806, 35.881721, 49.387470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240855, 0.076061, -0.967576,
		0.888570, -0.418312, 0.188305,
		-0.390426, -0.905113, -0.168338,
		34.985680, 35.610188, 49.336967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679802, 35.944836, 48.961693>,  <35.258976, 36.243767, 49.454807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679802, 35.944836, 48.961693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350460, 35.718307, 48.946877>,  <35.152855, 35.582390, 48.937988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350460, 35.718307, 48.946877>,  <35.679802, 35.944836, 48.961693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350460, 35.718307, 48.946877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063296, -0.026778, -0.997635,
		0.563985, -0.823753, 0.057893,
		-0.823356, -0.566316, -0.037038,
		35.103455, 35.548412, 48.935764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886303, 35.405407, 48.531158>,  <35.679802, 35.944836, 48.961693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886303, 35.405407, 48.531158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486576, 35.420109, 48.532173>,  <35.246738, 35.428928, 48.532784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486576, 35.420109, 48.532173>,  <35.886303, 35.405407, 48.531158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486576, 35.420109, 48.532173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001015, 0.096354, -0.995347,
		-0.036829, -0.994668, -0.096326,
		-0.999321, 0.036756, 0.002539,
		35.186779, 35.431133, 48.532936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724007, 35.108273, 47.983009>,  <35.886303, 35.405407, 48.531158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724007, 35.108273, 47.983009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368839, 35.280586, 48.047543>,  <35.155739, 35.383976, 48.086262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368839, 35.280586, 48.047543>,  <35.724007, 35.108273, 47.983009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368839, 35.280586, 48.047543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116712, 0.128266, -0.984848,
		-0.444953, -0.893292, -0.063611,
		-0.887916, 0.430787, 0.161331,
		35.102463, 35.409821, 48.095943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266804, 34.719398, 47.547035>,  <35.724007, 35.108273, 47.983009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266804, 34.719398, 47.547035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125206, 35.085587, 47.623554>,  <35.040249, 35.305302, 47.669464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125206, 35.085587, 47.623554>,  <35.266804, 34.719398, 47.547035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125206, 35.085587, 47.623554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005127, 0.202636, -0.979241,
		-0.935233, -0.347627, -0.067039,
		-0.353995, 0.915475, 0.191295,
		35.019009, 35.360229, 47.680943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805119, 34.734566, 47.091648>,  <35.266804, 34.719398, 47.547035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805119, 34.734566, 47.091648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922165, 35.105705, 47.184143>,  <34.992393, 35.328388, 47.239639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922165, 35.105705, 47.184143>,  <34.805119, 34.734566, 47.091648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922165, 35.105705, 47.184143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036420, 0.230828, -0.972313,
		-0.955536, 0.292937, 0.033752,
		0.292618, 0.927850, 0.231233,
		35.009949, 35.384060, 47.253513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499840, 35.164154, 46.492825>,  <34.805119, 34.734566, 47.091648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499840, 35.164154, 46.492825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709858, 35.435066, 46.698978>,  <34.835869, 35.597614, 46.822670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709858, 35.435066, 46.698978>,  <34.499840, 35.164154, 46.492825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709858, 35.435066, 46.698978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022071, 0.594524, -0.803775,
		-0.850790, 0.433390, 0.297201,
		0.525042, 0.677284, 0.515381,
		34.867371, 35.638252, 46.853592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104477, 35.845409, 46.545155>,  <34.499840, 35.164154, 46.492825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104477, 35.845409, 46.545155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503510, 35.870758, 46.556625>,  <34.742928, 35.885967, 46.563507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503510, 35.870758, 46.556625>,  <34.104477, 35.845409, 46.545155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503510, 35.870758, 46.556625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012984, 0.574702, -0.818260,
		-0.068338, 0.815906, 0.574132,
		0.997578, 0.063373, 0.028680,
		34.802784, 35.889771, 46.565228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142990, 36.555191, 46.419052>,  <34.104477, 35.845409, 46.545155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142990, 36.555191, 46.419052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486458, 36.369152, 46.332912>,  <34.692539, 36.257530, 46.281227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486458, 36.369152, 46.332912>,  <34.142990, 36.555191, 46.419052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486458, 36.369152, 46.332912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091912, 0.553091, -0.828035,
		0.504226, 0.691212, 0.517669,
		0.858666, -0.465097, -0.215353,
		34.744057, 36.229622, 46.268307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455765, 37.025578, 46.040516>,  <34.142990, 36.555191, 46.419052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455765, 37.025578, 46.040516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.661930, 36.693317, 45.956257>,  <34.785629, 36.493961, 45.905701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.661930, 36.693317, 45.956257>,  <34.455765, 37.025578, 46.040516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661930, 36.693317, 45.956257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083643, 0.293399, -0.952324,
		0.852852, 0.473218, 0.220699,
		0.515410, -0.830651, -0.210645,
		34.816551, 36.444122, 45.893063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029072, 37.240162, 45.828873>,  <34.455765, 37.025578, 46.040516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029072, 37.240162, 45.828873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020576, 36.871868, 45.673027>,  <35.015480, 36.650890, 45.579521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020576, 36.871868, 45.673027>,  <35.029072, 37.240162, 45.828873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020576, 36.871868, 45.673027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114343, 0.384907, -0.915845,
		0.993214, -0.064005, 0.097103,
		-0.021243, -0.920734, -0.389614,
		35.014202, 36.595650, 45.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.577625, 30.082258, 41.942249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221424, 30.044613, 41.764194>,  <44.007702, 30.022026, 41.657360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221424, 30.044613, 41.764194>,  <44.577625, 30.082258, 41.942249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221424, 30.044613, 41.764194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289635, 0.637266, -0.714145,
		0.350881, -0.764876, -0.540229,
		-0.890502, -0.094111, -0.445139,
		43.954273, 30.016378, 41.630653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689629, 30.180798, 41.294991>,  <44.577625, 30.082258, 41.942249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689629, 30.180798, 41.294991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294773, 30.244541, 41.300041>,  <44.057861, 30.282787, 41.303070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294773, 30.244541, 41.300041>,  <44.689629, 30.180798, 41.294991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294773, 30.244541, 41.300041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110020, 0.734561, -0.669565,
		-0.115976, -0.659565, -0.742647,
		-0.987140, 0.159359, 0.012626,
		43.998631, 30.292349, 41.303829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423382, 30.202385, 40.587555>,  <44.689629, 30.180798, 41.294991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423382, 30.202385, 40.587555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164383, 30.415644, 40.805363>,  <44.008984, 30.543598, 40.936047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164383, 30.415644, 40.805363>,  <44.423382, 30.202385, 40.587555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164383, 30.415644, 40.805363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016507, 0.704550, -0.709463,
		-0.761887, -0.468365, -0.447395,
		-0.647499, 0.533145, 0.544519,
		43.970135, 30.575588, 40.968719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909405, 30.491299, 40.183582>,  <44.423382, 30.202385, 40.587555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909405, 30.491299, 40.183582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853420, 30.744131, 40.488445>,  <43.819828, 30.895830, 40.671364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853420, 30.744131, 40.488445>,  <43.909405, 30.491299, 40.183582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853420, 30.744131, 40.488445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039153, 0.765601, -0.642124,
		-0.989383, -0.119713, -0.082407,
		-0.139961, 0.632079, 0.762159,
		43.811432, 30.933754, 40.717094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286655, 30.869255, 40.041225>,  <43.909405, 30.491299, 40.183582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286655, 30.869255, 40.041225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456799, 31.093870, 40.325127>,  <43.558884, 31.228640, 40.495468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456799, 31.093870, 40.325127>,  <43.286655, 30.869255, 40.041225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456799, 31.093870, 40.325127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167463, 0.819527, -0.548025,
		-0.889399, 0.114246, 0.442625,
		0.425353, 0.561536, 0.709755,
		43.584404, 31.262331, 40.538052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846737, 31.416842, 40.089748>,  <43.286655, 30.869255, 40.041225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846737, 31.416842, 40.089748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182106, 31.555693, 40.257824>,  <43.383327, 31.639004, 40.358669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182106, 31.555693, 40.257824>,  <42.846737, 31.416842, 40.089748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182106, 31.555693, 40.257824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139313, 0.881828, -0.450523,
		-0.526920, 0.319190, 0.787701,
		0.838419, 0.347127, 0.420186,
		43.433632, 31.659830, 40.383881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709770, 32.122143, 40.508305>,  <42.846737, 31.416842, 40.089748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709770, 32.122143, 40.508305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082577, 32.063446, 40.375751>,  <43.306259, 32.028229, 40.296219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082577, 32.063446, 40.375751>,  <42.709770, 32.122143, 40.508305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082577, 32.063446, 40.375751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038413, 0.869219, -0.492934,
		0.360376, 0.472151, 0.804489,
		0.932016, -0.146738, -0.331383,
		43.362183, 32.019424, 40.276337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982830, 32.768295, 40.374557>,  <42.709770, 32.122143, 40.508305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982830, 32.768295, 40.374557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242702, 32.548660, 40.164257>,  <43.398624, 32.416878, 40.038074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242702, 32.548660, 40.164257>,  <42.982830, 32.768295, 40.374557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242702, 32.548660, 40.164257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017148, 0.702003, -0.711968,
		0.760014, 0.453535, 0.465493,
		0.649680, -0.549088, -0.525755,
		43.437607, 32.383934, 40.006531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420204, 33.306396, 40.033298>,  <42.982830, 32.768295, 40.374557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420204, 33.306396, 40.033298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473415, 32.959087, 39.842129>,  <43.505344, 32.750702, 39.727425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473415, 32.959087, 39.842129>,  <43.420204, 33.306396, 40.033298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473415, 32.959087, 39.842129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141950, 0.493932, -0.857835,
		0.980894, 0.046276, 0.188959,
		0.133030, -0.868268, -0.477926,
		43.513325, 32.698608, 39.698750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008026, 33.430149, 39.667580>,  <43.420204, 33.306396, 40.033298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008026, 33.430149, 39.667580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849037, 33.097473, 39.512505>,  <43.753643, 32.897865, 39.419460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849037, 33.097473, 39.512505>,  <44.008026, 33.430149, 39.667580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849037, 33.097473, 39.512505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108959, 0.376730, -0.919893,
		0.911123, -0.407872, -0.059118,
		-0.397470, -0.831694, -0.387689,
		43.729797, 32.847965, 39.396198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407455, 33.142246, 39.112774>,  <44.008026, 33.430149, 39.667580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407455, 33.142246, 39.112774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.024811, 33.043674, 39.050594>,  <43.795223, 32.984531, 39.013287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.024811, 33.043674, 39.050594>,  <44.407455, 33.142246, 39.112774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024811, 33.043674, 39.050594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071017, 0.320238, -0.944671,
		0.282567, -0.914726, -0.288845,
		-0.956615, -0.246420, -0.155450,
		43.737827, 32.969746, 39.003960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396629, 32.882572, 38.385918>,  <44.407455, 33.142246, 39.112774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396629, 32.882572, 38.385918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025742, 33.007088, 38.469208>,  <43.803207, 33.081795, 38.519180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025742, 33.007088, 38.469208>,  <44.396629, 32.882572, 38.385918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025742, 33.007088, 38.469208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112400, 0.299056, -0.947593,
		-0.357244, -0.902034, -0.242303,
		-0.927223, 0.311287, 0.208224,
		43.747574, 33.100475, 38.531673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089844, 32.562283, 37.792564>,  <44.396629, 32.882572, 38.385918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089844, 32.562283, 37.792564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.843689, 32.825565, 37.966026>,  <43.695995, 32.983536, 38.070103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.843689, 32.825565, 37.966026>,  <44.089844, 32.562283, 37.792564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843689, 32.825565, 37.966026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271498, 0.339497, -0.900572,
		-0.739989, -0.671940, -0.030221,
		-0.615390, 0.658209, 0.433654,
		43.659073, 33.023029, 38.096123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447395, 32.515076, 37.430676>,  <44.089844, 32.562283, 37.792564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447395, 32.515076, 37.430676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425129, 32.881966, 37.588463>,  <43.411770, 33.102100, 37.683136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425129, 32.881966, 37.588463>,  <43.447395, 32.515076, 37.430676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425129, 32.881966, 37.588463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353079, 0.351466, -0.867068,
		-0.933936, -0.187544, 0.304287,
		-0.055667, 0.917223, 0.394465,
		43.408428, 33.157131, 37.706802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927864, 32.824219, 37.139324>,  <43.447395, 32.515076, 37.430676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927864, 32.824219, 37.139324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105572, 33.149490, 37.289722>,  <43.212196, 33.344654, 37.379959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105572, 33.149490, 37.289722>,  <42.927864, 32.824219, 37.139324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105572, 33.149490, 37.289722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157090, 0.483887, -0.860916,
		-0.882015, 0.323412, 0.342717,
		0.444267, 0.813178, 0.375991,
		43.238853, 33.393444, 37.402519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482803, 33.375210, 37.075993>,  <42.927864, 32.824219, 37.139324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482803, 33.375210, 37.075993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825657, 33.580154, 37.097179>,  <43.031368, 33.703121, 37.109894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825657, 33.580154, 37.097179>,  <42.482803, 33.375210, 37.075993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825657, 33.580154, 37.097179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114565, 0.289887, -0.950179,
		-0.502195, 0.808361, 0.307171,
		0.857132, 0.512366, 0.052970,
		43.082798, 33.733864, 37.113071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355152, 34.044449, 36.690941>,  <42.482803, 33.375210, 37.075993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355152, 34.044449, 36.690941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751080, 33.987625, 36.687283>,  <42.988636, 33.953533, 36.685085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751080, 33.987625, 36.687283>,  <42.355152, 34.044449, 36.690941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751080, 33.987625, 36.687283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084061, 0.635165, -0.767788,
		0.114881, 0.759200, 0.640638,
		0.989816, -0.142057, -0.009149,
		43.048023, 33.945007, 36.684536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622841, 34.793526, 36.557487>,  <42.355152, 34.044449, 36.690941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622841, 34.793526, 36.557487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927986, 34.544838, 36.486488>,  <43.111073, 34.395622, 36.443890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927986, 34.544838, 36.486488>,  <42.622841, 34.793526, 36.557487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927986, 34.544838, 36.486488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126175, 0.412397, -0.902224,
		0.634135, 0.665873, 0.393047,
		0.762859, -0.621724, -0.177499,
		43.156845, 34.358322, 36.433239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118481, 35.190983, 36.220551>,  <42.622841, 34.793526, 36.557487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118481, 35.190983, 36.220551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201096, 34.816891, 36.105534>,  <43.250664, 34.592434, 36.036522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201096, 34.816891, 36.105534>,  <43.118481, 35.190983, 36.220551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201096, 34.816891, 36.105534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175082, 0.324463, -0.929554,
		0.962646, 0.141648, 0.230757,
		0.206542, -0.935232, -0.287543,
		43.263058, 34.536320, 36.019272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625710, 35.199501, 35.777142>,  <43.118481, 35.190983, 36.220551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625710, 35.199501, 35.777142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443863, 34.857121, 35.678616>,  <43.334755, 34.651691, 35.619499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443863, 34.857121, 35.678616>,  <43.625710, 35.199501, 35.777142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443863, 34.857121, 35.678616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113694, 0.218509, -0.969189,
		0.883403, -0.468611, -0.002020,
		-0.454614, -0.855954, -0.246310,
		43.307480, 34.600334, 35.604721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069176, 34.860519, 35.222836>,  <43.625710, 35.199501, 35.777142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069176, 34.860519, 35.222836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696720, 34.722473, 35.175713>,  <43.473248, 34.639645, 35.147438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696720, 34.722473, 35.175713>,  <44.069176, 34.860519, 35.222836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696720, 34.722473, 35.175713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081373, 0.118282, -0.989640,
		0.355478, -0.931076, -0.082053,
		-0.931136, -0.345118, -0.117811,
		43.417377, 34.618938, 35.140369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670803, 34.453808, 35.524624>,  <44.069176, 34.860519, 35.222836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670803, 34.453808, 35.524624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030399, 34.336391, 35.394611>,  <45.246159, 34.265942, 35.316605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030399, 34.336391, 35.394611>,  <44.670803, 34.453808, 35.524624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030399, 34.336391, 35.394611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330219, -0.941815, -0.062762,
		-0.287692, 0.163753, -0.943620,
		0.898993, -0.293545, -0.325027,
		45.300098, 34.248329, 35.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469528, 33.944706, 34.906338>,  <44.670803, 34.453808, 35.524624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469528, 33.944706, 34.906338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.842674, 33.873943, 35.031860>,  <45.066563, 33.831486, 35.107174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.842674, 33.873943, 35.031860>,  <44.469528, 33.944706, 34.906338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842674, 33.873943, 35.031860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145395, -0.981908, -0.121313,
		0.329593, 0.067541, -0.941704,
		0.932860, -0.176903, 0.313810,
		45.122532, 33.820873, 35.126003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752541, 33.443802, 34.419895>,  <44.469528, 33.944706, 34.906338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752541, 33.443802, 34.419895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938431, 33.394691, 34.770657>,  <45.049965, 33.365223, 34.981113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938431, 33.394691, 34.770657>,  <44.752541, 33.443802, 34.419895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938431, 33.394691, 34.770657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204568, -0.978435, -0.028584,
		0.861502, -0.166103, -0.479816,
		0.464721, -0.122780, 0.876903,
		45.077847, 33.357857, 35.033726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112133, 32.791180, 34.295040>,  <44.752541, 33.443802, 34.419895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112133, 32.791180, 34.295040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095364, 32.852123, 34.690014>,  <45.085300, 32.888691, 34.926998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095364, 32.852123, 34.690014>,  <45.112133, 32.791180, 34.295040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095364, 32.852123, 34.690014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177575, -0.973705, 0.142705,
		0.983214, -0.169361, 0.067877,
		-0.041924, 0.152363, 0.987435,
		45.082787, 32.897831, 34.986244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547894, 32.311745, 34.543266>,  <45.112133, 32.791180, 34.295040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547894, 32.311745, 34.543266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330936, 32.405674, 34.865921>,  <45.200760, 32.462032, 35.059513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330936, 32.405674, 34.865921>,  <45.547894, 32.311745, 34.543266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330936, 32.405674, 34.865921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122878, -0.971990, 0.200339,
		0.831089, 0.009545, 0.556057,
		-0.542395, 0.234827, 0.806638,
		45.168217, 32.476124, 35.107914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824524, 31.958801, 35.113049>,  <45.547894, 32.311745, 34.543266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824524, 31.958801, 35.113049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464790, 32.058655, 35.256645>,  <45.248951, 32.118568, 35.342804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464790, 32.058655, 35.256645>,  <45.824524, 31.958801, 35.113049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464790, 32.058655, 35.256645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122824, -0.932182, 0.340517,
		0.419648, 0.262147, 0.869008,
		-0.899338, 0.249633, 0.358990,
		45.194988, 32.133545, 35.364342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758381, 31.648693, 35.841953>,  <45.824524, 31.958801, 35.113049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758381, 31.648693, 35.841953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391430, 31.735264, 35.708340>,  <45.171261, 31.787207, 35.628170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391430, 31.735264, 35.708340>,  <45.758381, 31.648693, 35.841953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391430, 31.735264, 35.708340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370311, -0.771757, 0.516972,
		-0.145906, 0.597955, 0.788138,
		-0.917377, 0.216427, -0.334034,
		45.116219, 31.800192, 35.608128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318871, 31.561823, 36.408001>,  <45.758381, 31.648693, 35.841953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318871, 31.561823, 36.408001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.064255, 31.549246, 36.099762>,  <44.911484, 31.541700, 35.914818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.064255, 31.549246, 36.099762>,  <45.318871, 31.561823, 36.408001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064255, 31.549246, 36.099762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555281, -0.674729, 0.486214,
		-0.535234, 0.737395, 0.412036,
		-0.636544, -0.031442, -0.770599,
		44.873291, 31.539814, 35.868584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688377, 31.401064, 36.716629>,  <45.318871, 31.561823, 36.408001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688377, 31.401064, 36.716629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.603703, 31.328457, 36.332497>,  <44.552898, 31.284893, 36.102016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.603703, 31.328457, 36.332497>,  <44.688377, 31.401064, 36.716629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603703, 31.328457, 36.332497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674741, -0.683711, 0.277966,
		-0.707046, 0.706818, 0.022254,
		-0.211686, -0.181519, -0.960333,
		44.540195, 31.274000, 36.044395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903702, 31.393988, 36.598713>,  <44.688377, 31.401064, 36.716629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903702, 31.393988, 36.598713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054577, 31.175379, 36.299637>,  <44.145103, 31.044214, 36.120190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054577, 31.175379, 36.299637>,  <43.903702, 31.393988, 36.598713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054577, 31.175379, 36.299637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692536, -0.702471, 0.164101,
		-0.614915, 0.455904, -0.643452,
		0.377192, -0.546522, -0.747690,
		44.167736, 31.011423, 36.075329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314056, 31.221439, 36.187691>,  <43.903702, 31.393988, 36.598713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314056, 31.221439, 36.187691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614521, 30.977694, 36.086155>,  <43.794800, 30.831446, 36.025234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614521, 30.977694, 36.086155>,  <43.314056, 31.221439, 36.187691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614521, 30.977694, 36.086155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564959, -0.792340, 0.230257,
		-0.341434, -0.029554, -0.939441,
		0.751162, -0.609363, -0.253835,
		43.839870, 30.794884, 36.010006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847984, 30.656906, 36.006287>,  <43.314056, 31.221439, 36.187691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847984, 30.656906, 36.006287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.216602, 30.501617, 36.004055>,  <43.437775, 30.408443, 36.002716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.216602, 30.501617, 36.004055>,  <42.847984, 30.656906, 36.006287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216602, 30.501617, 36.004055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379102, -0.902816, 0.202989,
		-0.083844, -0.184948, -0.979165,
		0.921548, -0.388223, -0.005582,
		43.493069, 30.385151, 36.002380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946716, 30.039927, 35.454556>,  <42.847984, 30.656906, 36.006287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946716, 30.039927, 35.454556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197796, 29.984257, 35.760921>,  <43.348442, 29.950855, 35.944740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197796, 29.984257, 35.760921>,  <42.946716, 30.039927, 35.454556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197796, 29.984257, 35.760921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474277, -0.848571, 0.234497,
		0.617298, -0.510449, -0.598653,
		0.627698, -0.139172, 0.765915,
		43.386105, 29.942505, 35.990696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020821, 29.320023, 35.467472>,  <42.946716, 30.039927, 35.454556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020821, 29.320023, 35.467472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135185, 29.439507, 35.831676>,  <43.203804, 29.511198, 36.050198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135185, 29.439507, 35.831676>,  <43.020821, 29.320023, 35.467472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135185, 29.439507, 35.831676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317138, -0.867131, 0.384067,
		0.904254, -0.398567, -0.153193,
		0.285915, 0.298711, 0.910508,
		43.220959, 29.529119, 36.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380543, 28.748983, 35.780697>,  <43.020821, 29.320023, 35.467472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380543, 28.748983, 35.780697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295757, 28.976954, 36.098251>,  <43.244884, 29.113735, 36.288784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295757, 28.976954, 36.098251>,  <43.380543, 28.748983, 35.780697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295757, 28.976954, 36.098251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264345, -0.815500, 0.514862,
		0.940847, -0.100726, 0.323515,
		-0.211966, 0.569925, 0.793886,
		43.232166, 29.147930, 36.336418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787163, 28.504885, 36.317558>,  <43.380543, 28.748983, 35.780697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787163, 28.504885, 36.317558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471962, 28.679993, 36.490719>,  <43.282841, 28.785057, 36.594616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471962, 28.679993, 36.490719>,  <43.787163, 28.504885, 36.317558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471962, 28.679993, 36.490719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125696, -0.802723, 0.582955,
		0.602699, 0.404958, 0.687577,
		-0.788006, 0.437772, 0.432899,
		43.235561, 28.811325, 36.620590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800518, 28.220020, 36.956940>,  <43.787163, 28.504885, 36.317558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800518, 28.220020, 36.956940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430183, 28.370646, 36.944077>,  <43.207985, 28.461020, 36.936359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430183, 28.370646, 36.944077>,  <43.800518, 28.220020, 36.956940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430183, 28.370646, 36.944077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301415, -0.684382, 0.663905,
		0.227995, 0.624357, 0.747125,
		-0.925833, 0.376562, -0.032155,
		43.152435, 28.483614, 36.934429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670868, 28.139442, 37.607574>,  <43.800518, 28.220020, 36.956940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670868, 28.139442, 37.607574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330791, 28.197239, 37.405067>,  <43.126747, 28.231916, 37.283566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330791, 28.197239, 37.405067>,  <43.670868, 28.139442, 37.607574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330791, 28.197239, 37.405067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482854, -0.597266, 0.640411,
		-0.209842, 0.788921, 0.577555,
		-0.850188, 0.144489, -0.506265,
		43.075737, 28.240585, 37.253189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209587, 27.941677, 38.125957>,  <43.670868, 28.139442, 37.607574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209587, 27.941677, 38.125957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010952, 27.883793, 37.783623>,  <42.891773, 27.849062, 37.578220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010952, 27.883793, 37.783623>,  <43.209587, 27.941677, 38.125957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010952, 27.883793, 37.783623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365156, -0.859679, 0.357231,
		-0.787443, 0.489910, 0.374061,
		-0.496583, -0.144708, -0.855842,
		42.861977, 27.840380, 37.526871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465649, 27.745995, 38.287048>,  <43.209587, 27.941677, 38.125957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465649, 27.745995, 38.287048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.563766, 27.614868, 37.922112>,  <42.622639, 27.536192, 37.703148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.563766, 27.614868, 37.922112>,  <42.465649, 27.745995, 38.287048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563766, 27.614868, 37.922112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158589, -0.941985, 0.295827,
		-0.956389, 0.072123, -0.283052,
		0.245294, -0.327815, -0.912342,
		42.637356, 27.516523, 37.648411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036697, 27.150379, 38.268940>,  <42.465649, 27.745995, 38.287048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036697, 27.150379, 38.268940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306854, 27.107298, 37.977119>,  <42.468948, 27.081450, 37.802029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306854, 27.107298, 37.977119>,  <42.036697, 27.150379, 38.268940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306854, 27.107298, 37.977119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005845, -0.990029, 0.140745,
		-0.737435, -0.090794, -0.669288,
		0.675393, -0.107703, -0.729551,
		42.509472, 27.074987, 37.758255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.396713, 37.604218, 41.013748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264938, 37.234867, 41.092594>,  <38.185871, 37.013256, 41.139900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264938, 37.234867, 41.092594>,  <38.396713, 37.604218, 41.013748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264938, 37.234867, 41.092594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286135, -0.296587, -0.911133,
		0.899775, -0.243764, 0.361917,
		-0.329442, -0.923372, 0.197112,
		38.166107, 36.957855, 41.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864178, 37.188343, 40.688797>,  <38.396713, 37.604218, 41.013748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864178, 37.188343, 40.688797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550869, 36.942703, 40.727512>,  <38.362885, 36.795319, 40.750740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550869, 36.942703, 40.727512>,  <38.864178, 37.188343, 40.688797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550869, 36.942703, 40.727512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239250, -0.441457, -0.864798,
		0.573804, -0.654212, 0.492704,
		-0.783268, -0.614103, 0.096789,
		38.315887, 36.758472, 40.756550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144577, 36.529758, 40.461788>,  <38.864178, 37.188343, 40.688797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144577, 36.529758, 40.461788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747868, 36.495399, 40.423828>,  <38.509842, 36.474785, 40.401054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747868, 36.495399, 40.423828>,  <39.144577, 36.529758, 40.461788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747868, 36.495399, 40.423828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122200, -0.414786, -0.901676,
		0.038086, -0.905856, 0.421870,
		-0.991774, -0.085894, -0.094898,
		38.450336, 36.469631, 40.395359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018047, 35.832832, 40.264385>,  <39.144577, 36.529758, 40.461788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018047, 35.832832, 40.264385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705921, 36.042454, 40.127876>,  <38.518646, 36.168228, 40.045971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705921, 36.042454, 40.127876>,  <39.018047, 35.832832, 40.264385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705921, 36.042454, 40.127876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062424, -0.477704, -0.876300,
		-0.622258, -0.705097, 0.340048,
		-0.780319, 0.524058, -0.341271,
		38.471825, 36.199673, 40.025494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569496, 35.315842, 39.923275>,  <39.018047, 35.832832, 40.264385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569496, 35.315842, 39.923275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456326, 35.669804, 39.775276>,  <38.388424, 35.882179, 39.686478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456326, 35.669804, 39.775276>,  <38.569496, 35.315842, 39.923275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456326, 35.669804, 39.775276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216154, -0.434663, -0.874268,
		-0.934466, -0.167380, 0.314255,
		-0.282930, 0.884902, -0.369998,
		38.371445, 35.935276, 39.664276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927982, 35.248974, 39.639626>,  <38.569496, 35.315842, 39.923275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927982, 35.248974, 39.639626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111752, 35.558495, 39.465199>,  <38.222015, 35.744209, 39.360542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111752, 35.558495, 39.465199>,  <37.927982, 35.248974, 39.639626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111752, 35.558495, 39.465199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146387, -0.418267, -0.896450,
		-0.876070, 0.475687, -0.078888,
		0.459426, 0.773805, -0.436066,
		38.249580, 35.790634, 39.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572365, 35.201038, 39.165180>,  <37.927982, 35.248974, 39.639626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572365, 35.201038, 39.165180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844437, 35.464478, 39.036427>,  <38.007679, 35.622540, 38.959175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844437, 35.464478, 39.036427>,  <37.572365, 35.201038, 39.165180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844437, 35.464478, 39.036427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153401, -0.301503, -0.941044,
		-0.716816, 0.689455, -0.104047,
		0.680179, 0.658595, -0.321885,
		38.048489, 35.662056, 38.939861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230785, 35.533566, 38.530876>,  <37.572365, 35.201038, 39.165180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230785, 35.533566, 38.530876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613300, 35.647400, 38.503952>,  <37.842808, 35.715698, 38.487797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613300, 35.647400, 38.503952>,  <37.230785, 35.533566, 38.530876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613300, 35.647400, 38.503952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060098, -0.416519, -0.907139,
		-0.286194, 0.863438, -0.415414,
		0.956285, 0.284583, -0.067314,
		37.900185, 35.732777, 38.483757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269287, 35.718346, 37.891716>,  <37.230785, 35.533566, 38.530876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269287, 35.718346, 37.891716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626030, 35.591236, 38.020470>,  <37.840076, 35.514969, 38.097721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626030, 35.591236, 38.020470>,  <37.269287, 35.718346, 37.891716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626030, 35.591236, 38.020470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137405, -0.487656, -0.862155,
		0.430940, 0.813148, -0.391256,
		0.891858, -0.317777, 0.321881,
		37.893589, 35.495903, 38.117035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611565, 35.618092, 37.341408>,  <37.269287, 35.718346, 37.891716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611565, 35.618092, 37.341408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854160, 35.429943, 37.597820>,  <37.999718, 35.317055, 37.751667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854160, 35.429943, 37.597820>,  <37.611565, 35.618092, 37.341408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854160, 35.429943, 37.597820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241841, -0.658901, -0.712294,
		0.757421, 0.587024, -0.285859,
		0.606487, -0.470374, 0.641032,
		38.036106, 35.288830, 37.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368401, 35.641487, 37.135822>,  <37.611565, 35.618092, 37.341408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368401, 35.641487, 37.135822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281113, 35.306297, 37.335896>,  <38.228741, 35.105183, 37.455940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281113, 35.306297, 37.335896>,  <38.368401, 35.641487, 37.135822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281113, 35.306297, 37.335896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206152, -0.540550, -0.815664,
		0.953877, -0.074881, 0.290709,
		-0.218220, -0.837973, 0.500181,
		38.215645, 35.054905, 37.485950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951256, 35.285744, 37.107498>,  <38.368401, 35.641487, 37.135822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951256, 35.285744, 37.107498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679482, 35.010754, 37.210060>,  <38.516415, 34.845760, 37.271595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679482, 35.010754, 37.210060>,  <38.951256, 35.285744, 37.107498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679482, 35.010754, 37.210060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418251, -0.650000, -0.634481,
		0.602851, -0.323851, 0.729172,
		-0.679439, -0.687474, 0.256402,
		38.475651, 34.804512, 37.286980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316830, 34.682266, 37.304432>,  <38.951256, 35.285744, 37.107498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316830, 34.682266, 37.304432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960205, 34.559483, 37.171227>,  <38.746231, 34.485813, 37.091301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960205, 34.559483, 37.171227>,  <39.316830, 34.682266, 37.304432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960205, 34.559483, 37.171227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441068, -0.755489, -0.484454,
		-0.102882, -0.578802, 0.808952,
		-0.891557, -0.306961, -0.333017,
		38.692738, 34.467396, 37.071320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263912, 33.951485, 37.468342>,  <39.316830, 34.682266, 37.304432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263912, 33.951485, 37.468342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022671, 34.031513, 37.159477>,  <38.877926, 34.079529, 36.974159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022671, 34.031513, 37.159477>,  <39.263912, 33.951485, 37.468342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022671, 34.031513, 37.159477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311601, -0.832021, -0.458962,
		-0.734280, -0.517410, 0.439455,
		-0.603107, 0.200071, -0.772161,
		38.841740, 34.091534, 36.927830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242695, 33.522606, 36.987934>,  <39.263912, 33.951485, 37.468342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242695, 33.522606, 36.987934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395657, 33.168617, 36.881653>,  <39.487434, 32.956226, 36.817886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395657, 33.168617, 36.881653>,  <39.242695, 33.522606, 36.987934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395657, 33.168617, 36.881653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098398, -0.324923, 0.940608,
		-0.918741, -0.333549, -0.211332,
		0.382405, -0.884969, -0.265700,
		39.510380, 32.903126, 36.801945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818722, 32.962826, 37.395496>,  <39.242695, 33.522606, 36.987934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818722, 32.962826, 37.395496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197910, 32.862617, 37.316914>,  <39.425423, 32.802494, 37.269764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197910, 32.862617, 37.316914>,  <38.818722, 32.962826, 37.395496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197910, 32.862617, 37.316914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156846, -0.169493, 0.972970,
		-0.277047, -0.953159, -0.121381,
		0.947969, -0.250520, -0.196457,
		39.482300, 32.787460, 37.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991131, 32.320213, 37.685532>,  <38.818722, 32.962826, 37.395496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991131, 32.320213, 37.685532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344273, 32.497849, 37.624393>,  <39.556156, 32.604431, 37.587711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344273, 32.497849, 37.624393>,  <38.991131, 32.320213, 37.685532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344273, 32.497849, 37.624393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193091, -0.046535, 0.980077,
		0.428127, -0.894774, -0.126832,
		0.882850, 0.444087, -0.152850,
		39.609127, 32.631073, 37.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505501, 31.857868, 37.932461>,  <38.991131, 32.320213, 37.685532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505501, 31.857868, 37.932461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654503, 32.228844, 37.945736>,  <39.743904, 32.451427, 37.953701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654503, 32.228844, 37.945736>,  <39.505501, 31.857868, 37.932461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654503, 32.228844, 37.945736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158898, -0.098968, 0.982322,
		0.914326, -0.360647, -0.184234,
		0.372505, 0.927437, 0.033183,
		39.766254, 32.507076, 37.955692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065468, 31.928024, 38.446072>,  <39.505501, 31.857868, 37.932461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065468, 31.928024, 38.446072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994270, 32.321053, 38.424641>,  <39.951550, 32.556870, 38.411781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994270, 32.321053, 38.424641>,  <40.065468, 31.928024, 38.446072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994270, 32.321053, 38.424641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051844, 0.063735, 0.996619,
		0.982664, 0.174617, -0.062285,
		-0.177996, 0.982572, -0.053577,
		39.940872, 32.615826, 38.408569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588482, 32.157906, 38.771194>,  <40.065468, 31.928024, 38.446072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588482, 32.157906, 38.771194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319389, 32.453346, 38.788624>,  <40.157936, 32.630611, 38.799080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319389, 32.453346, 38.788624>,  <40.588482, 32.157906, 38.771194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319389, 32.453346, 38.788624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252877, 0.174177, 0.951691,
		0.695334, 0.651249, -0.303950,
		-0.672729, 0.738605, 0.043575,
		40.117569, 32.674927, 38.801697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829285, 32.639797, 39.315678>,  <40.588482, 32.157906, 38.771194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829285, 32.639797, 39.315678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455223, 32.770042, 39.259880>,  <40.230785, 32.848190, 39.226402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455223, 32.770042, 39.259880>,  <40.829285, 32.639797, 39.315678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455223, 32.770042, 39.259880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077996, 0.194871, 0.977723,
		0.345543, 0.925204, -0.156839,
		-0.935156, 0.325613, -0.139498,
		40.174675, 32.867725, 39.218029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763535, 33.231651, 39.785034>,  <40.829285, 32.639797, 39.315678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763535, 33.231651, 39.785034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384354, 33.134205, 39.703022>,  <40.156845, 33.075737, 39.653812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384354, 33.134205, 39.703022>,  <40.763535, 33.231651, 39.785034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384354, 33.134205, 39.703022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232208, 0.088327, 0.968647,
		-0.217865, 0.965842, -0.140299,
		-0.947953, -0.243613, -0.205033,
		40.099968, 33.061119, 39.641514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280632, 33.773350, 40.026180>,  <40.763535, 33.231651, 39.785034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280632, 33.773350, 40.026180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089272, 33.422764, 40.047867>,  <39.974457, 33.212414, 40.060879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089272, 33.422764, 40.047867>,  <40.280632, 33.773350, 40.026180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089272, 33.422764, 40.047867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345713, 0.244740, 0.905861,
		-0.807226, 0.414621, -0.420090,
		-0.478402, -0.876465, 0.054221,
		39.945751, 33.159824, 40.064133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659836, 33.985291, 40.253056>,  <40.280632, 33.773350, 40.026180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659836, 33.985291, 40.253056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700314, 33.594051, 40.325817>,  <39.724602, 33.359310, 40.369473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700314, 33.594051, 40.325817>,  <39.659836, 33.985291, 40.253056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700314, 33.594051, 40.325817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332642, 0.139053, 0.932745,
		-0.937608, -0.154900, -0.311283,
		0.101197, -0.978095, 0.181904,
		39.730671, 33.300621, 40.380386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080223, 33.902588, 40.656082>,  <39.659836, 33.985291, 40.253056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080223, 33.902588, 40.656082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293140, 33.570522, 40.722397>,  <39.420891, 33.371281, 40.762184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293140, 33.570522, 40.722397>,  <39.080223, 33.902588, 40.656082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293140, 33.570522, 40.722397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351958, -0.038915, 0.935207,
		-0.769926, -0.556156, -0.312897,
		0.532297, -0.830166, 0.165782,
		39.452831, 33.321472, 40.772133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528069, 33.452168, 40.807686>,  <39.080223, 33.902588, 40.656082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528069, 33.452168, 40.807686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892563, 33.356827, 40.942047>,  <39.111259, 33.299622, 41.022663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892563, 33.356827, 40.942047>,  <38.528069, 33.452168, 40.807686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892563, 33.356827, 40.942047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335124, 0.045066, 0.941096,
		-0.239450, -0.970133, -0.038812,
		0.911239, -0.238352, 0.335906,
		39.165936, 33.285320, 41.042820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456310, 32.913425, 41.367065>,  <38.528069, 33.452168, 40.807686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456310, 32.913425, 41.367065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818039, 33.072220, 41.429821>,  <39.035076, 33.167496, 41.467476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818039, 33.072220, 41.429821>,  <38.456310, 32.913425, 41.367065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818039, 33.072220, 41.429821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127604, -0.099329, 0.986839,
		0.407341, -0.912436, -0.039168,
		0.904317, 0.396982, 0.156891,
		39.089333, 33.191315, 41.476887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621918, 32.570278, 42.008621>,  <38.456310, 32.913425, 41.367065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621918, 32.570278, 42.008621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901741, 32.852673, 41.964455>,  <39.069637, 33.022110, 41.937954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901741, 32.852673, 41.964455>,  <38.621918, 32.570278, 42.008621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901741, 32.852673, 41.964455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201374, -0.046513, 0.978410,
		0.685611, -0.706693, -0.174706,
		0.699561, 0.705990, -0.110420,
		39.111610, 33.064468, 41.931328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027035, 32.017921, 41.979488>,  <38.621918, 32.570278, 42.008621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027035, 32.017921, 41.979488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797356, 31.699226, 42.054859>,  <38.659550, 31.508009, 42.100082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797356, 31.699226, 42.054859>,  <39.027035, 32.017921, 41.979488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797356, 31.699226, 42.054859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211127, -0.078267, -0.974320,
		0.791027, -0.599233, -0.123272,
		-0.574197, -0.796740, 0.188426,
		38.625095, 31.460205, 42.111385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251968, 31.503916, 41.459099>,  <39.027035, 32.017921, 41.979488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251968, 31.503916, 41.459099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884277, 31.397230, 41.574944>,  <38.663662, 31.333218, 41.644451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884277, 31.397230, 41.574944>,  <39.251968, 31.503916, 41.459099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884277, 31.397230, 41.574944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291491, -0.033443, -0.955989,
		0.264663, -0.963195, -0.047003,
		-0.919231, -0.266716, 0.289614,
		38.608509, 31.317215, 41.661827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005764, 30.967964, 40.953537>,  <39.251968, 31.503916, 41.459099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005764, 30.967964, 40.953537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677471, 31.102703, 41.138115>,  <38.480495, 31.183546, 41.248863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677471, 31.102703, 41.138115>,  <39.005764, 30.967964, 40.953537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677471, 31.102703, 41.138115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509387, -0.065732, -0.858024,
		-0.258692, -0.939262, 0.225534,
		-0.820734, 0.336847, 0.461443,
		38.431252, 31.203756, 41.276546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451756, 30.613199, 40.619457>,  <39.005764, 30.967964, 40.953537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451756, 30.613199, 40.619457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263859, 30.922129, 40.790504>,  <38.151119, 31.107487, 40.893131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263859, 30.922129, 40.790504>,  <38.451756, 30.613199, 40.619457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263859, 30.922129, 40.790504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569552, 0.104956, -0.815227,
		-0.674500, -0.626498, 0.390576,
		-0.469745, 0.772324, 0.427617,
		38.122936, 31.153826, 40.918789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681087, 30.456505, 40.570877>,  <38.451756, 30.613199, 40.619457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681087, 30.456505, 40.570877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722637, 30.851795, 40.615807>,  <37.747566, 31.088970, 40.642765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722637, 30.851795, 40.615807>,  <37.681087, 30.456505, 40.570877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722637, 30.851795, 40.615807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603247, 0.152391, -0.782860,
		-0.790761, 0.013559, 0.611975,
		0.103874, 0.988227, 0.112326,
		37.753799, 31.148264, 40.649506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045406, 30.629253, 40.554459>,  <37.681087, 30.456505, 40.570877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045406, 30.629253, 40.554459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245003, 30.965582, 40.470528>,  <37.364761, 31.167379, 40.420170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245003, 30.965582, 40.470528>,  <37.045406, 30.629253, 40.554459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245003, 30.965582, 40.470528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630862, 0.186440, -0.753162,
		-0.594154, 0.508195, 0.623474,
		0.498994, 0.840820, -0.209827,
		37.394699, 31.217829, 40.407581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481407, 31.072565, 40.322006>,  <37.045406, 30.629253, 40.554459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481407, 31.072565, 40.322006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817585, 31.246124, 40.192154>,  <37.019291, 31.350260, 40.114243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817585, 31.246124, 40.192154>,  <36.481407, 31.072565, 40.322006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817585, 31.246124, 40.192154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439674, 0.195820, -0.876551,
		-0.316763, 0.879425, 0.355348,
		0.840446, 0.433896, -0.324632,
		37.069717, 31.376293, 40.094765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352097, 31.800869, 40.190540>,  <36.481407, 31.072565, 40.322006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352097, 31.800869, 40.190540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666790, 31.683992, 39.973038>,  <36.855606, 31.613867, 39.842537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666790, 31.683992, 39.973038>,  <36.352097, 31.800869, 40.190540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666790, 31.683992, 39.973038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405113, 0.420244, -0.811959,
		0.465758, 0.859081, 0.212250,
		0.786735, -0.292192, -0.543757,
		36.902809, 31.596334, 39.809910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507214, 32.342865, 39.770599>,  <36.352097, 31.800869, 40.190540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507214, 32.342865, 39.770599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680367, 32.034988, 39.582905>,  <36.784260, 31.850264, 39.470287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680367, 32.034988, 39.582905>,  <36.507214, 32.342865, 39.770599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680367, 32.034988, 39.582905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317274, 0.357144, -0.878513,
		0.843770, 0.529174, -0.089600,
		0.432886, -0.769691, -0.469240,
		36.810234, 31.804081, 39.442131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819546, 32.500198, 39.142551>,  <36.507214, 32.342865, 39.770599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819546, 32.500198, 39.142551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788643, 32.106461, 39.079189>,  <36.770100, 31.870216, 39.041172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788643, 32.106461, 39.079189>,  <36.819546, 32.500198, 39.142551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788643, 32.106461, 39.079189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498177, 0.175734, -0.849081,
		0.863627, 0.013314, -0.503956,
		-0.077258, -0.984348, -0.158402,
		36.765465, 31.811157, 39.031670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023163, 32.342590, 38.477428>,  <36.819546, 32.500198, 39.142551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023163, 32.342590, 38.477428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810627, 32.012032, 38.551994>,  <36.683105, 31.813698, 38.596733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810627, 32.012032, 38.551994>,  <37.023163, 32.342590, 38.477428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810627, 32.012032, 38.551994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591812, 0.204635, -0.779669,
		0.606166, -0.524593, -0.597800,
		-0.531340, -0.826394, 0.186418,
		36.651226, 31.764114, 38.607922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888519, 31.886864, 37.923592>,  <37.023163, 32.342590, 38.477428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888519, 31.886864, 37.923592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570194, 31.813826, 38.154533>,  <36.379200, 31.770002, 38.293098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570194, 31.813826, 38.154533>,  <36.888519, 31.886864, 37.923592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570194, 31.813826, 38.154533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598496, 0.092124, -0.795812,
		0.092124, -0.978863, -0.182596,
		0.795812, 0.182596, -0.577358,
		36.331451, 31.759047, 38.327740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.786655, 30.716522, 45.923691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.398018, 30.768787, 45.844772>,  <39.164833, 30.800146, 45.797421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.398018, 30.768787, 45.844772>,  <39.786655, 30.716522, 45.923691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398018, 30.768787, 45.844772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167308, -0.210316, -0.963211,
		-0.167346, -0.968863, 0.182482,
		-0.971598, 0.130659, -0.197294,
		39.106537, 30.807987, 45.785583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688904, 30.236439, 45.427761>,  <39.786655, 30.716522, 45.923691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688904, 30.236439, 45.427761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382889, 30.489231, 45.378246>,  <39.199280, 30.640905, 45.348537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382889, 30.489231, 45.378246>,  <39.688904, 30.236439, 45.427761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382889, 30.489231, 45.378246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055243, -0.127115, -0.990348,
		-0.641615, -0.764490, 0.062335,
		-0.765035, 0.631979, -0.123792,
		39.153378, 30.678825, 45.341110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227280, 29.988180, 44.859737>,  <39.688904, 30.236439, 45.427761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227280, 29.988180, 44.859737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111988, 30.370754, 44.878307>,  <39.042812, 30.600300, 44.889450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111988, 30.370754, 44.878307>,  <39.227280, 29.988180, 44.859737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111988, 30.370754, 44.878307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168654, -0.002986, -0.985671,
		-0.942593, -0.291925, 0.162167,
		-0.288226, 0.956436, 0.046420,
		39.025520, 30.657684, 44.892235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671387, 30.021114, 44.459797>,  <39.227280, 29.988180, 44.859737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671387, 30.021114, 44.459797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758148, 30.411245, 44.476215>,  <38.810207, 30.645325, 44.486065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758148, 30.411245, 44.476215>,  <38.671387, 30.021114, 44.459797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758148, 30.411245, 44.476215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313083, 0.109330, -0.943412,
		-0.924624, 0.191782, 0.329074,
		0.216907, 0.975329, 0.041045,
		38.823219, 30.703844, 44.488529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134769, 30.287884, 44.082935>,  <38.671387, 30.021114, 44.459797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134769, 30.287884, 44.082935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411102, 30.575430, 44.113892>,  <38.576900, 30.747957, 44.132465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411102, 30.575430, 44.113892>,  <38.134769, 30.287884, 44.082935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411102, 30.575430, 44.113892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159674, 0.256085, -0.953376,
		-0.705165, 0.646263, 0.291694,
		0.690830, 0.718863, 0.077391,
		38.618351, 30.791088, 44.137108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828312, 30.921209, 43.908009>,  <38.134769, 30.287884, 44.082935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828312, 30.921209, 43.908009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218140, 30.987740, 43.847935>,  <38.452034, 31.027658, 43.811890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218140, 30.987740, 43.847935>,  <37.828312, 30.921209, 43.908009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218140, 30.987740, 43.847935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193422, 0.285897, -0.938537,
		-0.113168, 0.943715, 0.310797,
		0.974567, 0.166327, -0.150181,
		38.510509, 31.037638, 43.802879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889805, 31.659563, 43.726608>,  <37.828312, 30.921209, 43.908009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889805, 31.659563, 43.726608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185486, 31.433784, 43.579647>,  <38.362892, 31.298317, 43.491470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185486, 31.433784, 43.579647>,  <37.889805, 31.659563, 43.726608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185486, 31.433784, 43.579647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200388, 0.336480, -0.920122,
		0.642984, 0.753776, 0.135617,
		0.739199, -0.564448, -0.367400,
		38.407246, 31.264450, 43.469429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130360, 31.991343, 43.104538>,  <37.889805, 31.659563, 43.726608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130360, 31.991343, 43.104538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327061, 31.647247, 43.050625>,  <38.445084, 31.440790, 43.018276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327061, 31.647247, 43.050625>,  <38.130360, 31.991343, 43.104538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327061, 31.647247, 43.050625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028546, 0.170638, -0.984920,
		0.870265, 0.480493, 0.108469,
		0.491756, -0.860237, -0.134785,
		38.474586, 31.389175, 43.010189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699108, 32.136631, 42.640915>,  <38.130360, 31.991343, 43.104538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699108, 32.136631, 42.640915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619652, 31.745443, 42.615223>,  <38.571980, 31.510731, 42.599808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619652, 31.745443, 42.615223>,  <38.699108, 32.136631, 42.640915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619652, 31.745443, 42.615223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049681, 0.075494, -0.995908,
		0.978813, -0.194634, -0.063583,
		-0.198637, -0.977966, -0.064225,
		38.560062, 31.452053, 42.595955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293427, 32.466927, 42.554604>,  <38.699108, 32.136631, 42.640915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293427, 32.466927, 42.554604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.339775, 32.852692, 42.459538>,  <39.367584, 33.084152, 42.402500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.339775, 32.852692, 42.459538>,  <39.293427, 32.466927, 42.554604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339775, 32.852692, 42.459538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106309, 0.225859, 0.968342,
		0.987558, -0.137473, -0.076354,
		0.115875, 0.964411, -0.237663,
		39.374538, 33.142014, 42.388237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745403, 32.618774, 43.068501>,  <39.293427, 32.466927, 42.554604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745403, 32.618774, 43.068501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583752, 32.955944, 42.926422>,  <39.486763, 33.158245, 42.841175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583752, 32.955944, 42.926422>,  <39.745403, 32.618774, 43.068501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583752, 32.955944, 42.926422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068708, 0.359248, 0.930710,
		0.912119, 0.400528, -0.087266,
		-0.404126, 0.842922, -0.355196,
		39.462513, 33.208820, 42.819862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109467, 33.238777, 43.222408>,  <39.745403, 32.618774, 43.068501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109467, 33.238777, 43.222408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.732136, 33.362720, 43.174881>,  <39.505737, 33.437088, 43.146366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.732136, 33.362720, 43.174881>,  <40.109467, 33.238777, 43.222408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732136, 33.362720, 43.174881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036792, 0.453472, 0.890511,
		0.329813, 0.835673, -0.439174,
		-0.943329, 0.309860, -0.118815,
		39.449139, 33.455677, 43.139236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120480, 33.899944, 43.373035>,  <40.109467, 33.238777, 43.222408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120480, 33.899944, 43.373035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.727943, 33.837769, 43.418316>,  <39.492424, 33.800461, 43.445484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.727943, 33.837769, 43.418316>,  <40.120480, 33.899944, 43.373035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727943, 33.837769, 43.418316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024597, 0.482371, 0.875622,
		-0.190713, 0.862065, -0.469545,
		-0.981338, -0.155443, 0.113199,
		39.433540, 33.791134, 43.452274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874107, 34.489384, 43.762619>,  <40.120480, 33.899944, 43.373035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874107, 34.489384, 43.762619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616646, 34.185249, 43.797497>,  <39.462170, 34.002769, 43.818424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616646, 34.185249, 43.797497>,  <39.874107, 34.489384, 43.762619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616646, 34.185249, 43.797497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160314, 0.245352, 0.956087,
		-0.748336, 0.601413, -0.279814,
		-0.643656, -0.760332, 0.087190,
		39.423550, 33.957150, 43.823654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592796, 34.740753, 44.369022>,  <39.874107, 34.489384, 43.762619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592796, 34.740753, 44.369022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.469887, 34.365479, 44.305294>,  <39.396141, 34.140312, 44.267059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.469887, 34.365479, 44.305294>,  <39.592796, 34.740753, 44.369022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469887, 34.365479, 44.305294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069955, -0.144694, 0.987000,
		-0.949047, 0.314424, -0.021171,
		-0.307273, -0.938190, -0.159317,
		39.377705, 34.084023, 44.257500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920475, 34.646019, 44.702496>,  <39.592796, 34.740753, 44.369022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920475, 34.646019, 44.702496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095436, 34.287621, 44.671860>,  <39.200413, 34.072582, 44.653477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095436, 34.287621, 44.671860>,  <38.920475, 34.646019, 44.702496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095436, 34.287621, 44.671860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117722, -0.141486, 0.982916,
		-0.891528, -0.420913, -0.167365,
		0.437401, -0.895999, -0.076588,
		39.226658, 34.018822, 44.648884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363941, 34.265923, 44.997875>,  <38.920475, 34.646019, 44.702496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363941, 34.265923, 44.997875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700096, 34.049126, 44.997768>,  <38.901787, 33.919048, 44.997704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700096, 34.049126, 44.997768>,  <38.363941, 34.265923, 44.997875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700096, 34.049126, 44.997768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171145, -0.265840, 0.948704,
		-0.514262, -0.797229, -0.316167,
		0.840384, -0.541992, -0.000270,
		38.952209, 33.886528, 44.997688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096386, 33.685242, 45.256317>,  <38.363941, 34.265923, 44.997875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096386, 33.685242, 45.256317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493832, 33.692760, 45.300804>,  <38.732300, 33.697273, 45.327496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493832, 33.692760, 45.300804>,  <38.096386, 33.685242, 45.256317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493832, 33.692760, 45.300804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107896, -0.128983, 0.985760,
		0.032875, -0.991469, -0.126132,
		0.993619, 0.018798, 0.111216,
		38.791916, 33.698399, 45.334167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280670, 33.206627, 45.736221>,  <38.096386, 33.685242, 45.256317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280670, 33.206627, 45.736221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602066, 33.444012, 45.755066>,  <38.794903, 33.586441, 45.766373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602066, 33.444012, 45.755066>,  <38.280670, 33.206627, 45.736221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602066, 33.444012, 45.755066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009776, -0.065965, 0.997774,
		0.595244, -0.802157, -0.047200,
		0.803485, 0.593458, 0.047107,
		38.843113, 33.622047, 45.769199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731140, 32.953278, 46.267109>,  <38.280670, 33.206627, 45.736221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731140, 32.953278, 46.267109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838390, 33.332558, 46.198956>,  <38.902740, 33.560123, 46.158062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838390, 33.332558, 46.198956>,  <38.731140, 32.953278, 46.267109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838390, 33.332558, 46.198956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103906, 0.147364, 0.983609,
		0.957765, -0.281433, -0.059012,
		0.268123, 0.948198, -0.170383,
		38.918827, 33.617016, 46.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236839, 33.106972, 46.704659>,  <38.731140, 32.953278, 46.267109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236839, 33.106972, 46.704659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125992, 33.472187, 46.584949>,  <39.059483, 33.691319, 46.513126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125992, 33.472187, 46.584949>,  <39.236839, 33.106972, 46.704659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125992, 33.472187, 46.584949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006338, 0.309723, 0.950806,
		0.960814, 0.265386, -0.080044,
		-0.277122, 0.913040, -0.299268,
		39.042854, 33.746098, 46.495171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671497, 33.593342, 46.910049>,  <39.236839, 33.106972, 46.704659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671497, 33.593342, 46.910049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319122, 33.779598, 46.876255>,  <39.107697, 33.891350, 46.855980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319122, 33.779598, 46.876255>,  <39.671497, 33.593342, 46.910049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319122, 33.779598, 46.876255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046037, 0.261997, 0.963970,
		0.470996, 0.845304, -0.252238,
		-0.880933, 0.465639, -0.084484,
		39.054844, 33.919289, 46.850910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754040, 34.173100, 47.354229>,  <39.671497, 33.593342, 46.910049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754040, 34.173100, 47.354229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.371933, 34.187347, 47.236794>,  <39.142670, 34.195896, 47.166332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.371933, 34.187347, 47.236794>,  <39.754040, 34.173100, 47.354229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371933, 34.187347, 47.236794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279875, 0.211948, 0.936348,
		0.095577, 0.976632, -0.192499,
		-0.955267, 0.035618, -0.293592,
		39.085354, 34.198032, 47.148716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.132004, 33.966591, 47.042023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516308, 33.859741, 47.012119>,  <32.746891, 33.795631, 46.994175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516308, 33.859741, 47.012119>,  <32.132004, 33.966591, 47.042023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516308, 33.859741, 47.012119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047155, 0.422880, -0.904958,
		0.273349, 0.865920, 0.418882,
		0.960758, -0.267122, -0.074761,
		32.804535, 33.779606, 46.989693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435524, 34.501526, 46.671623>,  <32.132004, 33.966591, 47.042023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435524, 34.501526, 46.671623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717457, 34.218597, 46.650059>,  <32.886616, 34.048840, 46.637119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717457, 34.218597, 46.650059>,  <32.435524, 34.501526, 46.671623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717457, 34.218597, 46.650059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293197, 0.359681, -0.885814,
		0.645943, 0.608547, 0.460899,
		0.704836, -0.707319, -0.053909,
		32.928909, 34.006401, 46.633884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119293, 34.864193, 46.488663>,  <32.435524, 34.501526, 46.671623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119293, 34.864193, 46.488663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127827, 34.479927, 46.377911>,  <33.132946, 34.249367, 46.311459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127827, 34.479927, 46.377911>,  <33.119293, 34.864193, 46.488663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127827, 34.479927, 46.377911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199061, 0.275480, -0.940471,
		0.979755, -0.035049, 0.197109,
		0.021337, -0.960668, -0.276880,
		33.134228, 34.191727, 46.294846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728130, 34.818863, 46.015297>,  <33.119293, 34.864193, 46.488663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728130, 34.818863, 46.015297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502380, 34.497105, 45.941090>,  <33.366928, 34.304050, 45.896564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502380, 34.497105, 45.941090>,  <33.728130, 34.818863, 46.015297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502380, 34.497105, 45.941090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172670, 0.104729, -0.979396,
		0.807255, -0.584784, 0.079789,
		-0.564379, -0.804400, -0.185519,
		33.333065, 34.255783, 45.885433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113873, 34.424702, 45.707481>,  <33.728130, 34.818863, 46.015297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113873, 34.424702, 45.707481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767521, 34.256626, 45.598892>,  <33.559711, 34.155781, 45.533737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767521, 34.256626, 45.598892>,  <34.113873, 34.424702, 45.707481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767521, 34.256626, 45.598892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302579, -0.007749, -0.953093,
		0.398376, -0.907403, 0.133850,
		-0.865877, -0.420190, -0.271474,
		33.507759, 34.130569, 45.517448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221634, 33.899502, 45.287220>,  <34.113873, 34.424702, 45.707481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221634, 33.899502, 45.287220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857628, 34.024853, 45.178654>,  <33.639225, 34.100063, 45.113514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857628, 34.024853, 45.178654>,  <34.221634, 33.899502, 45.287220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857628, 34.024853, 45.178654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275027, -0.033546, -0.960851,
		-0.310213, -0.949036, -0.055659,
		-0.910015, 0.313376, -0.271417,
		33.584621, 34.118866, 45.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063572, 33.471542, 44.716908>,  <34.221634, 33.899502, 45.287220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063572, 33.471542, 44.716908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813877, 33.779045, 44.661285>,  <33.664059, 33.963547, 44.627911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813877, 33.779045, 44.661285>,  <34.063572, 33.471542, 44.716908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813877, 33.779045, 44.661285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062225, -0.128508, -0.989754,
		-0.778751, -0.626497, 0.032384,
		-0.624240, 0.768757, -0.139059,
		33.626606, 34.009674, 44.619568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602772, 33.283249, 44.229916>,  <34.063572, 33.471542, 44.716908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602772, 33.283249, 44.229916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545177, 33.678818, 44.215473>,  <33.510620, 33.916161, 44.206806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545177, 33.678818, 44.215473>,  <33.602772, 33.283249, 44.229916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545177, 33.678818, 44.215473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226390, -0.068435, -0.971630,
		-0.963336, -0.131727, 0.233736,
		-0.143985, 0.988921, -0.036105,
		33.501984, 33.975494, 44.204643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101791, 33.534271, 43.665482>,  <33.602772, 33.283249, 44.229916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101791, 33.534271, 43.665482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275307, 33.892738, 43.702812>,  <33.379414, 34.107819, 43.725212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275307, 33.892738, 43.702812>,  <33.101791, 33.534271, 43.665482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275307, 33.892738, 43.702812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144674, 0.171514, -0.974501,
		-0.889326, 0.409222, 0.204052,
		0.433785, 0.896170, 0.093329,
		33.405441, 34.161591, 43.730812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711864, 34.005253, 43.181107>,  <33.101791, 33.534271, 43.665482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711864, 34.005253, 43.181107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063187, 34.169563, 43.278957>,  <33.273979, 34.268150, 43.337669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063187, 34.169563, 43.278957>,  <32.711864, 34.005253, 43.181107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063187, 34.169563, 43.278957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193995, 0.161461, -0.967624,
		-0.436977, 0.897325, 0.062123,
		0.878303, 0.410778, 0.244632,
		33.326679, 34.292797, 43.352348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719551, 34.722012, 42.989906>,  <32.711864, 34.005253, 43.181107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719551, 34.722012, 42.989906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.100674, 34.600590, 42.988937>,  <33.329350, 34.527737, 42.988358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.100674, 34.600590, 42.988937>,  <32.719551, 34.722012, 42.989906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100674, 34.600590, 42.988937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073553, 0.238593, -0.968330,
		0.294519, 0.922457, 0.249662,
		0.952811, -0.303555, -0.002420,
		33.386517, 34.509521, 42.988213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997986, 35.211555, 42.590248>,  <32.719551, 34.722012, 42.989906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997986, 35.211555, 42.590248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278458, 34.926365, 42.591312>,  <33.446739, 34.755249, 42.591949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278458, 34.926365, 42.591312>,  <32.997986, 35.211555, 42.590248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278458, 34.926365, 42.591312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265674, 0.257812, -0.928951,
		0.661639, 0.652067, 0.370193,
		0.701179, -0.712981, 0.002659,
		33.488811, 34.712471, 42.592110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618637, 35.505028, 42.187759>,  <32.997986, 35.211555, 42.590248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618637, 35.505028, 42.187759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.587341, 35.106480, 42.201134>,  <33.568565, 34.867352, 42.209160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.587341, 35.106480, 42.201134>,  <33.618637, 35.505028, 42.187759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587341, 35.106480, 42.201134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069614, -0.038920, -0.996815,
		0.994502, -0.075660, 0.072406,
		-0.078237, -0.996374, 0.033439,
		33.563869, 34.807568, 42.211166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215038, 35.283989, 41.755924>,  <33.618637, 35.505028, 42.187759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215038, 35.283989, 41.755924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923363, 35.011589, 41.782814>,  <33.748356, 34.848148, 41.798946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923363, 35.011589, 41.782814>,  <34.215038, 35.283989, 41.755924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923363, 35.011589, 41.782814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088462, -0.191215, -0.977554,
		0.678566, -0.706879, 0.199676,
		-0.729193, -0.680999, 0.067220,
		33.704605, 34.807289, 41.802979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961544, 35.577637, 41.638947>,  <34.215038, 35.283989, 41.755924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961544, 35.577637, 41.638947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945477, 35.960125, 41.522999>,  <34.935837, 36.189617, 41.453430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945477, 35.960125, 41.522999>,  <34.961544, 35.577637, 41.638947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945477, 35.960125, 41.522999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033325, 0.291229, 0.956073,
		0.998637, 0.028741, -0.043564,
		-0.040165, 0.956222, -0.289874,
		34.933426, 36.246990, 41.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514297, 35.825314, 42.027275>,  <34.961544, 35.577637, 41.638947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514297, 35.825314, 42.027275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304337, 36.154015, 41.938553>,  <35.178360, 36.351234, 41.885319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304337, 36.154015, 41.938553>,  <35.514297, 35.825314, 42.027275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304337, 36.154015, 41.938553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085087, 0.208632, 0.974286,
		0.846897, 0.530281, -0.039591,
		-0.524905, 0.821751, -0.221810,
		35.146866, 36.400539, 41.872009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757915, 36.378166, 42.366695>,  <35.514297, 35.825314, 42.027275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757915, 36.378166, 42.366695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372025, 36.476044, 42.327850>,  <35.140491, 36.534771, 42.304543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372025, 36.476044, 42.327850>,  <35.757915, 36.378166, 42.366695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372025, 36.476044, 42.327850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055546, 0.171386, 0.983637,
		0.257332, 0.954333, -0.151749,
		-0.964725, 0.244692, -0.097112,
		35.082607, 36.549450, 42.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786900, 37.070965, 42.826054>,  <35.757915, 36.378166, 42.366695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786900, 37.070965, 42.826054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417866, 36.928528, 42.766678>,  <35.196445, 36.843067, 42.731052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417866, 36.928528, 42.766678>,  <35.786900, 37.070965, 42.826054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417866, 36.928528, 42.766678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231343, 0.202736, 0.951514,
		-0.308731, 0.912194, -0.269421,
		-0.922586, -0.356091, -0.148438,
		35.141090, 36.821701, 42.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293156, 37.654747, 43.096218>,  <35.786900, 37.070965, 42.826054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293156, 37.654747, 43.096218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.111423, 37.299004, 43.116741>,  <35.002384, 37.085560, 43.129055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.111423, 37.299004, 43.116741>,  <35.293156, 37.654747, 43.096218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111423, 37.299004, 43.116741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216613, 0.166158, 0.962014,
		-0.864097, 0.425957, -0.268136,
		-0.454329, -0.889355, 0.051309,
		34.975124, 37.032196, 43.132133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859566, 37.699203, 43.721626>,  <35.293156, 37.654747, 43.096218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859566, 37.699203, 43.721626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828350, 37.310074, 43.634422>,  <34.809620, 37.076595, 43.582100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828350, 37.310074, 43.634422>,  <34.859566, 37.699203, 43.721626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828350, 37.310074, 43.634422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054644, -0.214170, 0.975267,
		-0.995451, 0.088025, -0.036445,
		-0.078042, -0.972822, -0.218006,
		34.804935, 37.018227, 43.569019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246483, 37.490559, 44.028881>,  <34.859566, 37.699203, 43.721626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246483, 37.490559, 44.028881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490314, 37.178043, 43.975212>,  <34.636612, 36.990532, 43.943012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490314, 37.178043, 43.975212>,  <34.246483, 37.490559, 44.028881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490314, 37.178043, 43.975212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222162, -0.330841, 0.917163,
		-0.760962, -0.529271, -0.375245,
		0.609574, -0.781291, -0.134174,
		34.673187, 36.943657, 43.934959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885185, 36.882931, 44.331326>,  <34.246483, 37.490559, 44.028881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885185, 36.882931, 44.331326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266922, 36.764565, 44.314976>,  <34.495964, 36.693546, 44.305164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266922, 36.764565, 44.314976>,  <33.885185, 36.882931, 44.331326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266922, 36.764565, 44.314976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086915, -0.405974, 0.909742,
		-0.285801, -0.864650, -0.413157,
		0.954339, -0.295914, -0.040877,
		34.553223, 36.675789, 44.302711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892380, 36.277016, 44.731346>,  <33.885185, 36.882931, 44.331326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892380, 36.277016, 44.731346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.288124, 36.330223, 44.707794>,  <34.525570, 36.362148, 44.693661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.288124, 36.330223, 44.707794>,  <33.892380, 36.277016, 44.731346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288124, 36.330223, 44.707794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116951, -0.486635, 0.865742,
		0.086502, -0.863419, -0.497016,
		0.989364, 0.133015, -0.058883,
		34.584934, 36.370129, 44.690128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341480, 35.681473, 44.824821>,  <33.892380, 36.277016, 44.731346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341480, 35.681473, 44.824821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.612831, 35.961018, 44.915501>,  <34.775642, 36.128746, 44.969910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.612831, 35.961018, 44.915501>,  <34.341480, 35.681473, 44.824821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612831, 35.961018, 44.915501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309760, -0.551844, 0.774285,
		0.666226, -0.455032, -0.590838,
		0.678375, 0.698867, 0.226701,
		34.816345, 36.170677, 44.983513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938225, 35.402374, 45.054825>,  <34.341480, 35.681473, 44.824821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938225, 35.402374, 45.054825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969864, 35.774757, 45.197403>,  <34.988850, 35.998188, 45.282951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969864, 35.774757, 45.197403>,  <34.938225, 35.402374, 45.054825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969864, 35.774757, 45.197403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293192, -0.363481, 0.884262,
		0.952775, 0.034562, -0.301702,
		0.079102, 0.930960, 0.356449,
		34.993595, 36.054047, 45.304337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638897, 35.476860, 45.481720>,  <34.938225, 35.402374, 45.054825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638897, 35.476860, 45.481720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405884, 35.771969, 45.618153>,  <35.266075, 35.949036, 45.700012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405884, 35.771969, 45.618153>,  <35.638897, 35.476860, 45.481720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405884, 35.771969, 45.618153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283751, -0.208643, 0.935924,
		0.761667, 0.641993, -0.087803,
		-0.582537, 0.737776, 0.341083,
		35.231121, 35.993301, 45.720478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916706, 35.602318, 46.112907>,  <35.638897, 35.476860, 45.481720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916706, 35.602318, 46.112907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.573040, 35.804554, 46.144432>,  <35.366840, 35.925896, 46.163349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.573040, 35.804554, 46.144432>,  <35.916706, 35.602318, 46.112907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573040, 35.804554, 46.144432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015354, -0.179426, 0.983652,
		0.511467, 0.843910, 0.161919,
		-0.859166, 0.505591, 0.078813,
		35.315289, 35.956230, 46.168076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080757, 36.039761, 46.687836>,  <35.916706, 35.602318, 46.112907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080757, 36.039761, 46.687836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686192, 35.991692, 46.643017>,  <35.449451, 35.962852, 46.616123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686192, 35.991692, 46.643017>,  <36.080757, 36.039761, 46.687836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686192, 35.991692, 46.643017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091928, -0.161600, 0.982565,
		-0.136181, 0.979513, 0.148357,
		-0.986410, -0.120168, -0.112051,
		35.390270, 35.955643, 46.609402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121441, 36.952034, 46.649143>,  <36.080757, 36.039761, 46.687836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121441, 36.952034, 46.649143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505672, 36.991688, 46.753040>,  <36.736210, 37.015480, 46.815380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505672, 36.991688, 46.753040>,  <36.121441, 36.952034, 46.649143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505672, 36.991688, 46.753040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262285, -0.013312, -0.964899,
		-0.092198, 0.994985, -0.038789,
		0.960576, 0.099136, 0.259742,
		36.793846, 37.021427, 46.830963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319580, 37.584183, 46.226574>,  <36.121441, 36.952034, 46.649143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319580, 37.584183, 46.226574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630959, 37.352421, 46.323166>,  <36.817787, 37.213364, 46.381123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630959, 37.352421, 46.323166>,  <36.319580, 37.584183, 46.226574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630959, 37.352421, 46.323166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290087, -0.009100, -0.956957,
		0.556662, 0.814990, 0.160994,
		0.778445, -0.579404, 0.241484,
		36.864491, 37.178600, 46.395611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824116, 37.859951, 45.891903>,  <36.319580, 37.584183, 46.226574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824116, 37.859951, 45.891903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976105, 37.501060, 45.981884>,  <37.067299, 37.285725, 46.035873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976105, 37.501060, 45.981884>,  <36.824116, 37.859951, 45.891903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976105, 37.501060, 45.981884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290465, -0.115158, -0.949931,
		0.878208, 0.426291, 0.216855,
		0.379974, -0.897226, 0.224955,
		37.090096, 37.231892, 46.049370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385162, 37.929001, 45.522388>,  <36.824116, 37.859951, 45.891903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385162, 37.929001, 45.522388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310337, 37.540756, 45.582958>,  <37.265442, 37.307812, 45.619301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310337, 37.540756, 45.582958>,  <37.385162, 37.929001, 45.522388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310337, 37.540756, 45.582958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249608, -0.196052, -0.948293,
		0.950107, -0.139592, 0.278945,
		-0.187062, -0.970607, 0.151427,
		37.254219, 37.249573, 45.628387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974224, 37.566399, 45.324127>,  <37.385162, 37.929001, 45.522388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974224, 37.566399, 45.324127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.696518, 37.279507, 45.300186>,  <37.529896, 37.107372, 45.285820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.696518, 37.279507, 45.300186>,  <37.974224, 37.566399, 45.324127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696518, 37.279507, 45.300186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412454, -0.328336, -0.849751,
		0.589813, -0.614638, 0.523776,
		-0.694264, -0.717228, -0.059853,
		37.488239, 37.064339, 45.282230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392342, 36.975956, 45.023262>,  <37.974224, 37.566399, 45.324127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392342, 36.975956, 45.023262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006042, 36.877228, 44.991230>,  <37.774261, 36.817993, 44.972012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006042, 36.877228, 44.991230>,  <38.392342, 36.975956, 45.023262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006042, 36.877228, 44.991230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181295, -0.421035, -0.888741,
		0.185641, -0.872818, 0.451361,
		-0.965748, -0.246816, -0.080076,
		37.716316, 36.803185, 44.967209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353287, 36.249516, 44.795723>,  <38.392342, 36.975956, 45.023262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353287, 36.249516, 44.795723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.011276, 36.430542, 44.694443>,  <37.806068, 36.539158, 44.633675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.011276, 36.430542, 44.694443>,  <38.353287, 36.249516, 44.795723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011276, 36.430542, 44.694443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103770, -0.329069, -0.938587,
		-0.508094, -0.828792, 0.234400,
		-0.855028, 0.452567, -0.253202,
		37.754768, 36.566311, 44.618481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017124, 35.814213, 44.278618>,  <38.353287, 36.249516, 44.795723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017124, 35.814213, 44.278618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862461, 36.175953, 44.206348>,  <37.769661, 36.392998, 44.162987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862461, 36.175953, 44.206348>,  <38.017124, 35.814213, 44.278618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862461, 36.175953, 44.206348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090414, -0.157790, -0.983325,
		-0.917779, -0.396549, -0.020755,
		-0.386661, 0.904351, -0.180670,
		37.746464, 36.447258, 44.152145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709702, 35.703491, 43.807392>,  <38.017124, 35.814213, 44.278618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709702, 35.703491, 43.807392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742294, 36.098106, 43.750687>,  <37.761848, 36.334877, 43.716663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742294, 36.098106, 43.750687>,  <37.709702, 35.703491, 43.807392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742294, 36.098106, 43.750687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097808, -0.149467, -0.983917,
		-0.991864, 0.066303, -0.108670,
		0.081480, 0.986541, -0.141766,
		37.766739, 36.394070, 43.708157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365738, 35.829342, 43.242329>,  <37.709702, 35.703491, 43.807392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365738, 35.829342, 43.242329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.579891, 36.166916, 43.255821>,  <37.708382, 36.369461, 43.263916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.579891, 36.166916, 43.255821>,  <37.365738, 35.829342, 43.242329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579891, 36.166916, 43.255821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030087, 0.020855, -0.999330,
		-0.844073, 0.536039, -0.014227,
		0.535384, 0.843935, 0.033731,
		37.740505, 36.420097, 43.265942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023266, 36.286594, 42.774429>,  <37.365738, 35.829342, 43.242329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023266, 36.286594, 42.774429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400883, 36.412430, 42.814049>,  <37.627453, 36.487930, 42.837822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400883, 36.412430, 42.814049>,  <37.023266, 36.286594, 42.774429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400883, 36.412430, 42.814049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041501, 0.184631, -0.981931,
		-0.327195, 0.931098, 0.161244,
		0.944045, 0.314591, 0.099052,
		37.684097, 36.506805, 42.843765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974625, 36.838036, 42.341625>,  <37.023266, 36.286594, 42.774429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974625, 36.838036, 42.341625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.366859, 36.773922, 42.386806>,  <37.602200, 36.735455, 42.413914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.366859, 36.773922, 42.386806>,  <36.974625, 36.838036, 42.341625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366859, 36.773922, 42.386806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131413, 0.109655, -0.985244,
		0.145537, 0.980961, 0.128590,
		0.980586, -0.160288, 0.112952,
		37.661034, 36.725834, 42.420692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310513, 37.419979, 42.127541>,  <36.974625, 36.838036, 42.341625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310513, 37.419979, 42.127541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561790, 37.115669, 42.062302>,  <37.712555, 36.933083, 42.023159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561790, 37.115669, 42.062302>,  <37.310513, 37.419979, 42.127541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561790, 37.115669, 42.062302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163873, 0.334286, -0.928116,
		0.760606, 0.556308, 0.334666,
		0.628192, -0.760772, -0.163096,
		37.750248, 36.887436, 42.013374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823265, 37.723991, 41.624874>,  <37.310513, 37.419979, 42.127541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823265, 37.723991, 41.624874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907036, 37.332943, 41.616978>,  <37.957298, 37.098312, 41.612240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907036, 37.332943, 41.616978>,  <37.823265, 37.723991, 41.624874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907036, 37.332943, 41.616978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183934, 0.059219, -0.981153,
		0.960369, 0.201849, 0.192220,
		0.209428, -0.977625, -0.019745,
		37.969864, 37.039654, 41.611053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.184069, 42.551056, 38.952076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940647, 42.534420, 38.635105>,  <26.794594, 42.524437, 38.444923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940647, 42.534420, 38.635105>,  <27.184069, 42.551056, 38.952076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940647, 42.534420, 38.635105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331745, -0.920501, -0.206455,
		-0.720839, -0.388522, 0.573971,
		-0.608553, -0.041591, -0.792423,
		26.758081, 42.521942, 38.397377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780790, 41.902473, 38.917599>,  <27.184069, 42.551056, 38.952076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780790, 41.902473, 38.917599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785597, 42.029335, 38.538280>,  <26.788481, 42.105453, 38.310688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785597, 42.029335, 38.538280>,  <26.780790, 41.902473, 38.917599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785597, 42.029335, 38.538280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489674, -0.828733, -0.270964,
		-0.871823, -0.461101, -0.165260,
		0.012015, 0.317156, -0.948297,
		26.789202, 42.124481, 38.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598768, 41.341732, 38.533741>,  <26.780790, 41.902473, 38.917599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598768, 41.341732, 38.533741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765299, 41.597588, 38.275272>,  <26.865217, 41.751099, 38.120190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765299, 41.597588, 38.275272>,  <26.598768, 41.341732, 38.533741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765299, 41.597588, 38.275272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436110, -0.764087, -0.475372,
		-0.797798, -0.083893, -0.597060,
		0.416326, 0.639634, -0.646174,
		26.890196, 41.789478, 38.081421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346750, 41.134712, 37.962135>,  <26.598768, 41.341732, 38.533741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346750, 41.134712, 37.962135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665100, 41.338562, 37.831371>,  <26.856110, 41.460873, 37.752911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665100, 41.338562, 37.831371>,  <26.346750, 41.134712, 37.962135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665100, 41.338562, 37.831371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302174, -0.802217, -0.514917,
		-0.524668, 0.311024, -0.792457,
		0.795874, 0.509620, -0.326914,
		26.903862, 41.491447, 37.733295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410114, 41.050266, 37.203197>,  <26.346750, 41.134712, 37.962135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410114, 41.050266, 37.203197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779621, 41.154633, 37.315323>,  <27.001326, 41.217251, 37.382599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779621, 41.154633, 37.315323>,  <26.410114, 41.050266, 37.203197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779621, 41.154633, 37.315323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344018, -0.886967, -0.308126,
		0.168238, 0.381071, -0.909110,
		0.923768, 0.260912, 0.280317,
		27.056751, 41.232906, 37.399418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900114, 40.897690, 36.618382>,  <26.410114, 41.050266, 37.203197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900114, 40.897690, 36.618382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100672, 40.913986, 36.964085>,  <27.221006, 40.923763, 37.171509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100672, 40.913986, 36.964085>,  <26.900114, 40.897690, 36.618382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100672, 40.913986, 36.964085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382876, -0.906213, -0.179402,
		0.775894, 0.420855, -0.469967,
		0.501392, 0.040741, 0.864260,
		27.251089, 40.926208, 37.223362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379601, 40.516903, 36.318947>,  <26.900114, 40.897690, 36.618382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379601, 40.516903, 36.318947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452221, 40.544167, 36.711353>,  <27.495794, 40.560524, 36.946796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452221, 40.544167, 36.711353>,  <27.379601, 40.516903, 36.318947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452221, 40.544167, 36.711353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338268, -0.941046, 0.002784,
		0.923371, 0.331341, -0.193907,
		0.181553, 0.068163, 0.981016,
		27.506687, 40.564617, 37.005657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110655, 40.340946, 36.458546>,  <27.379601, 40.516903, 36.318947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110655, 40.340946, 36.458546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.884499, 40.265270, 36.779678>,  <27.748806, 40.219864, 36.972359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.884499, 40.265270, 36.779678>,  <28.110655, 40.340946, 36.458546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884499, 40.265270, 36.779678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244641, -0.968005, -0.055827,
		0.787710, 0.164842, 0.593583,
		-0.565389, -0.189190, 0.802834,
		27.714882, 40.208515, 37.020527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469275, 39.772171, 36.847263>,  <28.110655, 40.340946, 36.458546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469275, 39.772171, 36.847263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097359, 39.752136, 36.993130>,  <27.874210, 39.740116, 37.080650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097359, 39.752136, 36.993130>,  <28.469275, 39.772171, 36.847263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097359, 39.752136, 36.993130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049566, -0.998713, -0.010799,
		0.364742, 0.008035, 0.931074,
		-0.929789, -0.050088, 0.364670,
		27.818422, 39.737110, 37.102531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497866, 39.282833, 37.366024>,  <28.469275, 39.772171, 36.847263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497866, 39.282833, 37.366024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114832, 39.292439, 37.251160>,  <27.885012, 39.298203, 37.182243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114832, 39.292439, 37.251160>,  <28.497866, 39.282833, 37.366024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114832, 39.292439, 37.251160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040391, -0.997869, 0.051244,
		-0.285314, 0.060669, 0.956512,
		-0.957582, 0.024013, -0.287156,
		27.827557, 39.299641, 37.165012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165211, 38.864532, 37.820553>,  <28.497866, 39.282833, 37.366024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165211, 38.864532, 37.820553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924475, 38.885849, 37.501816>,  <27.780033, 38.898640, 37.310574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924475, 38.885849, 37.501816>,  <28.165211, 38.864532, 37.820553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924475, 38.885849, 37.501816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015337, -0.998358, -0.055188,
		-0.798471, -0.020993, 0.601667,
		-0.601838, 0.053294, -0.796838,
		27.743923, 38.901836, 37.262764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761602, 38.316559, 37.968132>,  <28.165211, 38.864532, 37.820553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761602, 38.316559, 37.968132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719343, 38.411690, 37.581913>,  <27.693987, 38.468769, 37.350182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719343, 38.411690, 37.581913>,  <27.761602, 38.316559, 37.968132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719343, 38.411690, 37.581913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034957, -0.971267, -0.235409,
		-0.993789, 0.008882, 0.110927,
		-0.105649, 0.237824, -0.965545,
		27.687649, 38.483036, 37.292248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260408, 37.799335, 37.711422>,  <27.761602, 38.316559, 37.968132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260408, 37.799335, 37.711422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424097, 37.933090, 37.371841>,  <27.522310, 38.013344, 37.168091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424097, 37.933090, 37.371841>,  <27.260408, 37.799335, 37.711422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424097, 37.933090, 37.371841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090386, -0.910993, -0.402395,
		-0.907948, 0.241402, -0.342573,
		0.409221, 0.334390, -0.848953,
		27.546864, 38.033405, 37.117157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767725, 37.587227, 37.166485>,  <27.260408, 37.799335, 37.711422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767725, 37.587227, 37.166485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135195, 37.652878, 37.022762>,  <27.355677, 37.692268, 36.936527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135195, 37.652878, 37.022762>,  <26.767725, 37.587227, 37.166485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135195, 37.652878, 37.022762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047935, -0.949193, -0.311022,
		-0.392100, 0.268504, -0.879865,
		0.918673, 0.164128, -0.359308,
		27.410797, 37.702118, 36.914970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798159, 37.183849, 36.661983>,  <26.767725, 37.587227, 37.166485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798159, 37.183849, 36.661983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194527, 37.225861, 36.695553>,  <27.432348, 37.251068, 36.715694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194527, 37.225861, 36.695553>,  <26.798159, 37.183849, 36.661983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194527, 37.225861, 36.695553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127324, -0.933560, -0.335043,
		0.043161, 0.342687, -0.938457,
		0.990921, 0.105028, 0.083926,
		27.491802, 37.257370, 36.720730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011848, 36.587112, 36.271931>,  <26.798159, 37.183849, 36.661983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011848, 36.587112, 36.271931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369778, 36.708336, 36.403049>,  <27.584536, 36.781071, 36.481720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369778, 36.708336, 36.403049>,  <27.011848, 36.587112, 36.271931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369778, 36.708336, 36.403049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426927, -0.795547, -0.429928,
		0.130486, 0.524654, -0.841256,
		0.894822, 0.303055, 0.327797,
		27.638224, 36.799252, 36.501389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519665, 36.434868, 35.711113>,  <27.011848, 36.587112, 36.271931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519665, 36.434868, 35.711113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755726, 36.452446, 36.033550>,  <27.897362, 36.462994, 36.227013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755726, 36.452446, 36.033550>,  <27.519665, 36.434868, 35.711113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755726, 36.452446, 36.033550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391334, -0.888929, -0.238040,
		0.706099, 0.455933, -0.541802,
		0.590153, 0.043945, 0.806094,
		27.932772, 36.465630, 36.275379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210260, 36.339809, 35.548508>,  <27.519665, 36.434868, 35.711113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210260, 36.339809, 35.548508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151686, 36.221592, 35.926125>,  <28.116541, 36.150661, 36.152695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151686, 36.221592, 35.926125>,  <28.210260, 36.339809, 35.548508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151686, 36.221592, 35.926125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522070, -0.833689, -0.180015,
		0.840237, 0.466494, 0.276378,
		-0.146438, -0.295544, 0.944039,
		28.107754, 36.132927, 36.209335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806465, 36.020008, 35.718754>,  <28.210260, 36.339809, 35.548508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806465, 36.020008, 35.718754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540121, 35.876949, 35.980659>,  <28.380314, 35.791115, 36.137802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540121, 35.876949, 35.980659>,  <28.806465, 36.020008, 35.718754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540121, 35.876949, 35.980659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376293, -0.918801, -0.119198,
		0.644230, 0.167014, 0.746374,
		-0.665861, -0.357646, 0.654765,
		28.340363, 35.769657, 36.177090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112190, 35.697769, 36.219158>,  <28.806465, 36.020008, 35.718754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112190, 35.697769, 36.219158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752844, 35.531704, 36.161781>,  <28.537235, 35.432064, 36.127354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752844, 35.531704, 36.161781>,  <29.112190, 35.697769, 36.219158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752844, 35.531704, 36.161781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434066, -0.889100, -0.145215,
		-0.067250, -0.192721, 0.978946,
		-0.898368, -0.415162, -0.143445,
		28.483334, 35.407154, 36.118748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492825, 36.224075, 35.890369>,  <29.112190, 35.697769, 36.219158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492825, 36.224075, 35.890369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730299, 36.299099, 35.577354>,  <29.872784, 36.344112, 35.389545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730299, 36.299099, 35.577354>,  <29.492825, 36.224075, 35.890369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730299, 36.299099, 35.577354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496980, 0.850292, -0.173249,
		0.632888, 0.491759, 0.598019,
		0.593687, 0.187556, -0.782534,
		29.908405, 36.355366, 35.342594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595530, 37.013649, 35.968941>,  <29.492825, 36.224075, 35.890369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595530, 37.013649, 35.968941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703077, 36.909500, 35.598015>,  <29.767607, 36.847012, 35.375458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703077, 36.909500, 35.598015>,  <29.595530, 37.013649, 35.968941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703077, 36.909500, 35.598015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134933, 0.943093, -0.303924,
		0.953678, 0.206842, 0.218436,
		0.268870, -0.260371, -0.927316,
		29.783739, 36.831390, 35.319820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112249, 37.423889, 35.759113>,  <29.595530, 37.013649, 35.968941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112249, 37.423889, 35.759113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907837, 37.287796, 35.443371>,  <29.785189, 37.206139, 35.253925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907837, 37.287796, 35.443371>,  <30.112249, 37.423889, 35.759113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907837, 37.287796, 35.443371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335850, 0.924362, -0.180997,
		0.791234, 0.172611, -0.586646,
		-0.511031, -0.340236, -0.789358,
		29.754528, 37.185726, 35.206562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143555, 37.948082, 35.323143>,  <30.112249, 37.423889, 35.759113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143555, 37.948082, 35.323143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831936, 37.757027, 35.160690>,  <29.644964, 37.642395, 35.063217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831936, 37.757027, 35.160690>,  <30.143555, 37.948082, 35.323143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831936, 37.757027, 35.160690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293898, 0.850411, -0.436378,
		0.553812, -0.220597, -0.802888,
		-0.779048, -0.477639, -0.406135,
		29.598221, 37.613735, 35.038849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121922, 38.145603, 34.539494>,  <30.143555, 37.948082, 35.323143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121922, 38.145603, 34.539494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763069, 37.991825, 34.626545>,  <29.547758, 37.899559, 34.678776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763069, 37.991825, 34.626545>,  <30.121922, 38.145603, 34.539494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763069, 37.991825, 34.626545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435073, 0.854316, -0.284352,
		-0.076604, -0.349784, -0.933693,
		-0.897131, -0.384442, 0.217626,
		29.493931, 37.876492, 34.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805513, 38.118870, 33.906960>,  <30.121922, 38.145603, 34.539494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805513, 38.118870, 33.906960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528790, 38.132854, 34.195454>,  <29.362755, 38.141247, 34.368549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528790, 38.132854, 34.195454>,  <29.805513, 38.118870, 33.906960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528790, 38.132854, 34.195454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452431, 0.757464, -0.470696,
		-0.562764, -0.651940, -0.508203,
		-0.691811, 0.034964, 0.721232,
		29.321247, 38.143345, 34.411823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242643, 38.332485, 33.620892>,  <29.805513, 38.118870, 33.906960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242643, 38.332485, 33.620892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160074, 38.430897, 33.999702>,  <29.110533, 38.489944, 34.226990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160074, 38.430897, 33.999702>,  <29.242643, 38.332485, 33.620892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160074, 38.430897, 33.999702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450061, 0.835534, -0.315163,
		-0.868812, -0.491277, -0.061747,
		-0.206424, 0.246028, 0.947026,
		29.098146, 38.504704, 34.283810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534109, 38.703873, 33.592197>,  <29.242643, 38.332485, 33.620892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534109, 38.703873, 33.592197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666567, 38.809498, 33.954548>,  <28.746042, 38.872871, 34.171959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666567, 38.809498, 33.954548>,  <28.534109, 38.703873, 33.592197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666567, 38.809498, 33.954548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459495, 0.883648, -0.089613,
		-0.824140, -0.386571, 0.413952,
		0.331146, 0.264062, 0.905877,
		28.765911, 38.888718, 34.226311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104322, 39.188503, 33.879215>,  <28.534109, 38.703873, 33.592197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104322, 39.188503, 33.879215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424940, 39.270473, 34.103905>,  <28.617311, 39.319656, 34.238716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424940, 39.270473, 34.103905>,  <28.104322, 39.188503, 33.879215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424940, 39.270473, 34.103905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327050, 0.936710, 0.124948,
		-0.500564, -0.283862, 0.817838,
		0.801545, 0.204929, 0.561720,
		28.665403, 39.331951, 34.272419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866161, 39.701874, 34.327682>,  <28.104322, 39.188503, 33.879215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866161, 39.701874, 34.327682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257807, 39.753510, 34.390511>,  <28.492794, 39.784492, 34.428207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257807, 39.753510, 34.390511>,  <27.866161, 39.701874, 34.327682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257807, 39.753510, 34.390511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161595, 0.962950, 0.215904,
		-0.123384, -0.236777, 0.963698,
		0.979114, 0.129089, 0.157075,
		28.551540, 39.792236, 34.437634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960733, 39.947460, 35.051437>,  <27.866161, 39.701874, 34.327682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960733, 39.947460, 35.051437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292610, 40.049683, 34.852921>,  <28.491735, 40.111015, 34.733810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292610, 40.049683, 34.852921>,  <27.960733, 39.947460, 35.051437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292610, 40.049683, 34.852921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041071, 0.914590, 0.402291,
		0.556711, -0.313393, 0.769322,
		0.829690, 0.255556, -0.496292,
		28.541517, 40.126350, 34.704033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573420, 40.078571, 35.478352>,  <27.960733, 39.947460, 35.051437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573420, 40.078571, 35.478352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582983, 40.314430, 35.155430>,  <28.588722, 40.455944, 34.961678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582983, 40.314430, 35.155430>,  <28.573420, 40.078571, 35.478352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582983, 40.314430, 35.155430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019386, 0.807661, 0.589328,
		0.999526, 0.001560, 0.030742,
		0.023910, 0.589645, -0.807308,
		28.590157, 40.491325, 34.913239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658096, 40.696827, 35.749798>,  <28.573420, 40.078571, 35.478352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658096, 40.696827, 35.749798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643509, 40.817532, 35.368725>,  <28.634756, 40.889954, 35.140079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643509, 40.817532, 35.368725>,  <28.658096, 40.696827, 35.749798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643509, 40.817532, 35.368725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098714, 0.947570, 0.303920,
		0.994447, 0.105127, -0.004768,
		-0.036469, 0.301762, -0.952686,
		28.632568, 40.908062, 35.082920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162319, 41.277508, 35.629345>,  <28.658096, 40.696827, 35.749798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162319, 41.277508, 35.629345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882837, 41.301243, 35.344170>,  <28.715147, 41.315483, 35.173065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882837, 41.301243, 35.344170>,  <29.162319, 41.277508, 35.629345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882837, 41.301243, 35.344170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135542, 0.967524, 0.213366,
		0.702451, 0.245714, -0.667973,
		-0.698707, 0.059341, -0.712943,
		28.673225, 41.319046, 35.130287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297131, 41.838280, 35.351425>,  <29.162319, 41.277508, 35.629345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297131, 41.838280, 35.351425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923512, 41.786549, 35.218258>,  <28.699341, 41.755508, 35.138359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923512, 41.786549, 35.218258>,  <29.297131, 41.838280, 35.351425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923512, 41.786549, 35.218258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178889, 0.976192, 0.122667,
		0.309123, 0.174131, -0.934945,
		-0.934046, -0.129332, -0.332914,
		28.643297, 41.747749, 35.118385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071262, 42.439552, 34.993492>,  <29.297131, 41.838280, 35.351425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071262, 42.439552, 34.993492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730171, 42.248692, 35.078522>,  <28.525517, 42.134174, 35.129539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730171, 42.248692, 35.078522>,  <29.071262, 42.439552, 34.993492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730171, 42.248692, 35.078522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460589, 0.878781, 0.124907,
		-0.246401, 0.008604, -0.969130,
		-0.852728, -0.477148, 0.212569,
		28.474354, 42.105549, 35.142292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557005, 42.827564, 34.604801>,  <29.071262, 42.439552, 34.993492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557005, 42.827564, 34.604801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371222, 42.612843, 34.886547>,  <28.259752, 42.484009, 35.055595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371222, 42.612843, 34.886547>,  <28.557005, 42.827564, 34.604801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371222, 42.612843, 34.886547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441399, 0.829840, 0.341368,
		-0.767754, -0.152354, -0.622368,
		-0.464457, -0.536799, 0.704362,
		28.231884, 42.451801, 35.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841196, 43.073784, 34.754482>,  <28.557005, 42.827564, 34.604801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841196, 43.073784, 34.754482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906786, 42.860802, 35.086651>,  <27.946140, 42.733013, 35.285954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906786, 42.860802, 35.086651>,  <27.841196, 43.073784, 34.754482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906786, 42.860802, 35.086651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441398, 0.713241, 0.544477,
		-0.882202, -0.455827, -0.118071,
		0.163974, -0.532456, 0.830424,
		27.955978, 42.701065, 35.335777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187178, 43.122639, 35.216003>,  <27.841196, 43.073784, 34.754482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187178, 43.122639, 35.216003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498365, 43.019001, 35.444962>,  <27.685078, 42.956818, 35.582336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498365, 43.019001, 35.444962>,  <27.187178, 43.122639, 35.216003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498365, 43.019001, 35.444962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163443, 0.796202, 0.582536,
		-0.606672, -0.546749, 0.577074,
		0.777969, -0.259090, 0.572396,
		27.731756, 42.941273, 35.616680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872715, 43.046295, 35.844112>,  <27.187178, 43.122639, 35.216003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872715, 43.046295, 35.844112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257847, 43.080215, 35.946693>,  <27.488926, 43.100567, 36.008244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257847, 43.080215, 35.946693>,  <26.872715, 43.046295, 35.844112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257847, 43.080215, 35.946693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246969, 0.660890, 0.708682,
		-0.109388, -0.745676, 0.657268,
		0.962829, 0.084804, 0.256452,
		27.546696, 43.105656, 36.023628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883797, 43.182564, 36.578804>,  <26.872715, 43.046295, 35.844112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883797, 43.182564, 36.578804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.251696, 43.284660, 36.459530>,  <27.472435, 43.345921, 36.387966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.251696, 43.284660, 36.459530>,  <26.883797, 43.182564, 36.578804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251696, 43.284660, 36.459530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044993, 0.686125, 0.726091,
		0.389926, -0.681236, 0.619577,
		0.919746, 0.255245, -0.298189,
		27.527620, 43.361233, 36.370075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266552, 43.126820, 37.122864>,  <26.883797, 43.182564, 36.578804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266552, 43.126820, 37.122864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427963, 43.382999, 36.861485>,  <27.524809, 43.536709, 36.704659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427963, 43.382999, 36.861485>,  <27.266552, 43.126820, 37.122864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427963, 43.382999, 36.861485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024007, 0.721339, 0.692166,
		0.914653, -0.263620, 0.306454,
		0.403526, 0.640449, -0.653447,
		27.549021, 43.575134, 36.665451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.548538, 34.939568, 47.399227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.225349, 34.704346, 47.414051>,  <39.031437, 34.563213, 47.422943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.225349, 34.704346, 47.414051>,  <39.548538, 34.939568, 47.399227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225349, 34.704346, 47.414051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229889, 0.372523, 0.899098,
		-0.542521, 0.717929, -0.436176,
		-0.807974, -0.588052, 0.037058,
		38.982956, 34.527931, 47.425167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112141, 35.379269, 47.647503>,  <39.548538, 34.939568, 47.399227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112141, 35.379269, 47.647503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966816, 35.013096, 47.716778>,  <38.879620, 34.793392, 47.758343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966816, 35.013096, 47.716778>,  <39.112141, 35.379269, 47.647503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966816, 35.013096, 47.716778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252009, 0.275520, 0.927675,
		-0.896937, 0.293392, -0.330796,
		-0.363313, -0.915429, 0.173187,
		38.857822, 34.738468, 47.768734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531364, 35.545387, 48.111576>,  <39.112141, 35.379269, 47.647503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531364, 35.545387, 48.111576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591167, 35.151875, 48.151226>,  <38.627048, 34.915768, 48.175014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591167, 35.151875, 48.151226>,  <38.531364, 35.545387, 48.111576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591167, 35.151875, 48.151226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210703, 0.066248, 0.975303,
		-0.966050, -0.166697, -0.197381,
		0.149504, -0.983780, 0.099122,
		38.636017, 34.856739, 48.180962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918793, 35.296715, 48.459377>,  <38.531364, 35.545387, 48.111576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918793, 35.296715, 48.459377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190926, 35.006039, 48.497486>,  <38.354206, 34.831635, 48.520351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190926, 35.006039, 48.497486>,  <37.918793, 35.296715, 48.459377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190926, 35.006039, 48.497486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155117, -0.015718, 0.987771,
		-0.716302, -0.686790, -0.123415,
		0.680331, -0.726686, 0.095274,
		38.395023, 34.788033, 48.526070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578629, 34.872757, 48.957855>,  <37.918793, 35.296715, 48.459377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578629, 34.872757, 48.957855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967155, 34.778942, 48.973537>,  <38.200272, 34.722652, 48.982948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967155, 34.778942, 48.973537>,  <37.578629, 34.872757, 48.957855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967155, 34.778942, 48.973537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069586, -0.122683, 0.990003,
		-0.227383, -0.964334, -0.135484,
		0.971316, -0.234538, 0.039208,
		38.258549, 34.708580, 48.985298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664097, 34.279102, 49.535892>,  <37.578629, 34.872757, 48.957855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664097, 34.279102, 49.535892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007248, 34.483402, 49.513332>,  <38.213139, 34.605984, 49.499798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007248, 34.483402, 49.513332>,  <37.664097, 34.279102, 49.535892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007248, 34.483402, 49.513332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049954, 0.026340, 0.998404,
		0.511424, -0.859323, -0.002918,
		0.857875, 0.510754, -0.056397,
		38.264610, 34.636627, 49.496414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034115, 34.059624, 50.135090>,  <37.664097, 34.279102, 49.535892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034115, 34.059624, 50.135090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247986, 34.371635, 50.005058>,  <38.376308, 34.558842, 49.927040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247986, 34.371635, 50.005058>,  <38.034115, 34.059624, 50.135090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247986, 34.371635, 50.005058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206244, 0.252604, 0.945333,
		0.819503, -0.572493, -0.025815,
		0.534676, 0.780028, -0.325083,
		38.408390, 34.605644, 49.907532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571789, 34.042553, 50.607147>,  <38.034115, 34.059624, 50.135090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571789, 34.042553, 50.607147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560913, 34.407902, 50.444656>,  <38.554390, 34.627110, 50.347164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560913, 34.407902, 50.444656>,  <38.571789, 34.042553, 50.607147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560913, 34.407902, 50.444656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300250, 0.395071, 0.868199,
		0.953473, -0.098365, -0.284980,
		-0.027187, 0.913369, -0.406223,
		38.552757, 34.681911, 50.322788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225746, 34.299091, 50.678581>,  <38.571789, 34.042553, 50.607147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225746, 34.299091, 50.678581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960331, 34.595802, 50.639641>,  <38.801083, 34.773830, 50.616276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960331, 34.595802, 50.639641>,  <39.225746, 34.299091, 50.678581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960331, 34.595802, 50.639641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297921, 0.381346, 0.875110,
		0.686263, 0.551669, -0.474030,
		-0.663541, 0.741780, -0.097350,
		38.761269, 34.818336, 50.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572033, 34.845074, 50.649986>,  <39.225746, 34.299091, 50.678581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572033, 34.845074, 50.649986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213718, 35.009640, 50.717289>,  <38.998730, 35.108379, 50.757671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213718, 35.009640, 50.717289>,  <39.572033, 34.845074, 50.649986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213718, 35.009640, 50.717289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369526, 0.478918, 0.796297,
		0.247029, 0.775483, -0.581035,
		-0.895783, 0.411416, 0.168254,
		38.944984, 35.133064, 50.767765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645050, 35.524258, 50.857738>,  <39.572033, 34.845074, 50.649986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645050, 35.524258, 50.857738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302097, 35.390591, 51.014320>,  <39.096325, 35.310390, 51.108269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302097, 35.390591, 51.014320>,  <39.645050, 35.524258, 50.857738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302097, 35.390591, 51.014320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263250, 0.368828, 0.891440,
		-0.442269, 0.867351, -0.228255,
		-0.857378, -0.334168, 0.391452,
		39.044884, 35.290340, 51.131756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420097, 36.088902, 51.373619>,  <39.645050, 35.524258, 50.857738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420097, 36.088902, 51.373619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.198345, 35.776588, 51.488892>,  <39.065296, 35.589203, 51.558056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.198345, 35.776588, 51.488892>,  <39.420097, 36.088902, 51.373619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198345, 35.776588, 51.488892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127809, 0.262285, 0.956489,
		-0.822393, 0.567089, -0.045614,
		-0.554378, -0.780780, 0.288180,
		39.032032, 35.542355, 51.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807541, 36.311058, 51.693741>,  <39.420097, 36.088902, 51.373619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807541, 36.311058, 51.693741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.939079, 35.959747, 51.832592>,  <39.018002, 35.748962, 51.915901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.939079, 35.959747, 51.832592>,  <38.807541, 36.311058, 51.693741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939079, 35.959747, 51.832592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084682, 0.393511, 0.915411,
		-0.940579, -0.271634, 0.203778,
		0.328846, -0.878273, 0.347126,
		39.037735, 35.696266, 51.936729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363575, 36.189606, 52.221420>,  <38.807541, 36.311058, 51.693741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363575, 36.189606, 52.221420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708694, 35.994328, 52.273952>,  <38.915764, 35.877159, 52.305473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708694, 35.994328, 52.273952>,  <38.363575, 36.189606, 52.221420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708694, 35.994328, 52.273952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039794, 0.193390, 0.980315,
		-0.503985, -0.851037, 0.147428,
		0.862795, -0.488197, 0.131332,
		38.967533, 35.847870, 52.313351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945438, 36.468300, 52.759892>,  <38.363575, 36.189606, 52.221420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945438, 36.468300, 52.759892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608589, 36.683723, 52.748703>,  <37.406479, 36.812977, 52.741989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608589, 36.683723, 52.748703>,  <37.945438, 36.468300, 52.759892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608589, 36.683723, 52.748703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107969, -0.219183, -0.969691,
		-0.528371, -0.813577, 0.242727,
		-0.842120, 0.538564, -0.027969,
		37.355953, 36.845291, 52.740311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400539, 36.102909, 52.340214>,  <37.945438, 36.468300, 52.759892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400539, 36.102909, 52.340214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277916, 36.482868, 52.315830>,  <37.204342, 36.710842, 52.301201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277916, 36.482868, 52.315830>,  <37.400539, 36.102909, 52.340214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277916, 36.482868, 52.315830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074652, -0.087840, -0.993334,
		-0.948920, -0.299965, 0.097840,
		-0.306560, 0.949898, -0.060960,
		37.185947, 36.767838, 52.297543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747326, 36.069019, 51.904644>,  <37.400539, 36.102909, 52.340214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747326, 36.069019, 51.904644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878159, 36.446907, 51.913868>,  <36.956657, 36.673637, 51.919403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878159, 36.446907, 51.913868>,  <36.747326, 36.069019, 51.904644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878159, 36.446907, 51.913868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135736, 0.071118, -0.988189,
		-0.935198, 0.320085, 0.151493,
		0.327078, 0.944716, 0.023063,
		36.976280, 36.730320, 51.920788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219959, 36.386806, 51.531174>,  <36.747326, 36.069019, 51.904644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219959, 36.386806, 51.531174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513206, 36.657997, 51.509674>,  <36.689156, 36.820709, 51.496773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513206, 36.657997, 51.509674>,  <36.219959, 36.386806, 51.531174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513206, 36.657997, 51.509674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177246, 0.114168, -0.977522,
		-0.656597, 0.726167, 0.203867,
		0.733120, 0.677973, -0.053748,
		36.733143, 36.861389, 51.493549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926033, 37.019104, 51.146370>,  <36.219959, 36.386806, 51.531174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926033, 37.019104, 51.146370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324547, 37.028671, 51.113266>,  <36.563656, 37.034412, 51.093403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324547, 37.028671, 51.113266>,  <35.926033, 37.019104, 51.146370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324547, 37.028671, 51.113266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086092, 0.241346, -0.966613,
		-0.003148, 0.970144, 0.242508,
		0.996282, 0.023921, -0.082762,
		36.623432, 37.035847, 51.088436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038059, 37.611637, 50.785748>,  <35.926033, 37.019104, 51.146370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038059, 37.611637, 50.785748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389618, 37.424023, 50.750988>,  <36.600552, 37.311455, 50.730133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389618, 37.424023, 50.750988>,  <36.038059, 37.611637, 50.785748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389618, 37.424023, 50.750988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108466, -0.019106, -0.993917,
		0.464521, 0.882973, -0.067666,
		0.878895, -0.469034, -0.086897,
		36.653286, 37.283314, 50.724918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468689, 38.003517, 50.275383>,  <36.038059, 37.611637, 50.785748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468689, 38.003517, 50.275383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603882, 37.627171, 50.266148>,  <36.684998, 37.401363, 50.260605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603882, 37.627171, 50.266148>,  <36.468689, 38.003517, 50.275383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603882, 37.627171, 50.266148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035011, 0.011945, -0.999316,
		0.940500, 0.338563, -0.028904,
		0.337986, -0.940868, -0.023087,
		36.705276, 37.344910, 50.259220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023888, 38.046825, 49.853127>,  <36.468689, 38.003517, 50.275383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023888, 38.046825, 49.853127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924553, 37.659416, 49.846256>,  <36.864952, 37.426971, 49.842133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924553, 37.659416, 49.846256>,  <37.023888, 38.046825, 49.853127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924553, 37.659416, 49.846256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019681, 0.012685, -0.999726,
		0.968473, -0.248610, 0.015911,
		-0.248340, -0.968521, -0.017178,
		36.850052, 37.368858, 49.841103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595776, 37.633171, 49.548946>,  <37.023888, 38.046825, 49.853127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595776, 37.633171, 49.548946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273403, 37.400269, 49.506130>,  <37.079979, 37.260525, 49.480442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273403, 37.400269, 49.506130>,  <37.595776, 37.633171, 49.548946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273403, 37.400269, 49.506130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266346, -0.195131, -0.943920,
		0.528718, -0.789240, 0.312343,
		-0.805927, -0.582258, -0.107042,
		37.031624, 37.225590, 49.474018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828270, 37.112289, 49.130241>,  <37.595776, 37.633171, 49.548946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828270, 37.112289, 49.130241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431847, 37.091610, 49.081024>,  <37.193993, 37.079201, 49.051495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431847, 37.091610, 49.081024>,  <37.828270, 37.112289, 49.130241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431847, 37.091610, 49.081024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131158, -0.206800, -0.969552,
		0.024682, -0.977016, 0.211731,
		-0.991054, -0.051701, -0.123039,
		37.134529, 37.076099, 49.044113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764397, 36.552761, 48.777309>,  <37.828270, 37.112289, 49.130241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764397, 36.552761, 48.777309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439327, 36.766705, 48.684795>,  <37.244286, 36.895073, 48.629288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439327, 36.766705, 48.684795>,  <37.764397, 36.552761, 48.777309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439327, 36.766705, 48.684795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099948, -0.263081, -0.959582,
		-0.574091, -0.802939, 0.160340,
		-0.812669, 0.534862, -0.231285,
		37.195526, 36.927162, 48.615410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450821, 36.232071, 48.223614>,  <37.764397, 36.552761, 48.777309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450821, 36.232071, 48.223614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242176, 36.572800, 48.204353>,  <37.116989, 36.777237, 48.192795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242176, 36.572800, 48.204353>,  <37.450821, 36.232071, 48.223614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242176, 36.572800, 48.204353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069006, -0.098376, -0.992754,
		-0.850385, -0.514513, 0.110095,
		-0.521616, 0.851820, -0.048153,
		37.085690, 36.828346, 48.189907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940865, 36.071987, 47.799679>,  <37.450821, 36.232071, 48.223614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940865, 36.071987, 47.799679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931259, 36.471870, 47.798981>,  <36.925495, 36.711800, 47.798561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931259, 36.471870, 47.798981>,  <36.940865, 36.071987, 47.799679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931259, 36.471870, 47.798981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198094, -0.006474, -0.980162,
		-0.979889, -0.023193, 0.198192,
		-0.024016, 0.999710, -0.001749,
		36.924053, 36.771782, 47.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389732, 36.235294, 47.448242>,  <36.940865, 36.071987, 47.799679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389732, 36.235294, 47.448242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654179, 36.532501, 47.406567>,  <36.812847, 36.710827, 47.381561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654179, 36.532501, 47.406567>,  <36.389732, 36.235294, 47.448242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654179, 36.532501, 47.406567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073094, -0.074422, -0.994544,
		-0.746719, 0.665120, 0.005108,
		0.661112, 0.743018, -0.104189,
		36.852512, 36.755405, 47.375309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762688, 36.487911, 47.367935>,  <36.389732, 36.235294, 47.448242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762688, 36.487911, 47.367935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495060, 36.228153, 47.223362>,  <35.334484, 36.072300, 47.136620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495060, 36.228153, 47.223362>,  <35.762688, 36.487911, 47.367935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495060, 36.228153, 47.223362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255356, -0.255840, 0.932384,
		-0.697951, 0.716125, 0.005349,
		-0.669072, -0.649393, -0.361430,
		35.294338, 36.033337, 47.114933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104256, 36.693474, 47.615780>,  <35.762688, 36.487911, 47.367935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104256, 36.693474, 47.615780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116741, 36.301201, 47.538540>,  <35.124233, 36.065838, 47.492195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116741, 36.301201, 47.538540>,  <35.104256, 36.693474, 47.615780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116741, 36.301201, 47.538540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313294, -0.193063, 0.929824,
		-0.949143, 0.031472, -0.313269,
		0.031217, -0.980682, -0.193104,
		35.126106, 36.006996, 47.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467274, 36.488644, 47.958588>,  <35.104256, 36.693474, 47.615780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467274, 36.488644, 47.958588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646961, 36.139931, 47.880413>,  <34.754772, 35.930702, 47.833508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646961, 36.139931, 47.880413>,  <34.467274, 36.488644, 47.958588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646961, 36.139931, 47.880413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086255, -0.260043, 0.961737,
		-0.889250, -0.415170, -0.192011,
		0.449215, -0.871786, -0.195433,
		34.781727, 35.878395, 47.821785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994511, 36.024277, 48.279190>,  <34.467274, 36.488644, 47.958588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994511, 36.024277, 48.279190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343815, 35.836678, 48.226337>,  <34.553398, 35.724117, 48.194626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343815, 35.836678, 48.226337>,  <33.994511, 36.024277, 48.279190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343815, 35.836678, 48.226337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043443, -0.195147, 0.979811,
		-0.485312, -0.861371, -0.150040,
		0.873261, -0.468996, -0.132128,
		34.605793, 35.695980, 48.186699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945118, 35.314121, 48.412399>,  <33.994511, 36.024277, 48.279190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945118, 35.314121, 48.412399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334690, 35.382950, 48.471516>,  <34.568436, 35.424248, 48.506985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334690, 35.382950, 48.471516>,  <33.945118, 35.314121, 48.412399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334690, 35.382950, 48.471516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072517, -0.381157, 0.921662,
		0.214924, -0.908356, -0.358744,
		0.973935, 0.172073, 0.147791,
		34.626869, 35.434570, 48.515854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068588, 34.745506, 48.831268>,  <33.945118, 35.314121, 48.412399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068588, 34.745506, 48.831268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375389, 35.000122, 48.863579>,  <34.559471, 35.152893, 48.882965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375389, 35.000122, 48.863579>,  <34.068588, 34.745506, 48.831268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375389, 35.000122, 48.863579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117206, -0.262769, 0.957714,
		0.630848, -0.725101, -0.276150,
		0.767003, 0.636538, 0.080781,
		34.605492, 35.191082, 48.887814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593079, 34.397758, 49.190407>,  <34.068588, 34.745506, 48.831268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593079, 34.397758, 49.190407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682415, 34.783253, 49.248829>,  <34.736015, 35.014549, 49.283882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682415, 34.783253, 49.248829>,  <34.593079, 34.397758, 49.190407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682415, 34.783253, 49.248829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047105, -0.160332, 0.985939,
		0.973601, -0.213321, -0.081205,
		0.223341, 0.963736, 0.146050,
		34.749416, 35.072372, 49.292645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693649, 33.595741, 49.319397>,  <34.593079, 34.397758, 49.190407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693649, 33.595741, 49.319397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369499, 33.399048, 49.446827>,  <34.175007, 33.281033, 49.523285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369499, 33.399048, 49.446827>,  <34.693649, 33.595741, 49.319397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369499, 33.399048, 49.446827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286345, -0.141982, -0.947548,
		0.511171, -0.859093, -0.025746,
		-0.810377, -0.491731, 0.318574,
		34.126385, 33.251530, 49.542400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573452, 33.001457, 48.865334>,  <34.693649, 33.595741, 49.319397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573452, 33.001457, 48.865334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210148, 33.063278, 49.020859>,  <33.992165, 33.100372, 49.114174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210148, 33.063278, 49.020859>,  <34.573452, 33.001457, 48.865334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210148, 33.063278, 49.020859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400892, -0.055387, -0.914449,
		-0.119799, -0.986430, 0.112266,
		-0.908258, 0.154557, 0.388817,
		33.937672, 33.109642, 49.137505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113312, 32.507919, 48.528015>,  <34.573452, 33.001457, 48.865334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113312, 32.507919, 48.528015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856487, 32.763405, 48.697628>,  <33.702393, 32.916695, 48.799397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856487, 32.763405, 48.697628>,  <34.113312, 32.507919, 48.528015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856487, 32.763405, 48.697628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534772, 0.023190, -0.844678,
		-0.549338, -0.769098, 0.326674,
		-0.642065, 0.638710, 0.424031,
		33.663868, 32.955017, 48.824837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567593, 32.328674, 48.285099>,  <34.113312, 32.507919, 48.528015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567593, 32.328674, 48.285099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471039, 32.701839, 48.391983>,  <33.413105, 32.925739, 48.456112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471039, 32.701839, 48.391983>,  <33.567593, 32.328674, 48.285099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471039, 32.701839, 48.391983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465742, 0.130198, -0.875290,
		-0.851362, -0.335734, 0.403070,
		-0.241386, 0.932916, 0.267211,
		33.398624, 32.981712, 48.472145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884369, 32.459358, 48.152573>,  <33.567593, 32.328674, 48.285099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884369, 32.459358, 48.152573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018208, 32.836033, 48.166878>,  <33.098511, 33.062038, 48.175461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018208, 32.836033, 48.166878>,  <32.884369, 32.459358, 48.152573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018208, 32.836033, 48.166878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208792, 0.111085, -0.971631,
		-0.918940, 0.317639, 0.233784,
		0.334598, 0.941682, 0.035760,
		33.118587, 33.118538, 48.177605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378284, 32.828472, 47.798027>,  <32.884369, 32.459358, 48.152573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378284, 32.828472, 47.798027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679024, 33.092197, 47.800346>,  <32.859467, 33.250431, 47.801739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679024, 33.092197, 47.800346>,  <32.378284, 32.828472, 47.798027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679024, 33.092197, 47.800346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174461, 0.207415, -0.962571,
		-0.635838, 0.722694, 0.270968,
		0.751847, 0.659313, 0.005800,
		32.904579, 33.289989, 47.802086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113651, 33.470989, 47.548096>,  <32.378284, 32.828472, 47.798027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113651, 33.470989, 47.548096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506947, 33.491203, 47.478024>,  <32.742924, 33.503330, 47.435982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506947, 33.491203, 47.478024>,  <32.113651, 33.470989, 47.548096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506947, 33.491203, 47.478024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182078, 0.322104, -0.929030,
		0.009478, 0.945354, 0.325907,
		0.983238, 0.050535, -0.175181,
		32.801918, 33.506363, 47.425468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.298435, 32.292580, 51.935154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.521347, 32.620251, 51.880909>,  <37.655094, 32.816853, 51.848362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.521347, 32.620251, 51.880909>,  <37.298435, 32.292580, 51.935154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521347, 32.620251, 51.880909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330204, -0.368501, -0.869007,
		-0.761845, 0.439495, -0.475852,
		0.557276, 0.819177, -0.135617,
		37.688530, 32.866005, 51.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017639, 32.644730, 51.332146>,  <37.298435, 32.292580, 51.935154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017639, 32.644730, 51.332146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399574, 32.748116, 51.390766>,  <37.628735, 32.810146, 51.425938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399574, 32.748116, 51.390766>,  <37.017639, 32.644730, 51.332146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399574, 32.748116, 51.390766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207153, -0.225502, -0.951964,
		-0.213003, 0.939331, -0.268861,
		0.954839, 0.258467, 0.146553,
		37.686028, 32.825657, 51.434731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181732, 33.000343, 50.775253>,  <37.017639, 32.644730, 51.332146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181732, 33.000343, 50.775253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537113, 32.902840, 50.930809>,  <37.750343, 32.844337, 51.024143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537113, 32.902840, 50.930809>,  <37.181732, 33.000343, 50.775253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537113, 32.902840, 50.930809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287570, -0.364721, -0.885597,
		0.357703, 0.898645, -0.253941,
		0.888455, -0.243755, 0.388885,
		37.803650, 32.829712, 51.047474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658970, 33.371929, 50.425083>,  <37.181732, 33.000343, 50.775253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658970, 33.371929, 50.425083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.831688, 33.040207, 50.566956>,  <37.935318, 32.841171, 50.652081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.831688, 33.040207, 50.566956>,  <37.658970, 33.371929, 50.425083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831688, 33.040207, 50.566956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132436, -0.330679, -0.934405,
		0.892196, 0.450445, -0.032956,
		0.431796, -0.829307, 0.354685,
		37.961227, 32.791416, 50.673363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187035, 33.245762, 50.035870>,  <37.658970, 33.371929, 50.425083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187035, 33.245762, 50.035870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190643, 32.889442, 50.217594>,  <38.192806, 32.675652, 50.326630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190643, 32.889442, 50.217594>,  <38.187035, 33.245762, 50.035870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190643, 32.889442, 50.217594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202258, -0.443318, -0.873247,
		0.979291, 0.099764, 0.176172,
		0.009018, -0.890795, 0.454316,
		38.193348, 32.622204, 50.353889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810280, 32.928913, 49.819683>,  <38.187035, 33.245762, 50.035870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810280, 32.928913, 49.819683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570522, 32.634182, 49.944782>,  <38.426666, 32.457344, 50.019840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570522, 32.634182, 49.944782>,  <38.810280, 32.928913, 49.819683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570522, 32.634182, 49.944782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182418, -0.506168, -0.842922,
		0.779393, -0.448191, 0.437804,
		-0.599392, -0.736830, 0.312746,
		38.390705, 32.413132, 50.038605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182961, 32.217037, 49.900867>,  <38.810280, 32.928913, 49.819683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182961, 32.217037, 49.900867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.800514, 32.108494, 49.856659>,  <38.571049, 32.043369, 49.830135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.800514, 32.108494, 49.856659>,  <39.182961, 32.217037, 49.900867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800514, 32.108494, 49.856659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255933, -0.589816, -0.765908,
		0.142648, -0.760580, 0.633380,
		-0.956112, -0.271358, -0.110521,
		38.513680, 32.027088, 49.823502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196568, 31.559189, 49.662067>,  <39.182961, 32.217037, 49.900867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196568, 31.559189, 49.662067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.821121, 31.662962, 49.571121>,  <38.595852, 31.725225, 49.516556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.821121, 31.662962, 49.571121>,  <39.196568, 31.559189, 49.662067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821121, 31.662962, 49.571121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056998, -0.533398, -0.843942,
		-0.340221, -0.805097, 0.485869,
		-0.938617, 0.259433, -0.227362,
		38.539536, 31.740791, 49.502914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851608, 30.906582, 49.474380>,  <39.196568, 31.559189, 49.662067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851608, 30.906582, 49.474380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.667797, 31.225822, 49.318504>,  <38.557510, 31.417368, 49.224979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.667797, 31.225822, 49.318504>,  <38.851608, 30.906582, 49.474380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667797, 31.225822, 49.318504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177258, -0.512352, -0.840283,
		-0.870293, -0.317061, 0.376912,
		-0.459532, 0.798103, -0.389695,
		38.529938, 31.465254, 49.201595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102962, 30.614655, 49.234669>,  <38.851608, 30.906582, 49.474380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102962, 30.614655, 49.234669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.183132, 30.953499, 49.037800>,  <38.231232, 31.156805, 48.919678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.183132, 30.953499, 49.037800>,  <38.102962, 30.614655, 49.234669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183132, 30.953499, 49.037800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155027, -0.468619, -0.869691,
		-0.967367, 0.250605, 0.037403,
		0.200422, 0.847109, -0.492176,
		38.243259, 31.207632, 48.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641644, 30.569921, 48.776493>,  <38.102962, 30.614655, 49.234669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641644, 30.569921, 48.776493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.901463, 30.838543, 48.633888>,  <38.057354, 30.999716, 48.548325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.901463, 30.838543, 48.633888>,  <37.641644, 30.569921, 48.776493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901463, 30.838543, 48.633888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043622, -0.501040, -0.864324,
		-0.759068, 0.545868, -0.354744,
		0.649548, 0.671555, -0.356512,
		38.096329, 31.040010, 48.526936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437134, 30.715044, 48.046524>,  <37.641644, 30.569921, 48.776493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437134, 30.715044, 48.046524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.813152, 30.851460, 48.046139>,  <38.038765, 30.933308, 48.045906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.813152, 30.851460, 48.046139>,  <37.437134, 30.715044, 48.046524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813152, 30.851460, 48.046139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061370, -0.171942, -0.983194,
		-0.335471, 0.924192, -0.182564,
		0.940050, 0.341036, -0.000964,
		38.095169, 30.953770, 48.045849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774914, 30.943583, 47.903885>,  <37.437134, 30.715044, 48.046524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774914, 30.943583, 47.903885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.469917, 30.720100, 47.773373>,  <36.286919, 30.586012, 47.695065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.469917, 30.720100, 47.773373>,  <36.774914, 30.943583, 47.903885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469917, 30.720100, 47.773373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403047, 0.015671, 0.915045,
		-0.506128, 0.829218, -0.237133,
		-0.762488, -0.558705, -0.326282,
		36.241169, 30.552488, 47.675488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181046, 31.285072, 48.107285>,  <36.774914, 30.943583, 47.903885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181046, 31.285072, 48.107285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077618, 30.900631, 48.068462>,  <36.015560, 30.669966, 48.045170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077618, 30.900631, 48.068462>,  <36.181046, 31.285072, 48.107285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077618, 30.900631, 48.068462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335060, -0.005001, 0.942183,
		-0.906022, 0.276138, -0.320735,
		-0.258569, -0.961105, -0.097054,
		36.000046, 30.612299, 48.039345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530045, 31.240568, 48.421570>,  <36.181046, 31.285072, 48.107285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530045, 31.240568, 48.421570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620358, 30.853472, 48.376846>,  <35.674545, 30.621214, 48.350014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620358, 30.853472, 48.376846>,  <35.530045, 31.240568, 48.421570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620358, 30.853472, 48.376846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168580, -0.151851, 0.973921,
		-0.959480, -0.201048, -0.197427,
		0.225784, -0.967740, -0.111805,
		35.688091, 30.563150, 48.343304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010567, 30.799435, 48.707645>,  <35.530045, 31.240568, 48.421570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010567, 30.799435, 48.707645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347954, 30.585714, 48.729874>,  <35.550385, 30.457481, 48.743210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347954, 30.585714, 48.729874>,  <35.010567, 30.799435, 48.707645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347954, 30.585714, 48.729874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164820, -0.158946, 0.973432,
		-0.511272, -0.830217, -0.222129,
		0.843466, -0.534300, 0.055571,
		35.600994, 30.425425, 48.746544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772400, 30.136686, 49.086945>,  <35.010567, 30.799435, 48.707645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772400, 30.136686, 49.086945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171787, 30.141573, 49.108543>,  <35.411419, 30.144505, 49.121502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171787, 30.141573, 49.108543>,  <34.772400, 30.136686, 49.086945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171787, 30.141573, 49.108543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046313, -0.350183, 0.935536,
		0.030339, -0.936602, -0.349080,
		0.998466, 0.012216, 0.054001,
		35.471329, 30.145237, 49.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953705, 29.495106, 49.409760>,  <34.772400, 30.136686, 49.086945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953705, 29.495106, 49.409760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.232292, 29.775324, 49.471947>,  <35.399445, 29.943455, 49.509258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.232292, 29.775324, 49.471947>,  <34.953705, 29.495106, 49.409760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232292, 29.775324, 49.471947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025546, -0.192315, 0.981001,
		0.717137, -0.687203, -0.116044,
		0.696464, 0.700548, 0.155472,
		35.441231, 29.985489, 49.518589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238190, 29.163862, 49.933189>,  <34.953705, 29.495106, 49.409760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238190, 29.163862, 49.933189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.354286, 29.546366, 49.947807>,  <35.423943, 29.775867, 49.956577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.354286, 29.546366, 49.947807>,  <35.238190, 29.163862, 49.933189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354286, 29.546366, 49.947807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004916, -0.036694, 0.999314,
		0.956942, -0.290219, -0.005949,
		0.290238, 0.956257, 0.036541,
		35.441357, 29.833242, 49.958771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776108, 29.158417, 50.435177>,  <35.238190, 29.163862, 49.933189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776108, 29.158417, 50.435177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.643070, 29.535349, 50.420219>,  <35.563248, 29.761507, 50.411243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.643070, 29.535349, 50.420219>,  <35.776108, 29.158417, 50.435177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643070, 29.535349, 50.420219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111383, 0.078623, 0.990663,
		0.936470, 0.325322, -0.131108,
		-0.332592, 0.942329, -0.037393,
		35.543293, 29.818048, 50.409000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374401, 29.653400, 50.757793>,  <35.776108, 29.158417, 50.435177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374401, 29.653400, 50.757793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023659, 29.844465, 50.736042>,  <35.813213, 29.959105, 50.722992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023659, 29.844465, 50.736042>,  <36.374401, 29.653400, 50.757793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023659, 29.844465, 50.736042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132433, 0.348748, 0.927812,
		0.462145, 0.806359, -0.369062,
		-0.876860, 0.477660, -0.054383,
		35.760601, 29.987762, 50.719727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436657, 30.189650, 51.273735>,  <36.374401, 29.653400, 50.757793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436657, 30.189650, 51.273735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041580, 30.195831, 51.211479>,  <35.804535, 30.199541, 51.174126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041580, 30.195831, 51.211479>,  <36.436657, 30.189650, 51.273735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041580, 30.195831, 51.211479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148255, 0.224553, 0.963118,
		0.049834, 0.974339, -0.219498,
		-0.987693, 0.015454, -0.155641,
		35.745274, 30.200468, 51.164787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190079, 30.642715, 51.840591>,  <36.436657, 30.189650, 51.273735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190079, 30.642715, 51.840591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.836502, 30.505386, 51.713612>,  <35.624355, 30.422989, 51.637424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.836502, 30.505386, 51.713612>,  <36.190079, 30.642715, 51.840591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836502, 30.505386, 51.713612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408401, 0.236251, 0.881700,
		-0.227710, 0.909019, -0.349046,
		-0.883944, -0.343322, -0.317447,
		35.571320, 30.402390, 51.618378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684414, 31.155285, 51.904194>,  <36.190079, 30.642715, 51.840591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684414, 31.155285, 51.904194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493275, 30.803967, 51.910629>,  <35.378593, 30.593176, 51.914490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493275, 30.803967, 51.910629>,  <35.684414, 31.155285, 51.904194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493275, 30.803967, 51.910629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176229, 0.113788, 0.977750,
		-0.860586, 0.464378, -0.209154,
		-0.477845, -0.878297, 0.016088,
		35.349922, 30.540478, 51.915455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171738, 31.315084, 52.308674>,  <35.684414, 31.155285, 51.904194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171738, 31.315084, 52.308674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.222366, 30.918419, 52.298992>,  <35.252743, 30.680420, 52.293182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.222366, 30.918419, 52.298992>,  <35.171738, 31.315084, 52.308674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222366, 30.918419, 52.298992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205184, -0.050047, 0.977443,
		-0.970505, -0.118748, -0.209808,
		0.126570, -0.991662, -0.024206,
		35.260338, 30.620920, 52.291729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568211, 30.987715, 52.605522>,  <35.171738, 31.315084, 52.308674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568211, 30.987715, 52.605522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879177, 30.737953, 52.635853>,  <35.065758, 30.588097, 52.654053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879177, 30.737953, 52.635853>,  <34.568211, 30.987715, 52.605522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879177, 30.737953, 52.635853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052548, 0.055660, 0.997066,
		-0.626793, -0.779115, 0.010459,
		0.777412, -0.624405, 0.075828,
		35.112400, 30.550632, 52.658600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388309, 31.429350, 51.960258>,  <34.568211, 30.987715, 52.605522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388309, 31.429350, 51.960258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585155, 31.760778, 52.067066>,  <34.703262, 31.959635, 52.131149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585155, 31.760778, 52.067066>,  <34.388309, 31.429350, 51.960258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585155, 31.760778, 52.067066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283063, 0.442364, -0.850993,
		-0.823226, 0.343201, 0.452231,
		0.492112, 0.828569, 0.267018,
		34.732788, 32.009350, 52.147171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884048, 31.942247, 51.737663>,  <34.388309, 31.429350, 51.960258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884048, 31.942247, 51.737663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248905, 32.105984, 51.746071>,  <34.467819, 32.204227, 51.751114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248905, 32.105984, 51.746071>,  <33.884048, 31.942247, 51.737663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248905, 32.105984, 51.746071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255122, 0.607123, -0.752539,
		-0.320804, 0.681059, 0.658213,
		0.912139, 0.409342, 0.021015,
		34.522549, 32.228786, 51.752377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696938, 32.592419, 51.704765>,  <33.884048, 31.942247, 51.737663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696938, 32.592419, 51.704765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084019, 32.597378, 51.604057>,  <34.316269, 32.600353, 51.543633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084019, 32.597378, 51.604057>,  <33.696938, 32.592419, 51.704765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084019, 32.597378, 51.604057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228187, 0.467521, -0.854023,
		0.107119, 0.883895, 0.455253,
		0.967707, 0.012400, -0.251773,
		34.374332, 32.601097, 51.528526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806049, 33.213634, 51.511993>,  <33.696938, 32.592419, 51.704765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806049, 33.213634, 51.511993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081833, 32.998074, 51.318401>,  <34.247303, 32.868736, 51.202244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081833, 32.998074, 51.318401>,  <33.806049, 33.213634, 51.511993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081833, 32.998074, 51.318401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363728, 0.320245, -0.874726,
		0.626382, 0.779122, 0.024782,
		0.689455, -0.538898, -0.483984,
		34.288670, 32.836403, 51.173206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094551, 33.675156, 51.017124>,  <33.806049, 33.213634, 51.511993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094551, 33.675156, 51.017124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164791, 33.299782, 50.898121>,  <34.206936, 33.074558, 50.826717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164791, 33.299782, 50.898121>,  <34.094551, 33.675156, 51.017124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164791, 33.299782, 50.898121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367112, 0.217985, -0.904274,
		0.913452, 0.268007, -0.306232,
		0.175597, -0.938433, -0.297507,
		34.217472, 33.018253, 50.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608093, 33.712936, 50.509460>,  <34.094551, 33.675156, 51.017124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608093, 33.712936, 50.509460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.376789, 33.389790, 50.463913>,  <34.238007, 33.195900, 50.436584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.376789, 33.389790, 50.463913>,  <34.608093, 33.712936, 50.509460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376789, 33.389790, 50.463913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180979, 0.263117, -0.947637,
		0.795527, -0.527371, -0.298356,
		-0.578259, -0.807868, -0.113873,
		34.203312, 33.147430, 50.429752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406857, 33.969795, 49.889103>,  <34.608093, 33.712936, 50.509460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406857, 33.969795, 49.889103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.293957, 33.588154, 49.929153>,  <34.226215, 33.359169, 49.953182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.293957, 33.588154, 49.929153>,  <34.406857, 33.969795, 49.889103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293957, 33.588154, 49.929153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225790, -0.035370, -0.973534,
		0.932391, -0.297390, -0.205443,
		-0.282252, -0.954101, 0.100127,
		34.209282, 33.301922, 49.959190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099907, 34.359016, 49.852367>,  <34.406857, 33.969795, 49.889103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099907, 34.359016, 49.852367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974895, 34.734970, 49.797321>,  <34.899887, 34.960545, 49.764294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974895, 34.734970, 49.797321>,  <35.099907, 34.359016, 49.852367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974895, 34.734970, 49.797321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075715, 0.169058, 0.982694,
		0.946885, 0.296702, -0.124000,
		-0.312530, 0.939887, -0.137614,
		34.881138, 35.016937, 49.756039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607567, 34.794968, 50.185123>,  <35.099907, 34.359016, 49.852367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607567, 34.794968, 50.185123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275219, 35.014172, 50.146481>,  <35.075809, 35.145695, 50.123295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275219, 35.014172, 50.146481>,  <35.607567, 34.794968, 50.185123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275219, 35.014172, 50.146481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171663, 0.417568, 0.892283,
		0.529321, 0.724791, -0.441019,
		-0.830874, 0.548011, -0.096608,
		35.025955, 35.178574, 50.117496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826069, 35.492348, 50.363773>,  <35.607567, 34.794968, 50.185123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826069, 35.492348, 50.363773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429295, 35.462605, 50.404839>,  <35.191231, 35.444759, 50.429478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429295, 35.462605, 50.404839>,  <35.826069, 35.492348, 50.363773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429295, 35.462605, 50.404839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054318, 0.482453, 0.874236,
		-0.114540, 0.872760, -0.474522,
		-0.991932, -0.074360, 0.102667,
		35.131714, 35.440296, 50.435638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592491, 36.139313, 50.594215>,  <35.826069, 35.492348, 50.363773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592491, 36.139313, 50.594215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.289593, 35.891399, 50.676636>,  <35.107853, 35.742653, 50.726086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.289593, 35.891399, 50.676636>,  <35.592491, 36.139313, 50.594215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289593, 35.891399, 50.676636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095446, 0.417095, 0.903837,
		-0.646123, 0.664757, -0.374997,
		-0.757242, -0.619782, 0.206046,
		35.062420, 35.705463, 50.738449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100956, 36.620296, 50.882095>,  <35.592491, 36.139313, 50.594215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100956, 36.620296, 50.882095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.973732, 36.253410, 50.978054>,  <34.897400, 36.033279, 51.035629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.973732, 36.253410, 50.978054>,  <35.100956, 36.620296, 50.882095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973732, 36.253410, 50.978054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183151, 0.307713, 0.933685,
		-0.930213, 0.253027, -0.265859,
		-0.318056, -0.917219, 0.239897,
		34.878315, 35.978245, 51.050022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333073, 36.600666, 51.198105>,  <35.100956, 36.620296, 50.882095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333073, 36.600666, 51.198105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.527626, 36.273842, 51.321945>,  <34.644356, 36.077747, 51.396248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.527626, 36.273842, 51.321945>,  <34.333073, 36.600666, 51.198105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527626, 36.273842, 51.321945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242552, 0.214152, 0.946207,
		-0.839406, -0.535310, -0.094019,
		0.486380, -0.817057, 0.309601,
		34.673538, 36.028725, 51.414825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877983, 36.254826, 51.647446>,  <34.333073, 36.600666, 51.198105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877983, 36.254826, 51.647446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243095, 36.122288, 51.742985>,  <34.462162, 36.042767, 51.800308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243095, 36.122288, 51.742985>,  <33.877983, 36.254826, 51.647446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243095, 36.122288, 51.742985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193334, 0.164638, 0.967221,
		-0.359805, -0.929035, 0.086218,
		0.912777, -0.331342, 0.238852,
		34.516930, 36.022884, 51.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807331, 35.738098, 52.188526>,  <33.877983, 36.254826, 51.647446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807331, 35.738098, 52.188526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173870, 35.890907, 52.236458>,  <34.393795, 35.982594, 52.265217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173870, 35.890907, 52.236458>,  <33.807331, 35.738098, 52.188526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173870, 35.890907, 52.236458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195502, 0.165755, 0.966594,
		0.349401, -0.909166, 0.226577,
		0.916350, 0.382025, 0.119829,
		34.448776, 36.005516, 52.272408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010597, 35.314919, 52.680756>,  <33.807331, 35.738098, 52.188526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010597, 35.314919, 52.680756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289482, 35.601635, 52.676563>,  <34.456814, 35.773666, 52.674049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289482, 35.601635, 52.676563>,  <34.010597, 35.314919, 52.680756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289482, 35.601635, 52.676563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011778, 0.026070, 0.999591,
		0.716771, -0.696801, 0.026619,
		0.697209, 0.716791, -0.010479,
		34.498646, 35.816673, 52.673420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.648956, 33.695221, 37.594864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033524, 33.796951, 37.636791>,  <36.264263, 33.857990, 37.661949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033524, 33.796951, 37.636791>,  <35.648956, 33.695221, 37.594864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033524, 33.796951, 37.636791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223216, 0.498608, 0.837595,
		0.160759, -0.828679, 0.536142,
		0.961421, 0.254327, 0.104819,
		36.321949, 33.873249, 37.668236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821243, 33.583340, 38.277214>,  <35.648956, 33.695221, 37.594864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821243, 33.583340, 38.277214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059647, 33.865719, 38.124157>,  <36.202686, 34.035145, 38.032322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059647, 33.865719, 38.124157>,  <35.821243, 33.583340, 38.277214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059647, 33.865719, 38.124157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343837, 0.655001, 0.672867,
		0.725641, -0.269465, 0.633115,
		0.596005, 0.705947, -0.382643,
		36.238449, 34.077503, 38.009365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160061, 33.828175, 38.895618>,  <35.821243, 33.583340, 38.277214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160061, 33.828175, 38.895618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171333, 34.095665, 38.598427>,  <36.178097, 34.256161, 38.420113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171333, 34.095665, 38.598427>,  <36.160061, 33.828175, 38.895618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171333, 34.095665, 38.598427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269524, 0.720825, 0.638567,
		0.962581, 0.182255, 0.200551,
		0.028180, 0.668726, -0.742975,
		36.179787, 34.296284, 38.375534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486393, 34.391068, 39.164055>,  <36.160061, 33.828175, 38.895618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486393, 34.391068, 39.164055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307377, 34.539162, 38.838448>,  <36.199966, 34.628017, 38.643082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307377, 34.539162, 38.838448>,  <36.486393, 34.391068, 39.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307377, 34.539162, 38.838448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229348, 0.832306, 0.504644,
		0.864352, 0.412545, -0.287580,
		-0.447543, 0.370234, -0.814022,
		36.173115, 34.650230, 38.594242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799946, 35.025276, 38.995060>,  <36.486393, 34.391068, 39.164055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799946, 35.025276, 38.995060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439026, 35.029037, 38.822659>,  <36.222473, 35.031296, 38.719215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439026, 35.029037, 38.822659>,  <36.799946, 35.025276, 38.995060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439026, 35.029037, 38.822659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249655, 0.803666, 0.540179,
		0.351465, 0.595006, -0.722799,
		-0.902299, 0.009403, -0.431007,
		36.168335, 35.031860, 38.693356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529766, 35.781673, 38.932171>,  <36.799946, 35.025276, 38.995060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529766, 35.781673, 38.932171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197945, 35.558502, 38.922771>,  <35.998852, 35.424599, 38.917133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197945, 35.558502, 38.922771>,  <36.529766, 35.781673, 38.932171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197945, 35.558502, 38.922771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430592, 0.612301, 0.663082,
		-0.355568, 0.560180, -0.748178,
		-0.829556, -0.557930, -0.023494,
		35.949078, 35.391125, 38.915722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975853, 36.272655, 38.833153>,  <36.529766, 35.781673, 38.932171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975853, 36.272655, 38.833153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807621, 35.942661, 38.984161>,  <35.706684, 35.744667, 39.074764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807621, 35.942661, 38.984161>,  <35.975853, 36.272655, 38.833153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807621, 35.942661, 38.984161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293403, 0.517427, 0.803856,
		-0.858504, 0.227320, -0.459671,
		-0.420578, -0.824982, 0.377517,
		35.681446, 35.695168, 39.097416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362419, 36.594666, 39.199684>,  <35.975853, 36.272655, 38.833153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362419, 36.594666, 39.199684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336666, 36.219799, 39.336842>,  <35.321213, 35.994881, 39.419136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336666, 36.219799, 39.336842>,  <35.362419, 36.594666, 39.199684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336666, 36.219799, 39.336842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530560, 0.323163, 0.783627,
		-0.845199, -0.131472, -0.518029,
		-0.064382, -0.937166, 0.342891,
		35.317352, 35.938648, 39.439709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654694, 36.468319, 39.428574>,  <35.362419, 36.594666, 39.199684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654694, 36.468319, 39.428574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916138, 36.229660, 39.614822>,  <35.073006, 36.086464, 39.726570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916138, 36.229660, 39.614822>,  <34.654694, 36.468319, 39.428574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916138, 36.229660, 39.614822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371389, 0.283204, 0.884232,
		-0.659438, -0.750873, -0.036481,
		0.653615, -0.596645, 0.465622,
		35.112221, 36.050667, 39.754509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249718, 36.209171, 39.992626>,  <34.654694, 36.468319, 39.428574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249718, 36.209171, 39.992626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631603, 36.138153, 40.088120>,  <34.860737, 36.095543, 40.145416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631603, 36.138153, 40.088120>,  <34.249718, 36.209171, 39.992626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631603, 36.138153, 40.088120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222710, 0.105545, 0.969154,
		-0.197269, -0.978436, 0.061224,
		0.954717, -0.177549, 0.238729,
		34.918018, 36.084888, 40.159737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186901, 35.767757, 40.472565>,  <34.249718, 36.209171, 39.992626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186901, 35.767757, 40.472565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540012, 35.950901, 40.514648>,  <34.751881, 36.060787, 40.539898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540012, 35.950901, 40.514648>,  <34.186901, 35.767757, 40.472565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540012, 35.950901, 40.514648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229928, 0.225790, 0.946653,
		0.409675, -0.859876, 0.304597,
		0.882779, 0.457856, 0.105209,
		34.804848, 36.088257, 40.546211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357990, 35.597404, 41.129951>,  <34.186901, 35.767757, 40.472565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357990, 35.597404, 41.129951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586178, 35.916409, 41.051422>,  <34.723091, 36.107811, 41.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586178, 35.916409, 41.051422>,  <34.357990, 35.597404, 41.129951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586178, 35.916409, 41.051422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075256, 0.288790, 0.954430,
		0.817863, -0.529699, 0.224764,
		0.570470, 0.797508, -0.196328,
		34.757320, 36.155663, 40.992523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321083, 34.840878, 41.174286>,  <34.357990, 35.597404, 41.129951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321083, 34.840878, 41.174286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956699, 34.746120, 41.309364>,  <33.738071, 34.689266, 41.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956699, 34.746120, 41.309364>,  <34.321083, 34.840878, 41.174286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956699, 34.746120, 41.309364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294285, -0.200441, -0.934462,
		0.289058, -0.950633, 0.112879,
		-0.910957, -0.236895, 0.337696,
		33.683411, 34.675053, 41.410671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190563, 34.289997, 40.886261>,  <34.321083, 34.840878, 41.174286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190563, 34.289997, 40.886261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818535, 34.420277, 40.954254>,  <33.595318, 34.498444, 40.995049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818535, 34.420277, 40.954254>,  <34.190563, 34.289997, 40.886261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818535, 34.420277, 40.954254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270889, -0.295422, -0.916158,
		-0.248170, -0.898137, 0.362990,
		-0.930070, 0.325693, 0.169981,
		33.539513, 34.517986, 41.005249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692532, 33.827599, 40.474907>,  <34.190563, 34.289997, 40.886261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692532, 33.827599, 40.474907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472507, 34.146931, 40.572971>,  <33.340492, 34.338528, 40.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472507, 34.146931, 40.572971>,  <33.692532, 33.827599, 40.474907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472507, 34.146931, 40.572971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524181, -0.101510, -0.845535,
		-0.650128, -0.593605, 0.474306,
		-0.550061, 0.798329, 0.245162,
		33.307487, 34.386429, 40.646519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992222, 33.611977, 40.373379>,  <33.692532, 33.827599, 40.474907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992222, 33.611977, 40.373379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988750, 34.011948, 40.369938>,  <32.986668, 34.251930, 40.367874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988750, 34.011948, 40.369938>,  <32.992222, 33.611977, 40.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988750, 34.011948, 40.369938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417148, -0.011439, -0.908766,
		-0.908797, -0.004293, 0.417216,
		-0.008674, 0.999925, -0.008605,
		32.986149, 34.311924, 40.367355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287533, 33.841797, 40.164330>,  <32.992222, 33.611977, 40.373379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287533, 33.841797, 40.164330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534317, 34.151688, 40.108967>,  <32.682388, 34.337620, 40.075748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534317, 34.151688, 40.108967>,  <32.287533, 33.841797, 40.164330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534317, 34.151688, 40.108967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279137, 0.050988, -0.958897,
		-0.735824, 0.630239, 0.247712,
		0.616964, 0.774725, -0.138405,
		32.719406, 34.384106, 40.067444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880449, 34.372643, 39.963764>,  <32.287533, 33.841797, 40.164330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880449, 34.372643, 39.963764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245975, 34.466003, 39.830818>,  <32.465290, 34.522018, 39.751053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245975, 34.466003, 39.830818>,  <31.880449, 34.372643, 39.963764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245975, 34.466003, 39.830818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374844, 0.169738, -0.911417,
		-0.156311, 0.957451, 0.242598,
		0.913815, 0.233401, -0.332363,
		32.520119, 34.536022, 39.731110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785007, 34.909492, 39.481800>,  <31.880449, 34.372643, 39.963764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785007, 34.909492, 39.481800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137512, 34.751503, 39.377972>,  <32.349014, 34.656708, 39.315674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137512, 34.751503, 39.377972>,  <31.785007, 34.909492, 39.481800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137512, 34.751503, 39.377972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303151, -0.051035, -0.951575,
		0.362600, 0.917274, -0.164711,
		0.881261, -0.394974, -0.259567,
		32.401890, 34.633011, 39.300102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783783, 35.159397, 38.811081>,  <31.785007, 34.909492, 39.481800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783783, 35.159397, 38.811081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077988, 34.888664, 38.823174>,  <32.254509, 34.726223, 38.830429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077988, 34.888664, 38.823174>,  <31.783783, 35.159397, 38.811081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077988, 34.888664, 38.823174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141977, -0.197609, -0.969945,
		0.662468, 0.709114, -0.241439,
		0.735512, -0.676837, 0.030232,
		32.298641, 34.685612, 38.832245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963064, 35.276443, 38.212166>,  <31.783783, 35.159397, 38.811081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963064, 35.276443, 38.212166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145493, 34.930748, 38.297100>,  <32.254948, 34.723331, 38.348061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145493, 34.930748, 38.297100>,  <31.963064, 35.276443, 38.212166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145493, 34.930748, 38.297100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053055, -0.264571, -0.962906,
		0.888361, 0.427887, -0.166515,
		0.456070, -0.864242, 0.212333,
		32.282314, 34.671474, 38.360802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359432, 35.132137, 37.773300>,  <31.963064, 35.276443, 38.212166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359432, 35.132137, 37.773300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319092, 34.756123, 37.903633>,  <32.294888, 34.530514, 37.981834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319092, 34.756123, 37.903633>,  <32.359432, 35.132137, 37.773300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319092, 34.756123, 37.903633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205021, -0.340109, -0.917765,
		0.973548, -0.025756, 0.227027,
		-0.100852, -0.940033, 0.325832,
		32.288837, 34.474113, 38.001381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787922, 34.808655, 37.316368>,  <32.359432, 35.132137, 37.773300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787922, 34.808655, 37.316368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545235, 34.527248, 37.464401>,  <32.399624, 34.358406, 37.553223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545235, 34.527248, 37.464401>,  <32.787922, 34.808655, 37.316368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545235, 34.527248, 37.464401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019142, -0.452500, -0.891559,
		0.794689, -0.548006, 0.261072,
		-0.606715, -0.703514, 0.370087,
		32.363220, 34.316193, 37.575428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112579, 34.186138, 37.332443>,  <32.787922, 34.808655, 37.316368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112579, 34.186138, 37.332443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718567, 34.117321, 37.328262>,  <32.482159, 34.076031, 37.325756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718567, 34.117321, 37.328262>,  <33.112579, 34.186138, 37.332443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718567, 34.117321, 37.328262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062869, -0.302178, -0.951176,
		0.160487, -0.937597, 0.308472,
		-0.985034, -0.172045, -0.010450,
		32.423058, 34.065708, 37.325127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003780, 33.553429, 36.955650>,  <33.112579, 34.186138, 37.332443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003780, 33.553429, 36.955650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663731, 33.760571, 36.917442>,  <32.459702, 33.884857, 36.894516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663731, 33.760571, 36.917442>,  <33.003780, 33.553429, 36.955650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663731, 33.760571, 36.917442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206046, -0.494056, -0.844662,
		-0.484612, -0.698377, 0.526708,
		-0.850115, 0.517859, -0.095528,
		32.408695, 33.915928, 36.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429401, 32.968605, 36.942520>,  <33.003780, 33.553429, 36.955650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429401, 32.968605, 36.942520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163483, 33.110649, 36.679630>,  <33.003933, 33.195873, 36.521896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163483, 33.110649, 36.679630>,  <33.429401, 32.968605, 36.942520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163483, 33.110649, 36.679630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699101, 0.014291, 0.714880,
		0.263252, 0.934716, 0.238756,
		-0.664797, 0.355108, -0.657223,
		32.964043, 33.217182, 36.482464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784203, 32.342945, 37.336700>,  <33.429401, 32.968605, 36.942520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784203, 32.342945, 37.336700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767658, 31.981279, 37.166626>,  <33.757732, 31.764280, 37.064583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767658, 31.981279, 37.166626>,  <33.784203, 32.342945, 37.336700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767658, 31.981279, 37.166626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480203, -0.355190, 0.802025,
		-0.876182, 0.237346, -0.419491,
		-0.041358, -0.904161, -0.425185,
		33.755249, 31.710032, 37.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179863, 32.053539, 37.484539>,  <33.784203, 32.342945, 37.336700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179863, 32.053539, 37.484539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407036, 31.731152, 37.417763>,  <33.543339, 31.537720, 37.377697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407036, 31.731152, 37.417763>,  <33.179863, 32.053539, 37.484539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407036, 31.731152, 37.417763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318315, -0.402125, 0.858470,
		-0.759029, -0.434416, -0.484932,
		0.567936, -0.805965, -0.166943,
		33.577415, 31.489363, 37.367680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918514, 31.428215, 37.900127>,  <33.179863, 32.053539, 37.484539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918514, 31.428215, 37.900127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314526, 31.394199, 37.855206>,  <33.552132, 31.373791, 37.828251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314526, 31.394199, 37.855206>,  <32.918514, 31.428215, 37.900127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314526, 31.394199, 37.855206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062427, -0.449822, 0.890934,
		-0.126282, -0.889061, -0.440028,
		0.990028, -0.085039, -0.112306,
		33.611534, 31.368687, 37.821514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260090, 30.705732, 38.100628>,  <32.918514, 31.428215, 37.900127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260090, 30.705732, 38.100628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556313, 30.972435, 38.134125>,  <33.734047, 31.132458, 38.154221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556313, 30.972435, 38.134125>,  <33.260090, 30.705732, 38.100628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556313, 30.972435, 38.134125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261987, -0.401217, 0.877717,
		0.618823, -0.628059, -0.471805,
		0.740555, 0.666758, 0.083739,
		33.778481, 31.172462, 38.159245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856720, 30.342297, 38.356663>,  <33.260090, 30.705732, 38.100628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856720, 30.342297, 38.356663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944252, 30.718731, 38.459789>,  <33.996769, 30.944592, 38.521664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944252, 30.718731, 38.459789>,  <33.856720, 30.342297, 38.356663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944252, 30.718731, 38.459789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293329, -0.315442, 0.902472,
		0.930631, -0.121860, -0.345075,
		0.218826, 0.941088, 0.257815,
		34.009899, 31.001057, 38.537132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454189, 30.303438, 38.662231>,  <33.856720, 30.342297, 38.356663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454189, 30.303438, 38.662231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327648, 30.657541, 38.798607>,  <34.251724, 30.870003, 38.880432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327648, 30.657541, 38.798607>,  <34.454189, 30.303438, 38.662231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327648, 30.657541, 38.798607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292693, -0.250772, 0.922737,
		0.902359, 0.391699, -0.179777,
		-0.316352, 0.885260, 0.340934,
		34.232742, 30.923119, 38.900887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945068, 30.459784, 39.102379>,  <34.454189, 30.303438, 38.662231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945068, 30.459784, 39.102379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625900, 30.679617, 39.201397>,  <34.434399, 30.811516, 39.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625900, 30.679617, 39.201397>,  <34.945068, 30.459784, 39.102379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625900, 30.679617, 39.201397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310092, 0.022107, 0.950449,
		0.516877, 0.835148, -0.188060,
		-0.797923, 0.549581, 0.247546,
		34.386524, 30.844492, 39.275661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172127, 30.845743, 39.613350>,  <34.945068, 30.459784, 39.102379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172127, 30.845743, 39.613350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772606, 30.845963, 39.632942>,  <34.532894, 30.846094, 39.644699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772606, 30.845963, 39.632942>,  <35.172127, 30.845743, 39.613350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772606, 30.845963, 39.632942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048986, 0.000522, 0.998799,
		0.000522, 1.000000, -0.000548,
		-0.998799, 0.000548, 0.048985,
		34.472965, 30.846127, 39.647636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059681, 31.430592, 40.084850>,  <35.172127, 30.845743, 39.613350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059681, 31.430592, 40.084850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718063, 31.222532, 40.082054>,  <34.513092, 31.097696, 40.080376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718063, 31.222532, 40.082054>,  <35.059681, 31.430592, 40.084850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718063, 31.222532, 40.082054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118355, -0.207379, 0.971075,
		-0.506552, 0.828517, 0.238673,
		-0.854047, -0.520148, -0.006989,
		34.461849, 31.066488, 40.079956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600628, 31.561804, 40.799389>,  <35.059681, 31.430592, 40.084850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600628, 31.561804, 40.799389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475311, 31.215651, 40.642948>,  <34.400120, 31.007959, 40.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475311, 31.215651, 40.642948>,  <34.600628, 31.561804, 40.799389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475311, 31.215651, 40.642948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089274, -0.436847, 0.895095,
		-0.945451, 0.245513, 0.214118,
		-0.313295, -0.865383, -0.391100,
		34.381325, 30.956036, 40.525620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992985, 31.332018, 41.242363>,  <34.600628, 31.561804, 40.799389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992985, 31.332018, 41.242363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141647, 31.011593, 41.054672>,  <34.230843, 30.819338, 40.942059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141647, 31.011593, 41.054672>,  <33.992985, 31.332018, 41.242363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141647, 31.011593, 41.054672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059557, -0.483811, 0.873144,
		-0.926459, -0.352452, -0.132101,
		0.371653, -0.801064, -0.469222,
		34.253143, 30.771273, 40.913906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629368, 30.640795, 41.377579>,  <33.992985, 31.332018, 41.242363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629368, 30.640795, 41.377579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992355, 30.528324, 41.252716>,  <34.210148, 30.460842, 41.177799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992355, 30.528324, 41.252716>,  <33.629368, 30.640795, 41.377579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992355, 30.528324, 41.252716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017891, -0.716481, 0.697377,
		-0.419741, -0.638432, -0.645153,
		0.907468, -0.281175, -0.312158,
		34.264595, 30.443972, 41.159069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796165, 30.084700, 41.688889>,  <33.629368, 30.640795, 41.377579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796165, 30.084700, 41.688889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168144, 30.150160, 41.557182>,  <34.391331, 30.189436, 41.478157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168144, 30.150160, 41.557182>,  <33.796165, 30.084700, 41.688889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168144, 30.150160, 41.557182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367519, -0.441096, 0.818757,
		-0.011247, -0.882413, -0.470342,
		0.929948, 0.163651, -0.329265,
		34.447128, 30.199255, 41.458405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187489, 29.413662, 41.656914>,  <33.796165, 30.084700, 41.688889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187489, 29.413662, 41.656914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455425, 29.703531, 41.721600>,  <34.616188, 29.877453, 41.760410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455425, 29.703531, 41.721600>,  <34.187489, 29.413662, 41.656914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455425, 29.703531, 41.721600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449263, -0.568976, 0.688788,
		0.591159, -0.388730, -0.706697,
		0.669846, 0.724675, 0.161713,
		34.656380, 29.920935, 41.770115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766899, 29.025875, 41.796734>,  <34.187489, 29.413662, 41.656914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766899, 29.025875, 41.796734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867558, 29.390541, 41.926678>,  <34.927952, 29.609341, 42.004646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867558, 29.390541, 41.926678>,  <34.766899, 29.025875, 41.796734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867558, 29.390541, 41.926678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495729, -0.409708, 0.765762,
		0.831220, -0.031658, -0.555042,
		0.251648, 0.911667, 0.324864,
		34.943050, 29.664042, 42.024136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494907, 28.967720, 42.189182>,  <34.766899, 29.025875, 41.796734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494907, 28.967720, 42.189182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370953, 29.337936, 42.276215>,  <35.296581, 29.560066, 42.328434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370953, 29.337936, 42.276215>,  <35.494907, 28.967720, 42.189182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370953, 29.337936, 42.276215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540083, -0.016979, 0.841440,
		0.782483, 0.378262, -0.494609,
		-0.309887, 0.925543, 0.217579,
		35.277985, 29.615599, 42.341488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089767, 29.419319, 42.297340>,  <35.494907, 28.967720, 42.189182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089767, 29.419319, 42.297340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778099, 29.559484, 42.505226>,  <35.591099, 29.643583, 42.629959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778099, 29.559484, 42.505226>,  <36.089767, 29.419319, 42.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778099, 29.559484, 42.505226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574613, 0.068055, 0.815591,
		0.250425, 0.934119, -0.254378,
		-0.779171, 0.350413, 0.519714,
		35.544346, 29.664608, 42.661140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340504, 29.979336, 42.701572>,  <36.089767, 29.419319, 42.297340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340504, 29.979336, 42.701572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996025, 29.910919, 42.893024>,  <35.789337, 29.869869, 43.007896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996025, 29.910919, 42.893024>,  <36.340504, 29.979336, 42.701572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996025, 29.910919, 42.893024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445765, 0.198260, 0.872918,
		-0.244196, 0.965111, -0.094497,
		-0.861198, -0.171040, 0.478627,
		35.737667, 29.859608, 43.036613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223553, 30.532928, 43.163818>,  <36.340504, 29.979336, 42.701572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223553, 30.532928, 43.163818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996269, 30.236816, 43.307556>,  <35.859898, 30.059149, 43.393799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996269, 30.236816, 43.307556>,  <36.223553, 30.532928, 43.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996269, 30.236816, 43.307556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168211, 0.322978, 0.931338,
		-0.805509, 0.589639, -0.058996,
		-0.568207, -0.740278, 0.359345,
		35.825806, 30.014732, 43.415359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740799, 30.845037, 43.632534>,  <36.223553, 30.532928, 43.163818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740799, 30.845037, 43.632534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737148, 30.456291, 43.726681>,  <35.734959, 30.223043, 43.783169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737148, 30.456291, 43.726681>,  <35.740799, 30.845037, 43.632534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737148, 30.456291, 43.726681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164508, 0.230708, 0.959016,
		-0.986334, 0.047474, 0.157774,
		-0.009129, -0.971864, 0.235365,
		35.734409, 30.164732, 43.797291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259892, 30.819424, 44.191734>,  <35.740799, 30.845037, 43.632534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259892, 30.819424, 44.191734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490292, 30.494141, 44.225018>,  <35.628532, 30.298971, 44.244987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490292, 30.494141, 44.225018>,  <35.259892, 30.819424, 44.191734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490292, 30.494141, 44.225018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066183, 0.147853, 0.986792,
		-0.814768, -0.562882, 0.138983,
		0.575997, -0.813206, 0.083213,
		35.663090, 30.250179, 44.249981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127697, 30.628635, 44.848534>,  <35.259892, 30.819424, 44.191734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127697, 30.628635, 44.848534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462208, 30.417183, 44.790318>,  <35.662914, 30.290312, 44.755386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462208, 30.417183, 44.790318>,  <35.127697, 30.628635, 44.848534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462208, 30.417183, 44.790318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111890, -0.095316, 0.989139,
		-0.536764, -0.843482, -0.020562,
		0.836281, -0.528633, -0.145540,
		35.713093, 30.258593, 44.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056488, 29.871229, 45.153175>,  <35.127697, 30.628635, 44.848534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056488, 29.871229, 45.153175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440903, 29.979746, 45.131977>,  <35.671551, 30.044857, 45.119259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440903, 29.979746, 45.131977>,  <35.056488, 29.871229, 45.153175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440903, 29.979746, 45.131977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123756, -0.250850, 0.960083,
		0.247171, -0.929233, -0.274650,
		0.961037, 0.271294, -0.052995,
		35.729214, 30.061134, 45.116077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371323, 29.434780, 45.688999>,  <35.056488, 29.871229, 45.153175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371323, 29.434780, 45.688999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689793, 29.670126, 45.632534>,  <35.880875, 29.811333, 45.598656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689793, 29.670126, 45.632534>,  <35.371323, 29.434780, 45.688999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689793, 29.670126, 45.632534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263947, -0.127805, 0.956033,
		0.544456, -0.798431, -0.257052,
		0.796179, 0.588365, -0.141159,
		35.928646, 29.846636, 45.590187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070721, 29.109457, 46.024178>,  <35.371323, 29.434780, 45.688999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070721, 29.109457, 46.024178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117767, 29.505482, 45.993324>,  <36.145996, 29.743095, 45.974812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117767, 29.505482, 45.993324>,  <36.070721, 29.109457, 46.024178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117767, 29.505482, 45.993324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311923, 0.036906, 0.949390,
		0.942800, -0.135720, -0.304481,
		0.117614, 0.990060, -0.077129,
		36.153053, 29.802500, 45.970184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533981, 29.278502, 46.591255>,  <36.070721, 29.109457, 46.024178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533981, 29.278502, 46.591255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383099, 29.633297, 46.484695>,  <36.292568, 29.846174, 46.420761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383099, 29.633297, 46.484695>,  <36.533981, 29.278502, 46.591255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383099, 29.633297, 46.484695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216129, 0.364012, 0.905971,
		0.900559, 0.284158, -0.329010,
		-0.377202, 0.886989, -0.266399,
		36.269939, 29.899393, 46.404778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914822, 29.749611, 47.004196>,  <36.533981, 29.278502, 46.591255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914822, 29.749611, 47.004196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576805, 29.939892, 46.906536>,  <36.373997, 30.054060, 46.847939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576805, 29.939892, 46.906536>,  <36.914822, 29.749611, 47.004196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576805, 29.939892, 46.906536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014649, 0.435851, 0.899899,
		0.534498, 0.764030, -0.361344,
		-0.845043, 0.475701, -0.244154,
		36.323292, 30.082602, 46.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993938, 30.336271, 47.434467>,  <36.914822, 29.749611, 47.004196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993938, 30.336271, 47.434467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613625, 30.266613, 47.331955>,  <36.385437, 30.224819, 47.270447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613625, 30.266613, 47.331955>,  <36.993938, 30.336271, 47.434467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613625, 30.266613, 47.331955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292511, 0.231677, 0.927773,
		-0.102192, 0.957079, -0.271215,
		-0.950786, -0.174144, -0.256280,
		36.328388, 30.214371, 47.255070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499050, 31.020180, 47.396214>,  <36.993938, 30.336271, 47.434467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499050, 31.020180, 47.396214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875874, 31.003412, 47.529339>,  <38.101967, 30.993351, 47.609215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875874, 31.003412, 47.529339>,  <37.499050, 31.020180, 47.396214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875874, 31.003412, 47.529339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333264, 0.004056, -0.942825,
		0.038172, 0.999113, 0.017791,
		0.942061, -0.041918, 0.332814,
		38.158493, 30.990837, 47.629185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853397, 31.629356, 47.044518>,  <37.499050, 31.020180, 47.396214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853397, 31.629356, 47.044518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109135, 31.352062, 47.177582>,  <38.262577, 31.185686, 47.257420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109135, 31.352062, 47.177582>,  <37.853397, 31.629356, 47.044518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109135, 31.352062, 47.177582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442014, -0.022655, -0.896722,
		0.629177, 0.720354, 0.291936,
		0.639343, -0.693237, 0.332660,
		38.300938, 31.144091, 47.277378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546749, 31.862347, 47.029568>,  <37.853397, 31.629356, 47.044518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546749, 31.862347, 47.029568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562576, 31.465073, 46.985718>,  <38.572071, 31.226707, 46.959408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562576, 31.465073, 46.985718>,  <38.546749, 31.862347, 47.029568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562576, 31.465073, 46.985718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599758, 0.111356, -0.792395,
		0.799202, -0.034396, 0.600077,
		0.039567, -0.993185, -0.109625,
		38.574448, 31.167116, 46.952831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113998, 31.693598, 46.589035>,  <38.546749, 31.862347, 47.029568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113998, 31.693598, 46.589035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889091, 31.364355, 46.557156>,  <38.754147, 31.166809, 46.538029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889091, 31.364355, 46.557156>,  <39.113998, 31.693598, 46.589035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889091, 31.364355, 46.557156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319391, -0.127253, -0.939040,
		0.762787, -0.553447, 0.334443,
		-0.562268, -0.823106, -0.079699,
		38.720409, 31.117424, 46.533245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611431, 31.305059, 46.311165>,  <39.113998, 31.693598, 46.589035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611431, 31.305059, 46.311165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260441, 31.134869, 46.222618>,  <39.049847, 31.032753, 46.169491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260441, 31.134869, 46.222618>,  <39.611431, 31.305059, 46.311165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260441, 31.134869, 46.222618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327477, -0.194281, -0.924670,
		0.350419, -0.883868, 0.309811,
		-0.877477, -0.425478, -0.221366,
		38.997196, 31.007225, 46.156208>
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
