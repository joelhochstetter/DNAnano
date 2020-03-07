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
	<3.581862, 1.557479, 1.525297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.864769, 1.557873, 1.242519>,  <4.034513, 1.558109, 1.072852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.864769, 1.557873, 1.242519>,  <3.581862, 1.557479, 1.525297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864769, 1.557873, 1.242519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582549, -0.565724, -0.583603,
		-0.400511, 0.824594, -0.399544,
		0.707268, 0.000985, -0.706945,
		4.076949, 1.558168, 1.030436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.243482, 1.500420, 0.935209>,  <3.581862, 1.557479, 1.525297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.243482, 1.500420, 0.935209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.620331, 1.386028, 0.865211>,  <3.846440, 1.317393, 0.823213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.620331, 1.386028, 0.865211>,  <3.243482, 1.500420, 0.935209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.620331, 1.386028, 0.865211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334809, -0.829923, -0.446240,
		-0.017617, 0.479002, -0.877637,
		0.942121, -0.285979, -0.174995,
		3.902967, 1.300234, 0.812713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.284047, 1.324980, 0.277191>,  <3.243482, 1.500420, 0.935209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.284047, 1.324980, 0.277191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.566696, 1.104290, 0.454407>,  <3.736286, 0.971876, 0.560736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.566696, 1.104290, 0.454407>,  <3.284047, 1.324980, 0.277191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.566696, 1.104290, 0.454407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380541, -0.824180, -0.419423,
		0.596551, 0.127779, -0.792338,
		0.706623, -0.551724, 0.443040,
		3.778683, 0.938773, 0.587319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.545567, 0.659820, -0.205898>,  <3.284047, 1.324980, 0.277191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.545567, 0.659820, -0.205898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665348, 0.575359, 0.166283>,  <3.737217, 0.524683, 0.389591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665348, 0.575359, 0.166283>,  <3.545567, 0.659820, -0.205898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.665348, 0.575359, 0.166283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, -0.975984, -0.217488,
		0.954030, 0.053572, -0.294884,
		0.299453, -0.211152, 0.930453,
		3.755184, 0.512014, 0.445419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.102805, 0.242246, -0.248571>,  <3.545567, 0.659820, -0.205898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.102805, 0.242246, -0.248571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.947594, 0.177261, 0.114315>,  <3.854467, 0.138271, 0.332047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.947594, 0.177261, 0.114315>,  <4.102805, 0.242246, -0.248571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.947594, 0.177261, 0.114315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060142, -0.986707, -0.150972,
		0.919683, -0.004020, 0.392642,
		-0.388029, -0.162461, 0.907215,
		3.831185, 0.128523, 0.386480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.530498, -0.264890, -0.083055>,  <4.102805, 0.242246, -0.248571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.530498, -0.264890, -0.083055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.215473, -0.304241, 0.160278>,  <4.026458, -0.327852, 0.306278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.215473, -0.304241, 0.160278>,  <4.530498, -0.264890, -0.083055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.215473, -0.304241, 0.160278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029350, -0.980066, -0.196493,
		0.615537, -0.172605, 0.768974,
		-0.787561, -0.098379, 0.608333,
		3.979205, -0.333755, 0.342778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.699441, -0.870758, 0.386818>,  <4.530498, -0.264889, -0.083055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.699441, -0.870758, 0.386818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302311, -0.824245, 0.397957>,  <4.064033, -0.796338, 0.404640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302311, -0.824245, 0.397957>,  <4.699441, -0.870758, 0.386818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302311, -0.824245, 0.397957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118717, -0.986401, -0.113662,
		0.014251, -0.116153, 0.993129,
		-0.992826, 0.116282, 0.027846,
		4.004463, -0.789361, 0.406311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.419369, -1.432011, 0.775303>,  <4.699441, -0.870758, 0.386818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.419369, -1.432011, 0.775303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105591, -1.318466, 0.554733>,  <3.917324, -1.250339, 0.422392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105591, -1.318466, 0.554733>,  <4.419369, -1.432011, 0.775303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105591, -1.318466, 0.554733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227718, -0.958835, -0.169643,
		-0.576879, -0.007506, 0.816795,
		-0.784445, 0.283863, -0.551423,
		3.870257, -1.233307, 0.389306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.976741, 2.712209, -0.520073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.594055, 2.781151, -0.426273>,  <3.364444, 2.822515, -0.369993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.594055, 2.781151, -0.426273>,  <3.976741, 2.712209, -0.520073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.594055, 2.781151, -0.426273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230760, 0.940239, 0.250399,
		-0.177329, 0.293674, -0.939314,
		-0.956715, 0.172353, 0.234500,
		3.307041, 2.832857, -0.355923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.739268, 3.350291, -0.848444>,  <3.976741, 2.712209, -0.520073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.739268, 3.350291, -0.848444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.511185, 3.285686, -0.526257>,  <3.374335, 3.246924, -0.332944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.511185, 3.285686, -0.526257>,  <3.739268, 3.350291, -0.848444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.511185, 3.285686, -0.526257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077853, 0.965446, 0.248703,
		-0.817804, 0.204520, -0.537930,
		-0.570207, -0.161511, 0.805468,
		3.340122, 3.237233, -0.284616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.312470, 3.961521, -0.738899>,  <3.739268, 3.350291, -0.848444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.312470, 3.961521, -0.738899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.308701, 3.766991, -0.389408>,  <3.306439, 3.650272, -0.179714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.308701, 3.766991, -0.389408>,  <3.312470, 3.961521, -0.738899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.308701, 3.766991, -0.389408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072986, 0.871100, 0.485652,
		-0.997288, 0.068347, 0.027285,
		-0.009424, -0.486326, 0.873726,
		3.305873, 3.621093, -0.127290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.784478, 4.190375, -0.181921>,  <3.312470, 3.961521, -0.738899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.784478, 4.190375, -0.181921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114883, 4.060867, 0.002632>,  <3.313127, 3.983163, 0.113364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114883, 4.060867, 0.002632>,  <2.784478, 4.190375, -0.181921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.114883, 4.060867, 0.002632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035250, 0.846634, 0.531006,
		-0.562546, -0.422355, 0.710745,
		0.826014, -0.323770, 0.461383,
		3.362688, 3.963737, 0.141047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.748712, 4.266119, 0.454201>,  <2.784478, 4.190375, -0.181921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.748712, 4.266119, 0.454201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147003, 4.257294, 0.418339>,  <3.385978, 4.251998, 0.396821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147003, 4.257294, 0.418339>,  <2.748712, 4.266119, 0.454201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.147003, 4.257294, 0.418339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059910, 0.893253, 0.445544,
		0.070256, -0.449012, 0.890760,
		0.995729, -0.022064, -0.089656,
		3.445722, 4.250675, 0.391442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.945799, 4.585578, 1.119295>,  <2.748712, 4.266119, 0.454201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.945799, 4.585578, 1.119295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.271004, 4.617893, 0.888649>,  <3.466127, 4.637282, 0.750261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.271004, 4.617893, 0.888649>,  <2.945799, 4.585578, 1.119295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.271004, 4.617893, 0.888649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215478, 0.878267, 0.426868,
		0.540907, -0.471296, 0.696634,
		0.813012, 0.080787, -0.576615,
		3.514907, 4.642129, 0.715664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.461999, 4.819424, 1.597341>,  <2.945799, 4.585578, 1.119295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.461999, 4.819424, 1.597341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.576767, 4.914505, 1.226143>,  <3.645628, 4.971554, 1.003424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.576767, 4.914505, 1.226143>,  <3.461999, 4.819424, 1.597341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.576767, 4.914505, 1.226143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359614, 0.871149, 0.334329,
		0.887893, -0.429646, 0.164470,
		0.286921, 0.237703, -0.927994,
		3.662843, 4.985816, 0.947745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.121823, 5.267904, 1.653923>,  <3.461999, 4.819424, 1.597341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.121823, 5.267904, 1.653923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955467, 5.334511, 1.296307>,  <3.855654, 5.374475, 1.081737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955467, 5.334511, 1.296307>,  <4.121823, 5.267904, 1.653923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955467, 5.334511, 1.296307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056549, 0.985927, 0.157324,
		0.907655, 0.014873, -0.419453,
		-0.415889, 0.166516, -0.894041,
		3.830700, 5.384466, 1.028094>
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
