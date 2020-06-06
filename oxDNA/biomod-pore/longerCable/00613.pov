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
	<24.368597, 35.032658, 34.913372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.120382, 35.105167, 35.218544>,  <23.971453, 35.148674, 35.401649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.120382, 35.105167, 35.218544>,  <24.368597, 35.032658, 34.913372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120382, 35.105167, 35.218544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012512, -0.975078, 0.221509,
		0.784076, 0.127909, 0.607342,
		-0.620539, 0.181279, 0.762935,
		23.934221, 35.159550, 35.447426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739655, 34.786873, 35.607857>,  <24.368597, 35.032658, 34.913372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739655, 34.786873, 35.607857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341576, 34.759384, 35.579964>,  <24.102728, 34.742893, 35.563229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341576, 34.759384, 35.579964>,  <24.739655, 34.786873, 35.607857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341576, 34.759384, 35.579964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083254, -0.968793, -0.233473,
		-0.051510, -0.238156, 0.969860,
		-0.995196, -0.068718, -0.069730,
		24.043016, 34.738770, 35.559044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572762, 34.293289, 36.096664>,  <24.739655, 34.786873, 35.607857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572762, 34.293289, 36.096664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370338, 34.314991, 35.752350>,  <24.248884, 34.328014, 35.545761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370338, 34.314991, 35.752350>,  <24.572762, 34.293289, 36.096664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370338, 34.314991, 35.752350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212486, -0.959415, -0.185396,
		-0.835915, -0.276727, 0.473992,
		-0.506059, 0.054259, -0.860790,
		24.218521, 34.331268, 35.494114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332527, 33.993176, 36.161324>,  <24.572762, 34.293289, 36.096664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332527, 33.993176, 36.161324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307177, 33.823959, 35.799767>,  <25.291965, 33.722427, 35.582832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307177, 33.823959, 35.799767>,  <25.332527, 33.993176, 36.161324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307177, 33.823959, 35.799767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941844, 0.274150, -0.194347,
		0.330019, -0.863642, 0.381065,
		-0.063377, -0.423042, -0.903891,
		25.288164, 33.697048, 35.528599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962744, 33.528652, 36.023705>,  <25.332527, 33.993176, 36.161324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962744, 33.528652, 36.023705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828072, 33.677597, 35.677757>,  <25.747269, 33.766964, 35.470188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828072, 33.677597, 35.677757>,  <25.962744, 33.528652, 36.023705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828072, 33.677597, 35.677757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919048, -0.069954, -0.387888,
		-0.204935, -0.925449, -0.318664,
		-0.336678, 0.372359, -0.864868,
		25.727068, 33.789307, 35.418297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362324, 33.272686, 35.404007>,  <25.962744, 33.528652, 36.023705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362324, 33.272686, 35.404007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731197, 33.220242, 35.258469>,  <26.952522, 33.188774, 35.171146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731197, 33.220242, 35.258469>,  <26.362324, 33.272686, 35.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731197, 33.220242, 35.258469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269749, 0.892228, 0.362167,
		0.277152, -0.432132, 0.858166,
		0.922184, -0.131114, -0.363850,
		27.007853, 33.180908, 35.149315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805695, 33.029816, 35.992371>,  <26.362324, 33.272686, 35.404007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805695, 33.029816, 35.992371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931572, 32.833439, 35.667423>,  <27.007097, 32.715614, 35.472454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931572, 32.833439, 35.667423>,  <26.805695, 33.029816, 35.992371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931572, 32.833439, 35.667423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601989, 0.764939, -0.229079,
		0.733879, -0.416950, 0.536260,
		0.314692, -0.490939, -0.812372,
		27.025980, 32.686157, 35.423710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415472, 32.531147, 36.163231>,  <26.805695, 33.029816, 35.992371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415472, 32.531147, 36.163231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117159, 32.640480, 36.406246>,  <26.938171, 32.706081, 36.552055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117159, 32.640480, 36.406246>,  <27.415472, 32.531147, 36.163231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117159, 32.640480, 36.406246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012942, -0.917725, 0.397005,
		0.666065, 0.288216, 0.687960,
		-0.745781, 0.273335, 0.607535,
		26.893425, 32.722481, 36.588505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461407, 32.293247, 36.817440>,  <27.415472, 32.531147, 36.163231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461407, 32.293247, 36.817440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064898, 32.297588, 36.764889>,  <26.826992, 32.300194, 36.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064898, 32.297588, 36.764889>,  <27.461407, 32.293247, 36.817440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064898, 32.297588, 36.764889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061925, -0.918144, 0.391378,
		-0.116374, 0.396098, 0.910804,
		-0.991273, 0.010856, -0.131376,
		26.767515, 32.300846, 36.725475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110144, 32.132961, 37.510139>,  <27.461407, 32.293247, 36.817440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110144, 32.132961, 37.510139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860306, 32.008911, 37.223446>,  <26.710403, 31.934481, 37.051430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860306, 32.008911, 37.223446>,  <27.110144, 32.132961, 37.510139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860306, 32.008911, 37.223446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025683, -0.909116, 0.415751,
		-0.780527, 0.278083, 0.559863,
		-0.624594, -0.310126, -0.716732,
		26.672928, 31.915873, 37.008427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667297, 31.806757, 37.919579>,  <27.110144, 32.132961, 37.510139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667297, 31.806757, 37.919579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880901, 31.619349, 38.201096>,  <28.009064, 31.506903, 38.370007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880901, 31.619349, 38.201096>,  <27.667297, 31.806757, 37.919579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880901, 31.619349, 38.201096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013071, -0.836892, -0.547211,
		0.845379, 0.283016, -0.453031,
		0.534008, -0.468522, 0.703791,
		28.041103, 31.478792, 38.412231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062614, 31.390982, 37.556061>,  <27.667297, 31.806757, 37.919579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062614, 31.390982, 37.556061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004780, 31.221762, 37.913860>,  <27.970079, 31.120230, 38.128540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004780, 31.221762, 37.913860>,  <28.062614, 31.390982, 37.556061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004780, 31.221762, 37.913860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079840, -0.896059, -0.436696,
		0.986266, -0.134557, 0.095781,
		-0.144586, -0.423052, 0.894496,
		27.961405, 31.094847, 38.182209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682070, 31.020681, 37.932991>,  <28.062614, 31.390982, 37.556061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682070, 31.020681, 37.932991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028616, 30.878262, 38.073071>,  <29.236544, 30.792810, 38.157120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028616, 30.878262, 38.073071>,  <28.682070, 31.020681, 37.932991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028616, 30.878262, 38.073071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200342, -0.394553, -0.896767,
		0.457465, 0.847088, -0.270496,
		0.866365, -0.356048, 0.350201,
		29.288527, 30.771448, 38.178131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070215, 31.121618, 38.595688>,  <28.682070, 31.020681, 37.932991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070215, 31.121618, 38.595688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771276, 31.283442, 38.384857>,  <28.591913, 31.380535, 38.258358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771276, 31.283442, 38.384857>,  <29.070215, 31.121618, 38.595688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771276, 31.283442, 38.384857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626685, -0.692765, 0.356850,
		-0.220774, 0.597001, 0.771264,
		-0.747345, 0.404556, -0.527077,
		28.547073, 31.404808, 38.226734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188810, 31.345564, 39.262371>,  <29.070215, 31.121618, 38.595688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188810, 31.345564, 39.262371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456949, 31.134043, 39.470600>,  <29.617832, 31.007130, 39.595539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456949, 31.134043, 39.470600>,  <29.188810, 31.345564, 39.262371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456949, 31.134043, 39.470600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714401, 0.649620, -0.260046,
		-0.200664, 0.546222, 0.813250,
		0.670347, -0.528805, 0.520577,
		29.658052, 30.975401, 39.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518192, 31.686167, 39.812183>,  <29.188810, 31.345564, 39.262371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518192, 31.686167, 39.812183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778246, 31.413809, 39.677303>,  <29.934278, 31.250393, 39.596375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778246, 31.413809, 39.677303>,  <29.518192, 31.686167, 39.812183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778246, 31.413809, 39.677303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674848, 0.721381, -0.155528,
		0.349151, -0.126447, 0.928496,
		0.650134, -0.680896, -0.337204,
		29.973286, 31.209539, 39.576141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127182, 32.145050, 39.717297>,  <29.518192, 31.686167, 39.812183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127182, 32.145050, 39.717297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250149, 31.800241, 39.556095>,  <30.323929, 31.593357, 39.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250149, 31.800241, 39.556095>,  <30.127182, 32.145050, 39.717297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250149, 31.800241, 39.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775222, 0.472481, -0.419276,
		0.551838, -0.183527, 0.813507,
		0.307419, -0.862020, -0.403007,
		30.342375, 31.541636, 39.435192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899773, 32.047451, 39.807926>,  <30.127182, 32.145050, 39.717297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899773, 32.047451, 39.807926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794888, 31.866636, 39.466892>,  <30.731956, 31.758148, 39.262272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794888, 31.866636, 39.466892>,  <30.899773, 32.047451, 39.807926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794888, 31.866636, 39.466892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809018, 0.378650, -0.449571,
		0.526055, -0.807644, 0.266417,
		-0.262214, -0.452035, -0.852589,
		30.716223, 31.731026, 39.211117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524454, 31.999655, 39.496819>,  <30.899773, 32.047451, 39.807926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524454, 31.999655, 39.496819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286869, 31.940128, 39.180576>,  <31.144318, 31.904411, 38.990829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286869, 31.940128, 39.180576>,  <31.524454, 31.999655, 39.496819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286869, 31.940128, 39.180576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737041, 0.293240, -0.608918,
		0.322456, -0.944385, -0.064489,
		-0.593964, -0.148818, -0.790607,
		31.108681, 31.895483, 38.943394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701658, 31.584829, 38.959507>,  <31.524454, 31.999655, 39.496819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701658, 31.584829, 38.959507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452204, 31.831675, 38.767570>,  <31.302530, 31.979782, 38.652409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452204, 31.831675, 38.767570>,  <31.701658, 31.584829, 38.959507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452204, 31.831675, 38.767570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718055, 0.209595, -0.663677,
		-0.308991, -0.758447, -0.573831,
		-0.623635, 0.617113, -0.479844,
		31.265114, 32.016808, 38.623619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826828, 31.680355, 38.325272>,  <31.701658, 31.584829, 38.959507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826828, 31.680355, 38.325272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612459, 32.017975, 38.332924>,  <31.483837, 32.220547, 38.337513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612459, 32.017975, 38.332924>,  <31.826828, 31.680355, 38.325272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612459, 32.017975, 38.332924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582286, 0.385932, -0.715542,
		-0.611335, -0.372338, -0.698308,
		-0.535923, 0.844050, 0.019126,
		31.451683, 32.271191, 38.338661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638765, 31.870071, 37.597702>,  <31.826828, 31.680355, 38.325272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638765, 31.870071, 37.597702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627005, 32.197716, 37.826855>,  <31.619949, 32.394302, 37.964348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627005, 32.197716, 37.826855>,  <31.638765, 31.870071, 37.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627005, 32.197716, 37.826855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636503, 0.457251, -0.621116,
		-0.770714, 0.346379, -0.534810,
		-0.029401, 0.819111, 0.572881,
		31.618185, 32.443447, 37.998718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437246, 32.542107, 37.097572>,  <31.638765, 31.870071, 37.597702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437246, 32.542107, 37.097572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649170, 32.587296, 37.433796>,  <31.776325, 32.614407, 37.635529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649170, 32.587296, 37.433796>,  <31.437246, 32.542107, 37.097572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649170, 32.587296, 37.433796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734426, 0.434565, -0.521318,
		-0.424169, 0.893528, 0.147271,
		0.529811, 0.112968, 0.840559,
		31.808113, 32.621185, 37.685963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801733, 33.220512, 37.162834>,  <31.437246, 32.542107, 37.097572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801733, 33.220512, 37.162834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014954, 32.995766, 37.415867>,  <32.142887, 32.860916, 37.567684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014954, 32.995766, 37.415867>,  <31.801733, 33.220512, 37.162834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014954, 32.995766, 37.415867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841797, 0.427350, -0.329774,
		-0.085042, 0.708289, 0.700781,
		0.533054, -0.561871, 0.632578,
		32.174870, 32.827206, 37.605640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487083, 33.224224, 37.589962>,  <31.801733, 33.220512, 37.162834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487083, 33.224224, 37.589962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383537, 33.522377, 37.344234>,  <32.321407, 33.701267, 37.196796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383537, 33.522377, 37.344234>,  <32.487083, 33.224224, 37.589962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383537, 33.522377, 37.344234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880764, 0.443254, 0.166674,
		0.396536, -0.497925, -0.771252,
		-0.258870, 0.745384, -0.614320,
		32.305878, 33.745991, 37.159939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001484, 33.406994, 37.103218>,  <32.487083, 33.224224, 37.589962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001484, 33.406994, 37.103218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767818, 33.726494, 37.160847>,  <32.627621, 33.918194, 37.195423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767818, 33.726494, 37.160847>,  <33.001484, 33.406994, 37.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767818, 33.726494, 37.160847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803537, 0.544136, 0.241337,
		0.114373, 0.256746, -0.959688,
		-0.584163, 0.798747, 0.144070,
		32.592571, 33.966118, 37.204067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511692, 34.021194, 37.255993>,  <33.001484, 33.406994, 37.103218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511692, 34.021194, 37.255993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148872, 34.183456, 37.301079>,  <32.931179, 34.280815, 37.328133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148872, 34.183456, 37.301079>,  <33.511692, 34.021194, 37.255993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148872, 34.183456, 37.301079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414342, 0.907577, 0.068002,
		-0.074715, 0.108385, -0.991297,
		-0.907049, 0.405655, 0.112718,
		32.876759, 34.305153, 37.334896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429985, 34.531143, 36.786453>,  <33.511692, 34.021194, 37.255993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429985, 34.531143, 36.786453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211529, 34.623970, 37.108414>,  <33.080456, 34.679665, 37.301590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211529, 34.623970, 37.108414>,  <33.429985, 34.531143, 36.786453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211529, 34.623970, 37.108414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377631, 0.925894, -0.010719,
		-0.747745, 0.298103, -0.593306,
		-0.546143, 0.232066, 0.804906,
		33.047688, 34.693588, 37.349884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812195, 34.847832, 36.247787>,  <33.429985, 34.531143, 36.786453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812195, 34.847832, 36.247787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124573, 34.965019, 36.468441>,  <34.312000, 35.035332, 36.600834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124573, 34.965019, 36.468441>,  <33.812195, 34.847832, 36.247787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124573, 34.965019, 36.468441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585682, -0.036575, -0.809716,
		-0.217043, 0.955423, -0.200148,
		0.780941, 0.292966, 0.551635,
		34.358856, 35.052910, 36.633930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163834, 35.380074, 35.953758>,  <33.812195, 34.847832, 36.247787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163834, 35.380074, 35.953758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436970, 35.218273, 36.197105>,  <34.600849, 35.121193, 36.343113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436970, 35.218273, 36.197105>,  <34.163834, 35.380074, 35.953758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436970, 35.218273, 36.197105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677955, 0.040551, -0.733984,
		0.272230, 0.913636, 0.301926,
		0.682838, -0.404505, 0.608365,
		34.641823, 35.096920, 36.379616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752750, 35.564034, 35.627991>,  <34.163834, 35.380074, 35.953758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752750, 35.564034, 35.627991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859982, 35.291409, 35.900345>,  <34.924320, 35.127834, 36.063759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859982, 35.291409, 35.900345>,  <34.752750, 35.564034, 35.627991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859982, 35.291409, 35.900345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773531, -0.269012, -0.573832,
		0.574267, 0.680523, 0.455089,
		0.268081, -0.681558, 0.680890,
		34.940407, 35.086941, 36.104610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554951, 35.590664, 35.729019>,  <34.752750, 35.564034, 35.627991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554951, 35.590664, 35.729019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394363, 35.238819, 35.831085>,  <35.298012, 35.027714, 35.892323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394363, 35.238819, 35.831085>,  <35.554951, 35.590664, 35.729019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394363, 35.238819, 35.831085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641224, -0.468878, -0.607441,
		0.653951, -0.080254, 0.752268,
		-0.401472, -0.879609, 0.255162,
		35.273922, 34.974937, 35.907635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982418, 35.273827, 36.174896>,  <35.554951, 35.590664, 35.729019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982418, 35.273827, 36.174896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788883, 34.999496, 35.957443>,  <35.672760, 34.834900, 35.826969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788883, 34.999496, 35.957443>,  <35.982418, 35.273827, 36.174896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788883, 34.999496, 35.957443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859338, -0.254743, -0.443446,
		0.165640, -0.681724, 0.712612,
		-0.483841, -0.685827, -0.543636,
		35.643730, 34.793747, 35.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347313, 34.605282, 36.319153>,  <35.982418, 35.273827, 36.174896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347313, 34.605282, 36.319153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176552, 34.693104, 35.968258>,  <36.074097, 34.745796, 35.757721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176552, 34.693104, 35.968258>,  <36.347313, 34.605282, 36.319153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176552, 34.693104, 35.968258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902527, 0.164145, -0.398123,
		0.056585, -0.961692, -0.268229,
		-0.426900, 0.219556, -0.877241,
		36.048481, 34.758972, 35.705086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808552, 34.258591, 35.853607>,  <36.347313, 34.605282, 36.319153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808552, 34.258591, 35.853607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664013, 34.587437, 35.677624>,  <36.577290, 34.784744, 35.572033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664013, 34.587437, 35.677624>,  <36.808552, 34.258591, 35.853607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664013, 34.587437, 35.677624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851049, 0.098006, -0.515859,
		-0.380976, -0.560827, -0.735072,
		-0.361349, 0.822112, -0.439954,
		36.555607, 34.834068, 35.545639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872433, 34.133060, 35.070152>,  <36.808552, 34.258591, 35.853607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872433, 34.133060, 35.070152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902588, 34.510124, 35.200203>,  <36.920681, 34.736362, 35.278233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902588, 34.510124, 35.200203>,  <36.872433, 34.133060, 35.070152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902588, 34.510124, 35.200203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800238, 0.137343, -0.583744,
		-0.594926, 0.304186, -0.743999,
		0.075384, 0.942660, 0.325130,
		36.925201, 34.792923, 35.297741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751949, 34.540253, 34.621243>,  <36.872433, 34.133060, 35.070152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751949, 34.540253, 34.621243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022659, 34.737526, 34.839874>,  <37.185085, 34.855888, 34.971054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022659, 34.737526, 34.839874>,  <36.751949, 34.540253, 34.621243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022659, 34.737526, 34.839874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580001, 0.100061, -0.808447,
		-0.453404, 0.864151, -0.218329,
		0.676774, 0.493184, 0.546576,
		37.225693, 34.885483, 35.003849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000118, 35.192616, 34.186676>,  <36.751949, 34.540253, 34.621243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000118, 35.192616, 34.186676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294624, 35.084675, 34.434902>,  <37.471329, 35.019913, 34.583836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294624, 35.084675, 34.434902>,  <37.000118, 35.192616, 34.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294624, 35.084675, 34.434902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666236, 0.128458, -0.734594,
		0.118512, 0.954296, 0.274362,
		0.736264, -0.269848, 0.620563,
		37.515503, 35.003719, 34.621071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446964, 35.617886, 34.054588>,  <37.000118, 35.192616, 34.186676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446964, 35.617886, 34.054588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654991, 35.320232, 34.222301>,  <37.779808, 35.141640, 34.322929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654991, 35.320232, 34.222301>,  <37.446964, 35.617886, 34.054588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654991, 35.320232, 34.222301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776804, 0.207976, -0.594408,
		0.355117, 0.634833, 0.686206,
		0.520064, -0.744132, 0.419285,
		37.811012, 35.096992, 34.348087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100681, 35.900669, 34.448448>,  <37.446964, 35.617886, 34.054588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100681, 35.900669, 34.448448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093849, 35.539364, 34.276947>,  <38.089748, 35.322582, 34.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093849, 35.539364, 34.276947>,  <38.100681, 35.900669, 34.448448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093849, 35.539364, 34.276947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716719, 0.287934, -0.635144,
		0.697153, -0.318145, 0.642466,
		-0.017080, -0.903260, -0.428754,
		38.088726, 35.268387, 34.148319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117287, 36.070644, 35.203407>,  <38.100681, 35.900669, 34.448448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117287, 36.070644, 35.203407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000900, 35.699940, 35.108368>,  <37.931068, 35.477516, 35.051342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000900, 35.699940, 35.108368>,  <38.117287, 36.070644, 35.203407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000900, 35.699940, 35.108368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852145, -0.138134, -0.504746,
		0.434957, -0.349334, 0.829926,
		-0.290966, -0.926760, -0.237601,
		37.913609, 35.421913, 35.037086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597862, 35.643932, 35.183979>,  <38.117287, 36.070644, 35.203407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597862, 35.643932, 35.183979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351936, 35.449669, 34.935417>,  <38.204380, 35.333111, 34.786282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351936, 35.449669, 34.935417>,  <38.597862, 35.643932, 35.183979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351936, 35.449669, 34.935417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772320, -0.211149, -0.599114,
		0.159754, -0.848266, 0.504899,
		-0.614817, -0.485655, -0.621401,
		38.167492, 35.303974, 34.748997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802872, 34.932549, 35.035217>,  <38.597862, 35.643932, 35.183979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802872, 34.932549, 35.035217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592041, 35.042847, 34.713680>,  <38.465542, 35.109024, 34.520760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592041, 35.042847, 34.713680>,  <38.802872, 34.932549, 35.035217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592041, 35.042847, 34.713680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752665, -0.287712, -0.592213,
		-0.394572, -0.917163, -0.055896,
		-0.527074, 0.275742, -0.803840,
		38.433918, 35.125568, 34.472527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659935, 34.324387, 34.556007>,  <38.802872, 34.932549, 35.035217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659935, 34.324387, 34.556007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701740, 34.681149, 34.380016>,  <38.726822, 34.895206, 34.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701740, 34.681149, 34.380016>,  <38.659935, 34.324387, 34.556007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701740, 34.681149, 34.380016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673275, -0.389057, -0.628757,
		-0.731969, -0.230514, -0.641159,
		0.104510, 0.891907, -0.439977,
		38.733093, 34.948719, 34.248024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515209, 34.369392, 33.767483>,  <38.659935, 34.324387, 34.556007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515209, 34.369392, 33.767483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788273, 34.633686, 33.892326>,  <38.952110, 34.792263, 33.967232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788273, 34.633686, 33.892326>,  <38.515209, 34.369392, 33.767483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788273, 34.633686, 33.892326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718076, -0.527401, -0.454109,
		-0.135438, 0.534118, -0.834491,
		0.682659, 0.660731, 0.312107,
		38.993069, 34.831905, 33.985958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964695, 34.533375, 33.116772>,  <38.515209, 34.369392, 33.767483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964695, 34.533375, 33.116772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170067, 34.548855, 33.459675>,  <39.293289, 34.558144, 33.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170067, 34.548855, 33.459675>,  <38.964695, 34.533375, 33.116772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170067, 34.548855, 33.459675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697858, -0.600180, -0.390868,
		0.499382, 0.798928, -0.335160,
		0.513431, 0.038701, 0.857257,
		39.324097, 34.560467, 33.716850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655483, 34.546467, 33.022243>,  <38.964695, 34.533375, 33.116772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655483, 34.546467, 33.022243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617069, 34.323784, 33.352299>,  <39.594021, 34.190174, 33.550331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617069, 34.323784, 33.352299>,  <39.655483, 34.546467, 33.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617069, 34.323784, 33.352299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705054, -0.623202, -0.338407,
		0.702622, 0.549271, 0.452353,
		-0.096030, -0.556705, 0.825141,
		39.588261, 34.156773, 33.599842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364662, 34.415993, 33.224079>,  <39.655483, 34.546467, 33.022243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364662, 34.415993, 33.224079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095909, 34.135769, 33.320236>,  <39.934658, 33.967632, 33.377930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095909, 34.135769, 33.320236>,  <40.364662, 34.415993, 33.224079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095909, 34.135769, 33.320236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597306, -0.704422, -0.383427,
		0.437954, -0.114028, 0.891737,
		-0.671880, -0.700562, 0.240395,
		39.894344, 33.925602, 33.392353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791607, 33.922928, 33.591679>,  <40.364662, 34.415993, 33.224079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791607, 33.922928, 33.591679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466320, 33.759083, 33.426319>,  <40.271149, 33.660774, 33.327103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466320, 33.759083, 33.426319>,  <40.791607, 33.922928, 33.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466320, 33.759083, 33.426319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578753, -0.643730, -0.500657,
		-0.061037, -0.646395, 0.760557,
		-0.813216, -0.409616, -0.413395,
		40.222355, 33.636200, 33.302299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871193, 33.192432, 33.545319>,  <40.791607, 33.922928, 33.591679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871193, 33.192432, 33.545319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616573, 33.298115, 33.255489>,  <40.463802, 33.361523, 33.081593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616573, 33.298115, 33.255489>,  <40.871193, 33.192432, 33.545319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616573, 33.298115, 33.255489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603726, -0.413921, -0.681311,
		-0.479920, -0.871129, 0.103974,
		-0.636547, 0.264203, -0.724572,
		40.425610, 33.377377, 33.038116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578457, 32.585850, 33.210835>,  <40.871193, 33.192432, 33.545319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578457, 32.585850, 33.210835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541176, 32.892029, 32.956150>,  <40.518806, 33.075737, 32.803341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541176, 32.892029, 32.956150>,  <40.578457, 32.585850, 33.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541176, 32.892029, 32.956150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533499, -0.501548, -0.681050,
		-0.840650, -0.403158, -0.361622,
		-0.093200, 0.765449, -0.636711,
		40.513214, 33.121662, 32.765137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313709, 32.306976, 32.532944>,  <40.578457, 32.585850, 33.210835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313709, 32.306976, 32.532944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418812, 32.663124, 32.384247>,  <40.481873, 32.876812, 32.295029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418812, 32.663124, 32.384247>,  <40.313709, 32.306976, 32.532944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418812, 32.663124, 32.384247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446508, -0.453753, -0.771193,
		-0.855330, 0.036649, -0.516786,
		0.262756, 0.890373, -0.371745,
		40.497639, 32.930237, 32.272724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067268, 32.313869, 31.821383>,  <40.313709, 32.306976, 32.532944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067268, 32.313869, 31.821383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400547, 32.526321, 31.882938>,  <40.600513, 32.653793, 31.919872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400547, 32.526321, 31.882938>,  <40.067268, 32.313869, 31.821383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400547, 32.526321, 31.882938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426757, -0.440645, -0.789753,
		-0.351648, 0.723697, -0.593807,
		0.833200, 0.531126, 0.153891,
		40.650509, 32.685658, 31.929106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320606, 32.315826, 31.138182>,  <40.067268, 32.313869, 31.821383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320606, 32.315826, 31.138182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606953, 32.526459, 31.321592>,  <40.778759, 32.652840, 31.431639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606953, 32.526459, 31.321592>,  <40.320606, 32.315826, 31.138182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606953, 32.526459, 31.321592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632167, -0.209949, -0.745846,
		-0.296484, 0.823789, -0.483185,
		0.715864, 0.526585, 0.458526,
		40.821712, 32.684433, 31.459150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609295, 32.638725, 30.561489>,  <40.320606, 32.315826, 31.138182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609295, 32.638725, 30.561489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879608, 32.593781, 30.852882>,  <41.041798, 32.566814, 31.027718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879608, 32.593781, 30.852882>,  <40.609295, 32.638725, 30.561489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879608, 32.593781, 30.852882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684987, -0.269271, -0.676968,
		0.272223, 0.956488, -0.105005,
		0.675786, -0.112359, 0.728484,
		41.082344, 32.560074, 31.071428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178036, 33.033485, 30.284334>,  <40.609295, 32.638725, 30.561489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178036, 33.033485, 30.284334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306461, 32.757603, 30.543940>,  <41.383518, 32.592072, 30.699703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306461, 32.757603, 30.543940>,  <41.178036, 33.033485, 30.284334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306461, 32.757603, 30.543940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781507, -0.194141, -0.592922,
		0.534943, 0.697577, 0.476679,
		0.321066, -0.689707, 0.649015,
		41.402782, 32.550690, 30.738644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967422, 33.075516, 30.497519>,  <41.178036, 33.033485, 30.284334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967422, 33.075516, 30.497519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818729, 32.704227, 30.491488>,  <41.729515, 32.481457, 30.487869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818729, 32.704227, 30.491488>,  <41.967422, 33.075516, 30.497519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818729, 32.704227, 30.491488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693644, -0.266921, -0.669037,
		0.616988, -0.259161, 0.743076,
		-0.371731, -0.928218, -0.015078,
		41.707211, 32.425762, 30.486963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639687, 32.653049, 30.499363>,  <41.967422, 33.075516, 30.497519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639687, 32.653049, 30.499363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350574, 32.402691, 30.382164>,  <42.177109, 32.252476, 30.311844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350574, 32.402691, 30.382164>,  <42.639687, 32.653049, 30.499363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350574, 32.402691, 30.382164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633803, -0.431347, -0.642054,
		0.275474, -0.649766, 0.708462,
		-0.722778, -0.625894, -0.292999,
		42.133739, 32.214924, 30.294264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827133, 31.994812, 30.550669>,  <42.639687, 32.653049, 30.499363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827133, 31.994812, 30.550669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530746, 31.967634, 30.283430>,  <42.352913, 31.951328, 30.123087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530746, 31.967634, 30.283430>,  <42.827133, 31.994812, 30.550669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530746, 31.967634, 30.283430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618467, -0.456691, -0.639478,
		-0.261663, -0.887027, 0.380415,
		-0.740967, -0.067946, -0.668096,
		42.308456, 31.947250, 30.083002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938396, 31.312723, 30.152189>,  <42.827133, 31.994812, 30.550669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938396, 31.312723, 30.152189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707523, 31.553448, 29.931396>,  <42.569000, 31.697882, 29.798922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707523, 31.553448, 29.931396>,  <42.938396, 31.312723, 30.152189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707523, 31.553448, 29.931396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517618, -0.253186, -0.817293,
		-0.631610, -0.757443, -0.165374,
		-0.577182, 0.601811, -0.551981,
		42.534367, 31.733992, 29.765802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878159, 30.983055, 29.549599>,  <42.938396, 31.312723, 30.152189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878159, 30.983055, 29.549599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782230, 31.362782, 29.468325>,  <42.724674, 31.590618, 29.419561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782230, 31.362782, 29.468325>,  <42.878159, 30.983055, 29.549599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782230, 31.362782, 29.468325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526790, -0.048547, -0.848608,
		-0.815462, -0.310549, -0.488448,
		-0.239822, 0.949317, -0.203183,
		42.710285, 31.647577, 29.407370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569958, 31.044172, 28.907946>,  <42.878159, 30.983055, 29.549599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569958, 31.044172, 28.907946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783665, 31.373386, 28.985058>,  <42.911888, 31.570915, 29.031326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783665, 31.373386, 28.985058>,  <42.569958, 31.044172, 28.907946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783665, 31.373386, 28.985058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484565, -0.111321, -0.867643,
		-0.692642, 0.556971, -0.458290,
		0.534270, 0.823038, 0.192783,
		42.943947, 31.620298, 29.042892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668236, 31.411064, 28.311369>,  <42.569958, 31.044172, 28.907946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668236, 31.411064, 28.311369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963364, 31.579205, 28.522621>,  <43.140442, 31.680090, 28.649372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963364, 31.579205, 28.522621>,  <42.668236, 31.411064, 28.311369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963364, 31.579205, 28.522621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485140, 0.213766, -0.847905,
		-0.469315, 0.881821, -0.046208,
		0.737823, 0.420352, 0.528131,
		43.184711, 31.705311, 28.681061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056522, 31.264257, 28.330156>,  <42.668236, 31.411064, 28.311369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056522, 31.264257, 28.330156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209740, 31.622902, 28.419029>,  <42.301670, 31.838089, 28.472353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209740, 31.622902, 28.419029>,  <42.056522, 31.264257, 28.330156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209740, 31.622902, 28.419029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464152, 0.021137, -0.885503,
		-0.798650, 0.442312, -0.408068,
		0.383043, 0.896612, 0.222181,
		42.324654, 31.891886, 28.485683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950550, 31.630653, 27.817343>,  <42.056522, 31.264257, 28.330156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950550, 31.630653, 27.817343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245373, 31.827183, 28.002966>,  <42.422268, 31.945101, 28.114340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245373, 31.827183, 28.002966>,  <41.950550, 31.630653, 27.817343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245373, 31.827183, 28.002966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459181, 0.139756, -0.877280,
		-0.495884, 0.859691, -0.122599,
		0.737056, 0.491324, 0.464057,
		42.466488, 31.974581, 28.142183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015614, 32.263622, 27.518808>,  <41.950550, 31.630653, 27.817343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015614, 32.263622, 27.518808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369690, 32.150433, 27.666517>,  <42.582134, 32.082520, 27.755142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369690, 32.150433, 27.666517>,  <42.015614, 32.263622, 27.518808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369690, 32.150433, 27.666517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401284, 0.062799, -0.913798,
		0.235389, 0.957070, 0.169141,
		0.885191, -0.282971, 0.369274,
		42.635246, 32.065540, 27.777300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435677, 32.831051, 27.436142>,  <42.015614, 32.263622, 27.518808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435677, 32.831051, 27.436142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604378, 32.468365, 27.436525>,  <42.705597, 32.250755, 27.436754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604378, 32.468365, 27.436525>,  <42.435677, 32.831051, 27.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604378, 32.468365, 27.436525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283721, 0.130969, -0.949921,
		0.861178, 0.400902, 0.312489,
		0.421752, -0.906711, 0.000957,
		42.730904, 32.196350, 27.436813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776840, 33.447418, 26.979555>,  <42.435677, 32.831051, 27.436142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776840, 33.447418, 26.979555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602692, 33.631641, 26.670145>,  <42.498203, 33.742176, 26.484499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602692, 33.631641, 26.670145>,  <42.776840, 33.447418, 26.979555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602692, 33.631641, 26.670145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900217, -0.215152, 0.378575,
		0.007930, 0.861160, 0.508272,
		-0.435370, 0.460557, -0.773525,
		42.472080, 33.769810, 26.438087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276821, 33.925198, 27.251566>,  <42.776840, 33.447418, 26.979555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276821, 33.925198, 27.251566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137829, 33.885094, 26.878641>,  <42.054432, 33.861031, 26.654886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137829, 33.885094, 26.878641>,  <42.276821, 33.925198, 27.251566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137829, 33.885094, 26.878641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937269, 0.007499, 0.348525,
		-0.027952, 0.994933, -0.096578,
		-0.347483, -0.100262, -0.932310,
		42.033585, 33.855015, 26.598948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726036, 34.388580, 27.216568>,  <42.276821, 33.925198, 27.251566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726036, 34.388580, 27.216568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684235, 34.128239, 26.915777>,  <41.659153, 33.972034, 26.735302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684235, 34.128239, 26.915777>,  <41.726036, 34.388580, 27.216568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684235, 34.128239, 26.915777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992041, 0.014821, 0.125038,
		-0.070236, 0.759061, -0.647220,
		-0.104504, -0.650851, -0.751979,
		41.652882, 33.932983, 26.690184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150440, 34.602726, 26.910868>,  <41.726036, 34.388580, 27.216568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150440, 34.602726, 26.910868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150696, 34.247856, 26.726295>,  <41.150848, 34.034935, 26.615553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150696, 34.247856, 26.726295>,  <41.150440, 34.602726, 26.910868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150696, 34.247856, 26.726295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970108, -0.112525, 0.215008,
		-0.242672, 0.447499, -0.860729,
		0.000638, -0.887177, -0.461429,
		41.150887, 33.981705, 26.587866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553551, 34.576870, 26.349720>,  <41.150440, 34.602726, 26.910868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553551, 34.576870, 26.349720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658783, 34.213123, 26.478621>,  <40.721920, 33.994877, 26.555962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658783, 34.213123, 26.478621>,  <40.553551, 34.576870, 26.349720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658783, 34.213123, 26.478621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964017, -0.234535, 0.125158,
		-0.038235, -0.343583, -0.938344,
		0.263076, -0.909365, 0.322253,
		40.737705, 33.940315, 26.575296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250267, 34.156387, 25.880924>,  <40.553551, 34.576870, 26.349720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250267, 34.156387, 25.880924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322884, 33.928722, 26.201698>,  <40.366455, 33.792122, 26.394163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322884, 33.928722, 26.201698>,  <40.250267, 34.156387, 25.880924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322884, 33.928722, 26.201698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865295, -0.479916, -0.144724,
		0.467232, -0.667635, -0.579619,
		0.181545, -0.569161, 0.801933,
		40.377346, 33.757973, 26.442278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158001, 33.556435, 25.687473>,  <40.250267, 34.156387, 25.880924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158001, 33.556435, 25.687473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104572, 33.549938, 26.083836>,  <40.072514, 33.546040, 26.321653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104572, 33.549938, 26.083836>,  <40.158001, 33.556435, 25.687473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104572, 33.549938, 26.083836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901719, -0.412840, -0.128318,
		0.411170, -0.910659, 0.040497,
		-0.133572, -0.016243, 0.990906,
		40.064499, 33.545067, 26.381107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174774, 32.854744, 25.900490>,  <40.158001, 33.556435, 25.687473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174774, 32.854744, 25.900490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000031, 33.064720, 26.192678>,  <39.895184, 33.190708, 26.367992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000031, 33.064720, 26.192678>,  <40.174774, 32.854744, 25.900490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000031, 33.064720, 26.192678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789108, -0.613468, -0.031061,
		0.431816, -0.589991, 0.682236,
		-0.436856, 0.524945, 0.730472,
		39.868973, 33.222202, 26.411819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879398, 32.258942, 26.261456>,  <40.174774, 32.854744, 25.900490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879398, 32.258942, 26.261456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705128, 32.594215, 26.392685>,  <39.600563, 32.795380, 26.471422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705128, 32.594215, 26.392685>,  <39.879398, 32.258942, 26.261456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705128, 32.594215, 26.392685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882317, -0.469789, 0.028536,
		0.178044, -0.277033, 0.944221,
		-0.435679, 0.838183, 0.328074,
		39.574425, 32.845669, 26.491108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449127, 32.073029, 26.858946>,  <39.879398, 32.258942, 26.261456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449127, 32.073029, 26.858946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309555, 32.400806, 26.677063>,  <39.225811, 32.597473, 26.567934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309555, 32.400806, 26.677063>,  <39.449127, 32.073029, 26.858946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309555, 32.400806, 26.677063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903092, -0.423630, -0.070438,
		-0.250347, 0.386064, 0.887852,
		-0.348927, 0.819446, -0.454706,
		39.204876, 32.646641, 26.540651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762054, 32.317219, 27.164455>,  <39.449127, 32.073029, 26.858946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762054, 32.317219, 27.164455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807980, 32.443714, 26.787773>,  <38.835533, 32.519611, 26.561764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807980, 32.443714, 26.787773>,  <38.762054, 32.317219, 27.164455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807980, 32.443714, 26.787773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894871, -0.378664, -0.236263,
		-0.431305, 0.869833, 0.239514,
		0.114814, 0.316236, -0.941707,
		38.842422, 32.538586, 26.505260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042236, 32.419216, 26.957212>,  <38.762054, 32.317219, 27.164455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042236, 32.419216, 26.957212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212883, 32.450569, 26.596802>,  <38.315273, 32.469379, 26.380554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212883, 32.450569, 26.596802>,  <38.042236, 32.419216, 26.957212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212883, 32.450569, 26.596802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894283, -0.112255, -0.433193,
		-0.135101, 0.990583, 0.022207,
		0.426620, 0.078384, -0.901028,
		38.340870, 32.474083, 26.326494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750698, 33.025322, 26.668186>,  <38.042236, 32.419216, 26.957212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750698, 33.025322, 26.668186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875198, 32.810963, 26.354259>,  <37.949898, 32.682346, 26.165903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875198, 32.810963, 26.354259>,  <37.750698, 33.025322, 26.668186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875198, 32.810963, 26.354259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945574, -0.257141, -0.199422,
		-0.094939, 0.804171, -0.586766,
		0.311251, -0.535898, -0.784816,
		37.968575, 32.650192, 26.118814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361198, 33.315910, 26.100527>,  <37.750698, 33.025322, 26.668186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361198, 33.315910, 26.100527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499165, 32.961285, 25.977217>,  <37.581944, 32.748508, 25.903231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499165, 32.961285, 25.977217>,  <37.361198, 33.315910, 26.100527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499165, 32.961285, 25.977217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909548, -0.234565, -0.343076,
		0.231848, 0.398725, -0.887280,
		0.344918, -0.886565, -0.308276,
		37.602638, 32.695316, 25.884733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121174, 33.246983, 25.421309>,  <37.361198, 33.315910, 26.100527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121174, 33.246983, 25.421309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201305, 32.890907, 25.584978>,  <37.249386, 32.677261, 25.683180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201305, 32.890907, 25.584978>,  <37.121174, 33.246983, 25.421309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201305, 32.890907, 25.584978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892910, -0.337776, -0.297689,
		0.403211, -0.305721, -0.862529,
		0.200332, -0.890192, 0.409176,
		37.261406, 32.623848, 25.707731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811481, 32.827423, 25.034777>,  <37.121174, 33.246983, 25.421309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811481, 32.827423, 25.034777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849094, 32.574089, 25.342033>,  <36.871662, 32.422089, 25.526386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849094, 32.574089, 25.342033>,  <36.811481, 32.827423, 25.034777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849094, 32.574089, 25.342033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987538, -0.157142, -0.008677,
		0.126203, -0.757752, -0.640222,
		0.094031, -0.633339, 0.768141,
		36.877304, 32.384087, 25.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289394, 32.251724, 24.963129>,  <36.811481, 32.827423, 25.034777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289394, 32.251724, 24.963129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382072, 32.255024, 25.352230>,  <36.437679, 32.257004, 25.585691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382072, 32.255024, 25.352230>,  <36.289394, 32.251724, 24.963129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382072, 32.255024, 25.352230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959356, -0.163669, 0.229890,
		0.161106, -0.986481, -0.030008,
		0.231693, 0.008248, 0.972754,
		36.451580, 32.257500, 25.644056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919613, 31.644285, 25.195372>,  <36.289394, 32.251724, 24.963129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919613, 31.644285, 25.195372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020367, 31.897493, 25.488176>,  <36.080818, 32.049419, 25.663858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020367, 31.897493, 25.488176>,  <35.919613, 31.644285, 25.195372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020367, 31.897493, 25.488176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895185, -0.134986, 0.424761,
		0.367694, -0.762275, 0.532671,
		0.251882, 0.633021, 0.732011,
		36.095932, 32.087399, 25.707779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606518, 31.320650, 25.775764>,  <35.919613, 31.644285, 25.195372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606518, 31.320650, 25.775764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674816, 31.697290, 25.891857>,  <35.715797, 31.923275, 25.961512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674816, 31.697290, 25.891857>,  <35.606518, 31.320650, 25.775764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674816, 31.697290, 25.891857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841632, -0.013786, 0.539876,
		0.512349, -0.336450, 0.790127,
		0.170749, 0.941600, 0.290230,
		35.726040, 31.979771, 25.978926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676189, 31.298162, 26.563683>,  <35.606518, 31.320650, 25.775764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676189, 31.298162, 26.563683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548553, 31.653507, 26.431623>,  <35.471973, 31.866714, 26.352388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548553, 31.653507, 26.431623>,  <35.676189, 31.298162, 26.563683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548553, 31.653507, 26.431623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769935, -0.039865, 0.636875,
		0.552615, 0.457409, 0.696702,
		-0.319086, 0.888362, -0.330146,
		35.452827, 31.920015, 26.332581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358555, 31.489347, 27.120607>,  <35.676189, 31.298162, 26.563683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358555, 31.489347, 27.120607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231972, 31.725258, 26.823416>,  <35.156021, 31.866804, 26.645102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231972, 31.725258, 26.823416>,  <35.358555, 31.489347, 27.120607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231972, 31.725258, 26.823416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902354, 0.054421, 0.427546,
		0.292590, 0.805732, 0.514964,
		-0.316462, 0.589775, -0.742978,
		35.137032, 31.902191, 26.600523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063648, 32.048397, 27.419531>,  <35.358555, 31.489347, 27.120607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063648, 32.048397, 27.419531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905022, 32.043072, 27.052366>,  <34.809845, 32.039879, 26.832067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905022, 32.043072, 27.052366>,  <35.063648, 32.048397, 27.419531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905022, 32.043072, 27.052366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905570, 0.169695, 0.388775,
		0.150590, 0.985407, -0.079348,
		-0.396567, -0.013309, -0.917910,
		34.786053, 32.039078, 26.776993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495201, 32.504452, 27.418686>,  <35.063648, 32.048397, 27.419531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495201, 32.504452, 27.418686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415245, 32.259274, 27.112915>,  <34.367271, 32.112167, 26.929453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415245, 32.259274, 27.112915>,  <34.495201, 32.504452, 27.418686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415245, 32.259274, 27.112915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954070, -0.055923, 0.294318,
		-0.223149, 0.788147, -0.573610,
		-0.199888, -0.612941, -0.764427,
		34.355278, 32.075390, 26.883587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825047, 32.556355, 27.329063>,  <34.495201, 32.504452, 27.418686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825047, 32.556355, 27.329063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875301, 32.238483, 27.091509>,  <33.905453, 32.047760, 26.948977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875301, 32.238483, 27.091509>,  <33.825047, 32.556355, 27.329063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875301, 32.238483, 27.091509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893651, -0.350612, 0.280104,
		-0.430816, 0.495535, -0.754217,
		0.125636, -0.794680, -0.593885,
		33.912991, 32.000080, 26.913343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230953, 32.558163, 27.035976>,  <33.825047, 32.556355, 27.329063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230953, 32.558163, 27.035976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381470, 32.194790, 26.963137>,  <33.471779, 31.976767, 26.919432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381470, 32.194790, 26.963137>,  <33.230953, 32.558163, 27.035976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381470, 32.194790, 26.963137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868635, -0.414280, 0.271744,
		-0.322300, 0.055924, -0.944984,
		0.376291, -0.908430, -0.182100,
		33.494358, 31.922260, 26.908506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676849, 32.156307, 26.619907>,  <33.230953, 32.558163, 27.035976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676849, 32.156307, 26.619907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920906, 31.911270, 26.820889>,  <33.067341, 31.764248, 26.941477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920906, 31.911270, 26.820889>,  <32.676849, 32.156307, 26.619907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920906, 31.911270, 26.820889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791197, -0.437730, 0.427083,
		-0.041690, -0.658118, -0.751759,
		0.610139, -0.612595, 0.502452,
		33.103947, 31.727491, 26.971624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566238, 31.489016, 26.332205>,  <32.676849, 32.156307, 26.619907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566238, 31.489016, 26.332205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699852, 31.457243, 26.707888>,  <32.780022, 31.438179, 26.933298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699852, 31.457243, 26.707888>,  <32.566238, 31.489016, 26.332205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699852, 31.457243, 26.707888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876335, -0.393083, 0.278428,
		0.347072, -0.916066, -0.200910,
		0.334032, -0.079430, 0.939209,
		32.800060, 31.433414, 26.989651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480145, 30.772120, 26.676310>,  <32.566238, 31.489016, 26.332205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480145, 30.772120, 26.676310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506233, 30.993193, 27.008644>,  <32.521885, 31.125835, 27.208046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506233, 30.993193, 27.008644>,  <32.480145, 30.772120, 26.676310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506233, 30.993193, 27.008644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856139, -0.396726, 0.331110,
		0.512613, -0.732907, 0.447298,
		0.065218, 0.552681, 0.830837,
		32.525799, 31.158997, 27.257895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147507, 30.418606, 27.261465>,  <32.480145, 30.772120, 26.676310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147507, 30.418606, 27.261465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148045, 30.798378, 27.387054>,  <32.148369, 31.026241, 27.462408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148045, 30.798378, 27.387054>,  <32.147507, 30.418606, 27.261465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148045, 30.798378, 27.387054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908168, -0.130269, 0.397821,
		0.418605, -0.285678, 0.862066,
		0.001348, 0.949430, 0.313975,
		32.148449, 31.083206, 27.481247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876982, 30.382591, 27.822977>,  <32.147507, 30.418606, 27.261465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876982, 30.382591, 27.822977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826920, 30.774387, 27.759809>,  <31.796883, 31.009464, 27.721909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826920, 30.774387, 27.759809>,  <31.876982, 30.382591, 27.822977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826920, 30.774387, 27.759809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979589, -0.096763, 0.176189,
		0.157294, 0.176746, 0.971607,
		-0.125156, 0.979489, -0.157918,
		31.789373, 31.068233, 27.712435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468029, 30.590086, 28.298025>,  <31.876982, 30.382591, 27.822977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468029, 30.590086, 28.298025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420986, 30.883892, 28.030697>,  <31.392759, 31.060175, 27.870300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420986, 30.883892, 28.030697>,  <31.468029, 30.590086, 28.298025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420986, 30.883892, 28.030697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992011, -0.055968, 0.113059,
		0.045639, 0.676280, 0.735230,
		-0.117609, 0.734516, -0.668322,
		31.385704, 31.104246, 27.830200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003160, 30.940746, 28.627689>,  <31.468029, 30.590086, 28.298025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003160, 30.940746, 28.627689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968021, 31.052725, 28.245295>,  <30.946938, 31.119913, 28.015858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968021, 31.052725, 28.245295>,  <31.003160, 30.940746, 28.627689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968021, 31.052725, 28.245295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994537, 0.029671, 0.100079,
		0.056382, 0.959557, 0.275812,
		-0.087847, 0.279948, -0.955988,
		30.941668, 31.136709, 27.958498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328619, 31.492079, 28.517834>,  <31.003160, 30.940746, 28.627689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328619, 31.492079, 28.517834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382196, 31.387926, 28.135366>,  <30.414343, 31.325434, 27.905886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382196, 31.387926, 28.135366>,  <30.328619, 31.492079, 28.517834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382196, 31.387926, 28.135366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979103, -0.183762, -0.087112,
		-0.153025, 0.947857, -0.279555,
		0.133942, -0.260383, -0.956170,
		30.422379, 31.309811, 27.848516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782604, 31.748997, 28.229239>,  <30.328619, 31.492079, 28.517834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782604, 31.748997, 28.229239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919651, 31.480413, 27.966406>,  <30.001879, 31.319263, 27.808706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919651, 31.480413, 27.966406>,  <29.782604, 31.748997, 28.229239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919651, 31.480413, 27.966406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936599, -0.298814, -0.183011,
		-0.073462, 0.678126, -0.731265,
		0.342616, -0.671458, -0.657083,
		30.022436, 31.278976, 27.769281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380447, 31.966921, 27.545006>,  <29.782604, 31.748997, 28.229239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380447, 31.966921, 27.545006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510508, 31.588776, 27.535477>,  <29.588543, 31.361889, 27.529758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510508, 31.588776, 27.535477>,  <29.380447, 31.966921, 27.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510508, 31.588776, 27.535477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945629, -0.325247, 0.000267,
		-0.008001, 0.022441, -0.999716,
		0.325149, -0.945363, -0.023823,
		29.608053, 31.305166, 27.528330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111704, 31.771204, 26.998148>,  <29.380447, 31.966921, 27.545006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111704, 31.771204, 26.998148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169497, 31.422390, 27.185200>,  <29.204172, 31.213100, 27.297430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169497, 31.422390, 27.185200>,  <29.111704, 31.771204, 26.998148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169497, 31.422390, 27.185200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968893, -0.220638, -0.112090,
		0.200924, -0.436888, -0.876789,
		0.144482, -0.872037, 0.467629,
		29.212841, 31.160780, 27.325489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526825, 31.509281, 26.841087>,  <29.111704, 31.771204, 26.998148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526825, 31.509281, 26.841087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684343, 31.235096, 27.086058>,  <28.778854, 31.070585, 27.233040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684343, 31.235096, 27.086058>,  <28.526825, 31.509281, 26.841087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684343, 31.235096, 27.086058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857096, -0.514559, -0.024803,
		0.332132, -0.515142, -0.790138,
		0.393795, -0.685462, 0.612427,
		28.802483, 31.029457, 27.269787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532997, 30.778421, 26.489487>,  <28.526825, 31.509281, 26.841087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532997, 30.778421, 26.489487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508606, 30.777323, 26.888741>,  <28.493971, 30.776665, 27.128294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508606, 30.777323, 26.888741>,  <28.532997, 30.778421, 26.489487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508606, 30.777323, 26.888741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864054, -0.500477, -0.054161,
		0.499693, -0.865745, 0.028140,
		-0.060973, -0.002749, 0.998135,
		28.490313, 30.776499, 27.188181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416496, 30.129988, 26.601067>,  <28.532997, 30.778421, 26.489487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416496, 30.129988, 26.601067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292017, 30.316628, 26.932232>,  <28.217329, 30.428612, 27.130932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292017, 30.316628, 26.932232>,  <28.416496, 30.129988, 26.601067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292017, 30.316628, 26.932232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901520, -0.420585, -0.101832,
		0.300694, -0.778071, 0.551533,
		-0.311199, 0.466598, 0.827914,
		28.198658, 30.456606, 27.180607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111750, 29.640390, 26.983543>,  <28.416496, 30.129988, 26.601067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111750, 29.640390, 26.983543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969704, 29.967607, 27.164518>,  <27.884476, 30.163939, 27.273104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969704, 29.967607, 27.164518>,  <28.111750, 29.640390, 26.983543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969704, 29.967607, 27.164518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874395, -0.461851, 0.148756,
		0.330646, -0.342782, 0.879303,
		-0.355116, 0.818043, 0.452436,
		27.863169, 30.213020, 27.300249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784397, 29.431303, 27.487801>,  <28.111750, 29.640390, 26.983543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784397, 29.431303, 27.487801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619799, 29.795021, 27.462978>,  <27.521040, 30.013252, 27.448084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619799, 29.795021, 27.462978>,  <27.784397, 29.431303, 27.487801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619799, 29.795021, 27.462978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901260, -0.395834, 0.176196,
		0.135650, 0.128433, 0.982397,
		-0.411496, 0.909296, -0.062056,
		27.496349, 30.067810, 27.444361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441620, 29.514523, 28.087814>,  <27.784397, 29.431303, 27.487801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441620, 29.514523, 28.087814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283018, 29.760201, 27.814890>,  <27.187857, 29.907608, 27.651134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283018, 29.760201, 27.814890>,  <27.441620, 29.514523, 28.087814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283018, 29.760201, 27.814890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902813, -0.395655, 0.168483,
		-0.166478, 0.682803, 0.711382,
		-0.396503, 0.614196, -0.682311,
		27.164068, 29.944460, 27.610197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888832, 29.883335, 28.387150>,  <27.441620, 29.514523, 28.087814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888832, 29.883335, 28.387150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835526, 29.854141, 27.991795>,  <26.803541, 29.836624, 27.754581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835526, 29.854141, 27.991795>,  <26.888832, 29.883335, 28.387150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835526, 29.854141, 27.991795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931325, -0.331830, 0.150074,
		-0.338931, 0.940512, -0.023750,
		-0.133266, -0.072984, -0.988389,
		26.795546, 29.832247, 27.695278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518663, 30.441147, 28.069771>,  <26.888832, 29.883335, 28.387150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518663, 30.441147, 28.069771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490480, 30.062456, 27.944075>,  <26.473572, 29.835241, 27.868656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490480, 30.062456, 27.944075>,  <26.518663, 30.441147, 28.069771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490480, 30.062456, 27.944075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940586, -0.041848, 0.336966,
		-0.332165, 0.319311, -0.887528,
		-0.070456, -0.946725, -0.314240,
		26.469343, 29.778439, 27.849802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966030, 30.306004, 27.477959>,  <26.518663, 30.441147, 28.069771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966030, 30.306004, 27.477959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056601, 30.028364, 27.751297>,  <26.110943, 29.861780, 27.915300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056601, 30.028364, 27.751297>,  <25.966030, 30.306004, 27.477959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056601, 30.028364, 27.751297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962885, -0.053686, 0.264519,
		-0.146916, -0.717876, -0.680493,
		0.226424, -0.694098, 0.683345,
		26.124529, 29.820135, 27.956301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602745, 29.725653, 27.348913>,  <25.966030, 30.306004, 27.477959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602745, 29.725653, 27.348913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693043, 29.761936, 27.736895>,  <25.747221, 29.783707, 27.969683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693043, 29.761936, 27.736895>,  <25.602745, 29.725653, 27.348913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693043, 29.761936, 27.736895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955764, -0.172090, 0.238536,
		0.188557, -0.980896, 0.047849,
		0.225745, 0.090710, 0.969954,
		25.760767, 29.789150, 28.027882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858727, 29.335016, 26.730795>,  <25.602745, 29.725653, 27.348913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858727, 29.335016, 26.730795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902456, 28.989826, 26.928106>,  <25.928694, 28.782713, 27.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902456, 28.989826, 26.928106>,  <25.858727, 29.335016, 26.730795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902456, 28.989826, 26.928106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752578, -0.252332, -0.608239,
		0.649365, 0.437727, 0.621869,
		0.109325, -0.862974, 0.493279,
		25.935253, 28.730934, 27.076090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132421, 29.462297, 26.859751>,  <25.858727, 29.335016, 26.730795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132421, 29.462297, 26.859751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818468, 29.524961, 26.619946>,  <24.630096, 29.562559, 26.476063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818468, 29.524961, 26.619946>,  <25.132421, 29.462297, 26.859751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818468, 29.524961, 26.619946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619194, 0.235139, -0.749205,
		0.023599, -0.959254, -0.281559,
		-0.784884, 0.156659, -0.599513,
		24.583004, 29.571959, 26.440092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136108, 29.066425, 26.197598>,  <25.132421, 29.462297, 26.859751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136108, 29.066425, 26.197598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926744, 29.400955, 26.132357>,  <24.801126, 29.601673, 26.093212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926744, 29.400955, 26.132357>,  <25.136108, 29.066425, 26.197598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926744, 29.400955, 26.132357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653518, 0.271187, -0.706662,
		-0.546767, -0.476465, -0.688496,
		-0.523411, 0.836324, -0.163102,
		24.769722, 29.651852, 26.083426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954321, 29.141150, 25.468843>,  <25.136108, 29.066425, 26.197598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954321, 29.141150, 25.468843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960142, 29.500097, 25.645258>,  <24.963634, 29.715466, 25.751106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960142, 29.500097, 25.645258>,  <24.954321, 29.141150, 25.468843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960142, 29.500097, 25.645258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634932, 0.332449, -0.697380,
		-0.772431, 0.290175, -0.564933,
		0.014551, 0.897372, 0.441036,
		24.964508, 29.769308, 25.777569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604464, 29.692379, 25.075232>,  <24.954321, 29.141150, 25.468843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604464, 29.692379, 25.075232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931263, 29.777140, 25.289747>,  <25.127342, 29.827997, 25.418457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931263, 29.777140, 25.289747>,  <24.604464, 29.692379, 25.075232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931263, 29.777140, 25.289747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504686, 0.187104, -0.842784,
		-0.278931, 0.959213, 0.045919,
		0.817000, 0.211904, 0.536290,
		25.176363, 29.840712, 25.450634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905489, 30.289589, 24.773029>,  <24.604464, 29.692379, 25.075232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905489, 30.289589, 24.773029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092237, 30.568655, 24.990393>,  <25.204287, 30.736095, 25.120810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092237, 30.568655, 24.990393>,  <24.905489, 30.289589, 24.773029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092237, 30.568655, 24.990393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839104, -0.155512, -0.521268,
		-0.279165, 0.699341, -0.658019,
		0.466874, 0.697666, 0.543406,
		25.232300, 30.777954, 25.153414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250170, 30.831173, 24.448765>,  <24.905489, 30.289589, 24.773029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250170, 30.831173, 24.448765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439848, 30.809441, 24.800262>,  <25.553656, 30.796402, 25.011160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439848, 30.809441, 24.800262>,  <25.250170, 30.831173, 24.448765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439848, 30.809441, 24.800262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878013, -0.044568, -0.476557,
		0.065056, 0.997528, 0.026569,
		0.474195, -0.054331, 0.878742,
		25.582106, 30.793140, 25.063885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815031, 31.322575, 24.471594>,  <25.250170, 30.831173, 24.448765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815031, 31.322575, 24.471594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942268, 31.135927, 24.801706>,  <26.018610, 31.023939, 24.999773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942268, 31.135927, 24.801706>,  <25.815031, 31.322575, 24.471594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942268, 31.135927, 24.801706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854924, 0.517434, -0.036960,
		-0.409782, 0.717308, 0.563515,
		0.318093, -0.466617, 0.825279,
		26.037697, 30.995941, 25.049290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962523, 31.799870, 24.959705>,  <25.815031, 31.322575, 24.471594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962523, 31.799870, 24.959705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186533, 31.486624, 25.067854>,  <26.320938, 31.298676, 25.132744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186533, 31.486624, 25.067854>,  <25.962523, 31.799870, 24.959705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186533, 31.486624, 25.067854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828229, 0.537177, -0.159619,
		-0.020238, 0.313321, 0.949432,
		0.560025, -0.783116, 0.270372,
		26.354540, 31.251688, 25.148966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444235, 32.115948, 25.455584>,  <25.962523, 31.799870, 24.959705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444235, 32.115948, 25.455584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621025, 31.768974, 25.364180>,  <26.727098, 31.560791, 25.309338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621025, 31.768974, 25.364180>,  <26.444235, 32.115948, 25.455584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621025, 31.768974, 25.364180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892236, 0.451404, 0.012179,
		0.092587, -0.209269, 0.973465,
		0.441975, -0.867433, -0.228511,
		26.753618, 31.508745, 25.295626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991945, 32.024727, 25.874689>,  <26.444235, 32.115948, 25.455584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991945, 32.024727, 25.874689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083603, 31.789377, 25.564512>,  <27.138597, 31.648167, 25.378407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083603, 31.789377, 25.564512>,  <26.991945, 32.024727, 25.874689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083603, 31.789377, 25.564512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869898, 0.481241, -0.108094,
		0.436773, -0.649785, 0.622101,
		0.229143, -0.588377, -0.775440,
		27.152346, 31.612864, 25.331881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759882, 31.827173, 25.905285>,  <26.991945, 32.024727, 25.874689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759882, 31.827173, 25.905285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675051, 31.732891, 25.525925>,  <27.624151, 31.676323, 25.298307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675051, 31.732891, 25.525925>,  <27.759882, 31.827173, 25.905285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675051, 31.732891, 25.525925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822549, 0.480957, -0.303468,
		0.527669, -0.844467, 0.091876,
		-0.212080, -0.235703, -0.948402,
		27.611427, 31.662180, 25.241404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323732, 31.511688, 25.583807>,  <27.759882, 31.827173, 25.905285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323732, 31.511688, 25.583807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144854, 31.606861, 25.238924>,  <28.037525, 31.663965, 25.031994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144854, 31.606861, 25.238924>,  <28.323732, 31.511688, 25.583807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144854, 31.606861, 25.238924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864600, 0.361889, -0.348574,
		0.229087, -0.901346, -0.367551,
		-0.447198, 0.237931, -0.862208,
		28.010695, 31.678240, 24.980261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706320, 31.218472, 24.951704>,  <28.323732, 31.511688, 25.583807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706320, 31.218472, 24.951704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500784, 31.537769, 24.825989>,  <28.377462, 31.729347, 24.750559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500784, 31.537769, 24.825989>,  <28.706320, 31.218472, 24.951704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500784, 31.537769, 24.825989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851616, 0.430413, -0.299155,
		-0.103525, -0.421371, -0.900960,
		-0.513840, 0.798242, -0.314288,
		28.346632, 31.777243, 24.731703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033289, 31.340185, 24.358616>,  <28.706320, 31.218472, 24.951704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033289, 31.340185, 24.358616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856544, 31.675591, 24.486149>,  <28.750498, 31.876833, 24.562670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856544, 31.675591, 24.486149>,  <29.033289, 31.340185, 24.358616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856544, 31.675591, 24.486149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697167, 0.544637, -0.466185,
		-0.564551, 0.016293, -0.825237,
		-0.441860, 0.838513, 0.318835,
		28.723986, 31.927145, 24.581799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002949, 31.825642, 23.731409>,  <29.033289, 31.340185, 24.358616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002949, 31.825642, 23.731409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999533, 32.038681, 24.069939>,  <28.997484, 32.166504, 24.273056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999533, 32.038681, 24.069939>,  <29.002949, 31.825642, 23.731409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999533, 32.038681, 24.069939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745202, 0.567745, -0.349770,
		-0.666784, 0.627696, -0.401742,
		-0.008538, 0.532601, 0.846324,
		28.996971, 32.198460, 24.323835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204872, 32.462032, 23.486368>,  <29.002949, 31.825642, 23.731409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204872, 32.462032, 23.486368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261711, 32.463066, 23.882307>,  <29.295815, 32.463684, 24.119871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261711, 32.463066, 23.882307>,  <29.204872, 32.462032, 23.486368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261711, 32.463066, 23.882307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883832, 0.449938, -0.128051,
		-0.445701, 0.893056, 0.061653,
		0.142097, 0.002581, 0.989849,
		29.304340, 32.463840, 24.179262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376978, 33.119446, 23.662321>,  <29.204872, 32.462032, 23.486368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376978, 33.119446, 23.662321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492666, 32.907722, 23.981365>,  <29.562078, 32.780689, 24.172792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492666, 32.907722, 23.981365>,  <29.376978, 33.119446, 23.662321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492666, 32.907722, 23.981365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877538, 0.479507, 0.000006,
		-0.382464, 0.699932, 0.603172,
		0.289221, -0.529309, 0.797611,
		29.579433, 32.748928, 24.220648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557972, 33.607861, 24.052986>,  <29.376978, 33.119446, 23.662321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557972, 33.607861, 24.052986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739569, 33.277420, 24.186516>,  <29.848528, 33.079155, 24.266634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739569, 33.277420, 24.186516>,  <29.557972, 33.607861, 24.052986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739569, 33.277420, 24.186516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870223, 0.491555, 0.032951,
		-0.191315, 0.275543, 0.942059,
		0.453994, -0.826105, 0.333826,
		29.875767, 33.029587, 24.286663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177111, 33.822285, 24.400917>,  <29.557972, 33.607861, 24.052986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177111, 33.822285, 24.400917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266943, 33.433784, 24.369349>,  <30.320843, 33.200684, 24.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266943, 33.433784, 24.369349>,  <30.177111, 33.822285, 24.400917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266943, 33.433784, 24.369349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969625, 0.230789, -0.081013,
		0.096899, -0.058331, 0.993583,
		0.224582, -0.971254, -0.078923,
		30.334318, 33.142406, 24.345673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751200, 33.647968, 24.893991>,  <30.177111, 33.822285, 24.400917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751200, 33.647968, 24.893991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757782, 33.362808, 24.613564>,  <30.761732, 33.191711, 24.445307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757782, 33.362808, 24.613564>,  <30.751200, 33.647968, 24.893991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757782, 33.362808, 24.613564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984279, 0.134868, -0.114038,
		0.175850, -0.688173, 0.703914,
		0.016457, -0.712902, -0.701070,
		30.762718, 33.148937, 24.403242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270826, 33.223785, 25.103046>,  <30.751200, 33.647968, 24.893991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270826, 33.223785, 25.103046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220942, 33.177322, 24.708899>,  <31.191010, 33.149445, 24.472410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220942, 33.177322, 24.708899>,  <31.270826, 33.223785, 25.103046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220942, 33.177322, 24.708899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988644, -0.098463, -0.113522,
		-0.083836, -0.988338, 0.127116,
		-0.124714, -0.116155, -0.985370,
		31.183527, 33.142475, 24.413288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652388, 32.589912, 24.888130>,  <31.270826, 33.223785, 25.103046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652388, 32.589912, 24.888130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594578, 32.811550, 24.560205>,  <31.559891, 32.944534, 24.363451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594578, 32.811550, 24.560205>,  <31.652388, 32.589912, 24.888130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594578, 32.811550, 24.560205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966335, -0.099192, -0.237400,
		-0.212861, -0.826522, -0.521106,
		-0.144527, 0.554096, -0.819811,
		31.551220, 32.977779, 24.314262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071629, 32.349087, 24.433969>,  <31.652388, 32.589912, 24.888130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071629, 32.349087, 24.433969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003143, 32.712967, 24.282639>,  <31.962051, 32.931293, 24.191841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003143, 32.712967, 24.282639>,  <32.071629, 32.349087, 24.433969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003143, 32.712967, 24.282639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912010, 0.001068, -0.410165,
		-0.372724, -0.415263, -0.829839,
		-0.171213, 0.909701, -0.378326,
		31.951780, 32.985878, 24.169140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670719, 32.445072, 24.121950>,  <32.071629, 32.349087, 24.433969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670719, 32.445072, 24.121950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498192, 32.801853, 24.067719>,  <32.394676, 33.015923, 24.035179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498192, 32.801853, 24.067719>,  <32.670719, 32.445072, 24.121950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498192, 32.801853, 24.067719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850898, 0.352225, -0.389757,
		-0.299890, -0.283475, -0.910883,
		-0.431322, 0.891953, -0.135579,
		32.368793, 33.069439, 24.027044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041775, 32.615807, 23.584154>,  <32.670719, 32.445072, 24.121950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041775, 32.615807, 23.584154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890839, 32.961929, 23.716131>,  <32.800278, 33.169601, 23.795319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890839, 32.961929, 23.716131>,  <33.041775, 32.615807, 23.584154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890839, 32.961929, 23.716131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852166, 0.463915, -0.242067,
		-0.362527, 0.189825, -0.912437,
		-0.377343, 0.865303, 0.329944,
		32.777637, 33.221519, 23.815115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172333, 33.010773, 22.997978>,  <33.041775, 32.615807, 23.584154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172333, 33.010773, 22.997978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149364, 33.203171, 23.347914>,  <33.135582, 33.318611, 23.557875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149364, 33.203171, 23.347914>,  <33.172333, 33.010773, 22.997978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149364, 33.203171, 23.347914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958868, 0.270567, -0.085823,
		-0.277984, 0.833929, -0.476748,
		-0.057422, 0.480995, 0.874841,
		33.132137, 33.347469, 23.610367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468952, 33.663692, 22.846245>,  <33.172333, 33.010773, 22.997978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468952, 33.663692, 22.846245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484570, 33.593384, 23.239708>,  <33.493942, 33.551197, 23.475786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484570, 33.593384, 23.239708>,  <33.468952, 33.663692, 22.846245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484570, 33.593384, 23.239708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974616, 0.223879, 0.001318,
		-0.220451, 0.958636, 0.180051,
		0.039046, -0.175771, 0.983656,
		33.496284, 33.540653, 23.534805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923679, 34.159695, 22.977079>,  <33.468952, 33.663692, 22.846245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923679, 34.159695, 22.977079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937061, 33.928997, 23.303576>,  <33.945091, 33.790577, 23.499474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937061, 33.928997, 23.303576>,  <33.923679, 34.159695, 22.977079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937061, 33.928997, 23.303576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943843, 0.286828, 0.163985,
		-0.328697, 0.764915, 0.553952,
		0.033454, -0.576745, 0.816239,
		33.947098, 33.755974, 23.548447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242638, 34.569126, 23.502899>,  <33.923679, 34.159695, 22.977079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242638, 34.569126, 23.502899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285400, 34.190128, 23.623451>,  <34.311058, 33.962730, 23.695784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285400, 34.190128, 23.623451>,  <34.242638, 34.569126, 23.502899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285400, 34.190128, 23.623451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793298, 0.264012, 0.548613,
		-0.599374, 0.180436, 0.779868,
		0.106905, -0.947492, 0.301381,
		34.317471, 33.905880, 23.713865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485878, 34.791054, 24.038834>,  <34.242638, 34.569126, 23.502899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485878, 34.791054, 24.038834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581753, 34.405052, 23.996271>,  <34.639278, 34.173450, 23.970734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581753, 34.405052, 23.996271>,  <34.485878, 34.791054, 24.038834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581753, 34.405052, 23.996271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865179, 0.162589, 0.474373,
		-0.440470, -0.205762, 0.873870,
		0.239689, -0.965001, -0.106405,
		34.653660, 34.115551, 23.964350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849724, 34.619156, 24.746395>,  <34.485878, 34.791054, 24.038834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849724, 34.619156, 24.746395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951256, 34.366001, 24.453814>,  <35.012177, 34.214108, 24.278265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951256, 34.366001, 24.453814>,  <34.849724, 34.619156, 24.746395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951256, 34.366001, 24.453814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966578, 0.137849, 0.216157,
		-0.035973, -0.761875, 0.646725,
		0.253835, -0.632886, -0.731453,
		35.027405, 34.176136, 24.234377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350887, 34.026569, 24.963673>,  <34.849724, 34.619156, 24.746395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350887, 34.026569, 24.963673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407345, 34.079273, 24.571199>,  <35.441219, 34.110897, 24.335716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407345, 34.079273, 24.571199>,  <35.350887, 34.026569, 24.963673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407345, 34.079273, 24.571199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970815, 0.175691, 0.163250,
		0.193895, -0.975588, -0.103120,
		0.141148, 0.131764, -0.981181,
		35.449688, 34.118801, 24.276846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005394, 33.716232, 24.829845>,  <35.350887, 34.026569, 24.963673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005394, 33.716232, 24.829845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937553, 33.966530, 24.525299>,  <35.896851, 34.116711, 24.342571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937553, 33.966530, 24.525299>,  <36.005394, 33.716232, 24.829845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937553, 33.966530, 24.525299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938898, 0.337383, 0.068142,
		0.299512, -0.703288, -0.644731,
		-0.169598, 0.625746, -0.761366,
		35.886673, 34.154255, 24.296888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562256, 33.542774, 24.412596>,  <36.005394, 33.716232, 24.829845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562256, 33.542774, 24.412596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435532, 33.897156, 24.277117>,  <36.359497, 34.109783, 24.195829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435532, 33.897156, 24.277117>,  <36.562256, 33.542774, 24.412596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435532, 33.897156, 24.277117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947161, 0.276635, -0.162353,
		-0.050141, -0.372237, -0.926782,
		-0.316814, 0.885953, -0.338697,
		36.340488, 34.162941, 24.175507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649246, 33.658394, 23.612347>,  <36.562256, 33.542774, 24.412596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649246, 33.658394, 23.612347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657852, 34.005047, 23.811741>,  <36.663013, 34.213039, 23.931377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657852, 34.005047, 23.811741>,  <36.649246, 33.658394, 23.612347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657852, 34.005047, 23.811741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904912, 0.195104, -0.378245,
		-0.425056, 0.459222, -0.780027,
		0.021513, 0.866631, 0.498486,
		36.664307, 34.265038, 23.961287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032108, 34.057407, 23.186445>,  <36.649246, 33.658394, 23.612347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032108, 34.057407, 23.186445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016026, 34.251007, 23.536104>,  <37.006374, 34.367165, 23.745899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016026, 34.251007, 23.536104>,  <37.032108, 34.057407, 23.186445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016026, 34.251007, 23.536104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931287, 0.335159, -0.142732,
		-0.362060, 0.808342, -0.464216,
		-0.040210, 0.483996, 0.874146,
		37.003963, 34.396206, 23.798347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329670, 34.693790, 23.053284>,  <37.032108, 34.057407, 23.186445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329670, 34.693790, 23.053284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354691, 34.618832, 23.445400>,  <37.369701, 34.573856, 23.680670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354691, 34.618832, 23.445400>,  <37.329670, 34.693790, 23.053284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354691, 34.618832, 23.445400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934540, 0.355758, 0.008379,
		-0.350317, 0.915597, 0.197384,
		0.062549, -0.187398, 0.980291,
		37.373455, 34.562611, 23.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724274, 35.302353, 23.285923>,  <37.329670, 34.693790, 23.053284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724274, 35.302353, 23.285923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748680, 35.038750, 23.585785>,  <37.763325, 34.880589, 23.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748680, 35.038750, 23.585785>,  <37.724274, 35.302353, 23.285923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748680, 35.038750, 23.585785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973703, 0.204460, 0.100490,
		-0.219499, 0.723808, 0.654157,
		0.061014, -0.659012, 0.749653,
		37.766983, 34.841045, 23.810680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015060, 35.736065, 23.904554>,  <37.724274, 35.302353, 23.285923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015060, 35.736065, 23.904554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104111, 35.347500, 23.937536>,  <38.157543, 35.114361, 23.957325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104111, 35.347500, 23.937536>,  <38.015060, 35.736065, 23.904554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104111, 35.347500, 23.937536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936509, 0.236596, 0.258792,
		-0.270902, 0.019607, 0.962407,
		0.222628, -0.971410, 0.082457,
		38.170898, 35.056076, 23.962273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552017, 35.726238, 24.418972>,  <38.015060, 35.736065, 23.904554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552017, 35.726238, 24.418972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586815, 35.346203, 24.299131>,  <38.607693, 35.118183, 24.227226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586815, 35.346203, 24.299131>,  <38.552017, 35.726238, 24.418972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586815, 35.346203, 24.299131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972978, 0.016467, 0.230312,
		-0.213883, -0.311542, 0.925849,
		0.086998, -0.950090, -0.299601,
		38.612915, 35.061176, 24.209251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024368, 35.435257, 24.868105>,  <38.552017, 35.726238, 24.418972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024368, 35.435257, 24.868105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036095, 35.171387, 24.567713>,  <39.043129, 35.013065, 24.387478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036095, 35.171387, 24.567713>,  <39.024368, 35.435257, 24.868105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036095, 35.171387, 24.567713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974559, -0.148156, 0.168182,
		-0.222207, -0.736806, 0.638545,
		0.029313, -0.659671, -0.750982,
		39.044888, 34.973484, 24.342419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325375, 34.825661, 25.119844>,  <39.024368, 35.435257, 24.868105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325375, 34.825661, 25.119844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367970, 34.790833, 24.723646>,  <39.393528, 34.769936, 24.485928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367970, 34.790833, 24.723646>,  <39.325375, 34.825661, 25.119844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367970, 34.790833, 24.723646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964020, -0.234977, 0.124301,
		-0.243566, -0.968094, 0.058913,
		0.106491, -0.087069, -0.990494,
		39.399918, 34.764713, 24.426498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800728, 34.233910, 25.044861>,  <39.325375, 34.825661, 25.119844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800728, 34.233910, 25.044861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821987, 34.450970, 24.709551>,  <39.834743, 34.581207, 24.508366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821987, 34.450970, 24.709551>,  <39.800728, 34.233910, 25.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821987, 34.450970, 24.709551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988024, -0.150354, -0.034685,
		-0.144859, -0.826390, -0.544146,
		0.053151, 0.542654, -0.838273,
		39.837933, 34.613766, 24.458069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214294, 33.890614, 24.500210>,  <39.800728, 34.233910, 25.044861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214294, 33.890614, 24.500210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227383, 34.270058, 24.374306>,  <40.235237, 34.497723, 24.298763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227383, 34.270058, 24.374306>,  <40.214294, 33.890614, 24.500210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227383, 34.270058, 24.374306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976192, -0.097896, -0.193561,
		-0.214427, -0.300933, -0.929226,
		0.032719, 0.948607, -0.314760,
		40.237198, 34.554642, 24.279879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746761, 33.932144, 24.008024>,  <40.214294, 33.890614, 24.500210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746761, 33.932144, 24.008024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691902, 34.306435, 24.138012>,  <40.658985, 34.531010, 24.216005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691902, 34.306435, 24.138012>,  <40.746761, 33.932144, 24.008024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691902, 34.306435, 24.138012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981319, 0.083664, 0.173245,
		0.134922, 0.342658, -0.929721,
		-0.137149, 0.935727, 0.324969,
		40.650757, 34.587154, 24.235502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386070, 33.951649, 23.499552>,  <40.746761, 33.932144, 24.008024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386070, 33.951649, 23.499552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492874, 33.649448, 23.260246>,  <40.556957, 33.468128, 23.116663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492874, 33.649448, 23.260246>,  <40.386070, 33.951649, 23.499552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492874, 33.649448, 23.260246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944117, -0.080578, -0.319609,
		0.193258, 0.650172, -0.734798,
		0.267010, -0.755502, -0.598266,
		40.572979, 33.422798, 23.080767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898102, 34.103333, 23.010927>,  <40.386070, 33.951649, 23.499552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898102, 34.103333, 23.010927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989647, 33.714390, 22.992397>,  <40.044575, 33.481026, 22.981279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989647, 33.714390, 22.992397>,  <39.898102, 34.103333, 23.010927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989647, 33.714390, 22.992397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924583, -0.202233, -0.322875,
		0.304581, 0.116725, -0.945307,
		0.228860, -0.972357, -0.046326,
		40.058304, 33.422684, 22.978500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693901, 33.849327, 22.345003>,  <39.898102, 34.103333, 23.010927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693901, 33.849327, 22.345003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743610, 33.515312, 22.559391>,  <39.773434, 33.314903, 22.688025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743610, 33.515312, 22.559391>,  <39.693901, 33.849327, 22.345003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743610, 33.515312, 22.559391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880649, -0.341698, -0.328176,
		0.457180, -0.431221, -0.777840,
		0.124270, -0.835040, 0.535972,
		39.780891, 33.264801, 22.720182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617199, 33.282070, 21.870411>,  <39.693901, 33.849327, 22.345003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617199, 33.282070, 21.870411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548512, 33.153072, 22.242756>,  <39.507301, 33.075672, 22.466164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548512, 33.153072, 22.242756>,  <39.617199, 33.282070, 21.870411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548512, 33.153072, 22.242756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845003, -0.437536, -0.307461,
		0.506442, -0.839379, -0.197382,
		-0.171715, -0.322499, 0.930864,
		39.496998, 33.056324, 22.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414482, 32.646297, 21.694818>,  <39.617199, 33.282070, 21.870411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414482, 32.646297, 21.694818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283497, 32.709610, 22.067423>,  <39.204906, 32.747597, 22.290985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283497, 32.709610, 22.067423>,  <39.414482, 32.646297, 21.694818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283497, 32.709610, 22.067423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876963, -0.417896, -0.237273,
		0.351719, -0.894600, 0.275654,
		-0.327459, 0.158285, 0.931513,
		39.185261, 32.757095, 22.346876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119656, 32.028702, 21.852463>,  <39.414482, 32.646297, 21.694818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119656, 32.028702, 21.852463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948486, 32.260201, 22.130146>,  <38.845783, 32.399101, 22.296757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948486, 32.260201, 22.130146>,  <39.119656, 32.028702, 21.852463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948486, 32.260201, 22.130146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828718, -0.557788, -0.045819,
		0.360705, -0.594912, 0.718312,
		-0.427924, 0.578751, 0.694211,
		38.820110, 32.433826, 22.338409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828941, 31.585070, 22.383789>,  <39.119656, 32.028702, 21.852463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828941, 31.585070, 22.383789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608963, 31.917572, 22.416203>,  <38.476974, 32.117073, 22.435652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608963, 31.917572, 22.416203>,  <38.828941, 31.585070, 22.383789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608963, 31.917572, 22.416203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835084, -0.548882, -0.036929,
		0.013782, -0.087980, 0.996027,
		-0.549950, 0.831257, 0.081036,
		38.443977, 32.166950, 22.440514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294025, 31.495354, 22.968294>,  <38.828941, 31.585070, 22.383789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294025, 31.495354, 22.968294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136562, 31.809811, 22.777710>,  <38.042084, 31.998484, 22.663359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136562, 31.809811, 22.777710>,  <38.294025, 31.495354, 22.968294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136562, 31.809811, 22.777710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898466, -0.438650, 0.018575,
		-0.194396, 0.435395, 0.879000,
		-0.393661, 0.786141, -0.476460,
		38.018463, 32.045654, 22.634771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652992, 31.743303, 23.286064>,  <38.294025, 31.495354, 22.968294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652992, 31.743303, 23.286064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626240, 31.896694, 22.917614>,  <37.610188, 31.988728, 22.696545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626240, 31.896694, 22.917614>,  <37.652992, 31.743303, 23.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626240, 31.896694, 22.917614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940160, -0.333355, -0.070516,
		-0.334103, 0.861289, 0.382827,
		-0.066883, 0.383478, -0.921125,
		37.606174, 32.011738, 22.641275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062176, 32.303310, 23.280241>,  <37.652992, 31.743303, 23.286064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062176, 32.303310, 23.280241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110157, 32.247696, 22.887043>,  <37.138947, 32.214325, 22.651125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110157, 32.247696, 22.887043>,  <37.062176, 32.303310, 23.280241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110157, 32.247696, 22.887043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987947, -0.114289, -0.104394,
		-0.097831, 0.983670, -0.151074,
		0.119955, -0.139041, -0.982995,
		37.146145, 32.205982, 22.592144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787308, 32.838524, 22.926674>,  <37.062176, 32.303310, 23.280241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787308, 32.838524, 22.926674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787994, 32.540234, 22.660172>,  <36.788406, 32.361259, 22.500271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787994, 32.540234, 22.660172>,  <36.787308, 32.838524, 22.926674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787994, 32.540234, 22.660172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995106, 0.064546, -0.074815,
		0.098795, 0.663123, -0.741961,
		0.001721, -0.745722, -0.666255,
		36.788509, 32.316517, 22.460295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231747, 32.952206, 22.441040>,  <36.787308, 32.838524, 22.926674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231747, 32.952206, 22.441040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303463, 32.564793, 22.371984>,  <36.346493, 32.332344, 22.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303463, 32.564793, 22.371984>,  <36.231747, 32.952206, 22.441040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303463, 32.564793, 22.371984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968785, -0.143278, -0.202305,
		0.171203, 0.203520, -0.963986,
		0.179291, -0.968531, -0.172637,
		36.357250, 32.274235, 22.320194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747585, 32.880169, 21.870173>,  <36.231747, 32.952206, 22.441040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747585, 32.880169, 21.870173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816811, 32.519043, 22.027639>,  <35.858345, 32.302368, 22.122120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816811, 32.519043, 22.027639>,  <35.747585, 32.880169, 21.870173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816811, 32.519043, 22.027639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982880, -0.183964, 0.010194,
		0.063218, -0.388692, -0.919196,
		0.173062, -0.902815, 0.393667,
		35.868729, 32.248199, 22.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453018, 32.398758, 21.400085>,  <35.747585, 32.880169, 21.870173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453018, 32.398758, 21.400085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461353, 32.216537, 21.756073>,  <35.466354, 32.107204, 21.969666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461353, 32.216537, 21.756073>,  <35.453018, 32.398758, 21.400085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461353, 32.216537, 21.756073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995155, -0.094998, -0.025326,
		0.096082, -0.885128, -0.455320,
		0.020838, -0.455547, 0.889968,
		35.467606, 32.079872, 22.023064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954517, 31.872961, 21.362879>,  <35.453018, 32.398758, 21.400085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954517, 31.872961, 21.362879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002464, 31.877468, 21.759970>,  <35.031231, 31.880173, 21.998224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002464, 31.877468, 21.759970>,  <34.954517, 31.872961, 21.362879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002464, 31.877468, 21.759970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966938, -0.225381, 0.119311,
		0.225086, -0.974206, -0.016118,
		0.119867, 0.011270, 0.992726,
		35.038425, 31.880848, 22.057787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754398, 31.184111, 21.666330>,  <34.954517, 31.872961, 21.362879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754398, 31.184111, 21.666330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718864, 31.431805, 21.978397>,  <34.697544, 31.580421, 22.165638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718864, 31.431805, 21.978397>,  <34.754398, 31.184111, 21.666330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718864, 31.431805, 21.978397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938381, -0.314669, 0.142913,
		0.333991, -0.719397, 0.609030,
		-0.088831, 0.619234, 0.780165,
		34.692215, 31.617575, 22.212446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380024, 30.841202, 22.080820>,  <34.754398, 31.184111, 21.666330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380024, 30.841202, 22.080820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342213, 31.205032, 22.242678>,  <34.319527, 31.423330, 22.339792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342213, 31.205032, 22.242678>,  <34.380024, 30.841202, 22.080820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342213, 31.205032, 22.242678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961269, -0.189103, 0.200502,
		0.258891, -0.370018, 0.892223,
		-0.094533, 0.909575, 0.404644,
		34.313854, 31.477905, 22.364071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126331, 30.814413, 22.759712>,  <34.380024, 30.841202, 22.080820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126331, 30.814413, 22.759712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027519, 31.190535, 22.666071>,  <33.968231, 31.416208, 22.609886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027519, 31.190535, 22.666071>,  <34.126331, 30.814413, 22.759712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027519, 31.190535, 22.666071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956354, -0.197673, 0.215204,
		0.156081, 0.277047, 0.948095,
		-0.247034, 0.940303, -0.234102,
		33.953407, 31.472626, 22.595840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732899, 31.066936, 23.298199>,  <34.126331, 30.814413, 22.759712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732899, 31.066936, 23.298199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626003, 31.266483, 22.968420>,  <33.561867, 31.386211, 22.770552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626003, 31.266483, 22.968420>,  <33.732899, 31.066936, 23.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626003, 31.266483, 22.968420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960885, -0.073405, 0.267044,
		0.072701, 0.863564, 0.498971,
		-0.267236, 0.498868, -0.824448,
		33.545834, 31.416143, 22.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209034, 31.443937, 23.498213>,  <33.732899, 31.066936, 23.298199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209034, 31.443937, 23.498213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157524, 31.453060, 23.101648>,  <33.126617, 31.458534, 22.863710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157524, 31.453060, 23.101648>,  <33.209034, 31.443937, 23.498213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157524, 31.453060, 23.101648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985255, 0.110624, 0.130521,
		0.112650, 0.993601, 0.008226,
		-0.128775, 0.022808, -0.991412,
		33.118893, 31.459902, 22.804224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623367, 31.714945, 23.391665>,  <33.209034, 31.443937, 23.498213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623367, 31.714945, 23.391665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655769, 31.577368, 23.017467>,  <32.675213, 31.494822, 22.792950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655769, 31.577368, 23.017467>,  <32.623367, 31.714945, 23.391665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655769, 31.577368, 23.017467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994671, -0.087943, -0.053801,
		-0.063766, 0.934864, -0.349233,
		0.081010, -0.343941, -0.935490,
		32.680073, 31.474186, 22.736820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094524, 32.005085, 23.115080>,  <32.623367, 31.714945, 23.391665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094524, 32.005085, 23.115080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162197, 31.734844, 22.828043>,  <32.202801, 31.572701, 22.655821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162197, 31.734844, 22.828043>,  <32.094524, 32.005085, 23.115080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162197, 31.734844, 22.828043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977220, -0.020330, -0.211254,
		0.128135, 0.736987, -0.663651,
		0.169183, -0.675602, -0.717593,
		32.212952, 31.532164, 22.612764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684408, 32.214581, 22.613003>,  <32.094524, 32.005085, 23.115080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684408, 32.214581, 22.613003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742081, 31.821129, 22.569777>,  <31.776684, 31.585056, 22.543840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742081, 31.821129, 22.569777>,  <31.684408, 32.214581, 22.613003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742081, 31.821129, 22.569777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987027, -0.135156, -0.086659,
		0.070635, 0.119158, -0.990360,
		0.144180, -0.983633, -0.108065,
		31.785334, 31.526039, 22.537357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369204, 31.972889, 22.020708>,  <31.684408, 32.214581, 22.613003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369204, 31.972889, 22.020708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385759, 31.646105, 22.250792>,  <31.395693, 31.450035, 22.388842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385759, 31.646105, 22.250792>,  <31.369204, 31.972889, 22.020708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385759, 31.646105, 22.250792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963732, -0.184553, -0.192770,
		0.263641, -0.546367, -0.794970,
		0.041390, -0.816960, 0.575207,
		31.398176, 31.401016, 22.423353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914688, 31.474436, 21.682169>,  <31.369204, 31.972889, 22.020708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914688, 31.474436, 21.682169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947090, 31.361603, 22.064554>,  <30.966532, 31.293903, 22.293985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947090, 31.361603, 22.064554>,  <30.914688, 31.474436, 21.682169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947090, 31.361603, 22.064554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984085, -0.174830, 0.031800,
		0.158161, -0.943326, -0.291754,
		0.081005, -0.282081, 0.955964,
		30.971392, 31.276978, 22.351343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511038, 30.922054, 21.705153>,  <30.914688, 31.474436, 21.682169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511038, 30.922054, 21.705153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550806, 31.007689, 22.093849>,  <30.574667, 31.059069, 22.327068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550806, 31.007689, 22.093849>,  <30.511038, 30.922054, 21.705153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550806, 31.007689, 22.093849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960544, -0.234285, 0.149888,
		0.259754, -0.948303, 0.182347,
		0.099418, 0.214086, 0.971743,
		30.580631, 31.071915, 22.385372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151773, 30.396431, 22.099688>,  <30.511038, 30.922054, 21.705153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151773, 30.396431, 22.099688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186714, 30.711866, 22.343163>,  <30.207678, 30.901127, 22.489246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186714, 30.711866, 22.343163>,  <30.151773, 30.396431, 22.099688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186714, 30.711866, 22.343163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941782, -0.133774, 0.308466,
		0.324679, -0.600195, 0.730993,
		0.087352, 0.788588, 0.608686,
		30.212919, 30.948442, 22.525768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938824, 30.106007, 22.782080>,  <30.151773, 30.396431, 22.099688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938824, 30.106007, 22.782080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921274, 30.505236, 22.799637>,  <29.910744, 30.744774, 22.810171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921274, 30.505236, 22.799637>,  <29.938824, 30.106007, 22.782080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921274, 30.505236, 22.799637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930389, -0.056825, 0.362142,
		0.363938, -0.024950, 0.931089,
		-0.043873, 0.998073, 0.043894,
		29.908112, 30.804657, 22.812805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669880, 30.243990, 23.416489>,  <29.938824, 30.106007, 22.782080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669880, 30.243990, 23.416489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584017, 30.555490, 23.180702>,  <29.532499, 30.742392, 23.039230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584017, 30.555490, 23.180702>,  <29.669880, 30.243990, 23.416489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584017, 30.555490, 23.180702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962006, -0.064322, 0.265344,
		0.168721, 0.624027, 0.762970,
		-0.214658, 0.778751, -0.589465,
		29.519619, 30.789116, 23.003862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211758, 30.744598, 23.744194>,  <29.669880, 30.243990, 23.416489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211758, 30.744598, 23.744194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154722, 30.818792, 23.355295>,  <29.120501, 30.863308, 23.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154722, 30.818792, 23.355295>,  <29.211758, 30.744598, 23.744194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154722, 30.818792, 23.355295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988937, 0.013886, 0.147684,
		0.040894, 0.982549, 0.181453,
		-0.142587, 0.185485, -0.972247,
		29.111946, 30.874437, 23.063622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583515, 31.053886, 23.755062>,  <29.211758, 30.744598, 23.744194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583515, 31.053886, 23.755062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631611, 30.956341, 23.370131>,  <28.660469, 30.897814, 23.139172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631611, 30.956341, 23.370131>,  <28.583515, 31.053886, 23.755062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631611, 30.956341, 23.370131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977608, -0.197717, -0.072045,
		-0.172699, 0.949441, -0.262177,
		0.120239, -0.243865, -0.962327,
		28.667683, 30.883181, 23.081432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024176, 31.429956, 23.419258>,  <28.583515, 31.053886, 23.755062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024176, 31.429956, 23.419258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153669, 31.146484, 23.168510>,  <28.231365, 30.976400, 23.018063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153669, 31.146484, 23.168510>,  <28.024176, 31.429956, 23.419258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153669, 31.146484, 23.168510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938360, -0.155658, -0.308627,
		0.121142, 0.688143, -0.715391,
		0.323736, -0.708682, -0.626869,
		28.250790, 30.933880, 22.980450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584167, 31.563295, 22.876135>,  <28.024176, 31.429956, 23.419258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584167, 31.563295, 22.876135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713121, 31.187346, 22.831057>,  <27.790493, 30.961775, 22.804008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713121, 31.187346, 22.831057>,  <27.584167, 31.563295, 22.876135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713121, 31.187346, 22.831057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946544, -0.318667, -0.050067,
		0.011144, 0.122813, -0.992367,
		0.322383, -0.939877, -0.112697,
		27.809835, 30.905382, 22.797247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216326, 31.330866, 22.255241>,  <27.584167, 31.563295, 22.876135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216326, 31.330866, 22.255241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354324, 31.003685, 22.439386>,  <27.437124, 30.807377, 22.549873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354324, 31.003685, 22.439386>,  <27.216326, 31.330866, 22.255241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354324, 31.003685, 22.439386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887712, -0.443660, -0.123021,
		0.304869, -0.366227, -0.879166,
		0.344997, -0.817951, 0.460362,
		27.457823, 30.758299, 22.577496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133780, 30.791082, 21.791782>,  <27.216326, 31.330866, 22.255241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133780, 30.791082, 21.791782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129107, 30.634054, 22.159641>,  <27.126303, 30.539837, 22.380358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129107, 30.634054, 22.159641>,  <27.133780, 30.791082, 21.791782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129107, 30.634054, 22.159641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875133, -0.440919, -0.199333,
		0.483742, -0.807143, -0.338399,
		-0.011683, -0.392569, 0.919648,
		27.125601, 30.516283, 22.435535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927340, 30.095078, 21.753267>,  <27.133780, 30.791082, 21.791782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927340, 30.095078, 21.753267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877714, 30.137068, 22.147949>,  <26.847939, 30.162262, 22.384758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877714, 30.137068, 22.147949>,  <26.927340, 30.095078, 21.753267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877714, 30.137068, 22.147949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850394, -0.523648, -0.051215,
		0.511310, -0.845442, 0.154237,
		-0.124065, 0.104976, 0.986706,
		26.840494, 30.168560, 22.443960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751734, 29.417673, 21.975441>,  <26.927340, 30.095078, 21.753267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751734, 29.417673, 21.975441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604313, 29.677889, 22.241062>,  <26.515860, 29.834019, 22.400434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604313, 29.677889, 22.241062>,  <26.751734, 29.417673, 21.975441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604313, 29.677889, 22.241062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903451, -0.418914, -0.091033,
		0.218961, -0.633492, 0.742122,
		-0.368553, 0.650538, 0.664055,
		26.493748, 29.873051, 22.440279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458555, 28.967079, 22.470188>,  <26.751734, 29.417673, 21.975441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458555, 28.967079, 22.470188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306459, 29.336987, 22.464222>,  <26.215202, 29.558931, 22.460642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306459, 29.336987, 22.464222>,  <26.458555, 28.967079, 22.470188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306459, 29.336987, 22.464222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918168, -0.379367, -0.114229,
		-0.111294, -0.029737, 0.993343,
		-0.380238, 0.924768, -0.014917,
		26.192389, 29.614416, 22.459747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573895, 29.486214, 23.035200>,  <26.458555, 28.967079, 22.470188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573895, 29.486214, 23.035200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548107, 29.092163, 23.098917>,  <26.532635, 28.855734, 23.137148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548107, 29.092163, 23.098917>,  <26.573895, 29.486214, 23.035200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548107, 29.092163, 23.098917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978421, -0.093799, -0.184106,
		0.196309, 0.143986, 0.969913,
		-0.064468, -0.985124, 0.159292,
		26.528767, 28.796625, 23.146704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195417, 29.297993, 23.438715>,  <26.573895, 29.486214, 23.035200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195417, 29.297993, 23.438715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069368, 28.961258, 23.263439>,  <26.993740, 28.759216, 23.158274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069368, 28.961258, 23.263439>,  <27.195417, 29.297993, 23.438715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069368, 28.961258, 23.263439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941788, -0.220368, -0.253916,
		0.117194, -0.492694, 0.862275,
		-0.315121, -0.841838, -0.438187,
		26.974833, 28.708706, 23.131983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670259, 28.838522, 23.744587>,  <27.195417, 29.297993, 23.438715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670259, 28.838522, 23.744587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509958, 28.666693, 23.420893>,  <27.413776, 28.563595, 23.226677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509958, 28.666693, 23.420893>,  <27.670259, 28.838522, 23.744587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509958, 28.666693, 23.420893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900022, -0.349765, -0.260046,
		-0.171332, -0.832544, 0.526798,
		-0.400755, -0.429576, -0.809234,
		27.389732, 28.537821, 23.178122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902630, 28.200500, 23.751284>,  <27.670259, 28.838522, 23.744587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902630, 28.200500, 23.751284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782953, 28.196358, 23.369629>,  <27.711147, 28.193872, 23.140636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782953, 28.196358, 23.369629>,  <27.902630, 28.200500, 23.751284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782953, 28.196358, 23.369629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815677, -0.521647, -0.250113,
		-0.495131, -0.853099, 0.164523,
		-0.299193, -0.010359, -0.954136,
		27.693195, 28.193251, 23.083387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963163, 27.431934, 23.476854>,  <27.902630, 28.200500, 23.751284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963163, 27.431934, 23.476854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955971, 27.675951, 23.159988>,  <27.951656, 27.822361, 22.969870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955971, 27.675951, 23.159988>,  <27.963163, 27.431934, 23.476854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955971, 27.675951, 23.159988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833751, -0.428147, -0.348638,
		-0.551847, -0.666736, -0.500926,
		-0.017980, 0.610043, -0.792164,
		27.950577, 27.858963, 22.922338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103243, 26.974279, 22.821489>,  <27.963163, 27.431934, 23.476854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103243, 26.974279, 22.821489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187702, 27.360125, 22.758320>,  <28.238379, 27.591631, 22.720419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187702, 27.360125, 22.758320>,  <28.103243, 26.974279, 22.821489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187702, 27.360125, 22.758320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944997, -0.242745, -0.219217,
		-0.249795, -0.102950, -0.962810,
		0.211149, 0.964612, -0.157924,
		28.251047, 27.649508, 22.710943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551851, 26.992476, 22.278599>,  <28.103243, 26.974279, 22.821489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551851, 26.992476, 22.278599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609037, 27.358101, 22.430416>,  <28.643349, 27.577477, 22.521505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609037, 27.358101, 22.430416>,  <28.551851, 26.992476, 22.278599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609037, 27.358101, 22.430416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958863, -0.032897, -0.281958,
		-0.245241, 0.404238, -0.881163,
		0.142965, 0.914062, 0.379541,
		28.651928, 27.632320, 22.544279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965143, 27.400715, 21.726429>,  <28.551851, 26.992476, 22.278599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965143, 27.400715, 21.726429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023796, 27.615236, 22.058905>,  <29.058989, 27.743948, 22.258390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023796, 27.615236, 22.058905>,  <28.965143, 27.400715, 21.726429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023796, 27.615236, 22.058905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975439, 0.061234, -0.211589,
		-0.164373, 0.841802, -0.514151,
		0.146633, 0.536302, 0.831191,
		29.067785, 27.776127, 22.308262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549696, 27.846746, 21.383694>,  <28.965143, 27.400715, 21.726429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549696, 27.846746, 21.383694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553543, 27.872658, 21.782835>,  <29.555851, 27.888205, 22.022320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553543, 27.872658, 21.782835>,  <29.549696, 27.846746, 21.383694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553543, 27.872658, 21.782835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976817, 0.212814, -0.023230,
		-0.213862, 0.974943, -0.061230,
		0.009617, 0.064778, 0.997853,
		29.556429, 27.892092, 22.082191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784100, 28.584370, 21.468107>,  <29.549696, 27.846746, 21.383694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784100, 28.584370, 21.468107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844923, 28.359039, 21.792955>,  <29.881416, 28.223841, 21.987865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844923, 28.359039, 21.792955>,  <29.784100, 28.584370, 21.468107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844923, 28.359039, 21.792955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964148, 0.265341, 0.003532,
		-0.217479, 0.782469, 0.583477,
		0.152057, -0.563327, 0.812122,
		29.890539, 28.190041, 22.036592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300325, 29.018757, 21.827389>,  <29.784100, 28.584370, 21.468107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300325, 29.018757, 21.827389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319685, 28.639523, 21.953110>,  <30.331301, 28.411982, 22.028543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319685, 28.639523, 21.953110>,  <30.300325, 29.018757, 21.827389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319685, 28.639523, 21.953110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992361, 0.081392, 0.092711,
		-0.113480, 0.307416, 0.944784,
		0.048397, -0.948088, 0.314304,
		30.334204, 28.355097, 22.047401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595592, 28.851803, 22.490185>,  <30.300325, 29.018757, 21.827389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595592, 28.851803, 22.490185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688555, 28.568668, 22.223366>,  <30.744331, 28.398787, 22.063274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688555, 28.568668, 22.223366>,  <30.595592, 28.851803, 22.490185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688555, 28.568668, 22.223366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972558, 0.161462, 0.167511,
		-0.010867, -0.687674, 0.725938,
		0.232404, -0.707838, -0.667049,
		30.758276, 28.356318, 22.023251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150646, 28.379074, 22.748869>,  <30.595592, 28.851803, 22.490185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150646, 28.379074, 22.748869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150249, 28.356993, 22.349480>,  <31.150011, 28.343744, 22.109846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150249, 28.356993, 22.349480>,  <31.150646, 28.379074, 22.748869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150249, 28.356993, 22.349480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999897, 0.014266, -0.001780,
		0.014342, -0.998373, 0.055181,
		-0.000990, -0.055201, -0.998475,
		31.149952, 28.340433, 22.049936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722462, 28.003382, 22.681675>,  <31.150646, 28.379074, 22.748869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722462, 28.003382, 22.681675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662615, 28.177095, 22.326370>,  <31.626707, 28.281324, 22.113188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662615, 28.177095, 22.326370>,  <31.722462, 28.003382, 22.681675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662615, 28.177095, 22.326370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981187, 0.176078, -0.079182,
		0.122016, -0.883399, -0.452458,
		-0.149617, 0.434284, -0.888264,
		31.617729, 28.307381, 22.059891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210190, 27.669611, 22.239735>,  <31.722462, 28.003382, 22.681675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210190, 27.669611, 22.239735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107449, 28.020493, 22.077480>,  <32.045803, 28.231022, 21.980127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107449, 28.020493, 22.077480>,  <32.210190, 27.669611, 22.239735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107449, 28.020493, 22.077480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966044, 0.220837, -0.134130,
		-0.028080, -0.426311, -0.904141,
		-0.256849, 0.877206, -0.405633,
		32.030396, 28.283655, 21.955790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554752, 27.756237, 21.567387>,  <32.210190, 27.669611, 22.239735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554752, 27.756237, 21.567387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457821, 28.134838, 21.652624>,  <32.399662, 28.362000, 21.703766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457821, 28.134838, 21.652624>,  <32.554752, 27.756237, 21.567387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457821, 28.134838, 21.652624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956564, 0.269775, -0.110487,
		-0.162064, 0.177064, -0.970764,
		-0.242325, 0.946504, 0.213094,
		32.385124, 28.418789, 21.716553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895607, 28.102480, 21.087862>,  <32.554752, 27.756237, 21.567387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895607, 28.102480, 21.087862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819054, 28.372719, 21.372660>,  <32.773121, 28.534863, 21.543539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819054, 28.372719, 21.372660>,  <32.895607, 28.102480, 21.087862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819054, 28.372719, 21.372660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940105, 0.334660, -0.064849,
		-0.282089, 0.656940, -0.699182,
		-0.191386, 0.675598, 0.711997,
		32.761639, 28.575397, 21.586258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105526, 28.757263, 20.809214>,  <32.895607, 28.102480, 21.087862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105526, 28.757263, 20.809214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072117, 28.829863, 21.201149>,  <33.052071, 28.873423, 21.436310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072117, 28.829863, 21.201149>,  <33.105526, 28.757263, 20.809214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072117, 28.829863, 21.201149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847144, 0.530722, -0.026099,
		-0.524759, 0.827885, -0.198079,
		-0.083518, 0.181498, 0.979838,
		33.047062, 28.884312, 21.495100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218113, 29.425343, 20.870296>,  <33.105526, 28.757263, 20.809214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218113, 29.425343, 20.870296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303059, 29.275467, 21.231297>,  <33.354027, 29.185541, 21.447897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303059, 29.275467, 21.231297>,  <33.218113, 29.425343, 20.870296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303059, 29.275467, 21.231297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790675, 0.608601, 0.066619,
		-0.574224, 0.699438, 0.425503,
		0.212366, -0.374689, 0.902502,
		33.366768, 29.163061, 21.502047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368862, 29.901087, 21.310095>,  <33.218113, 29.425343, 20.870296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368862, 29.901087, 21.310095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559460, 29.606783, 21.502598>,  <33.673820, 29.430201, 21.618099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559460, 29.606783, 21.502598>,  <33.368862, 29.901087, 21.310095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559460, 29.606783, 21.502598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772087, 0.612017, 0.171222,
		-0.420516, 0.289985, 0.859695,
		0.476496, -0.735760, 0.481257,
		33.702408, 29.386055, 21.646975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632874, 30.182268, 21.919151>,  <33.368862, 29.901087, 21.310095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632874, 30.182268, 21.919151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845650, 29.850163, 21.852571>,  <33.973316, 29.650900, 21.812624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845650, 29.850163, 21.852571>,  <33.632874, 30.182268, 21.919151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845650, 29.850163, 21.852571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846146, 0.528796, 0.066428,
		0.032865, -0.176175, 0.983810,
		0.531937, -0.830264, -0.166449,
		34.005230, 29.601084, 21.802637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211151, 30.110542, 22.461304>,  <33.632874, 30.182268, 21.919151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211151, 30.110542, 22.461304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302063, 29.884779, 22.143867>,  <34.356609, 29.749321, 21.953405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302063, 29.884779, 22.143867>,  <34.211151, 30.110542, 22.461304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302063, 29.884779, 22.143867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939444, 0.341713, 0.026019,
		0.256495, -0.751450, 0.607893,
		0.227277, -0.564408, -0.793593,
		34.370247, 29.715456, 21.905790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897091, 29.852753, 22.721464>,  <34.211151, 30.110542, 22.461304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897091, 29.852753, 22.721464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859879, 29.795601, 22.327320>,  <34.837551, 29.761311, 22.090834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859879, 29.795601, 22.327320>,  <34.897091, 29.852753, 22.721464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859879, 29.795601, 22.327320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983344, 0.142013, -0.113430,
		0.156140, -0.979499, 0.127289,
		-0.093028, -0.142880, -0.985358,
		34.831970, 29.752737, 22.031713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382896, 29.311438, 22.539959>,  <34.897091, 29.852753, 22.721464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382896, 29.311438, 22.539959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313396, 29.534311, 22.215157>,  <35.271698, 29.668036, 22.020275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313396, 29.534311, 22.215157>,  <35.382896, 29.311438, 22.539959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313396, 29.534311, 22.215157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982872, 0.046676, -0.178282,
		-0.061435, -0.829076, -0.555750,
		-0.173749, 0.557184, -0.812008,
		35.261272, 29.701466, 21.971554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781334, 28.979836, 22.160126>,  <35.382896, 29.311438, 22.539959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781334, 28.979836, 22.160126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732841, 29.332190, 21.977110>,  <35.703747, 29.543602, 21.867300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732841, 29.332190, 21.977110>,  <35.781334, 28.979836, 22.160126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732841, 29.332190, 21.977110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992546, 0.101775, -0.067044,
		-0.012492, -0.462255, -0.886659,
		-0.121231, 0.880887, -0.457537,
		35.696472, 29.596457, 21.839849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168571, 28.984760, 21.399801>,  <35.781334, 28.979836, 22.160126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168571, 28.984760, 21.399801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120140, 29.353867, 21.546141>,  <36.091080, 29.575331, 21.633944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120140, 29.353867, 21.546141>,  <36.168571, 28.984760, 21.399801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120140, 29.353867, 21.546141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991526, 0.129907, 0.000494,
		-0.047070, 0.362806, -0.930675,
		-0.121080, 0.922765, 0.365846,
		36.083817, 29.630695, 21.655895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533566, 29.476116, 20.867075>,  <36.168571, 28.984760, 21.399801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533566, 29.476116, 20.867075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518223, 29.659704, 21.222124>,  <36.509018, 29.769857, 21.435154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518223, 29.659704, 21.222124>,  <36.533566, 29.476116, 20.867075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518223, 29.659704, 21.222124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926644, 0.348779, -0.140300,
		-0.373978, 0.817129, -0.438680,
		-0.038360, 0.458969, 0.887624,
		36.506714, 29.797396, 21.488411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899078, 30.134958, 20.738089>,  <36.533566, 29.476116, 20.867075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899078, 30.134958, 20.738089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895161, 30.052465, 21.129471>,  <36.892811, 30.002970, 21.364300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895161, 30.052465, 21.129471>,  <36.899078, 30.134958, 20.738089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895161, 30.052465, 21.129471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997010, 0.072990, 0.025361,
		-0.076647, 0.975777, 0.204902,
		-0.009791, -0.206233, 0.978454,
		36.892223, 29.990595, 21.423008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438889, 30.577616, 21.029665>,  <36.899078, 30.134958, 20.738089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438889, 30.577616, 21.029665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354561, 30.290058, 21.294619>,  <37.303963, 30.117523, 21.453590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354561, 30.290058, 21.294619>,  <37.438889, 30.577616, 21.029665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354561, 30.290058, 21.294619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973240, -0.217737, 0.073445,
		0.091426, 0.660140, 0.745558,
		-0.210819, -0.718892, 0.662382,
		37.291317, 30.074390, 21.493334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751518, 30.805258, 21.537361>,  <37.438889, 30.577616, 21.029665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751518, 30.805258, 21.537361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704987, 30.410805, 21.584709>,  <37.677067, 30.174133, 21.613117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704987, 30.410805, 21.584709>,  <37.751518, 30.805258, 21.537361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704987, 30.410805, 21.584709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960875, -0.081577, 0.264696,
		-0.251369, 0.144531, 0.957039,
		-0.116329, -0.986132, 0.118370,
		37.670086, 30.114965, 21.620220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065090, 30.719200, 22.132576>,  <37.751518, 30.805258, 21.537361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065090, 30.719200, 22.132576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100525, 30.369896, 21.940924>,  <38.121784, 30.160313, 21.825932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100525, 30.369896, 21.940924>,  <38.065090, 30.719200, 22.132576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100525, 30.369896, 21.940924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969922, -0.033867, 0.241049,
		-0.226725, -0.486075, 0.843995,
		0.088584, -0.873261, -0.479133,
		38.127102, 30.107918, 21.797184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441082, 30.325638, 22.547047>,  <38.065090, 30.719200, 22.132576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441082, 30.325638, 22.547047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465393, 30.112335, 22.209539>,  <38.479980, 29.984354, 22.007034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465393, 30.112335, 22.209539>,  <38.441082, 30.325638, 22.547047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465393, 30.112335, 22.209539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968641, -0.172523, 0.178801,
		-0.240916, -0.828175, 0.506049,
		0.060773, -0.533256, -0.843768,
		38.483624, 29.952358, 21.956409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806618, 29.667717, 22.769993>,  <38.441082, 30.325638, 22.547047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806618, 29.667717, 22.769993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839134, 29.699816, 22.372612>,  <38.858646, 29.719074, 22.134182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839134, 29.699816, 22.372612>,  <38.806618, 29.667717, 22.769993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839134, 29.699816, 22.372612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981815, -0.178012, 0.065962,
		-0.171553, -0.980751, -0.093259,
		0.081294, 0.080247, -0.993455,
		38.863522, 29.723890, 22.074575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189739, 29.021637, 22.539551>,  <38.806618, 29.667717, 22.769993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189739, 29.021637, 22.539551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247742, 29.302456, 22.260666>,  <39.282543, 29.470947, 22.093336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247742, 29.302456, 22.260666>,  <39.189739, 29.021637, 22.539551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247742, 29.302456, 22.260666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980066, -0.198635, 0.003815,
		-0.135812, -0.683865, -0.716857,
		0.145002, 0.702049, -0.697210,
		39.291241, 29.513071, 22.051502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740726, 28.776445, 22.189741>,  <39.189739, 29.021637, 22.539551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740726, 28.776445, 22.189741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717159, 29.160229, 22.079493>,  <39.703018, 29.390499, 22.013344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717159, 29.160229, 22.079493>,  <39.740726, 28.776445, 22.189741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717159, 29.160229, 22.079493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977740, -0.000229, -0.209820,
		-0.201377, -0.281848, -0.938088,
		-0.058922, 0.959459, -0.275621,
		39.699482, 29.448067, 21.996807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203079, 28.833195, 21.565683>,  <39.740726, 28.776445, 22.189741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203079, 28.833195, 21.565683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153465, 29.199238, 21.719149>,  <40.123695, 29.418863, 21.811228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153465, 29.199238, 21.719149>,  <40.203079, 28.833195, 21.565683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153465, 29.199238, 21.719149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982874, 0.166409, -0.079165,
		-0.136289, 0.367271, -0.920075,
		-0.124034, 0.915106, 0.383661,
		40.116257, 29.473770, 21.834248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568676, 29.228445, 21.178453>,  <40.203079, 28.833195, 21.565683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568676, 29.228445, 21.178453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527470, 29.478674, 21.487787>,  <40.502747, 29.628811, 21.673388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527470, 29.478674, 21.487787>,  <40.568676, 29.228445, 21.178453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527470, 29.478674, 21.487787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985613, 0.168933, -0.005363,
		-0.133997, 0.761656, -0.633976,
		-0.103015, 0.625573, 0.773334,
		40.496567, 29.666346, 21.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040798, 29.866453, 21.029503>,  <40.568676, 29.228445, 21.178453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040798, 29.866453, 21.029503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980381, 29.867079, 21.424913>,  <40.944130, 29.867455, 21.662159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980381, 29.867079, 21.424913>,  <41.040798, 29.866453, 21.029503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980381, 29.867079, 21.424913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949477, 0.278523, 0.144634,
		-0.275102, 0.960428, -0.043552,
		-0.151041, 0.001563, 0.988526,
		40.935070, 29.867548, 21.721472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378281, 30.459751, 21.258795>,  <41.040798, 29.866453, 21.029503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378281, 30.459751, 21.258795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341541, 30.218977, 21.576094>,  <41.319496, 30.074512, 21.766472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341541, 30.218977, 21.576094>,  <41.378281, 30.459751, 21.258795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341541, 30.218977, 21.576094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897992, 0.294183, 0.327211,
		-0.430319, 0.742382, 0.513511,
		-0.091849, -0.601934, 0.793246,
		41.313988, 30.038397, 21.814068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675217, 30.845779, 21.930080>,  <41.378281, 30.459751, 21.258795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675217, 30.845779, 21.930080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699535, 30.452919, 22.001284>,  <41.714127, 30.217203, 22.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699535, 30.452919, 22.001284>,  <41.675217, 30.845779, 21.930080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699535, 30.452919, 22.001284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917444, 0.125238, 0.377640,
		-0.393192, 0.140355, 0.908681,
		0.060798, -0.982149, 0.178010,
		41.717773, 30.158274, 22.054688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930904, 30.631651, 22.625507>,  <41.675217, 30.845779, 21.930080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930904, 30.631651, 22.625507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033966, 30.301430, 22.424679>,  <42.095802, 30.103296, 22.304182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033966, 30.301430, 22.424679>,  <41.930904, 30.631651, 22.625507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033966, 30.301430, 22.424679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931992, 0.075226, 0.354588,
		-0.254962, -0.559289, 0.788790,
		0.257655, -0.825553, -0.502073,
		42.111263, 30.053764, 22.274057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313152, 30.088095, 23.015970>,  <41.930904, 30.631651, 22.625507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313152, 30.088095, 23.015970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400585, 30.077240, 22.625793>,  <42.453045, 30.070726, 22.391687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400585, 30.077240, 22.625793>,  <42.313152, 30.088095, 23.015970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400585, 30.077240, 22.625793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923235, 0.329463, 0.197717,
		0.316006, -0.943778, 0.097069,
		0.218581, -0.027138, -0.975441,
		42.466160, 30.069099, 22.333160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835255, 29.622034, 22.822105>,  <42.313152, 30.088095, 23.015970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835255, 29.622034, 22.822105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834885, 29.928797, 22.565403>,  <42.834663, 30.112854, 22.411381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834885, 29.928797, 22.565403>,  <42.835255, 29.622034, 22.822105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834885, 29.928797, 22.565403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995824, 0.059293, 0.069424,
		0.091294, -0.639012, -0.763760,
		-0.000923, 0.766908, -0.641757,
		42.834606, 30.158869, 22.372875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570484, 29.852003, 22.659397>,  <42.835255, 29.622034, 22.822105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570484, 29.852003, 22.659397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460686, 30.142216, 22.406967>,  <43.394806, 30.316343, 22.255510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460686, 30.142216, 22.406967>,  <43.570484, 29.852003, 22.659397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460686, 30.142216, 22.406967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959456, 0.162982, -0.229960,
		-0.063989, -0.668611, -0.740854,
		-0.274500, 0.725531, -0.631074,
		43.378334, 30.359875, 22.217646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329655, 30.674505, 22.663689>,  <43.570484, 29.852003, 22.659397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329655, 30.674505, 22.663689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504494, 30.991009, 22.492645>,  <43.609398, 31.180912, 22.390018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504494, 30.991009, 22.492645>,  <43.329655, 30.674505, 22.663689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504494, 30.991009, 22.492645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464879, 0.208244, 0.860536,
		0.769955, -0.574928, -0.276816,
		0.437101, 0.791260, -0.427610,
		43.635624, 31.228386, 22.364363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103172, 30.634399, 22.526083>,  <43.329655, 30.674505, 22.663689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103172, 30.634399, 22.526083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965897, 31.007904, 22.566696>,  <43.883530, 31.232006, 22.591064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965897, 31.007904, 22.566696>,  <44.103172, 30.634399, 22.526083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965897, 31.007904, 22.566696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491923, 0.086603, 0.866321,
		0.800144, 0.347261, -0.489060,
		-0.343194, 0.933761, 0.101531,
		43.862938, 31.288033, 22.597155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598183, 31.296843, 22.620119>,  <44.103172, 30.634399, 22.526083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598183, 31.296843, 22.620119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243256, 31.299240, 22.804567>,  <44.030300, 31.300678, 22.915236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243256, 31.299240, 22.804567>,  <44.598183, 31.296843, 22.620119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243256, 31.299240, 22.804567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461146, 0.003639, 0.887317,
		0.003639, 0.999975, -0.005992,
		-0.887317, 0.005992, 0.461121,
		43.977062, 31.301037, 22.942904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606125, 31.855349, 23.120569>,  <44.598183, 31.296843, 22.620119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606125, 31.855349, 23.120569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299423, 31.647160, 23.270874>,  <44.115402, 31.522245, 23.361057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299423, 31.647160, 23.270874>,  <44.606125, 31.855349, 23.120569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299423, 31.647160, 23.270874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161404, 0.410243, 0.897580,
		-0.621321, 0.748871, -0.230548,
		-0.766752, -0.520474, 0.375763,
		44.069397, 31.491018, 23.383602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186569, 32.285652, 23.412945>,  <44.606125, 31.855349, 23.120569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186569, 32.285652, 23.412945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116863, 31.936872, 23.595961>,  <44.075039, 31.727606, 23.705770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116863, 31.936872, 23.595961>,  <44.186569, 32.285652, 23.412945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116863, 31.936872, 23.595961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221658, 0.417990, 0.880995,
		-0.959427, 0.254946, 0.120431,
		-0.174267, -0.871945, 0.457541,
		44.064583, 31.675289, 23.733223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707569, 32.399055, 23.915722>,  <44.186569, 32.285652, 23.412945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707569, 32.399055, 23.915722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981544, 32.121899, 24.005835>,  <44.145931, 31.955603, 24.059902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981544, 32.121899, 24.005835>,  <43.707569, 32.399055, 23.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981544, 32.121899, 24.005835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107892, 0.402243, 0.909153,
		-0.720567, -0.598410, 0.350271,
		0.684940, -0.692897, 0.225280,
		44.187027, 31.914030, 24.073418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559494, 32.159203, 24.712351>,  <43.707569, 32.399055, 23.915722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559494, 32.159203, 24.712351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939686, 32.112717, 24.597055>,  <44.167801, 32.084827, 24.527878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939686, 32.112717, 24.597055>,  <43.559494, 32.159203, 24.712351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939686, 32.112717, 24.597055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308719, 0.246365, 0.918693,
		-0.035753, -0.962184, 0.270042,
		0.950481, -0.116213, -0.288237,
		44.224831, 32.077854, 24.510584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844921, 31.784594, 25.238985>,  <43.559494, 32.159203, 24.712351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844921, 31.784594, 25.238985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110237, 32.014351, 25.047100>,  <44.269424, 32.152206, 24.931969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110237, 32.014351, 25.047100>,  <43.844921, 31.784594, 25.238985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110237, 32.014351, 25.047100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438779, 0.220782, 0.871050,
		0.606237, -0.788243, -0.105591,
		0.663286, 0.574394, -0.479711,
		44.309223, 32.186668, 24.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030769, 31.635157, 25.808849>,  <43.844921, 31.784594, 25.238985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030769, 31.635157, 25.808849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158424, 31.497465, 26.162043>,  <44.235016, 31.414850, 26.373959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158424, 31.497465, 26.162043>,  <44.030769, 31.635157, 25.808849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158424, 31.497465, 26.162043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860320, 0.285552, 0.422267,
		-0.397494, -0.894408, -0.205018,
		0.319136, -0.344230, 0.882983,
		44.254166, 31.394196, 26.426937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369530, 31.566010, 26.119045>,  <44.030769, 31.635157, 25.808849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369530, 31.566010, 26.119045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617569, 31.475746, 26.419592>,  <43.766392, 31.421587, 26.599920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617569, 31.475746, 26.419592>,  <43.369530, 31.566010, 26.119045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617569, 31.475746, 26.419592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754211, 0.092168, 0.650132,
		-0.215961, -0.969836, -0.113042,
		0.620102, -0.225661, 0.751366,
		43.803600, 31.408049, 26.645002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026680, 31.215736, 26.714521>,  <43.369530, 31.566010, 26.119045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026680, 31.215736, 26.714521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346458, 31.390947, 26.878969>,  <43.538326, 31.496073, 26.977638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346458, 31.390947, 26.878969>,  <43.026680, 31.215736, 26.714521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346458, 31.390947, 26.878969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586779, 0.422708, 0.690658,
		0.128745, -0.793379, 0.594957,
		0.799447, 0.438027, 0.411117,
		43.586292, 31.522356, 27.002304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075462, 31.089167, 27.404720>,  <43.026680, 31.215736, 26.714521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075462, 31.089167, 27.404720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271854, 31.437136, 27.386055>,  <43.389690, 31.645916, 27.374855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271854, 31.437136, 27.386055>,  <43.075462, 31.089167, 27.404720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271854, 31.437136, 27.386055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544618, 0.348304, 0.762938,
		0.679949, -0.349173, 0.644785,
		0.490979, 0.869921, -0.046663,
		43.419147, 31.698112, 27.372057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500572, 31.240250, 27.988220>,  <43.075462, 31.089167, 27.404720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500572, 31.240250, 27.988220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398838, 31.590380, 27.823725>,  <43.337799, 31.800457, 27.725027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398838, 31.590380, 27.823725>,  <43.500572, 31.240250, 27.988220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398838, 31.590380, 27.823725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440246, 0.273821, 0.855106,
		0.861102, 0.398531, 0.315716,
		-0.254337, 0.875325, -0.411239,
		43.322536, 31.852978, 27.700354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842201, 31.801210, 28.374929>,  <43.500572, 31.240250, 27.988220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842201, 31.801210, 28.374929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492783, 31.875835, 28.195101>,  <43.283131, 31.920610, 28.087204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492783, 31.875835, 28.195101>,  <43.842201, 31.801210, 28.374929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492783, 31.875835, 28.195101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433183, 0.123241, 0.892841,
		0.221977, 0.974683, -0.026840,
		-0.873544, 0.186563, -0.449573,
		43.230721, 31.931805, 28.060228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603115, 32.471123, 28.624216>,  <43.842201, 31.801210, 28.374929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603115, 32.471123, 28.624216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307159, 32.227482, 28.509979>,  <43.129585, 32.081299, 28.441437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307159, 32.227482, 28.509979>,  <43.603115, 32.471123, 28.624216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307159, 32.227482, 28.509979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374612, 0.020421, 0.926957,
		-0.558777, 0.792831, -0.243286,
		-0.739888, -0.609100, -0.285593,
		43.085194, 32.044750, 28.424301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060600, 32.791611, 28.867447>,  <43.603115, 32.471123, 28.624216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060600, 32.791611, 28.867447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935112, 32.417442, 28.802250>,  <42.859821, 32.192940, 28.763132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935112, 32.417442, 28.802250>,  <43.060600, 32.791611, 28.867447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935112, 32.417442, 28.802250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604151, 0.064216, 0.794278,
		-0.732519, 0.347651, -0.585282,
		-0.313716, -0.935422, -0.162994,
		42.840996, 32.136814, 28.753351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349709, 32.825848, 28.952797>,  <43.060600, 32.791611, 28.867447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349709, 32.825848, 28.952797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467525, 32.461468, 29.068319>,  <42.538216, 32.242840, 29.137632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467525, 32.461468, 29.068319>,  <42.349709, 32.825848, 28.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467525, 32.461468, 29.068319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562642, 0.078979, 0.822919,
		-0.772452, -0.404876, -0.489279,
		0.294537, -0.910954, 0.288808,
		42.555885, 32.188183, 29.154963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757622, 32.454720, 29.028223>,  <42.349709, 32.825848, 28.952797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757622, 32.454720, 29.028223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003109, 32.233994, 29.254091>,  <42.150402, 32.101559, 29.389612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003109, 32.233994, 29.254091>,  <41.757622, 32.454720, 29.028223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003109, 32.233994, 29.254091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716910, -0.089881, 0.691347,
		-0.330743, -0.829109, -0.450763,
		0.613717, -0.551815, 0.564669,
		42.187225, 32.068451, 29.423492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329208, 31.921413, 29.236681>,  <41.757622, 32.454720, 29.028223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329208, 31.921413, 29.236681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645241, 31.945477, 29.480698>,  <41.834862, 31.959915, 29.627108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645241, 31.945477, 29.480698>,  <41.329208, 31.921413, 29.236681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645241, 31.945477, 29.480698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611143, -0.000131, 0.791521,
		0.047699, -0.998189, 0.036664,
		0.790082, 0.060162, 0.610042,
		41.882267, 31.963524, 29.663710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132763, 31.487907, 29.784250>,  <41.329208, 31.921413, 29.236681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132763, 31.487907, 29.784250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412388, 31.737736, 29.923521>,  <41.580162, 31.887632, 30.007084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412388, 31.737736, 29.923521>,  <41.132763, 31.487907, 29.784250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412388, 31.737736, 29.923521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477252, 0.044928, 0.877617,
		0.532490, -0.779675, 0.329485,
		0.699060, 0.624570, 0.348178,
		41.622105, 31.925106, 30.027975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337997, 31.176640, 30.443771>,  <41.132763, 31.487907, 29.784250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337997, 31.176640, 30.443771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435535, 31.564415, 30.454519>,  <41.494061, 31.797081, 30.460968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435535, 31.564415, 30.454519>,  <41.337997, 31.176640, 30.443771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435535, 31.564415, 30.454519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608276, 0.131305, 0.782790,
		0.755340, -0.207228, 0.621706,
		0.243849, 0.969441, 0.026872,
		41.508690, 31.855247, 30.462582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147179, 31.604158, 31.022785>,  <41.337997, 31.176640, 30.443771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147179, 31.604158, 31.022785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507885, 31.771420, 30.979042>,  <41.724312, 31.871777, 30.952795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507885, 31.771420, 30.979042>,  <41.147179, 31.604158, 31.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507885, 31.771420, 30.979042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261057, 0.728598, 0.633240,
		0.344469, -0.542489, 0.766190,
		0.901771, 0.418151, -0.109359,
		41.778416, 31.896866, 30.946234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518520, 31.715929, 31.658728>,  <41.147179, 31.604158, 31.022785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518520, 31.715929, 31.658728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619839, 31.988598, 31.384163>,  <41.680630, 32.152199, 31.219423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619839, 31.988598, 31.384163>,  <41.518520, 31.715929, 31.658728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619839, 31.988598, 31.384163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371505, 0.723688, 0.581600,
		0.893210, 0.107686, 0.436555,
		0.253300, 0.681674, -0.686411,
		41.695827, 32.193100, 31.178240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908951, 32.317646, 32.019451>,  <41.518520, 31.715929, 31.658728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908951, 32.317646, 32.019451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663170, 32.396515, 31.713882>,  <41.515701, 32.443836, 31.530542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663170, 32.396515, 31.713882>,  <41.908951, 32.317646, 32.019451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663170, 32.396515, 31.713882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547694, 0.590337, 0.592903,
		0.567871, 0.782705, -0.254746,
		-0.614454, 0.197169, -0.763918,
		41.478832, 32.455666, 31.484707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876415, 33.112682, 31.998381>,  <41.908951, 32.317646, 32.019451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876415, 33.112682, 31.998381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566254, 32.933460, 31.820393>,  <41.380157, 32.825928, 31.713600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566254, 32.933460, 31.820393>,  <41.876415, 33.112682, 31.998381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566254, 32.933460, 31.820393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631425, 0.558049, 0.538408,
		0.007081, 0.698449, -0.715625,
		-0.775405, -0.448051, -0.444970,
		41.333633, 32.799046, 31.686901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484200, 33.656624, 31.683619>,  <41.876415, 33.112682, 31.998381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484200, 33.656624, 31.683619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249912, 33.350327, 31.789879>,  <41.109341, 33.166546, 31.853636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249912, 33.350327, 31.789879>,  <41.484200, 33.656624, 31.683619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249912, 33.350327, 31.789879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586188, 0.626557, 0.513624,
		-0.559751, 0.145116, -0.815855,
		-0.585715, -0.765746, 0.265651,
		41.074196, 33.120602, 31.869574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922958, 34.051762, 31.826784>,  <41.484200, 33.656624, 31.683619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922958, 34.051762, 31.826784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786682, 33.694321, 31.943684>,  <40.704914, 33.479858, 32.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786682, 33.694321, 31.943684>,  <40.922958, 34.051762, 31.826784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786682, 33.694321, 31.943684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679455, 0.448868, 0.580395,
		-0.649822, -0.000833, -0.760086,
		-0.340695, -0.893598, 0.292250,
		40.684475, 33.426243, 32.031361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308674, 34.155960, 32.117226>,  <40.922958, 34.051762, 31.826784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308674, 34.155960, 32.117226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341537, 33.772690, 32.226883>,  <40.361256, 33.542728, 32.292679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341537, 33.772690, 32.226883>,  <40.308674, 34.155960, 32.117226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341537, 33.772690, 32.226883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482324, 0.202490, 0.852268,
		-0.872132, -0.202246, -0.445514,
		0.082155, -0.958172, 0.274146,
		40.366184, 33.485237, 32.309128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607452, 33.816654, 32.146439>,  <40.308674, 34.155960, 32.117226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607452, 33.816654, 32.146439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872898, 33.676384, 32.410755>,  <40.032166, 33.592220, 32.569347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872898, 33.676384, 32.410755>,  <39.607452, 33.816654, 32.146439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872898, 33.676384, 32.410755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636395, 0.199675, 0.745072,
		-0.393222, -0.914963, -0.090662,
		0.663610, -0.350675, 0.660794,
		40.071980, 33.571182, 32.608994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272949, 33.273319, 32.560169>,  <39.607452, 33.816654, 32.146439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272949, 33.273319, 32.560169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577366, 33.394440, 32.789650>,  <39.760017, 33.467113, 32.927338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577366, 33.394440, 32.789650>,  <39.272949, 33.273319, 32.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577366, 33.394440, 32.789650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640032, 0.206367, 0.740116,
		0.105714, -0.930444, 0.350855,
		0.761041, 0.302799, 0.573698,
		39.805679, 33.485279, 32.961758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348766, 32.720215, 32.136528>,  <39.272949, 33.273319, 32.560169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348766, 32.720215, 32.136528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336651, 32.322674, 32.179108>,  <39.329384, 32.084148, 32.204655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336651, 32.322674, 32.179108>,  <39.348766, 32.720215, 32.136528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336651, 32.322674, 32.179108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706840, 0.096593, 0.700748,
		-0.706725, -0.054018, -0.705423,
		-0.030286, -0.993857, 0.106446,
		39.327564, 32.024517, 32.211040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659225, 32.482128, 32.074768>,  <39.348766, 32.720215, 32.136528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659225, 32.482128, 32.074768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890141, 32.270412, 32.323475>,  <39.028687, 32.143383, 32.472698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890141, 32.270412, 32.323475>,  <38.659225, 32.482128, 32.074768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890141, 32.270412, 32.323475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722426, 0.023849, 0.691037,
		-0.380585, -0.848108, -0.368603,
		0.577283, -0.529287, 0.621771,
		39.063324, 32.111626, 32.510006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419109, 33.016430, 31.619064>,  <38.659225, 32.482128, 32.074768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419109, 33.016430, 31.619064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574604, 33.360264, 31.751722>,  <38.667900, 33.566566, 31.831318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574604, 33.360264, 31.751722>,  <38.419109, 33.016430, 31.619064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574604, 33.360264, 31.751722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163894, 0.418733, -0.893197,
		-0.906654, 0.292866, 0.303660,
		0.388739, 0.859588, 0.331647,
		38.691227, 33.618141, 31.851217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349743, 33.427315, 31.106672>,  <38.419109, 33.016430, 31.619064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349743, 33.427315, 31.106672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536526, 33.700054, 31.331896>,  <38.648594, 33.863697, 31.467030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536526, 33.700054, 31.331896>,  <38.349743, 33.427315, 31.106672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536526, 33.700054, 31.331896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061420, 0.610196, -0.789866,
		-0.882147, 0.403413, 0.243054,
		0.466953, 0.681849, 0.563060,
		38.676613, 33.904610, 31.500814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968712, 34.016705, 30.863932>,  <38.349743, 33.427315, 31.106672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968712, 34.016705, 30.863932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316292, 34.084881, 31.049784>,  <38.524841, 34.125786, 31.161295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316292, 34.084881, 31.049784>,  <37.968712, 34.016705, 30.863932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316292, 34.084881, 31.049784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230781, 0.690957, -0.685068,
		-0.437799, 0.702516, 0.561073,
		0.868949, 0.170437, 0.464628,
		38.576977, 34.136013, 31.189173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112309, 34.724785, 31.149141>,  <37.968712, 34.016705, 30.863932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112309, 34.724785, 31.149141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459831, 34.556396, 31.044865>,  <38.668346, 34.455364, 30.982298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459831, 34.556396, 31.044865>,  <38.112309, 34.724785, 31.149141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459831, 34.556396, 31.044865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054321, 0.604346, -0.794868,
		0.492165, 0.676425, 0.547926,
		0.868806, -0.420970, -0.260694,
		38.720474, 34.430107, 30.966656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566727, 35.273872, 31.073664>,  <38.112309, 34.724785, 31.149141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566727, 35.273872, 31.073664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686161, 34.971592, 30.840506>,  <38.757820, 34.790222, 30.700611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686161, 34.971592, 30.840506>,  <38.566727, 35.273872, 31.073664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686161, 34.971592, 30.840506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152653, 0.640707, -0.752457,
		0.942096, 0.135690, 0.306664,
		0.298583, -0.755701, -0.582894,
		38.775734, 34.744881, 30.665638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216312, 35.461987, 30.733856>,  <38.566727, 35.273872, 31.073664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216312, 35.461987, 30.733856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017952, 35.192776, 30.514359>,  <38.898937, 35.031250, 30.382660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017952, 35.192776, 30.514359>,  <39.216312, 35.461987, 30.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017952, 35.192776, 30.514359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020208, 0.640692, -0.767532,
		0.868144, -0.369531, -0.331319,
		-0.495900, -0.673024, -0.548746,
		38.869183, 34.990868, 30.349735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637482, 35.252872, 30.126284>,  <39.216312, 35.461987, 30.733856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637482, 35.252872, 30.126284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239929, 35.264248, 30.083582>,  <39.001400, 35.271072, 30.057961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239929, 35.264248, 30.083582>,  <39.637482, 35.252872, 30.126284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239929, 35.264248, 30.083582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096270, 0.696956, -0.710622,
		0.054192, -0.716549, -0.695428,
		-0.993879, 0.028439, -0.106752,
		38.941765, 35.272781, 30.051556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053318, 34.615299, 30.287750>,  <39.637482, 35.252872, 30.126284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053318, 34.615299, 30.287750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131145, 34.254765, 30.132971>,  <40.177841, 34.038445, 30.040104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131145, 34.254765, 30.132971>,  <40.053318, 34.615299, 30.287750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131145, 34.254765, 30.132971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714637, 0.400477, -0.573509,
		0.671890, -0.164940, 0.722052,
		0.194570, -0.901339, -0.386949,
		40.189518, 33.984364, 30.016886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606049, 35.176285, 30.283401>,  <40.053318, 34.615299, 30.287750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606049, 35.176285, 30.283401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885960, 35.461311, 30.263163>,  <41.053905, 35.632328, 30.251020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885960, 35.461311, 30.263163>,  <40.606049, 35.176285, 30.283401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885960, 35.461311, 30.263163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181053, -0.245426, -0.952358,
		-0.691037, 0.657278, -0.300756,
		0.699777, 0.712568, -0.050596,
		41.095894, 35.675083, 30.247984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289806, 35.867439, 30.251986>,  <40.606049, 35.176285, 30.283401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289806, 35.867439, 30.251986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096947, 35.908310, 30.600029>,  <39.981232, 35.932835, 30.808855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096947, 35.908310, 30.600029>,  <40.289806, 35.867439, 30.251986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096947, 35.908310, 30.600029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635375, 0.724581, 0.266987,
		-0.603184, 0.681574, -0.414278,
		-0.482150, 0.102179, 0.870110,
		39.952301, 35.938965, 30.861061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678257, 36.136490, 30.778885>,  <40.289806, 35.867439, 30.251986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678257, 36.136490, 30.778885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480206, 36.245579, 31.108849>,  <40.361374, 36.311031, 31.306828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480206, 36.245579, 31.108849>,  <40.678257, 36.136490, 30.778885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480206, 36.245579, 31.108849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794427, 0.526519, 0.302759,
		-0.351762, 0.805234, -0.477348,
		-0.495125, 0.272720, 0.824909,
		40.331669, 36.327396, 31.356321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622108, 36.877331, 30.908518>,  <40.678257, 36.136490, 30.778885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622108, 36.877331, 30.908518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643230, 36.708515, 31.270533>,  <40.655903, 36.607227, 31.487741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643230, 36.708515, 31.270533>,  <40.622108, 36.877331, 30.908518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643230, 36.708515, 31.270533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800740, 0.559424, 0.214152,
		-0.596680, 0.713391, 0.367485,
		0.052806, -0.422040, 0.905038,
		40.659073, 36.581902, 31.542044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534409, 37.357464, 31.350475>,  <40.622108, 36.877331, 30.908518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534409, 37.357464, 31.350475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756710, 37.066536, 31.511545>,  <40.890091, 36.891979, 31.608187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756710, 37.066536, 31.511545>,  <40.534409, 37.357464, 31.350475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756710, 37.066536, 31.511545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751505, 0.646637, 0.130771,
		-0.355496, 0.229935, 0.905954,
		0.555755, -0.727317, 0.402674,
		40.923435, 36.848339, 31.632347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701683, 37.574093, 32.107628>,  <40.534409, 37.357464, 31.350475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701683, 37.574093, 32.107628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946659, 37.347317, 31.887264>,  <41.093647, 37.211250, 31.755047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946659, 37.347317, 31.887264>,  <40.701683, 37.574093, 32.107628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946659, 37.347317, 31.887264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764290, 0.602672, 0.229453,
		0.201929, -0.561577, 0.802406,
		0.612443, -0.566938, -0.550904,
		41.130390, 37.177235, 31.721992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233727, 37.261395, 32.460918>,  <40.701683, 37.574093, 32.107628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233727, 37.261395, 32.460918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366783, 37.358341, 32.096367>,  <41.446617, 37.416508, 31.877636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366783, 37.358341, 32.096367>,  <41.233727, 37.261395, 32.460918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366783, 37.358341, 32.096367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787622, 0.460100, 0.409828,
		0.518653, -0.854147, -0.037842,
		0.332642, 0.242364, -0.911377,
		41.466576, 37.431049, 31.822954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954193, 37.108624, 32.118305>,  <41.233727, 37.261395, 32.460918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954193, 37.108624, 32.118305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838303, 37.468899, 31.988804>,  <41.768768, 37.685062, 31.911102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838303, 37.468899, 31.988804>,  <41.954193, 37.108624, 32.118305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838303, 37.468899, 31.988804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841087, 0.401028, 0.362973,
		0.456761, -0.167142, -0.873747,
		-0.289728, 0.900689, -0.323755,
		41.751385, 37.739105, 31.891678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724068, 36.855366, 32.362560>,  <41.954193, 37.108624, 32.118305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724068, 36.855366, 32.362560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066601, 36.991062, 32.206814>,  <43.272121, 37.072479, 32.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066601, 36.991062, 32.206814>,  <42.724068, 36.855366, 32.362560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066601, 36.991062, 32.206814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295156, 0.297177, 0.908058,
		0.423764, -0.892524, 0.154353,
		0.856333, 0.339244, -0.389367,
		43.323502, 37.092834, 32.090004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342041, 36.544479, 32.737831>,  <42.724068, 36.855366, 32.362560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342041, 36.544479, 32.737831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381050, 36.918804, 32.602337>,  <43.404457, 37.143398, 32.521042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381050, 36.918804, 32.602337>,  <43.342041, 36.544479, 32.737831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381050, 36.918804, 32.602337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127062, 0.325863, 0.936839,
		0.987089, -0.134403, -0.087128,
		0.097522, 0.935815, -0.338733,
		43.410305, 37.199547, 32.500717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698994, 35.876465, 32.768497>,  <43.342041, 36.544479, 32.737831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698994, 35.876465, 32.768497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804058, 36.169220, 33.020008>,  <43.867096, 36.344872, 33.170914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804058, 36.169220, 33.020008>,  <43.698994, 35.876465, 32.768497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804058, 36.169220, 33.020008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195184, -0.597879, 0.777460,
		0.944940, -0.326937, -0.014189,
		0.262664, 0.731883, 0.628772,
		43.882858, 36.388786, 33.208641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199738, 35.614292, 33.314667>,  <43.698994, 35.876465, 32.768497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199738, 35.614292, 33.314667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058887, 35.960442, 33.457287>,  <43.974377, 36.168133, 33.542858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058887, 35.960442, 33.457287>,  <44.199738, 35.614292, 33.314667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058887, 35.960442, 33.457287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126076, -0.421333, 0.898100,
		0.927422, 0.271293, 0.257466,
		-0.352127, 0.865378, 0.356550,
		43.953251, 36.220055, 33.564251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541615, 35.804581, 33.915314>,  <44.199738, 35.614292, 33.314667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541615, 35.804581, 33.915314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160419, 35.924484, 33.897652>,  <43.931702, 35.996426, 33.887054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160419, 35.924484, 33.897652>,  <44.541615, 35.804581, 33.915314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160419, 35.924484, 33.897652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091725, -0.146512, 0.984947,
		0.288779, 0.942697, 0.167120,
		-0.952992, 0.299761, -0.044159,
		43.874523, 36.014412, 33.884403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639400, 36.111294, 34.636486>,  <44.541615, 35.804581, 33.915314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639400, 36.111294, 34.636486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475399, 36.473896, 34.676769>,  <44.376999, 36.691460, 34.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475399, 36.473896, 34.676769>,  <44.639400, 36.111294, 34.636486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475399, 36.473896, 34.676769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351573, 0.258960, -0.899631,
		-0.841602, -0.333443, -0.424877,
		-0.410002, 0.906507, 0.100711,
		44.352398, 36.745850, 34.706982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944992, 36.791290, 34.385868>,  <44.639400, 36.111294, 34.636486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944992, 36.791290, 34.385868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964027, 36.740456, 34.782169>,  <44.975449, 36.709957, 35.019951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964027, 36.740456, 34.782169>,  <44.944992, 36.791290, 34.385868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964027, 36.740456, 34.782169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482075, -0.865789, -0.134210,
		0.874837, 0.484003, 0.020064,
		0.047587, -0.127084, 0.990750,
		44.978302, 36.702332, 35.079395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552429, 36.548595, 34.506817>,  <44.944992, 36.791290, 34.385868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552429, 36.548595, 34.506817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408207, 36.465664, 34.870579>,  <45.321674, 36.415905, 35.088837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408207, 36.465664, 34.870579>,  <45.552429, 36.548595, 34.506817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408207, 36.465664, 34.870579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627778, -0.775036, 0.072202,
		0.689852, 0.596937, 0.409598,
		-0.360553, -0.207328, 0.909404,
		45.300041, 36.403465, 35.143398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016487, 36.721775, 35.080357>,  <45.552429, 36.548595, 34.506817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016487, 36.721775, 35.080357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775185, 36.414070, 35.164562>,  <45.630402, 36.229446, 35.215084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775185, 36.414070, 35.164562>,  <46.016487, 36.721775, 35.080357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775185, 36.414070, 35.164562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787620, -0.616136, 0.005555,
		0.125432, 0.169156, 0.977575,
		-0.603259, -0.769261, 0.210513,
		45.594208, 36.183292, 35.227715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156414, 36.455265, 35.782585>,  <46.016487, 36.721775, 35.080357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156414, 36.455265, 35.782585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993095, 36.190994, 35.530617>,  <45.895103, 36.032433, 35.379436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993095, 36.190994, 35.530617>,  <46.156414, 36.455265, 35.782585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993095, 36.190994, 35.530617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874245, -0.481564, -0.061579,
		-0.262663, -0.575846, 0.774215,
		-0.408294, -0.660679, -0.629920,
		45.870605, 35.992790, 35.341640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287766, 35.826248, 36.038361>,  <46.156414, 36.455265, 35.782585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287766, 35.826248, 36.038361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251057, 35.810989, 35.640343>,  <46.229031, 35.801834, 35.401531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251057, 35.810989, 35.640343>,  <46.287766, 35.826248, 36.038361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251057, 35.810989, 35.640343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928173, -0.365195, -0.071602,
		-0.360655, -0.930149, 0.068923,
		-0.091771, -0.038149, -0.995049,
		46.223526, 35.799545, 35.341827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490807, 35.099083, 35.553902>,  <46.287766, 35.826248, 36.038361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490807, 35.099083, 35.553902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556732, 35.422909, 35.328537>,  <46.596287, 35.617207, 35.193317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556732, 35.422909, 35.328537>,  <46.490807, 35.099083, 35.553902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556732, 35.422909, 35.328537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889955, -0.368331, -0.268910,
		-0.425224, -0.457093, -0.781185,
		0.164818, 0.809566, -0.563416,
		46.606178, 35.665779, 35.159512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658802, 34.892708, 34.785866>,  <46.490807, 35.099083, 35.553902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658802, 34.892708, 34.785866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817490, 35.227497, 34.936646>,  <46.912701, 35.428371, 35.027115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817490, 35.227497, 34.936646>,  <46.658802, 34.892708, 34.785866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817490, 35.227497, 34.936646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914851, -0.326843, -0.237112,
		-0.075252, 0.438921, -0.895369,
		0.396719, 0.836972, 0.376952,
		46.936504, 35.478588, 35.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.201717, 35.041279, 34.347733>,  <46.658802, 34.892708, 34.785866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.201717, 35.041279, 34.347733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229599, 35.172974, 34.724400>,  <47.246326, 35.251991, 34.950401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229599, 35.172974, 34.724400>,  <47.201717, 35.041279, 34.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229599, 35.172974, 34.724400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846557, -0.518882, 0.118754,
		0.527714, 0.788900, -0.314888,
		0.069705, 0.329238, 0.941671,
		47.250511, 35.271744, 35.006901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.921909, 35.194412, 34.430206>,  <47.201717, 35.041279, 34.347733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.921909, 35.194412, 34.430206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746204, 35.070267, 34.767422>,  <47.640781, 34.995777, 34.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746204, 35.070267, 34.767422>,  <47.921909, 35.194412, 34.430206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.746204, 35.070267, 34.767422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664383, -0.743886, 0.072311,
		0.604684, 0.591867, 0.532964,
		-0.439263, -0.310367, 0.843043,
		47.614426, 34.977158, 35.020336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.616505, 28.537800, 25.861509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.541473, 28.712162, 26.213600>,  <34.496456, 28.816780, 26.424854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.541473, 28.712162, 26.213600>,  <34.616505, 28.537800, 25.861509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541473, 28.712162, 26.213600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929121, 0.369471, 0.015023,
		-0.318670, 0.820657, -0.474312,
		-0.187574, 0.435905, 0.880229,
		34.485203, 28.842934, 26.477669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917179, 29.062943, 25.697733>,  <34.616505, 28.537800, 25.861509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917179, 29.062943, 25.697733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876167, 29.121527, 26.091288>,  <34.851559, 29.156677, 26.327421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876167, 29.121527, 26.091288>,  <34.917179, 29.062943, 25.697733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876167, 29.121527, 26.091288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878325, 0.477628, 0.020434,
		-0.466940, 0.866269, -0.177611,
		-0.102533, 0.146458, 0.983889,
		34.845406, 29.165464, 26.386454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026150, 29.704933, 25.808119>,  <34.917179, 29.062943, 25.697733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026150, 29.704933, 25.808119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113914, 29.520206, 26.151882>,  <35.166573, 29.409370, 26.358141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113914, 29.520206, 26.151882>,  <35.026150, 29.704933, 25.808119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113914, 29.520206, 26.151882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897638, 0.440667, 0.007629,
		-0.382237, 0.769765, 0.511231,
		0.219410, -0.461816, 0.859410,
		35.179737, 29.381662, 26.409704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277420, 30.208302, 26.190443>,  <35.026150, 29.704933, 25.808119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277420, 30.208302, 26.190443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412113, 29.876810, 26.369247>,  <35.492931, 29.677916, 26.476530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412113, 29.876810, 26.369247>,  <35.277420, 30.208302, 26.190443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412113, 29.876810, 26.369247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914037, 0.401717, 0.056207,
		-0.226152, 0.389656, 0.892762,
		0.336736, -0.828729, 0.447009,
		35.513134, 29.628191, 26.503349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748188, 30.532511, 26.562893>,  <35.277420, 30.208302, 26.190443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748188, 30.532511, 26.562893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840515, 30.143312, 26.562830>,  <35.895912, 29.909794, 26.562792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840515, 30.143312, 26.562830>,  <35.748188, 30.532511, 26.562893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840515, 30.143312, 26.562830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904999, 0.214743, -0.367235,
		0.357353, 0.084621, 0.930128,
		0.230815, -0.972998, -0.000158,
		35.909760, 29.851414, 26.562782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392635, 30.568224, 26.740843>,  <35.748188, 30.532511, 26.562893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392635, 30.568224, 26.740843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403481, 30.193842, 26.600412>,  <36.409988, 29.969213, 26.516155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403481, 30.193842, 26.600412>,  <36.392635, 30.568224, 26.740843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403481, 30.193842, 26.600412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910857, 0.167821, -0.377061,
		0.411830, -0.309555, 0.857072,
		0.027114, -0.935955, -0.351074,
		36.411613, 29.913055, 26.495090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995106, 30.290401, 27.016167>,  <36.392635, 30.568224, 26.740843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995106, 30.290401, 27.016167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881630, 30.068031, 26.703636>,  <36.813545, 29.934608, 26.516119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881630, 30.068031, 26.703636>,  <36.995106, 30.290401, 27.016167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881630, 30.068031, 26.703636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904499, 0.115450, -0.410552,
		0.318441, -0.823175, 0.470084,
		-0.283685, -0.555927, -0.781325,
		36.796524, 29.901253, 26.469238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432793, 29.741566, 26.926937>,  <36.995106, 30.290401, 27.016167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432793, 29.741566, 26.926937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270821, 29.767015, 26.562084>,  <37.173637, 29.782286, 26.343172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270821, 29.767015, 26.562084>,  <37.432793, 29.741566, 26.926937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270821, 29.767015, 26.562084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914153, 0.007530, -0.405300,
		-0.018919, -0.997945, -0.061212,
		-0.404928, 0.063625, -0.912132,
		37.149342, 29.786102, 26.288445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798363, 29.311043, 26.471338>,  <37.432793, 29.741566, 26.926937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798363, 29.311043, 26.471338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611649, 29.578424, 26.239725>,  <37.499622, 29.738853, 26.100758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611649, 29.578424, 26.239725>,  <37.798363, 29.311043, 26.471338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611649, 29.578424, 26.239725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844079, 0.141364, -0.517248,
		-0.263903, -0.730194, -0.630216,
		-0.466782, 0.668456, -0.579035,
		37.471615, 29.778961, 26.066015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024757, 29.103659, 25.852337>,  <37.798363, 29.311043, 26.471338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024757, 29.103659, 25.852337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872395, 29.467781, 25.787529>,  <37.780975, 29.686255, 25.748644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872395, 29.467781, 25.787529>,  <38.024757, 29.103659, 25.852337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872395, 29.467781, 25.787529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829055, 0.258672, -0.495739,
		-0.409364, -0.323154, -0.853225,
		-0.380906, 0.910308, -0.162022,
		37.758121, 29.740873, 25.738922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006393, 29.135899, 25.174459>,  <38.024757, 29.103659, 25.852337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006393, 29.135899, 25.174459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036186, 29.503181, 25.330072>,  <38.054062, 29.723551, 25.423439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036186, 29.503181, 25.330072>,  <38.006393, 29.135899, 25.174459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036186, 29.503181, 25.330072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918531, 0.088725, -0.385266,
		-0.388271, 0.386031, -0.836795,
		0.074480, 0.918209, 0.389030,
		38.058529, 29.778645, 25.446781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241821, 29.487204, 24.643051>,  <38.006393, 29.135899, 25.174459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241821, 29.487204, 24.643051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325508, 29.682802, 24.981781>,  <38.375721, 29.800161, 25.185019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325508, 29.682802, 24.981781>,  <38.241821, 29.487204, 24.643051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325508, 29.682802, 24.981781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895954, 0.251098, -0.366355,
		-0.391782, 0.835363, -0.385584,
		0.209220, 0.488997, 0.846823,
		38.388275, 29.829502, 25.235828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674919, 29.990046, 24.413759>,  <38.241821, 29.487204, 24.643051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674919, 29.990046, 24.413759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753040, 29.990276, 24.806057>,  <38.799911, 29.990416, 25.041435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753040, 29.990276, 24.806057>,  <38.674919, 29.990046, 24.413759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753040, 29.990276, 24.806057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979142, 0.057003, -0.195017,
		-0.056018, 0.998374, 0.010567,
		0.195303, 0.000578, 0.980743,
		38.811630, 29.990450, 25.100281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948528, 30.607639, 24.701813>,  <38.674919, 29.990046, 24.413759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948528, 30.607639, 24.701813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058701, 30.320314, 24.957363>,  <39.124805, 30.147921, 25.110693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058701, 30.320314, 24.957363>,  <38.948528, 30.607639, 24.701813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058701, 30.320314, 24.957363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960890, 0.225595, -0.160618,
		-0.028754, 0.658131, 0.752354,
		0.275435, -0.718311, 0.638878,
		39.141331, 30.104820, 25.149027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455605, 30.889174, 24.974045>,  <38.948528, 30.607639, 24.701813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455605, 30.889174, 24.974045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528503, 30.519304, 25.107771>,  <39.572243, 30.297382, 25.188007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528503, 30.519304, 25.107771>,  <39.455605, 30.889174, 24.974045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528503, 30.519304, 25.107771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982678, 0.182911, -0.029799,
		-0.033596, 0.333955, 0.941990,
		0.182251, -0.924672, 0.334315,
		39.583179, 30.241903, 25.208065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025642, 30.988335, 25.355570>,  <39.455605, 30.889174, 24.974045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025642, 30.988335, 25.355570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024796, 30.591541, 25.305035>,  <40.024288, 30.353464, 25.274714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024796, 30.591541, 25.305035>,  <40.025642, 30.988335, 25.355570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024796, 30.591541, 25.305035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997646, 0.006566, -0.068262,
		0.068544, -0.126184, 0.989636,
		-0.002115, -0.991985, -0.126337,
		40.024162, 30.293945, 25.267134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660286, 30.827040, 25.734800>,  <40.025642, 30.988335, 25.355570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660286, 30.827040, 25.734800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.586365, 30.516273, 25.494053>,  <40.542011, 30.329813, 25.349604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.586365, 30.516273, 25.494053>,  <40.660286, 30.827040, 25.734800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586365, 30.516273, 25.494053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982442, -0.130113, -0.133708,
		0.025568, -0.616013, 0.787321,
		-0.184806, -0.776916, -0.601870,
		40.530922, 30.283199, 25.313492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189922, 30.393503, 25.854868>,  <40.660286, 30.827040, 25.734800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189922, 30.393503, 25.854868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.045238, 30.248508, 25.511293>,  <40.958427, 30.161512, 25.305149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.045238, 30.248508, 25.511293>,  <41.189922, 30.393503, 25.854868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045238, 30.248508, 25.511293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918623, -0.295755, -0.262030,
		-0.159052, -0.883817, 0.439967,
		-0.361709, -0.362487, -0.858935,
		40.936726, 30.139763, 25.253613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492348, 29.818039, 25.873934>,  <41.189922, 30.393503, 25.854868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492348, 29.818039, 25.873934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381027, 29.897787, 25.498104>,  <41.314236, 29.945635, 25.272606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381027, 29.897787, 25.498104>,  <41.492348, 29.818039, 25.873934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381027, 29.897787, 25.498104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910352, -0.257185, -0.324214,
		-0.306283, -0.945573, -0.109922,
		-0.278298, 0.199369, -0.939576,
		41.297539, 29.957598, 25.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561832, 29.133892, 25.423731>,  <41.492348, 29.818039, 25.873934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561832, 29.133892, 25.423731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606579, 29.470032, 25.211580>,  <41.633427, 29.671717, 25.084290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606579, 29.470032, 25.211580>,  <41.561832, 29.133892, 25.423731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606579, 29.470032, 25.211580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935329, -0.269304, -0.229423,
		-0.335628, -0.470411, -0.816130,
		0.111864, 0.840350, -0.530375,
		41.640137, 29.722137, 25.052467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807011, 28.904640, 24.719589>,  <41.561832, 29.133892, 25.423731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807011, 28.904640, 24.719589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.902985, 29.286945, 24.787645>,  <41.960567, 29.516329, 24.828480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.902985, 29.286945, 24.787645>,  <41.807011, 28.904640, 24.719589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902985, 29.286945, 24.787645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946012, -0.190849, -0.261989,
		-0.217928, 0.223817, -0.949955,
		0.239935, 0.955763, 0.170142,
		41.974964, 29.573675, 24.838688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007164, 28.260956, 24.267807>,  <41.807011, 28.904640, 24.719589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007164, 28.260956, 24.267807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.023849, 28.258106, 23.868166>,  <42.033863, 28.256397, 23.628382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.023849, 28.258106, 23.868166>,  <42.007164, 28.260956, 24.267807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023849, 28.258106, 23.868166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935338, -0.351861, -0.036546,
		-0.351286, 0.936025, -0.021341,
		0.041717, -0.007123, -0.999104,
		42.036366, 28.255970, 23.568436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468365, 28.551428, 24.165470>,  <42.007164, 28.260956, 24.267807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468365, 28.551428, 24.165470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.526810, 28.373499, 23.812021>,  <41.561878, 28.266743, 23.599953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.526810, 28.373499, 23.812021>,  <41.468365, 28.551428, 24.165470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526810, 28.373499, 23.812021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957268, -0.288917, -0.012851,
		-0.249576, 0.847739, -0.468029,
		0.146116, -0.444821, -0.883620,
		41.570644, 28.240053, 23.546936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951824, 28.666279, 23.779972>,  <41.468365, 28.551428, 24.165470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951824, 28.666279, 23.779972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.068165, 28.350927, 23.563135>,  <41.137970, 28.161716, 23.433033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.068165, 28.350927, 23.563135>,  <40.951824, 28.666279, 23.779972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068165, 28.350927, 23.563135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956766, -0.238609, -0.166325,
		0.001780, 0.567030, -0.823695,
		0.290852, -0.788380, -0.542090,
		41.155422, 28.114414, 23.400507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650200, 28.679222, 23.202101>,  <40.951824, 28.666279, 23.779972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650200, 28.679222, 23.202101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706112, 28.283161, 23.205114>,  <40.739658, 28.045525, 23.206923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706112, 28.283161, 23.205114>,  <40.650200, 28.679222, 23.202101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706112, 28.283161, 23.205114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961603, -0.137558, -0.237480,
		0.236178, 0.025950, -0.971363,
		0.139781, -0.990153, 0.007535,
		40.748047, 27.986115, 23.207375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224239, 28.496202, 22.676708>,  <40.650200, 28.679222, 23.202101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224239, 28.496202, 22.676708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.290264, 28.162149, 22.886587>,  <40.329880, 27.961718, 23.012514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.290264, 28.162149, 22.886587>,  <40.224239, 28.496202, 22.676708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290264, 28.162149, 22.886587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970202, -0.233165, -0.065900,
		0.177376, -0.498186, -0.848733,
		0.165064, -0.835131, 0.524699,
		40.339783, 27.911610, 23.043997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945442, 27.994530, 22.370453>,  <40.224239, 28.496202, 22.676708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945442, 27.994530, 22.370453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964458, 27.839359, 22.738638>,  <39.975868, 27.746258, 22.959549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964458, 27.839359, 22.738638>,  <39.945442, 27.994530, 22.370453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964458, 27.839359, 22.738638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932713, -0.347026, -0.098076,
		0.357471, -0.853865, -0.378323,
		0.047544, -0.387926, 0.920463,
		39.978722, 27.722982, 23.014776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785275, 27.234274, 22.370098>,  <39.945442, 27.994530, 22.370453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785275, 27.234274, 22.370098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738407, 27.343927, 22.751909>,  <39.710285, 27.409719, 22.980995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738407, 27.343927, 22.751909>,  <39.785275, 27.234274, 22.370098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738407, 27.343927, 22.751909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877172, -0.479240, 0.029958,
		0.465661, -0.833775, 0.296614,
		-0.117171, 0.274132, 0.954528,
		39.703255, 27.426167, 23.038267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442757, 26.651773, 22.784744>,  <39.785275, 27.234274, 22.370098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442757, 26.651773, 22.784744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370159, 26.970692, 23.015007>,  <39.326599, 27.162043, 23.153164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370159, 26.970692, 23.015007>,  <39.442757, 26.651773, 22.784744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370159, 26.970692, 23.015007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918306, -0.346834, 0.190840,
		0.351813, -0.493992, 0.795110,
		-0.181497, 0.797294, 0.575657,
		39.315708, 27.209881, 23.187704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911057, 26.439175, 23.197161>,  <39.442757, 26.651773, 22.784744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911057, 26.439175, 23.197161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.933987, 26.830692, 23.275824>,  <38.947746, 27.065603, 23.323021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.933987, 26.830692, 23.275824>,  <38.911057, 26.439175, 23.197161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933987, 26.830692, 23.275824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976194, 0.013680, 0.216466,
		0.209185, -0.204385, 0.956278,
		0.057325, 0.978795, 0.196658,
		38.951183, 27.124331, 23.334822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581303, 26.498009, 23.905634>,  <38.911057, 26.439175, 23.197161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581303, 26.498009, 23.905634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567478, 26.851540, 23.719019>,  <38.559181, 27.063658, 23.607050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567478, 26.851540, 23.719019>,  <38.581303, 26.498009, 23.905634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567478, 26.851540, 23.719019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972226, 0.078385, 0.220527,
		0.231476, 0.461203, 0.856569,
		-0.034566, 0.883826, -0.466538,
		38.557110, 27.116688, 23.579058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128548, 26.986227, 24.362980>,  <38.581303, 26.498009, 23.905634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128548, 26.986227, 24.362980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156132, 27.172453, 24.010052>,  <38.172684, 27.284189, 23.798294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156132, 27.172453, 24.010052>,  <38.128548, 26.986227, 24.362980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156132, 27.172453, 24.010052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919683, 0.372366, 0.124601,
		0.386557, 0.802865, 0.453853,
		0.068962, 0.465566, -0.882322,
		38.176819, 27.312122, 23.745356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118198, 27.809515, 24.453457>,  <38.128548, 26.986227, 24.362980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118198, 27.809515, 24.453457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981640, 27.657623, 24.109537>,  <37.899704, 27.566488, 23.903185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981640, 27.657623, 24.109537>,  <38.118198, 27.809515, 24.453457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981640, 27.657623, 24.109537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927847, 0.282288, 0.243749,
		0.150151, 0.880976, -0.448704,
		-0.341401, -0.379730, -0.859797,
		37.879219, 27.543705, 23.851599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543339, 28.162148, 24.375542>,  <38.118198, 27.809515, 24.453457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543339, 28.162148, 24.375542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478649, 27.883003, 24.096447>,  <37.439835, 27.715517, 23.928991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478649, 27.883003, 24.096447>,  <37.543339, 28.162148, 24.375542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478649, 27.883003, 24.096447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985035, 0.071459, 0.156845,
		-0.059596, 0.712659, -0.698974,
		-0.161725, -0.697861, -0.697735,
		37.430130, 27.673645, 23.887127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925858, 28.332888, 23.966860>,  <37.543339, 28.162148, 24.375542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925858, 28.332888, 23.966860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944870, 27.944109, 23.874722>,  <36.956276, 27.710842, 23.819439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944870, 27.944109, 23.874722>,  <36.925858, 28.332888, 23.966860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944870, 27.944109, 23.874722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980682, -0.089211, 0.174080,
		-0.189747, 0.217624, -0.957411,
		0.047528, -0.971947, -0.230347,
		36.959129, 27.652525, 23.805618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457428, 28.311317, 23.459908>,  <36.925858, 28.332888, 23.966860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457428, 28.311317, 23.459908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539455, 27.953096, 23.617859>,  <36.588673, 27.738163, 23.712629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539455, 27.953096, 23.617859>,  <36.457428, 28.311317, 23.459908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539455, 27.953096, 23.617859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974447, -0.149033, 0.168055,
		-0.091653, -0.419251, -0.903232,
		0.205069, -0.895555, 0.394878,
		36.600975, 27.684429, 23.736322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994476, 27.861187, 23.126915>,  <36.457428, 28.311317, 23.459908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994476, 27.861187, 23.126915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105495, 27.677811, 23.464624>,  <36.172108, 27.567785, 23.667250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105495, 27.677811, 23.464624>,  <35.994476, 27.861187, 23.126915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105495, 27.677811, 23.464624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957485, -0.203961, 0.204016,
		0.078670, -0.865004, -0.495560,
		0.277549, -0.458442, 0.844274,
		36.188759, 27.540277, 23.717907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599174, 27.213245, 23.112371>,  <35.994476, 27.861187, 23.126915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599174, 27.213245, 23.112371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709469, 27.299427, 23.487082>,  <35.775646, 27.351135, 23.711908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709469, 27.299427, 23.487082>,  <35.599174, 27.213245, 23.112371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709469, 27.299427, 23.487082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942575, -0.130486, 0.307449,
		0.188478, -0.967756, 0.167105,
		0.275731, 0.215457, 0.936777,
		35.792187, 27.364063, 23.768114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245323, 26.742056, 23.413862>,  <35.599174, 27.213245, 23.112371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245323, 26.742056, 23.413862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341469, 26.999075, 23.704891>,  <35.399155, 27.153286, 23.879509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341469, 26.999075, 23.704891>,  <35.245323, 26.742056, 23.413862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341469, 26.999075, 23.704891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874565, -0.181848, 0.449519,
		0.421144, -0.744356, 0.518239,
		0.240362, 0.642546, 0.727572,
		35.413578, 27.191839, 23.923162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998745, 26.453573, 24.063175>,  <35.245323, 26.742056, 23.413862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998745, 26.453573, 24.063175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032967, 26.843517, 24.145473>,  <35.053501, 27.077484, 24.194853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032967, 26.843517, 24.145473>,  <34.998745, 26.453573, 24.063175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032967, 26.843517, 24.145473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885523, -0.020246, 0.464154,
		0.456650, -0.221903, 0.861528,
		0.085554, 0.974858, 0.205746,
		35.058632, 27.135975, 24.207197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.724674, 26.484381, 24.793774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696007, 26.850933, 24.636236>,  <34.678806, 27.070864, 24.541714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696007, 26.850933, 24.636236>,  <34.724674, 26.484381, 24.793774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696007, 26.850933, 24.636236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827079, 0.166097, 0.536984,
		0.557497, 0.364225, 0.746014,
		-0.071672, 0.916380, -0.393842,
		34.674503, 27.125847, 24.518084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527424, 26.932928, 25.332476>,  <34.724674, 26.484381, 24.793774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527424, 26.932928, 25.332476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.426300, 27.101707, 24.984213>,  <34.365623, 27.202974, 24.775255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.426300, 27.101707, 24.984213>,  <34.527424, 26.932928, 25.332476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426300, 27.101707, 24.984213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792904, 0.425316, 0.436359,
		0.554426, 0.800665, 0.227039,
		-0.252814, 0.421949, -0.870657,
		34.350456, 27.228292, 24.723015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208496, 27.507120, 25.550642>,  <34.527424, 26.932928, 25.332476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208496, 27.507120, 25.550642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134926, 27.488527, 25.157906>,  <34.090782, 27.477371, 24.922264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134926, 27.488527, 25.157906>,  <34.208496, 27.507120, 25.550642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134926, 27.488527, 25.157906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940972, 0.297086, 0.162207,
		0.284152, 0.953719, -0.098379,
		-0.183927, -0.046480, -0.981840,
		34.079746, 27.474583, 24.863354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009071, 28.140408, 25.361450>,  <34.208496, 27.507120, 25.550642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009071, 28.140408, 25.361450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858189, 27.852024, 25.128920>,  <33.767658, 27.678995, 24.989401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858189, 27.852024, 25.128920>,  <34.009071, 28.140408, 25.361450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858189, 27.852024, 25.128920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926070, 0.286467, 0.245623,
		-0.010553, 0.630997, -0.775714,
		-0.377204, -0.720957, -0.581324,
		33.745026, 27.635736, 24.954523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370895, 28.454027, 25.239042>,  <34.009071, 28.140408, 25.361450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370895, 28.454027, 25.239042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321312, 28.084219, 25.094879>,  <33.291561, 27.862333, 25.008381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321312, 28.084219, 25.094879>,  <33.370895, 28.454027, 25.239042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321312, 28.084219, 25.094879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979155, 0.055070, 0.195509,
		-0.160904, 0.377131, -0.912076,
		-0.123961, -0.924521, -0.360408,
		33.284122, 27.806862, 24.986757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668007, 28.493294, 24.903919>,  <33.370895, 28.454027, 25.239042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668007, 28.493294, 24.903919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724216, 28.100155, 24.951694>,  <32.757942, 27.864271, 24.980360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724216, 28.100155, 24.951694>,  <32.668007, 28.493294, 24.903919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724216, 28.100155, 24.951694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974885, -0.116301, 0.189928,
		-0.172779, -0.143128, -0.974506,
		0.140520, -0.982847, 0.119440,
		32.766373, 27.805302, 24.987526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168613, 28.164734, 24.526157>,  <32.668007, 28.493294, 24.903919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168613, 28.164734, 24.526157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.271053, 27.888620, 24.796837>,  <32.332516, 27.722952, 24.959246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.271053, 27.888620, 24.796837>,  <32.168613, 28.164734, 24.526157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271053, 27.888620, 24.796837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965404, -0.218178, 0.142805,
		0.049065, -0.689862, -0.722277,
		0.256101, -0.690282, 0.676700,
		32.347885, 27.681536, 24.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640072, 27.618414, 24.471855>,  <32.168613, 28.164734, 24.526157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640072, 27.618414, 24.471855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794357, 27.567966, 24.837439>,  <31.886929, 27.537699, 25.056789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794357, 27.567966, 24.837439>,  <31.640072, 27.618414, 24.471855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794357, 27.567966, 24.837439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921856, -0.092985, 0.376213,
		0.037536, -0.987648, -0.152130,
		0.385711, -0.126120, 0.913959,
		31.910070, 27.530130, 25.111626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313152, 27.075338, 24.748772>,  <31.640072, 27.618414, 24.471855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313152, 27.075338, 24.748772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.471930, 27.285360, 25.049904>,  <31.567196, 27.411373, 25.230583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.471930, 27.285360, 25.049904>,  <31.313152, 27.075338, 24.748772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471930, 27.285360, 25.049904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902971, 0.076342, 0.422866,
		0.164555, -0.847638, 0.504412,
		0.396945, 0.525054, 0.752830,
		31.591013, 27.442877, 25.275753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213926, 26.681877, 25.371883>,  <31.313152, 27.075338, 24.748772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213926, 26.681877, 25.371883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.267557, 27.056881, 25.500320>,  <31.299736, 27.281883, 25.577383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.267557, 27.056881, 25.500320>,  <31.213926, 26.681877, 25.371883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267557, 27.056881, 25.500320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946773, 0.025497, 0.320891,
		0.292651, -0.347027, 0.891026,
		0.134077, 0.937508, 0.321094,
		31.307779, 27.338133, 25.596649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058743, 26.678383, 26.050533>,  <31.213926, 26.681877, 25.371883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058743, 26.678383, 26.050533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028725, 27.056227, 25.922735>,  <31.010714, 27.282934, 25.846056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028725, 27.056227, 25.922735>,  <31.058743, 26.678383, 26.050533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028725, 27.056227, 25.922735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966254, 0.010290, 0.257385,
		0.246417, 0.328031, 0.911962,
		-0.075046, 0.944611, -0.319497,
		31.006210, 27.339609, 25.826885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564259, 26.992771, 26.530991>,  <31.058743, 26.678383, 26.050533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564259, 26.992771, 26.530991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577629, 27.277594, 26.250460>,  <30.585651, 27.448486, 26.082142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577629, 27.277594, 26.250460>,  <30.564259, 26.992771, 26.530991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577629, 27.277594, 26.250460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977464, 0.169636, 0.125644,
		0.208436, 0.681323, 0.701679,
		0.033426, 0.712056, -0.701327,
		30.587656, 27.491211, 26.040062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078438, 27.499912, 26.772127>,  <30.564259, 26.992771, 26.530991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078438, 27.499912, 26.772127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098810, 27.578161, 26.380384>,  <30.111034, 27.625111, 26.145340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098810, 27.578161, 26.380384>,  <30.078438, 27.499912, 26.772127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098810, 27.578161, 26.380384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997847, -0.030607, -0.058008,
		-0.041323, 0.980201, 0.193643,
		0.050933, 0.195623, -0.979356,
		30.114090, 27.636848, 26.086578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724518, 28.191601, 26.592121>,  <30.078438, 27.499912, 26.772127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724518, 28.191601, 26.592121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724213, 28.004593, 26.238527>,  <29.724030, 27.892389, 26.026371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724213, 28.004593, 26.238527>,  <29.724518, 28.191601, 26.592121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724213, 28.004593, 26.238527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987582, 0.139231, -0.072785,
		0.157106, 0.872950, -0.461818,
		-0.000762, -0.467518, -0.883983,
		29.723984, 27.864338, 25.973331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507431, 28.714296, 25.996389>,  <29.724518, 28.191601, 26.592121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507431, 28.714296, 25.996389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427000, 28.342300, 25.873306>,  <29.378742, 28.119102, 25.799458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427000, 28.342300, 25.873306>,  <29.507431, 28.714296, 25.996389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427000, 28.342300, 25.873306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925015, 0.283638, -0.252778,
		0.322359, 0.233807, -0.917289,
		-0.201077, -0.929991, -0.307708,
		29.366676, 28.063303, 25.780994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097488, 28.826794, 25.471794>,  <29.507431, 28.714296, 25.996389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097488, 28.826794, 25.471794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.036852, 28.439783, 25.552698>,  <29.000471, 28.207577, 25.601240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.036852, 28.439783, 25.552698>,  <29.097488, 28.826794, 25.471794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036852, 28.439783, 25.552698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926544, 0.067816, -0.370023,
		0.344291, -0.243495, -0.906738,
		-0.151590, -0.967528, 0.202261,
		28.991375, 28.149525, 25.613377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858351, 28.571461, 24.869001>,  <29.097488, 28.826794, 25.471794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858351, 28.571461, 24.869001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734152, 28.309845, 25.144920>,  <28.659632, 28.152876, 25.310472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734152, 28.309845, 25.144920>,  <28.858351, 28.571461, 24.869001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734152, 28.309845, 25.144920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905318, -0.017775, -0.424363,
		0.289811, -0.756251, -0.586595,
		-0.310498, -0.654040, 0.689799,
		28.641003, 28.113634, 25.351860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328259, 28.036709, 24.512516>,  <28.858351, 28.571461, 24.869001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328259, 28.036709, 24.512516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280590, 28.023569, 24.909449>,  <28.251989, 28.015686, 25.147608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280590, 28.023569, 24.909449>,  <28.328259, 28.036709, 24.512516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280590, 28.023569, 24.909449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982003, 0.151391, -0.112921,
		-0.146520, -0.987928, -0.050301,
		-0.119173, -0.032850, 0.992330,
		28.244839, 28.013714, 25.207148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900589, 27.416346, 24.608755>,  <28.328259, 28.036709, 24.512516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900589, 27.416346, 24.608755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.858130, 27.686308, 24.900846>,  <27.832653, 27.848286, 25.076101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.858130, 27.686308, 24.900846>,  <27.900589, 27.416346, 24.608755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858130, 27.686308, 24.900846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950209, 0.147527, -0.274480,
		-0.292977, -0.723005, 0.625642,
		-0.106151, 0.674907, 0.730228,
		27.826284, 27.888781, 25.119915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237040, 27.227135, 24.924559>,  <27.900589, 27.416346, 24.608755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237040, 27.227135, 24.924559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.294241, 27.600986, 25.054798>,  <27.328562, 27.825298, 25.132942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.294241, 27.600986, 25.054798>,  <27.237040, 27.227135, 24.924559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294241, 27.600986, 25.054798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937759, 0.233151, -0.257388,
		-0.316477, -0.268528, 0.909800,
		0.143005, 0.934630, 0.325601,
		27.337143, 27.881376, 25.152479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617481, 27.345503, 25.165321>,  <27.237040, 27.227135, 24.924559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617481, 27.345503, 25.165321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759359, 27.719091, 25.147924>,  <26.844486, 27.943245, 25.137487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759359, 27.719091, 25.147924>,  <26.617481, 27.345503, 25.165321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759359, 27.719091, 25.147924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931038, 0.348547, -0.108092,
		-0.085796, 0.078832, 0.993189,
		0.354694, 0.933971, -0.043491,
		26.865768, 27.999283, 25.134876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236317, 27.757027, 25.685513>,  <26.617481, 27.345503, 25.165321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236317, 27.757027, 25.685513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395571, 28.027285, 25.437321>,  <26.491123, 28.189440, 25.288406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395571, 28.027285, 25.437321>,  <26.236317, 27.757027, 25.685513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395571, 28.027285, 25.437321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910629, 0.372686, -0.178492,
		0.110647, 0.636090, 0.763641,
		0.398135, 0.675644, -0.620478,
		26.515011, 28.229979, 25.251177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500963, 28.143358, 26.314531>,  <26.236317, 27.757027, 25.685513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500963, 28.143358, 26.314531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.352182, 28.230747, 25.953661>,  <26.262913, 28.283180, 25.737139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.352182, 28.230747, 25.953661>,  <26.500963, 28.143358, 26.314531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352182, 28.230747, 25.953661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918847, 0.051342, 0.391260,
		0.131798, 0.974492, 0.181645,
		-0.371953, 0.218471, -0.902176,
		26.240597, 28.296289, 25.683008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395565, 27.640333, 26.890987>,  <26.500963, 28.143358, 26.314531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395565, 27.640333, 26.890987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.311966, 27.649374, 27.282049>,  <26.261806, 27.654799, 27.516685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.311966, 27.649374, 27.282049>,  <26.395565, 27.640333, 26.890987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311966, 27.649374, 27.282049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933385, -0.302857, -0.192534,
		0.291739, -0.952768, 0.084391,
		-0.208998, 0.022600, 0.977655,
		26.249266, 27.656155, 27.575346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032318, 27.294088, 27.338600>,  <26.395565, 27.640333, 26.890987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032318, 27.294088, 27.338600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.360640, 27.142818, 27.167364>,  <26.557632, 27.052055, 27.064623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.360640, 27.142818, 27.167364>,  <26.032318, 27.294088, 27.338600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360640, 27.142818, 27.167364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571180, -0.535926, -0.621720,
		0.005695, 0.754828, -0.655898,
		0.820805, -0.378176, -0.428091,
		26.606880, 27.029366, 27.038937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755816, 27.254686, 27.549974>,  <26.032318, 27.294088, 27.338600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755816, 27.254686, 27.549974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.864729, 27.260994, 27.934811>,  <26.930077, 27.264778, 28.165712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.864729, 27.260994, 27.934811>,  <26.755816, 27.254686, 27.549974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864729, 27.260994, 27.934811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855549, 0.453601, -0.249564,
		-0.440339, 0.891065, 0.110017,
		0.272281, 0.015768, 0.962089,
		26.946413, 27.265724, 28.223436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968439, 27.914938, 27.721033>,  <26.755816, 27.254686, 27.549974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968439, 27.914938, 27.721033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.156935, 27.706461, 28.005651>,  <27.270033, 27.581375, 28.176422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.156935, 27.706461, 28.005651>,  <26.968439, 27.914938, 27.721033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156935, 27.706461, 28.005651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862830, 0.439714, -0.249351,
		-0.182916, 0.731445, 0.656909,
		0.471239, -0.521190, 0.711544,
		27.298306, 27.550104, 28.219114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250467, 28.394760, 28.270290>,  <26.968439, 27.914938, 27.721033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250467, 28.394760, 28.270290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.478922, 28.066809, 28.286291>,  <27.615993, 27.870037, 28.295891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.478922, 28.066809, 28.286291>,  <27.250467, 28.394760, 28.270290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478922, 28.066809, 28.286291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808666, 0.553618, -0.198912,
		0.140940, 0.145953, 0.979201,
		0.571135, -0.819881, 0.040000,
		27.650263, 27.820845, 28.298290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829308, 28.615620, 28.583542>,  <27.250467, 28.394760, 28.270290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829308, 28.615620, 28.583542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.953533, 28.268406, 28.428589>,  <28.028069, 28.060078, 28.335617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.953533, 28.268406, 28.428589>,  <27.829308, 28.615620, 28.583542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953533, 28.268406, 28.428589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909623, 0.389693, -0.143966,
		0.275928, -0.307662, 0.910609,
		0.310565, -0.868034, -0.387383,
		28.046703, 28.007996, 28.312374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395481, 28.646553, 28.928165>,  <27.829308, 28.615620, 28.583542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395481, 28.646553, 28.928165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443453, 28.379499, 28.634258>,  <28.472237, 28.219267, 28.457914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443453, 28.379499, 28.634258>,  <28.395481, 28.646553, 28.928165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443453, 28.379499, 28.634258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906855, 0.374862, -0.192592,
		0.404018, -0.643231, 0.650403,
		0.119931, -0.667632, -0.734768,
		28.479431, 28.179211, 28.413828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027433, 28.305368, 29.060314>,  <28.395481, 28.646553, 28.928165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027433, 28.305368, 29.060314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.967358, 28.281950, 28.665545>,  <28.931313, 28.267899, 28.428682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.967358, 28.281950, 28.665545>,  <29.027433, 28.305368, 29.060314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967358, 28.281950, 28.665545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943027, 0.291287, -0.160788,
		0.296891, -0.954843, 0.011461,
		-0.150189, -0.058545, -0.986923,
		28.922300, 28.264387, 28.369469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667648, 28.082935, 28.844946>,  <29.027433, 28.305368, 29.060314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667648, 28.082935, 28.844946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.523390, 28.218493, 28.497364>,  <29.436834, 28.299828, 28.288815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.523390, 28.218493, 28.497364>,  <29.667648, 28.082935, 28.844946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523390, 28.218493, 28.497364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928090, 0.037862, -0.370425,
		-0.092635, -0.940062, -0.328180,
		-0.360648, 0.338895, -0.868955,
		29.415195, 28.320162, 28.236677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054729, 27.760527, 28.335527>,  <29.667648, 28.082935, 28.844946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054729, 27.760527, 28.335527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.900873, 28.088871, 28.166655>,  <29.808559, 28.285877, 28.065331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.900873, 28.088871, 28.166655>,  <30.054729, 27.760527, 28.335527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900873, 28.088871, 28.166655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889045, 0.206418, -0.408645,
		-0.248296, -0.532519, -0.809180,
		-0.384641, 0.820862, -0.422181,
		29.785480, 28.335129, 28.040001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239693, 27.802830, 27.631174>,  <30.054729, 27.760527, 28.335527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239693, 27.802830, 27.631174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186539, 28.187103, 27.728685>,  <30.154646, 28.417667, 27.787193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186539, 28.187103, 27.728685>,  <30.239693, 27.802830, 27.631174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186539, 28.187103, 27.728685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911587, 0.215008, -0.350402,
		-0.389040, 0.175664, -0.904318,
		-0.132883, 0.960684, 0.243779,
		30.146673, 28.475309, 27.801819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312042, 28.172663, 27.051357>,  <30.239693, 27.802830, 27.631174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312042, 28.172663, 27.051357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378536, 28.452953, 27.328875>,  <30.418432, 28.621128, 27.495384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378536, 28.452953, 27.328875>,  <30.312042, 28.172663, 27.051357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378536, 28.452953, 27.328875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888315, 0.199033, -0.413863,
		-0.428092, 0.685106, -0.589379,
		0.166234, 0.700725, 0.693794,
		30.428406, 28.663172, 27.537012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422915, 28.814104, 26.644545>,  <30.312042, 28.172663, 27.051357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422915, 28.814104, 26.644545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.594221, 28.810715, 27.005991>,  <30.697004, 28.808681, 27.222858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.594221, 28.810715, 27.005991>,  <30.422915, 28.814104, 26.644545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594221, 28.810715, 27.005991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903106, -0.030797, -0.428313,
		0.031457, 0.999490, -0.005538,
		0.428265, -0.008472, 0.903614,
		30.722700, 28.808172, 27.277075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091391, 28.868147, 26.369078>,  <30.422915, 28.814104, 26.644545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091391, 28.868147, 26.369078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122969, 28.826523, 26.765652>,  <31.141916, 28.801548, 27.003595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122969, 28.826523, 26.765652>,  <31.091391, 28.868147, 26.369078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122969, 28.826523, 26.765652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995408, -0.045775, -0.084066,
		0.054131, 0.993517, 0.099969,
		0.078945, -0.104060, 0.991433,
		31.146652, 28.795305, 27.063082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574499, 29.446232, 26.661747>,  <31.091391, 28.868147, 26.369078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574499, 29.446232, 26.661747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582340, 29.139406, 26.918255>,  <31.587046, 28.955311, 27.072161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582340, 29.139406, 26.918255>,  <31.574499, 29.446232, 26.661747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582340, 29.139406, 26.918255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998896, 0.042416, 0.020199,
		-0.042694, 0.640168, 0.767048,
		0.019604, -0.767063, 0.641272,
		31.588221, 28.909286, 27.110636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065979, 29.656940, 27.090715>,  <31.574499, 29.446232, 26.661747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065979, 29.656940, 27.090715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046005, 29.260273, 27.138218>,  <32.034019, 29.022272, 27.166719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046005, 29.260273, 27.138218>,  <32.065979, 29.656940, 27.090715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046005, 29.260273, 27.138218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992987, -0.036538, 0.112436,
		-0.107160, 0.123539, 0.986537,
		-0.049936, -0.991667, 0.118757,
		32.031025, 28.962772, 27.173845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606125, 29.585123, 27.539846>,  <32.065979, 29.656940, 27.090715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606125, 29.585123, 27.539846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515930, 29.203405, 27.461380>,  <32.461811, 28.974375, 27.414301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515930, 29.203405, 27.461380>,  <32.606125, 29.585123, 27.539846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515930, 29.203405, 27.461380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940511, -0.265750, 0.211698,
		-0.254153, -0.136760, 0.957446,
		-0.225489, -0.954292, -0.196165,
		32.448284, 28.917118, 27.402531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879669, 29.214333, 28.148102>,  <32.606125, 29.585123, 27.539846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879669, 29.214333, 28.148102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852459, 29.000860, 27.810923>,  <32.836132, 28.872778, 27.608616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852459, 29.000860, 27.810923>,  <32.879669, 29.214333, 28.148102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852459, 29.000860, 27.810923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963433, -0.254622, 0.083453,
		-0.259170, -0.806446, 0.531485,
		-0.068027, -0.533679, -0.842947,
		32.832050, 28.840757, 27.558039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369301, 28.642824, 28.202204>,  <32.879669, 29.214333, 28.148102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369301, 28.642824, 28.202204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290783, 28.700253, 27.814213>,  <33.243671, 28.734709, 27.581419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290783, 28.700253, 27.814213>,  <33.369301, 28.642824, 28.202204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290783, 28.700253, 27.814213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980510, 0.037138, -0.192927,
		0.008324, -0.988943, -0.148062,
		-0.196293, 0.143570, -0.969978,
		33.231895, 28.743324, 27.523220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766842, 28.172794, 27.930243>,  <33.369301, 28.642824, 28.202204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766842, 28.172794, 27.930243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.708191, 28.432352, 27.631596>,  <33.673000, 28.588087, 27.452408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.708191, 28.432352, 27.631596>,  <33.766842, 28.172794, 27.930243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708191, 28.432352, 27.631596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989192, 0.096997, -0.109960,
		0.001067, -0.754670, -0.656103,
		-0.146623, 0.648895, -0.746617,
		33.664204, 28.627020, 27.407610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292561, 27.971266, 27.281708>,  <33.766842, 28.172794, 27.930243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292561, 27.971266, 27.281708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162621, 28.347574, 27.320536>,  <34.084656, 28.573359, 27.343832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162621, 28.347574, 27.320536>,  <34.292561, 27.971266, 27.281708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162621, 28.347574, 27.320536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944806, 0.318185, 0.078099,
		0.042587, 0.117084, -0.992209,
		-0.324850, 0.940771, 0.097071,
		34.065166, 28.629805, 27.349657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.193039, 26.737623, 23.021471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279343, 27.035528, 23.274067>,  <37.331123, 27.214272, 23.425625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279343, 27.035528, 23.274067>,  <37.193039, 26.737623, 23.021471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279343, 27.035528, 23.274067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917733, 0.066210, -0.391641,
		-0.333490, 0.664038, -0.669207,
		0.215756, 0.744762, 0.631489,
		37.344070, 27.258957, 23.463514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503532, 27.200264, 22.629656>,  <37.193039, 26.737623, 23.021471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503532, 27.200264, 22.629656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.617973, 27.288637, 23.002609>,  <37.686638, 27.341661, 23.226381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.617973, 27.288637, 23.002609>,  <37.503532, 27.200264, 22.629656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617973, 27.288637, 23.002609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956095, -0.001372, -0.293054,
		-0.063466, 0.975288, -0.211624,
		0.286102, 0.220931, 0.932381,
		37.703804, 27.354916, 23.282324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013828, 27.762796, 22.553360>,  <37.503532, 27.200264, 22.629656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013828, 27.762796, 22.553360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.076603, 27.632057, 22.926142>,  <38.114269, 27.553614, 23.149811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.076603, 27.632057, 22.926142>,  <38.013828, 27.762796, 22.553360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076603, 27.632057, 22.926142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984193, 0.130169, -0.120081,
		-0.082064, 0.936070, 0.342109,
		0.156936, -0.326847, 0.931956,
		38.123684, 27.534002, 23.205729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462814, 28.249775, 22.887186>,  <38.013828, 27.762796, 22.553360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462814, 28.249775, 22.887186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495644, 27.910919, 23.097183>,  <38.515343, 27.707605, 23.223181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495644, 27.910919, 23.097183>,  <38.462814, 28.249775, 22.887186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495644, 27.910919, 23.097183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981878, 0.159018, 0.103094,
		-0.170818, 0.507016, 0.844841,
		0.082075, -0.847141, 0.524991,
		38.520267, 27.656776, 23.254681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953224, 28.399086, 23.438019>,  <38.462814, 28.249775, 22.887186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953224, 28.399086, 23.438019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.934139, 28.000391, 23.411968>,  <38.922688, 27.761175, 23.396338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.934139, 28.000391, 23.411968>,  <38.953224, 28.399086, 23.438019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934139, 28.000391, 23.411968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983024, -0.058417, 0.173928,
		-0.177165, -0.055722, 0.982602,
		-0.047709, -0.996736, -0.065125,
		38.919827, 27.701370, 23.392431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242020, 28.255514, 24.005798>,  <38.953224, 28.399086, 23.438019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242020, 28.255514, 24.005798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.268051, 27.950661, 23.748142>,  <39.283669, 27.767748, 23.593550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.268051, 27.950661, 23.748142>,  <39.242020, 28.255514, 24.005798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268051, 27.950661, 23.748142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993628, -0.010038, 0.112264,
		-0.092026, -0.647339, 0.756626,
		0.065077, -0.762136, -0.644138,
		39.287575, 27.722019, 23.554901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660908, 27.723778, 24.290884>,  <39.242020, 28.255514, 24.005798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660908, 27.723778, 24.290884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652180, 27.670324, 23.894567>,  <39.646942, 27.638252, 23.656778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652180, 27.670324, 23.894567>,  <39.660908, 27.723778, 24.290884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652180, 27.670324, 23.894567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985940, -0.167097, 0.000821,
		-0.165668, -0.976842, 0.135402,
		-0.021823, -0.133634, -0.990790,
		39.645634, 27.630234, 23.597330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051987, 27.091335, 24.118496>,  <39.660908, 27.723778, 24.290884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051987, 27.091335, 24.118496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017483, 27.319387, 23.791691>,  <39.996780, 27.456219, 23.595608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017483, 27.319387, 23.791691>,  <40.051987, 27.091335, 24.118496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017483, 27.319387, 23.791691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973277, -0.126953, -0.191348,
		-0.212815, -0.811687, -0.543943,
		-0.086259, 0.570129, -0.817014,
		39.991604, 27.490427, 23.546587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711353, 26.937078, 23.754345>,  <40.051987, 27.091335, 24.118496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711353, 26.937078, 23.754345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.573032, 27.220686, 23.508512>,  <40.490040, 27.390850, 23.361013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.573032, 27.220686, 23.508512>,  <40.711353, 26.937078, 23.754345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573032, 27.220686, 23.508512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936010, 0.214843, -0.278799,
		-0.065635, -0.671664, -0.737943,
		-0.345801, 0.709020, -0.614583,
		40.469292, 27.433392, 23.324137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090897, 26.755852, 23.256237>,  <40.711353, 26.937078, 23.754345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090897, 26.755852, 23.256237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973278, 27.135475, 23.210936>,  <40.902706, 27.363249, 23.183754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973278, 27.135475, 23.210936>,  <41.090897, 26.755852, 23.256237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973278, 27.135475, 23.210936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946849, 0.273069, -0.170033,
		-0.130445, -0.157230, -0.978909,
		-0.294044, 0.949058, -0.113253,
		40.885063, 27.420193, 23.176960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611385, 27.044466, 22.782757>,  <41.090897, 26.755852, 23.256237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611385, 27.044466, 22.782757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.450523, 27.362391, 22.964548>,  <41.354008, 27.553144, 23.073622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.450523, 27.362391, 22.964548>,  <41.611385, 27.044466, 22.782757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450523, 27.362391, 22.964548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860872, 0.497257, -0.107865,
		-0.311724, 0.347868, -0.884204,
		-0.402154, 0.794810, 0.454477,
		41.329876, 27.600834, 23.100891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994335, 27.646723, 22.435690>,  <41.611385, 27.044466, 22.782757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994335, 27.646723, 22.435690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839333, 27.830433, 22.755417>,  <41.746330, 27.940659, 22.947252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839333, 27.830433, 22.755417>,  <41.994335, 27.646723, 22.435690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839333, 27.830433, 22.755417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778141, 0.627874, 0.016474,
		-0.494303, 0.628364, -0.600685,
		-0.387506, 0.459275, 0.799316,
		41.723080, 27.968216, 22.995213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206589, 28.332121, 22.341282>,  <41.994335, 27.646723, 22.435690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206589, 28.332121, 22.341282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.134773, 28.327705, 22.734756>,  <42.091682, 28.325056, 22.970842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.134773, 28.327705, 22.734756>,  <42.206589, 28.332121, 22.341282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134773, 28.327705, 22.734756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792310, 0.591075, 0.151247,
		-0.583103, 0.806541, -0.097376,
		-0.179543, -0.011041, 0.983688,
		42.080910, 28.324392, 23.029863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343029, 29.022692, 22.580589>,  <42.206589, 28.332121, 22.341282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343029, 29.022692, 22.580589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397285, 28.698036, 22.807867>,  <42.429840, 28.503242, 22.944233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397285, 28.698036, 22.807867>,  <42.343029, 29.022692, 22.580589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397285, 28.698036, 22.807867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941518, 0.284142, 0.181127,
		-0.308457, 0.510397, 0.802713,
		0.135638, -0.811639, 0.568194,
		42.437977, 28.454544, 22.978325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524357, 28.870476, 22.373972>,  <42.343029, 29.022692, 22.580589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524357, 28.870476, 22.373972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598400, 29.255390, 22.294235>,  <41.642826, 29.486340, 22.246393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598400, 29.255390, 22.294235>,  <41.524357, 28.870476, 22.373972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598400, 29.255390, 22.294235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982205, 0.174612, -0.069167,
		-0.031751, 0.208599, 0.977486,
		0.185109, 0.962288, -0.199342,
		41.653934, 29.544077, 22.234432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183781, 29.214272, 22.797916>,  <41.524357, 28.870476, 22.373972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183781, 29.214272, 22.797916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.226860, 29.474394, 22.497116>,  <41.252708, 29.630466, 22.316637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.226860, 29.474394, 22.497116>,  <41.183781, 29.214272, 22.797916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226860, 29.474394, 22.497116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993977, 0.055002, -0.094787,
		-0.020279, 0.757679, 0.652313,
		0.107696, 0.650306, -0.751999,
		41.259171, 29.669485, 22.271517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663239, 29.809578, 22.988962>,  <41.183781, 29.214272, 22.797916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663239, 29.809578, 22.988962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746750, 29.821371, 22.597954>,  <40.796856, 29.828447, 22.363350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746750, 29.821371, 22.597954>,  <40.663239, 29.809578, 22.988962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746750, 29.821371, 22.597954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908120, 0.376800, -0.182591,
		0.362946, 0.925826, 0.105440,
		0.208777, 0.029482, -0.977519,
		40.809383, 29.830215, 22.304699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285328, 30.386074, 22.748650>,  <40.663239, 29.809578, 22.988962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285328, 30.386074, 22.748650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341270, 30.178503, 22.411331>,  <40.374836, 30.053961, 22.208941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341270, 30.178503, 22.411331>,  <40.285328, 30.386074, 22.748650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341270, 30.178503, 22.411331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938923, 0.200941, -0.279366,
		0.314425, 0.830864, -0.459132,
		0.139857, -0.518930, -0.843298,
		40.383228, 30.022823, 22.158342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009598, 30.715389, 22.074787>,  <40.285328, 30.386074, 22.748650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009598, 30.715389, 22.074787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.028267, 30.321451, 22.007975>,  <40.039471, 30.085089, 21.967886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.028267, 30.321451, 22.007975>,  <40.009598, 30.715389, 22.074787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028267, 30.321451, 22.007975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944191, 0.011087, -0.329211,
		0.326074, 0.173077, -0.929365,
		0.046675, -0.984846, -0.167033,
		40.042271, 30.025997, 21.957865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570477, 30.646210, 21.531830>,  <40.009598, 30.715389, 22.074787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570477, 30.646210, 21.531830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615608, 30.280970, 21.688553>,  <39.642689, 30.061825, 21.782587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615608, 30.280970, 21.688553>,  <39.570477, 30.646210, 21.531830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615608, 30.280970, 21.688553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988487, -0.143159, -0.048970,
		0.100806, -0.381773, -0.918742,
		0.112830, -0.913102, 0.391809,
		39.649456, 30.007038, 21.806095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302795, 30.253252, 20.999275>,  <39.570477, 30.646210, 21.531830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302795, 30.253252, 20.999275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303196, 30.030485, 21.331503>,  <39.303436, 29.896826, 21.530840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303196, 30.030485, 21.331503>,  <39.302795, 30.253252, 20.999275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303196, 30.030485, 21.331503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977071, -0.177379, -0.117764,
		0.212910, -0.811408, -0.544323,
		0.000997, -0.556915, 0.830569,
		39.303493, 29.863411, 21.580673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984665, 29.618803, 20.771416>,  <39.302795, 30.253252, 20.999275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984665, 29.618803, 20.771416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.941563, 29.681513, 21.164110>,  <38.915699, 29.719139, 21.399727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.941563, 29.681513, 21.164110>,  <38.984665, 29.618803, 20.771416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941563, 29.681513, 21.164110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991830, -0.084768, -0.095330,
		0.068274, -0.983990, 0.164628,
		-0.107759, 0.156775, 0.981738,
		38.909237, 29.728546, 21.458632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459362, 29.162868, 20.914560>,  <38.984665, 29.618803, 20.771416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459362, 29.162868, 20.914560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484756, 29.392572, 21.241043>,  <38.499992, 29.530396, 21.436934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484756, 29.392572, 21.241043>,  <38.459362, 29.162868, 20.914560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484756, 29.392572, 21.241043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986106, -0.089708, 0.139813,
		0.153509, -0.813742, 0.560588,
		0.063483, 0.574261, 0.816207,
		38.503799, 29.564852, 21.485905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133965, 28.885313, 21.407921>,  <38.459362, 29.162868, 20.914560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133965, 28.885313, 21.407921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112679, 29.265774, 21.529558>,  <38.099907, 29.494051, 21.602541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112679, 29.265774, 21.529558>,  <38.133965, 28.885313, 21.407921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112679, 29.265774, 21.529558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998552, -0.053086, -0.008702,
		0.007866, -0.304119, 0.952602,
		-0.053216, 0.951154, 0.304096,
		38.096714, 29.551121, 21.620787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542282, 28.846725, 21.816235>,  <38.133965, 28.885313, 21.407921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542282, 28.846725, 21.816235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583252, 29.240061, 21.756165>,  <37.607834, 29.476063, 21.720123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583252, 29.240061, 21.756165>,  <37.542282, 28.846725, 21.816235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583252, 29.240061, 21.756165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993799, 0.094585, -0.058458,
		-0.043280, 0.155231, 0.986930,
		0.102423, 0.983340, -0.150175,
		37.613979, 29.535063, 21.711111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041763, 29.057228, 22.294018>,  <37.542282, 28.846725, 21.816235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041763, 29.057228, 22.294018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.143570, 29.365545, 22.060404>,  <37.204655, 29.550537, 21.920235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.143570, 29.365545, 22.060404>,  <37.041763, 29.057228, 22.294018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143570, 29.365545, 22.060404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846716, 0.469385, 0.250501,
		0.467216, 0.430737, 0.772124,
		0.254523, 0.770807, -0.584015,
		37.219925, 29.596785, 21.885193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801895, 29.662594, 22.759075>,  <37.041763, 29.057228, 22.294018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801895, 29.662594, 22.759075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836418, 29.756046, 22.371681>,  <36.857132, 29.812119, 22.139244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836418, 29.756046, 22.371681>,  <36.801895, 29.662594, 22.759075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836418, 29.756046, 22.371681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969366, 0.244076, -0.027502,
		0.229959, 0.941192, 0.247540,
		0.086303, 0.233633, -0.968487,
		36.862309, 29.826136, 22.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452858, 30.386963, 22.616966>,  <36.801895, 29.662594, 22.759075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452858, 30.386963, 22.616966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465755, 30.177975, 22.276148>,  <36.473495, 30.052582, 22.071657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465755, 30.177975, 22.276148>,  <36.452858, 30.386963, 22.616966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465755, 30.177975, 22.276148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989638, 0.102648, -0.100398,
		0.139916, 0.846456, -0.513746,
		0.032247, -0.522470, -0.852048,
		36.475430, 30.021235, 22.020533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563950, 31.012915, 22.223707>,  <36.452858, 30.386963, 22.616966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563950, 31.012915, 22.223707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.499226, 31.407171, 22.242985>,  <36.460392, 31.643726, 22.254551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.499226, 31.407171, 22.242985>,  <36.563950, 31.012915, 22.223707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499226, 31.407171, 22.242985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944620, 0.168838, -0.281402,
		-0.285500, -0.000008, -0.958379,
		-0.161813, 0.985644, 0.048196,
		36.450684, 31.702864, 22.257444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823467, 31.385612, 21.601954>,  <36.563950, 31.012915, 22.223707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823467, 31.385612, 21.601954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820503, 31.657982, 21.894880>,  <36.818726, 31.821404, 22.070637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820503, 31.657982, 21.894880>,  <36.823467, 31.385612, 21.601954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820503, 31.657982, 21.894880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923362, 0.285781, -0.256380,
		-0.383858, 0.674294, -0.630857,
		-0.007412, 0.680923, 0.732317,
		36.818279, 31.862259, 22.114576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276470, 31.949160, 21.346214>,  <36.823467, 31.385612, 21.601954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276470, 31.949160, 21.346214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.237324, 31.997684, 21.741325>,  <37.213837, 32.026798, 21.978392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.237324, 31.997684, 21.741325>,  <37.276470, 31.949160, 21.346214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237324, 31.997684, 21.741325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939515, 0.338614, 0.051497,
		-0.328228, 0.933072, -0.147116,
		-0.097866, 0.121314, 0.987778,
		37.207966, 32.034081, 22.037659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424484, 32.562824, 21.518097>,  <37.276470, 31.949160, 21.346214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424484, 32.562824, 21.518097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480225, 32.389820, 21.874414>,  <37.513668, 32.286018, 22.088205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480225, 32.389820, 21.874414>,  <37.424484, 32.562824, 21.518097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480225, 32.389820, 21.874414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710965, 0.669868, 0.214023,
		-0.689282, 0.603501, 0.400846,
		0.139351, -0.432510, 0.890796,
		37.522030, 32.260067, 22.141653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616947, 33.099010, 21.950340>,  <37.424484, 32.562824, 21.518097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616947, 33.099010, 21.950340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735256, 32.788334, 22.172791>,  <37.806240, 32.601929, 22.306261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735256, 32.788334, 22.172791>,  <37.616947, 33.099010, 21.950340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735256, 32.788334, 22.172791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867919, 0.461687, 0.183199,
		-0.399044, 0.428485, 0.810657,
		0.295771, -0.776689, 0.556124,
		37.823986, 32.555328, 22.339628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943420, 33.351799, 22.618650>,  <37.616947, 33.099010, 21.950340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943420, 33.351799, 22.618650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080505, 32.978317, 22.577173>,  <38.162758, 32.754230, 22.552288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080505, 32.978317, 22.577173>,  <37.943420, 33.351799, 22.618650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080505, 32.978317, 22.577173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869339, 0.273363, 0.411731,
		-0.356088, -0.231248, 0.905387,
		0.342711, -0.933701, -0.103691,
		38.183319, 32.698208, 22.546066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165009, 33.116077, 23.301279>,  <37.943420, 33.351799, 22.618650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165009, 33.116077, 23.301279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362019, 32.901928, 23.026821>,  <38.480225, 32.773438, 22.862146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362019, 32.901928, 23.026821>,  <38.165009, 33.116077, 23.301279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362019, 32.901928, 23.026821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860996, 0.184763, 0.473867,
		-0.126923, -0.824157, 0.551957,
		0.492521, -0.535377, -0.686145,
		38.509773, 32.741314, 22.820978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717701, 32.899555, 23.589851>,  <38.165009, 33.116077, 23.301279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717701, 32.899555, 23.589851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857395, 32.878086, 23.215652>,  <38.941212, 32.865204, 22.991133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857395, 32.878086, 23.215652>,  <38.717701, 32.899555, 23.589851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857395, 32.878086, 23.215652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934888, 0.087522, 0.343983,
		0.063414, -0.994716, 0.080744,
		0.349232, -0.053673, -0.935498,
		38.962166, 32.861984, 22.935003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253880, 32.531315, 23.697731>,  <38.717701, 32.899555, 23.589851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253880, 32.531315, 23.697731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329075, 32.702141, 23.343946>,  <39.374191, 32.804638, 23.131676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329075, 32.702141, 23.343946>,  <39.253880, 32.531315, 23.697731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329075, 32.702141, 23.343946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958333, 0.117448, 0.260394,
		0.215083, -0.896560, -0.387194,
		0.187984, 0.427067, -0.884464,
		39.385471, 32.830261, 23.078608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877350, 32.274937, 23.595688>,  <39.253880, 32.531315, 23.697731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877350, 32.274937, 23.595688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850723, 32.557926, 23.314249>,  <39.834747, 32.727722, 23.145386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850723, 32.557926, 23.314249>,  <39.877350, 32.274937, 23.595688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850723, 32.557926, 23.314249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986282, 0.153410, 0.060943,
		0.151054, -0.689886, -0.707983,
		-0.066568, 0.707476, -0.703595,
		39.830753, 32.770168, 23.103170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339603, 32.166088, 23.018772>,  <39.877350, 32.274937, 23.595688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339603, 32.166088, 23.018772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.261063, 32.557865, 23.037256>,  <40.213940, 32.792931, 23.048347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.261063, 32.557865, 23.037256>,  <40.339603, 32.166088, 23.018772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261063, 32.557865, 23.037256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969515, 0.186880, 0.158483,
		0.146589, 0.075921, -0.986280,
		-0.196349, 0.979445, 0.046212,
		40.202160, 32.851700, 23.051121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722950, 32.532883, 22.562611>,  <40.339603, 32.166088, 23.018772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722950, 32.532883, 22.562611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629368, 32.773804, 22.867897>,  <40.573219, 32.918354, 23.051069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629368, 32.773804, 22.867897>,  <40.722950, 32.532883, 22.562611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629368, 32.773804, 22.867897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972184, 0.153846, 0.176606,
		-0.011047, 0.783304, -0.621541,
		-0.233958, 0.602301, 0.763215,
		40.559181, 32.954494, 23.096861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.816757, 31.038103, 21.534159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768124, 31.205023, 21.894398>,  <32.738945, 31.305176, 22.110542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768124, 31.205023, 21.894398>,  <32.816757, 31.038103, 21.534159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768124, 31.205023, 21.894398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946571, 0.321790, -0.021317,
		-0.298699, 0.849889, -0.434129,
		-0.121581, 0.417301, 0.900599,
		32.731647, 31.330214, 22.164577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067165, 31.702841, 21.535877>,  <32.816757, 31.038103, 21.534159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067165, 31.702841, 21.535877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083599, 31.611990, 21.925077>,  <33.093460, 31.557480, 22.158598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083599, 31.611990, 21.925077>,  <33.067165, 31.702841, 21.535877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083599, 31.611990, 21.925077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947767, 0.317145, 0.034011,
		-0.316306, 0.920779, 0.228292,
		0.041085, -0.227125, 0.972999,
		33.095924, 31.543852, 22.216976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531891, 32.281010, 21.750835>,  <33.067165, 31.702841, 21.535877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531891, 32.281010, 21.750835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509483, 32.023819, 22.056370>,  <33.496040, 31.869505, 22.239691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509483, 32.023819, 22.056370>,  <33.531891, 32.281010, 21.750835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509483, 32.023819, 22.056370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919125, 0.265597, 0.290977,
		-0.389963, 0.718363, 0.576094,
		-0.056018, -0.642972, 0.763838,
		33.492680, 31.830927, 22.285521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752182, 32.700443, 22.357388>,  <33.531891, 32.281010, 21.750835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752182, 32.700443, 22.357388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812340, 32.313911, 22.440901>,  <33.848434, 32.081993, 22.491009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812340, 32.313911, 22.440901>,  <33.752182, 32.700443, 22.357388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812340, 32.313911, 22.440901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948961, 0.200321, 0.243608,
		-0.277230, 0.161493, 0.947135,
		0.150390, -0.966329, 0.208785,
		33.857456, 32.024014, 22.503536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121250, 32.644901, 22.918718>,  <33.752182, 32.700443, 22.357388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121250, 32.644901, 22.918718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189507, 32.293282, 22.740658>,  <34.230461, 32.082310, 22.633821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189507, 32.293282, 22.740658>,  <34.121250, 32.644901, 22.918718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189507, 32.293282, 22.740658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985126, 0.142922, 0.095399,
		-0.020238, -0.454809, 0.890359,
		0.170640, -0.879046, -0.445152,
		34.240700, 32.029568, 22.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722965, 32.408787, 23.228750>,  <34.121250, 32.644901, 22.918718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722965, 32.408787, 23.228750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706978, 32.160671, 22.915409>,  <34.697384, 32.011803, 22.727404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706978, 32.160671, 22.915409>,  <34.722965, 32.408787, 23.228750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706978, 32.160671, 22.915409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998645, 0.001349, -0.052025,
		0.033328, -0.784371, 0.619396,
		-0.039971, -0.620291, -0.783353,
		34.694988, 31.974585, 22.680403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168903, 31.882154, 23.334654>,  <34.722965, 32.408787, 23.228750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168903, 31.882154, 23.334654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136333, 31.886803, 22.936008>,  <35.116791, 31.889591, 22.696821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136333, 31.886803, 22.936008>,  <35.168903, 31.882154, 23.334654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136333, 31.886803, 22.936008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981513, -0.172843, -0.082205,
		-0.173214, -0.984881, 0.002656,
		-0.081421, 0.011632, -0.996612,
		35.111908, 31.890289, 22.637024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576321, 31.414970, 23.147245>,  <35.168903, 31.882154, 23.334654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576321, 31.414970, 23.147245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534828, 31.611925, 22.801577>,  <35.509933, 31.730099, 22.594175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534828, 31.611925, 22.801577>,  <35.576321, 31.414970, 23.147245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534828, 31.611925, 22.801577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994433, 0.035164, -0.099330,
		-0.018522, -0.869664, -0.493296,
		-0.103730, 0.492389, -0.864172,
		35.503708, 31.759642, 22.542326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041836, 31.112156, 22.712751>,  <35.576321, 31.414970, 23.147245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041836, 31.112156, 22.712751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000690, 31.475811, 22.551313>,  <35.976002, 31.694004, 22.454451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000690, 31.475811, 22.551313>,  <36.041836, 31.112156, 22.712751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000690, 31.475811, 22.551313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990731, 0.057452, -0.123090,
		-0.088719, -0.412514, -0.906621,
		-0.102863, 0.909138, -0.403593,
		35.969833, 31.748552, 22.430235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814636, 30.793219, 22.047821>,  <36.041836, 31.112156, 22.712751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814636, 30.793219, 22.047821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912796, 30.442036, 21.883396>,  <35.971691, 30.231327, 21.784740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912796, 30.442036, 21.883396>,  <35.814636, 30.793219, 22.047821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912796, 30.442036, 21.883396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955791, -0.148266, -0.253930,
		0.161992, 0.455205, -0.875527,
		0.245401, -0.877956, -0.411063,
		35.986416, 30.178650, 21.760077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542912, 30.748989, 21.324610>,  <35.814636, 30.793219, 22.047821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542912, 30.748989, 21.324610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582054, 30.381817, 21.478405>,  <35.605537, 30.161514, 21.570683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582054, 30.381817, 21.478405>,  <35.542912, 30.748989, 21.324610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582054, 30.381817, 21.478405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954218, -0.196267, -0.225714,
		0.282652, -0.344799, -0.895110,
		0.097855, -0.917929, 0.384489,
		35.611412, 30.106438, 21.593752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178478, 30.272190, 20.860582>,  <35.542912, 30.748989, 21.324610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178478, 30.272190, 20.860582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180534, 30.078743, 21.210688>,  <35.181770, 29.962675, 21.420752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180534, 30.078743, 21.210688>,  <35.178478, 30.272190, 20.860582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180534, 30.078743, 21.210688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970286, -0.214149, -0.112626,
		0.241904, -0.848677, -0.470350,
		0.005142, -0.483619, 0.875264,
		35.182076, 29.933657, 21.473267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770199, 29.643295, 20.750021>,  <35.178478, 30.272190, 20.860582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770199, 29.643295, 20.750021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791328, 29.677652, 21.147982>,  <34.804005, 29.698267, 21.386759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791328, 29.677652, 21.147982>,  <34.770199, 29.643295, 20.750021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791328, 29.677652, 21.147982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945715, -0.315633, 0.077458,
		0.320677, -0.944986, 0.064560,
		0.052819, 0.085894, 0.994903,
		34.807175, 29.703421, 21.446453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748280, 28.892416, 21.037947>,  <34.770199, 29.643295, 20.750021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748280, 28.892416, 21.037947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639957, 29.167271, 21.307615>,  <34.574966, 29.332184, 21.469416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639957, 29.167271, 21.307615>,  <34.748280, 28.892416, 21.037947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639957, 29.167271, 21.307615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794668, -0.554833, 0.246299,
		0.543294, -0.469044, 0.696297,
		-0.270803, 0.687138, 0.674172,
		34.558716, 29.373411, 21.509867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637295, 28.487642, 21.660517>,  <34.748280, 28.892416, 21.037947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637295, 28.487642, 21.660517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443993, 28.832884, 21.719196>,  <34.328011, 29.040030, 21.754404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443993, 28.832884, 21.719196>,  <34.637295, 28.487642, 21.660517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443993, 28.832884, 21.719196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799674, -0.503371, 0.327322,
		0.356357, 0.040868, 0.933456,
		-0.483251, 0.863104, 0.146699,
		34.299019, 29.091814, 21.763206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175945, 28.364756, 22.186548>,  <34.637295, 28.487642, 21.660517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175945, 28.364756, 22.186548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021179, 28.696856, 22.026054>,  <33.928322, 28.896114, 21.929758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021179, 28.696856, 22.026054>,  <34.175945, 28.364756, 22.186548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021179, 28.696856, 22.026054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913467, -0.285636, 0.289812,
		0.126009, 0.478645, 0.868919,
		-0.386911, 0.830248, -0.401233,
		33.905106, 28.945930, 21.905684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670578, 28.668772, 22.668795>,  <34.175945, 28.364756, 22.186548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670578, 28.668772, 22.668795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582935, 28.801737, 22.301863>,  <33.530350, 28.881516, 22.081703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582935, 28.801737, 22.301863>,  <33.670578, 28.668772, 22.668795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582935, 28.801737, 22.301863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952671, -0.275948, 0.127551,
		-0.210736, 0.901861, 0.377142,
		-0.219106, 0.332413, -0.917330,
		33.517204, 28.901461, 22.026663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022411, 28.944719, 22.788120>,  <33.670578, 28.668772, 22.668795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022411, 28.944719, 22.788120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052998, 28.932743, 22.389471>,  <33.071350, 28.925558, 22.150282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052998, 28.932743, 22.389471>,  <33.022411, 28.944719, 22.788120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052998, 28.932743, 22.389471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991522, -0.107601, -0.072843,
		-0.105056, 0.993743, -0.037914,
		0.076467, -0.029940, -0.996623,
		33.075939, 28.923761, 22.090485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543392, 29.426678, 22.586161>,  <33.022411, 28.944719, 22.788120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543392, 29.426678, 22.586161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606556, 29.187353, 22.271940>,  <32.644455, 29.043758, 22.083408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606556, 29.187353, 22.271940>,  <32.543392, 29.426678, 22.586161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606556, 29.187353, 22.271940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987450, -0.093465, -0.127305,
		0.002747, 0.795794, -0.605561,
		0.157908, -0.598312, -0.785550,
		32.653927, 29.007860, 22.036276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164177, 29.633860, 22.031574>,  <32.543392, 29.426678, 22.586161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164177, 29.633860, 22.031574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226982, 29.248373, 21.945227>,  <32.264664, 29.017082, 21.893417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226982, 29.248373, 21.945227>,  <32.164177, 29.633860, 22.031574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226982, 29.248373, 21.945227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976343, -0.118566, -0.180823,
		0.148667, 0.239154, -0.959533,
		0.157013, -0.963715, -0.215869,
		32.274086, 28.959259, 21.880466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745083, 29.455381, 21.433918>,  <32.164177, 29.633860, 22.031574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745083, 29.455381, 21.433918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829903, 29.098352, 21.593092>,  <31.880795, 28.884136, 21.688597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829903, 29.098352, 21.593092>,  <31.745083, 29.455381, 21.433918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829903, 29.098352, 21.593092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974083, -0.225847, 0.012489,
		0.078726, -0.390271, -0.917328,
		0.212050, -0.892570, 0.397936,
		31.893518, 28.830582, 21.712473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393715, 29.062506, 20.933346>,  <31.745083, 29.455381, 21.433918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393715, 29.062506, 20.933346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445988, 28.844936, 21.264904>,  <31.477352, 28.714396, 21.463839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445988, 28.844936, 21.264904>,  <31.393715, 29.062506, 20.933346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445988, 28.844936, 21.264904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973086, -0.230433, 0.002206,
		0.189805, -0.806875, -0.559398,
		0.130684, -0.543924, 0.828896,
		31.485193, 28.681759, 21.513573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241594, 28.321884, 20.807262>,  <31.393715, 29.062506, 20.933346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241594, 28.321884, 20.807262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189833, 28.372763, 21.200623>,  <31.158775, 28.403290, 21.436638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189833, 28.372763, 21.200623>,  <31.241594, 28.321884, 20.807262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189833, 28.372763, 21.200623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974927, -0.197375, -0.102761,
		0.181028, -0.972042, 0.149546,
		-0.129404, 0.127194, 0.983400,
		31.151011, 28.410921, 21.495644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.826584, 31.899179, 28.235901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.753876, 31.637482, 27.942255>,  <32.710251, 31.480463, 27.766068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.753876, 31.637482, 27.942255>,  <32.826584, 31.899179, 28.235901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753876, 31.637482, 27.942255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917096, 0.156584, -0.366630,
		0.354816, -0.739895, 0.571543,
		-0.181773, -0.654246, -0.734112,
		32.699345, 31.441208, 27.722021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416367, 31.346298, 28.204218>,  <32.826584, 31.899179, 28.235901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416367, 31.346298, 28.204218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225147, 31.407269, 27.858215>,  <33.110416, 31.443851, 27.650614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225147, 31.407269, 27.858215>,  <33.416367, 31.346298, 28.204218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225147, 31.407269, 27.858215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877042, 0.029402, -0.479513,
		-0.047658, -0.987877, -0.147742,
		-0.478044, 0.152428, -0.865008,
		33.081734, 31.452997, 27.598713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792694, 30.965057, 27.688839>,  <33.416367, 31.346298, 28.204218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792694, 30.965057, 27.688839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573406, 31.227783, 27.481745>,  <33.441833, 31.385420, 27.357489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573406, 31.227783, 27.481745>,  <33.792694, 30.965057, 27.688839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573406, 31.227783, 27.481745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784918, 0.190364, -0.589632,
		-0.288722, -0.729625, -0.619908,
		-0.548218, 0.656817, -0.517734,
		33.408939, 31.424828, 27.326424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887932, 30.690683, 26.994530>,  <33.792694, 30.965057, 27.688839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887932, 30.690683, 26.994530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766659, 31.069420, 26.951504>,  <33.693893, 31.296661, 26.925688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766659, 31.069420, 26.951504>,  <33.887932, 30.690683, 26.994530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766659, 31.069420, 26.951504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761544, 0.172887, -0.624628,
		-0.572828, -0.271292, -0.773479,
		-0.303181, 0.946843, -0.107567,
		33.675705, 31.353472, 26.919233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982613, 30.879530, 26.263487>,  <33.887932, 30.690683, 26.994530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982613, 30.879530, 26.263487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986767, 31.214813, 26.481586>,  <33.989262, 31.415983, 26.612446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986767, 31.214813, 26.481586>,  <33.982613, 30.879530, 26.263487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986767, 31.214813, 26.481586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777262, 0.336279, -0.531771,
		-0.629092, 0.429326, -0.648015,
		0.010389, 0.838210, 0.545249,
		33.989883, 31.466276, 26.645161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164505, 31.456890, 25.758883>,  <33.982613, 30.879530, 26.263487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164505, 31.456890, 25.758883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232014, 31.647984, 26.103739>,  <34.272518, 31.762640, 26.310652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232014, 31.647984, 26.103739>,  <34.164505, 31.456890, 25.758883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232014, 31.647984, 26.103739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838731, 0.389834, -0.380210,
		-0.517731, 0.787274, -0.334895,
		0.168776, 0.477733, 0.862140,
		34.282646, 31.791304, 26.362381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457474, 32.090061, 25.536943>,  <34.164505, 31.456890, 25.758883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457474, 32.090061, 25.536943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547100, 32.059555, 25.925577>,  <34.600876, 32.041252, 26.158758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547100, 32.059555, 25.925577>,  <34.457474, 32.090061, 25.536943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547100, 32.059555, 25.925577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906720, 0.381796, -0.179140,
		-0.357286, 0.921095, 0.154698,
		0.224068, -0.076263, 0.971585,
		34.614319, 32.036674, 26.217052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710682, 32.709637, 25.697220>,  <34.457474, 32.090061, 25.536943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710682, 32.709637, 25.697220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843246, 32.458405, 25.978838>,  <34.922783, 32.307663, 26.147808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843246, 32.458405, 25.978838>,  <34.710682, 32.709637, 25.697220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843246, 32.458405, 25.978838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922594, 0.371907, -0.102501,
		-0.197460, 0.683518, 0.702718,
		0.331407, -0.628083, 0.704046,
		34.942669, 32.269981, 26.190052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146839, 33.129154, 26.102911>,  <34.710682, 32.709637, 25.697220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146839, 33.129154, 26.102911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244965, 32.745010, 26.155886>,  <35.303841, 32.514526, 26.187672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244965, 32.745010, 26.155886>,  <35.146839, 33.129154, 26.102911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244965, 32.745010, 26.155886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955383, 0.216305, -0.201133,
		0.164513, 0.175869, 0.970570,
		0.245312, -0.960355, 0.132438,
		35.318558, 32.456905, 26.195618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801678, 33.266888, 26.352362>,  <35.146839, 33.129154, 26.102911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801678, 33.266888, 26.352362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777714, 32.890152, 26.220093>,  <35.763336, 32.664108, 26.140732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777714, 32.890152, 26.220093>,  <35.801678, 33.266888, 26.352362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777714, 32.890152, 26.220093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997032, -0.072511, 0.025891,
		-0.048363, -0.328140, 0.943390,
		-0.059911, -0.941842, -0.330673,
		35.759739, 32.607601, 26.120892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229538, 32.879059, 26.763037>,  <35.801678, 33.266888, 26.352362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229538, 32.879059, 26.763037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201672, 32.654564, 26.433149>,  <36.184952, 32.519867, 26.235216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201672, 32.654564, 26.433149>,  <36.229538, 32.879059, 26.763037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201672, 32.654564, 26.433149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990160, -0.139485, 0.011285,
		-0.121369, -0.815818, 0.565429,
		-0.069662, -0.561235, -0.824720,
		36.180775, 32.486195, 26.185734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686874, 32.195965, 26.910213>,  <36.229538, 32.879059, 26.763037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686874, 32.195965, 26.910213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627960, 32.203632, 26.514650>,  <36.592613, 32.208233, 26.277313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627960, 32.203632, 26.514650>,  <36.686874, 32.195965, 26.910213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627960, 32.203632, 26.514650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971326, -0.185852, -0.148269,
		-0.186635, -0.982391, 0.008745,
		-0.147284, 0.019178, -0.988908,
		36.583775, 32.209385, 26.217978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154083, 31.682798, 26.621059>,  <36.686874, 32.195965, 26.910213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154083, 31.682798, 26.621059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049320, 31.904299, 26.304892>,  <36.986462, 32.037197, 26.115191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049320, 31.904299, 26.304892>,  <37.154083, 31.682798, 26.621059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049320, 31.904299, 26.304892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909681, -0.131876, -0.393813,
		-0.322311, -0.822174, -0.469196,
		-0.261907, 0.553749, -0.790422,
		36.970749, 32.070423, 26.067764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619713, 31.453255, 26.143059>,  <37.154083, 31.682798, 26.621059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619713, 31.453255, 26.143059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507881, 31.805185, 25.989309>,  <37.440781, 32.016342, 25.897060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507881, 31.805185, 25.989309>,  <37.619713, 31.453255, 26.143059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507881, 31.805185, 25.989309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932562, 0.153614, -0.326697,
		-0.228391, -0.449790, -0.863439,
		-0.279581, 0.879825, -0.384373,
		37.424007, 32.069134, 25.873997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584038, 30.983126, 25.494568>,  <37.619713, 31.453255, 26.143059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584038, 30.983126, 25.494568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607735, 30.585058, 25.525877>,  <37.621952, 30.346218, 25.544662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607735, 30.585058, 25.525877>,  <37.584038, 30.983126, 25.494568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607735, 30.585058, 25.525877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988463, -0.047532, 0.143809,
		-0.139394, -0.085889, -0.986505,
		0.059242, -0.995170, 0.078272,
		37.625507, 30.286507, 25.549358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989166, 30.591305, 25.149353>,  <37.584038, 30.983126, 25.494568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989166, 30.591305, 25.149353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124504, 30.325102, 25.415472>,  <37.205708, 30.165380, 25.575144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124504, 30.325102, 25.415472>,  <36.989166, 30.591305, 25.149353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124504, 30.325102, 25.415472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937743, -0.179460, 0.297377,
		-0.078512, -0.724495, -0.684794,
		0.338341, -0.665508, 0.665300,
		37.226006, 30.125450, 25.615063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547771, 29.964291, 25.169313>,  <36.989166, 30.591305, 25.149353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547771, 29.964291, 25.169313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734512, 29.915901, 25.519722>,  <36.846558, 29.886868, 25.729967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734512, 29.915901, 25.519722>,  <36.547771, 29.964291, 25.169313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734512, 29.915901, 25.519722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841112, -0.366645, 0.397620,
		0.273088, -0.922462, -0.272921,
		0.466855, -0.120972, 0.876021,
		36.874569, 29.879610, 25.782528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280354, 29.312284, 25.416437>,  <36.547771, 29.964291, 25.169313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280354, 29.312284, 25.416437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462521, 29.457150, 25.741753>,  <36.571819, 29.544069, 25.936941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462521, 29.457150, 25.741753>,  <36.280354, 29.312284, 25.416437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462521, 29.457150, 25.741753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628684, -0.515990, 0.581817,
		0.630360, -0.776268, -0.007304,
		0.455415, 0.362162, 0.813287,
		36.599144, 29.565798, 25.985739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327854, 28.759815, 25.885870>,  <36.280354, 29.312284, 25.416437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327854, 28.759815, 25.885870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.330517, 29.112186, 26.075151>,  <36.332115, 29.323608, 26.188721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.330517, 29.112186, 26.075151>,  <36.327854, 28.759815, 25.885870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330517, 29.112186, 26.075151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595306, -0.376735, 0.709705,
		0.803472, -0.286423, 0.521915,
		0.006652, 0.880927, 0.473205,
		36.332512, 29.376465, 26.217113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307590, 28.606030, 26.508495>,  <36.327854, 28.759815, 25.885870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307590, 28.606030, 26.508495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.184204, 28.986267, 26.522497>,  <36.110172, 29.214409, 26.530899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.184204, 28.986267, 26.522497>,  <36.307590, 28.606030, 26.508495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184204, 28.986267, 26.522497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860518, -0.294539, 0.415639,
		0.405413, 0.098087, 0.908856,
		-0.308462, 0.950592, 0.035004,
		36.091667, 29.271444, 26.532999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023140, 28.693493, 27.221674>,  <36.307590, 28.606030, 26.508495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023140, 28.693493, 27.221674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860012, 28.972044, 26.985455>,  <35.762135, 29.139174, 26.843723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860012, 28.972044, 26.985455>,  <36.023140, 28.693493, 27.221674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860012, 28.972044, 26.985455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912988, -0.302664, 0.273582,
		0.011779, 0.650734, 0.759214,
		-0.407816, 0.696376, -0.590548,
		35.737667, 29.180956, 26.808290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533550, 29.086266, 27.599115>,  <36.023140, 28.693493, 27.221674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533550, 29.086266, 27.599115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426834, 29.161856, 27.221098>,  <35.362804, 29.207209, 26.994287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426834, 29.161856, 27.221098>,  <35.533550, 29.086266, 27.599115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426834, 29.161856, 27.221098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940563, -0.264876, 0.212562,
		-0.210151, 0.945584, 0.248408,
		-0.266793, 0.188973, -0.945045,
		35.346798, 29.218548, 26.937584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778316, 29.175354, 27.647614>,  <35.533550, 29.086266, 27.599115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778316, 29.175354, 27.647614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.814808, 29.167011, 27.249369>,  <34.836704, 29.162006, 27.010422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.814808, 29.167011, 27.249369>,  <34.778316, 29.175354, 27.647614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814808, 29.167011, 27.249369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962311, -0.259054, -0.082754,
		-0.256191, 0.965638, -0.043702,
		0.091231, -0.020855, -0.995611,
		34.842178, 29.160755, 26.950686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215221, 29.577795, 27.500591>,  <34.778316, 29.175354, 27.647614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215221, 29.577795, 27.500591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310150, 29.333696, 27.198259>,  <34.367107, 29.187237, 27.016861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310150, 29.333696, 27.198259>,  <34.215221, 29.577795, 27.500591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310150, 29.333696, 27.198259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948097, -0.315013, -0.043353,
		-0.211640, 0.726888, -0.653331,
		0.237321, -0.610246, -0.755830,
		34.381348, 29.150623, 26.971510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854092, 29.699064, 26.835119>,  <34.215221, 29.577795, 27.500591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854092, 29.699064, 26.835119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.954319, 29.325680, 26.937775>,  <34.014454, 29.101648, 26.999369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.954319, 29.325680, 26.937775>,  <33.854092, 29.699064, 26.835119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954319, 29.325680, 26.937775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966915, -0.254414, 0.018664,
		0.047871, -0.252825, -0.966327,
		0.250566, -0.933463, 0.256639,
		34.029488, 29.045641, 27.014767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550060, 29.290205, 26.338585>,  <33.854092, 29.699064, 26.835119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550060, 29.290205, 26.338585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.585476, 29.076826, 26.675058>,  <33.606724, 28.948799, 26.876944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.585476, 29.076826, 26.675058>,  <33.550060, 29.290205, 26.338585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585476, 29.076826, 26.675058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950292, -0.298321, -0.089159,
		0.298505, -0.791477, -0.533347,
		0.088541, -0.533450, 0.841185,
		33.612038, 28.916792, 26.927414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160374, 28.659595, 26.266119>,  <33.550060, 29.290205, 26.338585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160374, 28.659595, 26.266119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177139, 28.692831, 26.664383>,  <33.187199, 28.712772, 26.903341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177139, 28.692831, 26.664383>,  <33.160374, 28.659595, 26.266119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177139, 28.692831, 26.664383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996591, -0.067402, 0.047580,
		0.071063, -0.994260, 0.079982,
		0.041916, 0.083090, 0.995660,
		33.189713, 28.717758, 26.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801270, 28.102024, 26.494770>,  <33.160374, 28.659595, 26.266119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801270, 28.102024, 26.494770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.789200, 28.312658, 26.834604>,  <32.781960, 28.439039, 27.038506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.789200, 28.312658, 26.834604>,  <32.801270, 28.102024, 26.494770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789200, 28.312658, 26.834604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984103, -0.164477, 0.066994,
		0.175015, -0.834058, 0.523180,
		-0.030174, 0.526588, 0.849585,
		32.780148, 28.470634, 27.089479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564022, 27.516821, 26.209150>,  <32.801270, 28.102024, 26.494770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564022, 27.516821, 26.209150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.368423, 27.532436, 25.860586>,  <32.251064, 27.541805, 25.651447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.368423, 27.532436, 25.860586>,  <32.564022, 27.516821, 26.209150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368423, 27.532436, 25.860586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837392, -0.258714, -0.481499,
		-0.244243, -0.965165, 0.093821,
		-0.488999, 0.039038, -0.871410,
		32.221725, 27.544147, 25.599163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610718, 26.843010, 25.938631>,  <32.564022, 27.516821, 26.209150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610718, 26.843010, 25.938631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.536007, 27.118879, 25.658783>,  <32.491180, 27.284401, 25.490875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.536007, 27.118879, 25.658783>,  <32.610718, 26.843010, 25.938631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536007, 27.118879, 25.658783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931800, -0.101243, -0.348567,
		-0.311228, -0.717009, -0.623727,
		-0.186778, 0.689673, -0.699618,
		32.479973, 27.325781, 25.448898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035244, 26.611591, 25.376015>,  <32.610718, 26.843010, 25.938631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035244, 26.611591, 25.376015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.947369, 26.975386, 25.234838>,  <32.894642, 27.193663, 25.150133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.947369, 26.975386, 25.234838>,  <33.035244, 26.611591, 25.376015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947369, 26.975386, 25.234838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866190, 0.015404, -0.499476,
		-0.448831, -0.415446, -0.791173,
		-0.219693, 0.909487, -0.352942,
		32.881462, 27.248232, 25.128956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124626, 26.603098, 24.613203>,  <33.035244, 26.611591, 25.376015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124626, 26.603098, 24.613203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169556, 26.988379, 24.710876>,  <33.196514, 27.219547, 24.769480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169556, 26.988379, 24.710876>,  <33.124626, 26.603098, 24.613203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169556, 26.988379, 24.710876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896885, 0.007512, -0.442199,
		-0.427762, 0.268672, -0.863038,
		0.112323, 0.963202, 0.244182,
		33.203251, 27.277340, 24.784130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200573, 26.951235, 24.015079>,  <33.124626, 26.603098, 24.613203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200573, 26.951235, 24.015079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.379387, 27.156609, 24.308077>,  <33.486675, 27.279833, 24.483875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.379387, 27.156609, 24.308077>,  <33.200573, 26.951235, 24.015079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379387, 27.156609, 24.308077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826995, 0.074888, -0.557199,
		-0.340941, 0.854854, -0.391132,
		0.447033, 0.513436, 0.732492,
		33.513496, 27.310640, 24.527824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692966, 27.309538, 23.620907>,  <33.200573, 26.951235, 24.015079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692966, 27.309538, 23.620907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.794159, 27.357386, 24.004927>,  <33.854874, 27.386095, 24.235338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.794159, 27.357386, 24.004927>,  <33.692966, 27.309538, 23.620907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794159, 27.357386, 24.004927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964369, 0.048236, -0.260126,
		-0.077425, 0.991647, -0.103156,
		0.252978, 0.119621, 0.960048,
		33.870052, 27.393272, 24.292942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033436, 27.927380, 23.636290>,  <33.692966, 27.309538, 23.620907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033436, 27.927380, 23.636290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.121841, 27.717987, 23.965439>,  <34.174885, 27.592352, 24.162928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.121841, 27.717987, 23.965439>,  <34.033436, 27.927380, 23.636290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121841, 27.717987, 23.965439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974909, 0.095645, -0.201009,
		0.026520, 0.846653, 0.531484,
		0.221019, -0.523480, 0.822873,
		34.188148, 27.560944, 24.212301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534878, 28.272638, 23.902489>,  <34.033436, 27.927380, 23.636290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534878, 28.272638, 23.902489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572289, 27.927944, 24.101955>,  <34.594734, 27.721128, 24.221636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572289, 27.927944, 24.101955>,  <34.534878, 28.272638, 23.902489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572289, 27.927944, 24.101955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971407, -0.030804, -0.235415,
		0.218226, 0.506425, 0.834213,
		0.093523, -0.861733, 0.498667,
		34.600346, 27.669424, 24.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184727, 28.383259, 24.342724>,  <34.534878, 28.272638, 23.902489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184727, 28.383259, 24.342724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130798, 27.988762, 24.304457>,  <35.098442, 27.752064, 24.281496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130798, 27.988762, 24.304457>,  <35.184727, 28.383259, 24.342724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130798, 27.988762, 24.304457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935434, -0.094840, -0.340541,
		0.326783, -0.135400, 0.935350,
		-0.134818, -0.986241, -0.095666,
		35.090351, 27.692890, 24.275757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631882, 28.120523, 24.824291>,  <35.184727, 28.383259, 24.342724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631882, 28.120523, 24.824291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581890, 27.834585, 24.549082>,  <35.551895, 27.663023, 24.383957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581890, 27.834585, 24.549082>,  <35.631882, 28.120523, 24.824291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581890, 27.834585, 24.549082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988205, -0.027833, -0.150586,
		0.088496, -0.698728, 0.709892,
		-0.124977, -0.714845, -0.688024,
		35.544395, 27.620132, 24.342674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010265, 27.523088, 25.061951>,  <35.631882, 28.120523, 24.824291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010265, 27.523088, 25.061951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955666, 27.459341, 24.670856>,  <35.922905, 27.421093, 24.436199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955666, 27.459341, 24.670856>,  <36.010265, 27.523088, 25.061951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955666, 27.459341, 24.670856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987268, -0.103257, -0.120996,
		-0.081676, -0.981804, 0.171435,
		-0.136497, -0.159370, -0.977737,
		35.914715, 27.411530, 24.377535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499805, 26.992687, 24.848181>,  <36.010265, 27.523088, 25.061951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499805, 26.992687, 24.848181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403301, 27.161198, 24.498480>,  <36.345398, 27.262304, 24.288658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403301, 27.161198, 24.498480>,  <36.499805, 26.992687, 24.848181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403301, 27.161198, 24.498480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953149, -0.066535, -0.295095,
		-0.182485, -0.904489, -0.385485,
		-0.241262, 0.421275, -0.874254,
		36.330921, 27.287580, 24.236204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890053, 26.519842, 24.343775>,  <36.499805, 26.992687, 24.848181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890053, 26.519842, 24.343775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792522, 26.865175, 24.167049>,  <36.734005, 27.072376, 24.061014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792522, 26.865175, 24.167049>,  <36.890053, 26.519842, 24.343775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792522, 26.865175, 24.167049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850686, -0.028368, -0.524908,
		-0.465705, -0.503834, -0.727510,
		-0.243828, 0.863335, -0.441815,
		36.719376, 27.124176, 24.034504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016407, 26.378719, 23.668861>,  <36.890053, 26.519842, 24.343775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016407, 26.378719, 23.668861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995365, 26.777191, 23.696745>,  <36.982738, 27.016273, 23.713476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995365, 26.777191, 23.696745>,  <37.016407, 26.378719, 23.668861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995365, 26.777191, 23.696745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977338, 0.065695, -0.201234,
		-0.205045, 0.057544, -0.977060,
		-0.052608, 0.996179, 0.069710,
		36.979584, 27.076044, 23.717657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.747791, 27.210030, 21.810246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754946, 27.575300, 21.973112>,  <30.759239, 27.794462, 22.070833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754946, 27.575300, 21.973112>,  <30.747791, 27.210030, 21.810246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754946, 27.575300, 21.973112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973987, -0.076092, 0.213446,
		0.225897, -0.400394, 0.888063,
		0.017888, 0.913178, 0.407167,
		30.760313, 27.849255, 22.095263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444662, 27.170321, 22.512764>,  <30.747791, 27.210030, 21.810246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444662, 27.170321, 22.512764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413404, 27.542517, 22.369608>,  <30.394650, 27.765835, 22.283714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413404, 27.542517, 22.369608>,  <30.444662, 27.170321, 22.512764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413404, 27.542517, 22.369608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976956, 0.000045, 0.213439,
		0.198619, 0.366321, 0.909043,
		-0.078146, 0.930489, -0.357889,
		30.389961, 27.821663, 22.262241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232069, 27.463545, 23.009487>,  <30.444662, 27.170321, 22.512764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232069, 27.463545, 23.009487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.116690, 27.712809, 22.718702>,  <30.047462, 27.862366, 22.544231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.116690, 27.712809, 22.718702>,  <30.232069, 27.463545, 23.009487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116690, 27.712809, 22.718702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953007, -0.113415, 0.280917,
		0.092607, 0.773829, 0.626588,
		-0.288447, 0.623158, -0.726961,
		30.030155, 27.899755, 22.500614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765928, 27.858601, 23.421724>,  <30.232069, 27.463545, 23.009487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765928, 27.858601, 23.421724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.693836, 27.887732, 23.029354>,  <29.650581, 27.905210, 22.793932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.693836, 27.887732, 23.029354>,  <29.765928, 27.858601, 23.421724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693836, 27.887732, 23.029354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981418, 0.053454, 0.184288,
		0.065855, 0.995911, 0.061840,
		-0.180229, 0.072827, -0.980925,
		29.639767, 27.909580, 22.735077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374659, 28.425388, 23.332947>,  <29.765928, 27.858601, 23.421724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374659, 28.425388, 23.332947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268446, 28.223476, 23.004389>,  <29.204718, 28.102329, 22.807253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268446, 28.223476, 23.004389>,  <29.374659, 28.425388, 23.332947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268446, 28.223476, 23.004389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955694, 0.025535, 0.293253,
		-0.127053, 0.862872, -0.489193,
		-0.265531, -0.504778, -0.821397,
		29.188787, 28.072042, 22.757969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955843, 28.778959, 23.050934>,  <29.374659, 28.425388, 23.332947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955843, 28.778959, 23.050934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.854353, 28.432455, 22.878786>,  <28.793459, 28.224552, 22.775497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.854353, 28.432455, 22.878786>,  <28.955843, 28.778959, 23.050934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854353, 28.432455, 22.878786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967209, 0.221969, 0.123437,
		-0.011400, 0.447577, -0.894173,
		-0.253726, -0.866259, -0.430370,
		28.778234, 28.172577, 22.749676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403963, 28.916260, 22.504351>,  <28.955843, 28.778959, 23.050934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403963, 28.916260, 22.504351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.360483, 28.528883, 22.594063>,  <28.334396, 28.296457, 22.647890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.360483, 28.528883, 22.594063>,  <28.403963, 28.916260, 22.504351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360483, 28.528883, 22.594063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991993, 0.091079, -0.087491,
		0.064303, -0.231995, -0.970589,
		-0.108698, -0.968444, 0.224280,
		28.327873, 28.238350, 22.661346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087923, 28.632908, 21.871506>,  <28.403963, 28.916260, 22.504351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087923, 28.632908, 21.871506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.023451, 28.405447, 22.194159>,  <27.984768, 28.268970, 22.387751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.023451, 28.405447, 22.194159>,  <28.087923, 28.632908, 21.871506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023451, 28.405447, 22.194159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949698, 0.311727, 0.029993,
		-0.268504, -0.761222, -0.590294,
		-0.161179, -0.568654, 0.806631,
		27.975098, 28.234850, 22.436148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392166, 28.436617, 21.844893>,  <28.087923, 28.632908, 21.871506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392166, 28.436617, 21.844893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.478676, 28.340101, 22.223310>,  <27.530581, 28.282192, 22.450361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.478676, 28.340101, 22.223310>,  <27.392166, 28.436617, 21.844893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478676, 28.340101, 22.223310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964894, 0.095071, 0.244830,
		-0.149017, -0.965785, -0.212258,
		0.216273, -0.241290, 0.946047,
		27.543558, 28.267714, 22.507124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883413, 27.927921, 22.150404>,  <27.392166, 28.436617, 21.844893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883413, 27.927921, 22.150404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.042810, 28.135826, 22.452675>,  <27.138449, 28.260569, 22.634037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.042810, 28.135826, 22.452675>,  <26.883413, 27.927921, 22.150404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042810, 28.135826, 22.452675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900105, 0.063424, 0.431032,
		0.176107, -0.851952, 0.493118,
		0.398494, 0.519766, 0.755677,
		27.162359, 28.291756, 22.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678022, 27.521034, 22.712639>,  <26.883413, 27.927921, 22.150404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678022, 27.521034, 22.712639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.739853, 27.896433, 22.836140>,  <26.776951, 28.121672, 22.910240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.739853, 27.896433, 22.836140>,  <26.678022, 27.521034, 22.712639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739853, 27.896433, 22.836140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849800, -0.033101, 0.526064,
		0.503930, -0.343694, 0.792420,
		0.154575, 0.938498, 0.308751,
		26.786226, 28.177982, 22.928764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428473, 27.553116, 23.304142>,  <26.678022, 27.521034, 22.712639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428473, 27.553116, 23.304142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.462648, 27.949467, 23.262451>,  <26.483154, 28.187277, 23.237436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.462648, 27.949467, 23.262451>,  <26.428473, 27.553116, 23.304142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462648, 27.949467, 23.262451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799957, 0.130582, 0.585677,
		0.593944, 0.033336, 0.803815,
		0.085440, 0.990877, -0.104226,
		26.488281, 28.246729, 23.231184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419199, 27.912579, 23.942345>,  <26.428473, 27.553116, 23.304142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419199, 27.912579, 23.942345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.266876, 28.152260, 23.660650>,  <26.175484, 28.296068, 23.491634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.266876, 28.152260, 23.660650>,  <26.419199, 27.912579, 23.942345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266876, 28.152260, 23.660650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795907, 0.175260, 0.579496,
		0.470659, 0.781180, 0.410169,
		-0.380805, 0.599201, -0.704234,
		26.152636, 28.332020, 23.449381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618923, 28.578817, 24.126064>,  <26.419199, 27.912579, 23.942345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618923, 28.578817, 24.126064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.478395, 28.666813, 24.490082>,  <26.394079, 28.719610, 24.708492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.478395, 28.666813, 24.490082>,  <26.618923, 28.578817, 24.126064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478395, 28.666813, 24.490082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817248, -0.402200, 0.412723,
		0.456814, 0.888729, -0.038485,
		-0.351320, 0.219990, 0.910043,
		26.372999, 28.732809, 24.763094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105827, 28.979479, 24.352945>,  <26.618923, 28.578817, 24.126064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105827, 28.979479, 24.352945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.915552, 28.791704, 24.650496>,  <26.801388, 28.679039, 24.829025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.915552, 28.791704, 24.650496>,  <27.105827, 28.979479, 24.352945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915552, 28.791704, 24.650496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841499, -0.489113, 0.229454,
		0.256126, 0.735119, 0.627694,
		-0.475689, -0.469434, 0.743876,
		26.772846, 28.650873, 24.873659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277636, 29.201023, 24.942503>,  <27.105827, 28.979479, 24.352945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277636, 29.201023, 24.942503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.155899, 28.832916, 25.040874>,  <27.082857, 28.612051, 25.099897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.155899, 28.832916, 25.040874>,  <27.277636, 29.201023, 24.942503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155899, 28.832916, 25.040874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907959, -0.202179, 0.367062,
		-0.288074, 0.335005, 0.897098,
		-0.304342, -0.920269, 0.245928,
		27.064596, 28.556835, 25.114653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484747, 29.108017, 25.567541>,  <27.277636, 29.201023, 24.942503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484747, 29.108017, 25.567541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.449371, 28.730646, 25.439711>,  <27.428146, 28.504225, 25.363012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.449371, 28.730646, 25.439711>,  <27.484747, 29.108017, 25.567541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449371, 28.730646, 25.439711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918526, -0.201358, 0.340244,
		-0.385343, -0.263447, 0.884368,
		-0.088438, -0.943425, -0.319575,
		27.422840, 28.447618, 25.343838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729084, 28.695343, 26.112522>,  <27.484747, 29.108017, 25.567541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729084, 28.695343, 26.112522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.763784, 28.454889, 25.794752>,  <27.784605, 28.310617, 25.604090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.763784, 28.454889, 25.794752>,  <27.729084, 28.695343, 26.112522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763784, 28.454889, 25.794752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783620, -0.451225, 0.427007,
		-0.615153, -0.659573, 0.431915,
		0.086752, -0.601133, -0.794427,
		27.789810, 28.274549, 25.556423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027626, 28.066862, 26.437859>,  <27.729084, 28.695343, 26.112522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027626, 28.066862, 26.437859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.061634, 28.001926, 26.044632>,  <28.082039, 27.962965, 25.808697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.061634, 28.001926, 26.044632>,  <28.027626, 28.066862, 26.437859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061634, 28.001926, 26.044632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840932, -0.517503, 0.158187,
		-0.534420, -0.840141, 0.092519,
		0.085020, -0.162340, -0.983065,
		28.087141, 27.953224, 25.749712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262280, 27.278164, 26.287979>,  <28.027626, 28.066862, 26.437859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262280, 27.278164, 26.287979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.381174, 27.526804, 25.998079>,  <28.452511, 27.675989, 25.824139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.381174, 27.526804, 25.998079>,  <28.262280, 27.278164, 26.287979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381174, 27.526804, 25.998079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950128, -0.267588, 0.160166,
		-0.094375, -0.736212, -0.670138,
		0.297237, 0.621601, -0.724750,
		28.470345, 27.713284, 25.780655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859344, 26.956743, 26.018795>,  <28.262280, 27.278164, 26.287979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859344, 26.956743, 26.018795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.888685, 27.321991, 25.858377>,  <28.906290, 27.541140, 25.762127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.888685, 27.321991, 25.858377>,  <28.859344, 26.956743, 26.018795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888685, 27.321991, 25.858377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992998, -0.104209, -0.055643,
		-0.092601, -0.394154, -0.914367,
		0.073353, 0.913117, -0.401044,
		28.910690, 27.595926, 25.738064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255049, 26.794344, 25.464920>,  <28.859344, 26.956743, 26.018795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255049, 26.794344, 25.464920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.269175, 27.183683, 25.555557>,  <29.277651, 27.417288, 25.609940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.269175, 27.183683, 25.555557>,  <29.255049, 26.794344, 25.464920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269175, 27.183683, 25.555557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997113, -0.049567, 0.057520,
		0.067218, 0.223906, -0.972290,
		0.035315, 0.973350, 0.226591,
		29.279770, 27.475689, 25.623535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607786, 27.175983, 24.907951>,  <29.255049, 26.794344, 25.464920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607786, 27.175983, 24.907951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.660307, 27.397379, 25.236929>,  <29.691820, 27.530216, 25.434315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.660307, 27.397379, 25.236929>,  <29.607786, 27.175983, 24.907951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660307, 27.397379, 25.236929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990811, -0.046117, -0.127148,
		-0.032447, 0.831580, -0.554457,
		0.131304, 0.553487, 0.822442,
		29.699697, 27.563425, 25.483662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156506, 27.761965, 24.746170>,  <29.607786, 27.175983, 24.907951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156506, 27.761965, 24.746170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.159027, 27.715401, 25.143442>,  <30.160540, 27.687462, 25.381805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.159027, 27.715401, 25.143442>,  <30.156506, 27.761965, 24.746170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159027, 27.715401, 25.143442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999870, 0.015464, -0.004533,
		-0.014831, 0.993081, 0.116491,
		0.006303, -0.116409, 0.993181,
		30.160917, 27.680477, 25.441397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636717, 28.225086, 25.014923>,  <30.156506, 27.761965, 24.746170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636717, 28.225086, 25.014923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.600019, 28.023466, 25.358438>,  <30.578001, 27.902494, 25.564547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.600019, 28.023466, 25.358438>,  <30.636717, 28.225086, 25.014923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600019, 28.023466, 25.358438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985542, 0.077408, 0.150718,
		-0.142446, 0.860198, 0.489662,
		-0.091744, -0.504051, 0.858787,
		30.572496, 27.872252, 25.616076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923935, 28.583433, 25.547274>,  <30.636717, 28.225086, 25.014923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923935, 28.583433, 25.547274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.960022, 28.194605, 25.633936>,  <30.981674, 27.961308, 25.685934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.960022, 28.194605, 25.633936>,  <30.923935, 28.583433, 25.547274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960022, 28.194605, 25.633936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994272, 0.075396, -0.075755,
		0.057304, 0.222249, 0.973304,
		0.090219, -0.972070, 0.216656,
		30.987087, 27.902985, 25.698933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584639, 28.538637, 25.920046>,  <30.923935, 28.583433, 25.547274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584639, 28.538637, 25.920046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482018, 28.163733, 25.825624>,  <31.420444, 27.938789, 25.768972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482018, 28.163733, 25.825624>,  <31.584639, 28.538637, 25.920046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482018, 28.163733, 25.825624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962712, -0.226116, -0.148514,
		0.085821, -0.265351, 0.960325,
		-0.256553, -0.937262, -0.236051,
		31.405052, 27.882553, 25.754808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066589, 28.066017, 26.292324>,  <31.584639, 28.538637, 25.920046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066589, 28.066017, 26.292324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925783, 27.863834, 25.977211>,  <31.841301, 27.742525, 25.788143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925783, 27.863834, 25.977211>,  <32.066589, 28.066017, 26.292324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925783, 27.863834, 25.977211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932021, -0.111813, -0.344723,
		0.086159, -0.855575, 0.510458,
		-0.352012, -0.505459, -0.787781,
		31.820179, 27.712196, 25.740877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309967, 27.746227, 26.897272>,  <32.066589, 28.066017, 26.292324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309967, 27.746227, 26.897272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335075, 28.097950, 27.086111>,  <32.350140, 28.308985, 27.199415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335075, 28.097950, 27.086111>,  <32.309967, 27.746227, 26.897272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335075, 28.097950, 27.086111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972990, -0.051370, 0.225059,
		0.222148, -0.473474, 0.852334,
		0.062775, 0.879308, 0.472097,
		32.353909, 28.361742, 27.227739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903877, 27.712076, 27.468018>,  <32.309967, 27.746227, 26.897272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903877, 27.712076, 27.468018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959312, 28.102722, 27.402273>,  <31.992575, 28.337111, 27.362827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959312, 28.102722, 27.402273>,  <31.903877, 27.712076, 27.468018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959312, 28.102722, 27.402273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967056, 0.169236, 0.190162,
		0.213531, 0.132591, 0.967897,
		0.138589, 0.976616, -0.164360,
		32.000889, 28.395706, 27.352966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580624, 27.944740, 27.955536>,  <31.903877, 27.712076, 27.468018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580624, 27.944740, 27.955536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577328, 28.245012, 27.691292>,  <31.575350, 28.425177, 27.532745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577328, 28.245012, 27.691292>,  <31.580624, 27.944740, 27.955536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577328, 28.245012, 27.691292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980195, 0.124656, 0.153880,
		0.197864, 0.648797, 0.734787,
		-0.008242, 0.750682, -0.660612,
		31.574856, 28.470217, 27.493109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428329, 28.430223, 28.313822>,  <31.580624, 27.944740, 27.955536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428329, 28.430223, 28.313822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337851, 28.543667, 27.941069>,  <31.283564, 28.611732, 27.717417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337851, 28.543667, 27.941069>,  <31.428329, 28.430223, 28.313822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337851, 28.543667, 27.941069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915325, 0.265351, 0.302935,
		0.333189, 0.921497, 0.199570,
		-0.226198, 0.283606, -0.931881,
		31.269991, 28.628748, 27.661505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269180, 29.070663, 28.397436>,  <31.428329, 28.430223, 28.313822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269180, 29.070663, 28.397436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101273, 28.999626, 28.041401>,  <31.000528, 28.957003, 27.827780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101273, 28.999626, 28.041401>,  <31.269180, 29.070663, 28.397436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101273, 28.999626, 28.041401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894850, 0.244978, 0.373134,
		0.151785, 0.953124, -0.261755,
		-0.419768, -0.177595, -0.890087,
		30.975342, 28.946348, 27.774374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739391, 29.548260, 28.362972>,  <31.269180, 29.070663, 28.397436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739391, 29.548260, 28.362972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630764, 29.274719, 28.092094>,  <30.565588, 29.110594, 27.929567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630764, 29.274719, 28.092094>,  <30.739391, 29.548260, 28.362972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630764, 29.274719, 28.092094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931818, 0.010806, 0.362764,
		-0.240760, 0.729539, -0.640162,
		-0.271568, -0.683853, -0.677197,
		30.549294, 29.069563, 27.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004068, 29.761692, 28.163443>,  <30.739391, 29.548260, 28.362972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004068, 29.761692, 28.163443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054106, 29.379126, 28.057901>,  <30.084127, 29.149586, 27.994577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054106, 29.379126, 28.057901>,  <30.004068, 29.761692, 28.163443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054106, 29.379126, 28.057901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935169, -0.202487, 0.290618,
		-0.331379, 0.210392, -0.919741,
		0.125091, -0.956418, -0.263852,
		30.091633, 29.092201, 27.978746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030161, 30.027107, 27.432556>,  <30.004068, 29.761692, 28.163443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030161, 30.027107, 27.432556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904533, 30.405113, 27.469004>,  <29.829157, 30.631918, 27.490871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904533, 30.405113, 27.469004>,  <30.030161, 30.027107, 27.432556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904533, 30.405113, 27.469004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944472, 0.320764, -0.071296,
		-0.096604, 0.063667, -0.993285,
		-0.314071, 0.945017, 0.091118,
		29.810312, 30.688618, 27.496340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430956, 30.331221, 27.033928>,  <30.030161, 30.027107, 27.432556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430956, 30.331221, 27.033928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294506, 30.632750, 27.258566>,  <30.212637, 30.813667, 27.393349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294506, 30.632750, 27.258566>,  <30.430956, 30.331221, 27.033928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294506, 30.632750, 27.258566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892176, 0.447798, -0.059149,
		-0.296069, 0.480865, -0.825295,
		-0.341123, 0.753821, 0.561596,
		30.192169, 30.858896, 27.427044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681301, 30.975290, 26.639133>,  <30.430956, 30.331221, 27.033928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681301, 30.975290, 26.639133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.606497, 31.066252, 27.021404>,  <30.561613, 31.120829, 27.250767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.606497, 31.066252, 27.021404>,  <30.681301, 30.975290, 26.639133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606497, 31.066252, 27.021404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909788, 0.407058, 0.081175,
		-0.370556, 0.884642, -0.283012,
		-0.187013, 0.227401, 0.955675,
		30.550392, 31.134472, 27.308107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058393, 31.509871, 26.656918>,  <30.681301, 30.975290, 26.639133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058393, 31.509871, 26.656918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.011539, 31.390171, 27.035700>,  <30.983427, 31.318352, 27.262970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.011539, 31.390171, 27.035700>,  <31.058393, 31.509871, 26.656918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011539, 31.390171, 27.035700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932175, 0.295746, 0.208767,
		-0.342532, 0.907185, 0.244310,
		-0.117137, -0.299249, 0.946958,
		30.976398, 31.300396, 27.319788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262968, 32.057125, 27.010015>,  <31.058393, 31.509871, 26.656918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262968, 32.057125, 27.010015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290905, 31.771841, 27.289001>,  <31.307667, 31.600672, 27.456392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290905, 31.771841, 27.289001>,  <31.262968, 32.057125, 27.010015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290905, 31.771841, 27.289001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975271, 0.195786, 0.102544,
		-0.209689, 0.673056, 0.709244,
		0.069842, -0.713207, 0.697466,
		31.311857, 31.557878, 27.498241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578421, 32.357891, 27.526209>,  <31.262968, 32.057125, 27.010015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578421, 32.357891, 27.526209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680801, 31.974968, 27.579956>,  <31.742229, 31.745214, 27.612206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680801, 31.974968, 27.579956>,  <31.578421, 32.357891, 27.526209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680801, 31.974968, 27.579956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958343, 0.269504, 0.094588,
		-0.126763, 0.104562, 0.986407,
		0.255950, -0.957306, 0.134370,
		31.757586, 31.687777, 27.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140884, 32.236252, 28.024839>,  <31.578421, 32.357891, 27.526209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140884, 32.236252, 28.024839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.160683, 31.871708, 27.861395>,  <32.172562, 31.652981, 27.763329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.160683, 31.871708, 27.861395>,  <32.140884, 32.236252, 28.024839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160683, 31.871708, 27.861395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975284, 0.132310, -0.176961,
		0.215340, -0.389755, 0.895388,
		0.049497, -0.911364, -0.408613,
		32.175533, 31.598299, 27.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.621864, 30.835123, 22.647963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781891, 30.470379, 22.611181>,  <25.877907, 30.251532, 22.589113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781891, 30.470379, 22.611181>,  <25.621864, 30.835123, 22.647963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781891, 30.470379, 22.611181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881538, 0.355426, 0.310746,
		-0.250675, -0.205378, 0.946035,
		0.400065, -0.911862, -0.091952,
		25.901911, 30.196819, 22.583595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004492, 30.745029, 23.199556>,  <25.621864, 30.835123, 22.647963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004492, 30.745029, 23.199556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161728, 30.450119, 22.979773>,  <26.256069, 30.273172, 22.847902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161728, 30.450119, 22.979773>,  <26.004492, 30.745029, 23.199556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161728, 30.450119, 22.979773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911963, 0.388960, 0.130513,
		0.117494, -0.552391, 0.825263,
		0.393088, -0.737275, -0.549461,
		26.279654, 30.228937, 22.814934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559244, 30.405333, 23.678596>,  <26.004492, 30.745029, 23.199556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559244, 30.405333, 23.678596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644323, 30.316357, 23.298012>,  <26.695370, 30.262972, 23.069660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644323, 30.316357, 23.298012>,  <26.559244, 30.405333, 23.678596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644323, 30.316357, 23.298012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962609, 0.214883, 0.164951,
		0.167762, -0.950971, 0.259826,
		0.212696, -0.222439, -0.951463,
		26.708132, 30.249624, 23.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242346, 30.044626, 23.599386>,  <26.559244, 30.405333, 23.678596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242346, 30.044626, 23.599386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222673, 30.186110, 23.225761>,  <27.210871, 30.271000, 23.001587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222673, 30.186110, 23.225761>,  <27.242346, 30.044626, 23.599386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222673, 30.186110, 23.225761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987000, 0.160480, 0.008803,
		0.153012, -0.921486, -0.357003,
		-0.049180, 0.353709, -0.934062,
		27.207920, 30.292223, 22.945543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808758, 29.753904, 23.296291>,  <27.242346, 30.044626, 23.599386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808758, 29.753904, 23.296291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688379, 30.066603, 23.077822>,  <27.616152, 30.254221, 22.946739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688379, 30.066603, 23.077822>,  <27.808758, 29.753904, 23.296291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688379, 30.066603, 23.077822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953326, 0.261344, -0.151228,
		0.024518, -0.566195, -0.823907,
		-0.300947, 0.781744, -0.546175,
		27.598095, 30.301126, 22.913969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066586, 29.654791, 22.584059>,  <27.808758, 29.753904, 23.296291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066586, 29.654791, 22.584059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009596, 30.044746, 22.652515>,  <27.975403, 30.278721, 22.693590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009596, 30.044746, 22.652515>,  <28.066586, 29.654791, 22.584059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009596, 30.044746, 22.652515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961870, 0.177151, -0.208383,
		-0.233469, 0.134927, -0.962957,
		-0.142473, 0.974891, 0.171142,
		27.966854, 30.337214, 22.703857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597952, 29.934479, 22.202936>,  <28.066586, 29.654791, 22.584059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597952, 29.934479, 22.202936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487156, 30.245340, 22.428965>,  <28.420677, 30.431858, 22.564581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487156, 30.245340, 22.428965>,  <28.597952, 29.934479, 22.202936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487156, 30.245340, 22.428965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930597, 0.363432, -0.043668,
		-0.239301, 0.513757, -0.823886,
		-0.276991, 0.777156, 0.565070,
		28.404058, 30.478487, 22.598486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756519, 30.562269, 21.825474>,  <28.597952, 29.934479, 22.202936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756519, 30.562269, 21.825474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719269, 30.665466, 22.210133>,  <28.696918, 30.727385, 22.440928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719269, 30.665466, 22.210133>,  <28.756519, 30.562269, 21.825474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719269, 30.665466, 22.210133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905354, 0.423859, -0.026038,
		-0.414320, 0.868207, -0.273047,
		-0.093127, 0.257992, 0.961648,
		28.691330, 30.742865, 22.498627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071520, 31.222692, 21.844694>,  <28.756519, 30.562269, 21.825474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071520, 31.222692, 21.844694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070599, 31.133568, 22.234638>,  <29.070045, 31.080093, 22.468605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070599, 31.133568, 22.234638>,  <29.071520, 31.222692, 21.844694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070599, 31.133568, 22.234638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881476, 0.459901, 0.107195,
		-0.472223, 0.859562, 0.195345,
		-0.002302, -0.222812, 0.974859,
		29.069908, 31.066725, 22.527096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328913, 31.820759, 22.214760>,  <29.071520, 31.222692, 21.844694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328913, 31.820759, 22.214760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388586, 31.514198, 22.464680>,  <29.424391, 31.330261, 22.614632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388586, 31.514198, 22.464680>,  <29.328913, 31.820759, 22.214760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388586, 31.514198, 22.464680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964204, 0.252834, 0.079913,
		-0.219216, 0.590512, 0.776685,
		0.149183, -0.766401, 0.624799,
		29.433340, 31.284279, 22.652119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719698, 32.110489, 22.784731>,  <29.328913, 31.820759, 22.214760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719698, 32.110489, 22.784731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783440, 31.716000, 22.802469>,  <29.821686, 31.479305, 22.813112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783440, 31.716000, 22.802469>,  <29.719698, 32.110489, 22.784731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783440, 31.716000, 22.802469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987084, 0.158423, -0.023832,
		0.016478, 0.047571, 0.998732,
		0.159356, -0.986225, 0.044346,
		29.831247, 31.420132, 22.815773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204432, 31.926382, 23.378193>,  <29.719698, 32.110489, 22.784731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204432, 31.926382, 23.378193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220762, 31.620619, 23.120817>,  <30.230560, 31.437160, 22.966393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220762, 31.620619, 23.120817>,  <30.204432, 31.926382, 23.378193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220762, 31.620619, 23.120817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998796, 0.048756, 0.005451,
		0.027205, -0.642886, 0.765478,
		0.040826, -0.764408, -0.643439,
		30.233009, 31.391296, 22.927786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534155, 31.880035, 24.207771>,  <30.204432, 31.926382, 23.378193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534155, 31.880035, 24.207771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480726, 32.274296, 24.249050>,  <30.448669, 32.510853, 24.273817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480726, 32.274296, 24.249050>,  <30.534155, 31.880035, 24.207771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480726, 32.274296, 24.249050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831255, -0.168124, 0.529858,
		0.539606, -0.015011, 0.841784,
		-0.133571, 0.985651, 0.103198,
		30.440655, 32.569992, 24.280010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490606, 31.950941, 24.866949>,  <30.534155, 31.880035, 24.207771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490606, 31.950941, 24.866949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.300203, 32.254860, 24.689806>,  <30.185961, 32.437210, 24.583521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.300203, 32.254860, 24.689806>,  <30.490606, 31.950941, 24.866949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300203, 32.254860, 24.689806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862995, -0.306632, 0.401518,
		0.169278, 0.573310, 0.801661,
		-0.476010, 0.759797, -0.442858,
		30.157400, 32.482800, 24.556948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921389, 32.240723, 25.364971>,  <30.490606, 31.950941, 24.866949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921389, 32.240723, 25.364971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800676, 32.360447, 25.002901>,  <29.728249, 32.432281, 24.785660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800676, 32.360447, 25.002901>,  <29.921389, 32.240723, 25.364971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800676, 32.360447, 25.002901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950174, -0.172184, 0.259849,
		-0.078081, 0.938492, 0.336358,
		-0.301782, 0.299309, -0.905175,
		29.710142, 32.450241, 24.731348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354261, 32.685318, 25.456434>,  <29.921389, 32.240723, 25.364971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354261, 32.685318, 25.456434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321117, 32.608856, 25.065212>,  <29.301231, 32.562977, 24.830479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321117, 32.608856, 25.065212>,  <29.354261, 32.685318, 25.456434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321117, 32.608856, 25.065212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972983, -0.196705, 0.120878,
		-0.215496, 0.961647, -0.169695,
		-0.082862, -0.191159, -0.978055,
		29.296259, 32.551510, 24.771795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725054, 32.996483, 25.295803>,  <29.354261, 32.685318, 25.456434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725054, 32.996483, 25.295803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817177, 32.743263, 25.000177>,  <28.872450, 32.591331, 24.822802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817177, 32.743263, 25.000177>,  <28.725054, 32.996483, 25.295803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817177, 32.743263, 25.000177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941456, -0.337103, -0.004628,
		-0.246210, 0.696861, -0.673621,
		0.230305, -0.633046, -0.739062,
		28.886269, 32.553349, 24.778460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026297, 32.959488, 24.942608>,  <28.725054, 32.996483, 25.295803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026297, 32.959488, 24.942608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232410, 32.647667, 24.800180>,  <28.356079, 32.460575, 24.714724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232410, 32.647667, 24.800180>,  <28.026297, 32.959488, 24.942608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232410, 32.647667, 24.800180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848083, -0.523659, -0.080847,
		-0.123434, 0.343635, -0.930956,
		0.515285, -0.779549, -0.356068,
		28.386995, 32.413803, 24.693359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672003, 32.785069, 24.342892>,  <28.026297, 32.959488, 24.942608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672003, 32.785069, 24.342892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.884125, 32.464886, 24.454636>,  <28.011398, 32.272778, 24.521683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.884125, 32.464886, 24.454636>,  <27.672003, 32.785069, 24.342892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884125, 32.464886, 24.454636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837126, -0.546519, 0.023151,
		0.134144, -0.246137, -0.959907,
		0.530306, -0.800458, 0.279360,
		28.043217, 32.224747, 24.538445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461411, 32.236027, 23.945957>,  <27.672003, 32.785069, 24.342892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461411, 32.236027, 23.945957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.607103, 32.053829, 24.270884>,  <27.694519, 31.944510, 24.465839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.607103, 32.053829, 24.270884>,  <27.461411, 32.236027, 23.945957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607103, 32.053829, 24.270884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774790, -0.632179, -0.007083,
		0.516757, -0.626795, -0.583172,
		0.364230, -0.455496, 0.812318,
		27.716372, 31.917181, 24.514580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238758, 31.515730, 24.007776>,  <27.461411, 32.236027, 23.945957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238758, 31.515730, 24.007776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360645, 31.546167, 24.387535>,  <27.433777, 31.564430, 24.615391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360645, 31.546167, 24.387535>,  <27.238758, 31.515730, 24.007776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360645, 31.546167, 24.387535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668230, -0.693217, 0.270033,
		0.678688, -0.716700, -0.160386,
		0.304716, 0.076093, 0.949399,
		27.452061, 31.568995, 24.672356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388292, 30.791895, 24.334896>,  <27.238758, 31.515730, 24.007776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388292, 30.791895, 24.334896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.287157, 31.063745, 24.610338>,  <27.226477, 31.226856, 24.775604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.287157, 31.063745, 24.610338>,  <27.388292, 30.791895, 24.334896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287157, 31.063745, 24.610338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608430, -0.665073, 0.433002,
		0.752254, -0.309489, 0.581661,
		-0.252838, 0.679628, 0.688607,
		27.211306, 31.267633, 24.816919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333759, 30.407461, 24.888285>,  <27.388292, 30.791895, 24.334896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333759, 30.407461, 24.888285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141228, 30.739817, 24.999962>,  <27.025709, 30.939230, 25.066969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141228, 30.739817, 24.999962>,  <27.333759, 30.407461, 24.888285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141228, 30.739817, 24.999962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655695, -0.552687, 0.514393,
		0.581709, 0.064528, 0.810834,
		-0.481330, 0.830887, 0.279193,
		26.996828, 30.989082, 25.083719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010410, 30.238972, 25.529251>,  <27.333759, 30.407461, 24.888285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010410, 30.238972, 25.529251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823309, 30.572289, 25.411379>,  <26.711048, 30.772278, 25.340656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823309, 30.572289, 25.411379>,  <27.010410, 30.238972, 25.529251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823309, 30.572289, 25.411379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844986, -0.323804, 0.425616,
		0.259243, 0.448083, 0.855578,
		-0.467751, 0.833290, -0.294680,
		26.682983, 30.822275, 25.322975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528521, 30.390774, 26.109543>,  <27.010410, 30.238972, 25.529251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528521, 30.390774, 26.109543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380489, 30.567955, 25.782902>,  <26.291672, 30.674263, 25.586918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380489, 30.567955, 25.782902>,  <26.528521, 30.390774, 26.109543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380489, 30.567955, 25.782902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928885, -0.162522, 0.332806,
		0.014702, 0.881691, 0.471597,
		-0.370077, 0.442953, -0.816600,
		26.269466, 30.700840, 25.537922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904428, 30.762148, 26.322945>,  <26.528521, 30.390774, 26.109543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904428, 30.762148, 26.322945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.840237, 30.732758, 25.929224>,  <25.801722, 30.715122, 25.692991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.840237, 30.732758, 25.929224>,  <25.904428, 30.762148, 26.322945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840237, 30.732758, 25.929224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984148, -0.064361, 0.165257,
		-0.075493, 0.995218, -0.061984,
		-0.160477, -0.073478, -0.984301,
		25.792093, 30.710714, 25.633934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605991, 30.896696, 26.803585>,  <25.904428, 30.762148, 26.322945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605991, 30.896696, 26.803585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.726803, 30.640724, 27.086222>,  <26.799290, 30.487141, 27.255804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.726803, 30.640724, 27.086222>,  <26.605991, 30.896696, 26.803585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726803, 30.640724, 27.086222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872325, 0.484467, 0.065891,
		-0.384486, 0.596477, 0.704547,
		0.302027, -0.639927, 0.706592,
		26.817411, 30.448746, 27.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057566, 31.273582, 27.340052>,  <26.605991, 30.896696, 26.803585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057566, 31.273582, 27.340052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173904, 30.896879, 27.407581>,  <27.243708, 30.670856, 27.448099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173904, 30.896879, 27.407581>,  <27.057566, 31.273582, 27.340052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173904, 30.896879, 27.407581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904856, 0.328082, 0.271288,
		-0.310875, 0.073858, 0.947577,
		0.290846, -0.941757, 0.168823,
		27.261158, 30.614351, 27.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333479, 31.224665, 27.999874>,  <27.057566, 31.273582, 27.340052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333479, 31.224665, 27.999874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478521, 30.929623, 27.772032>,  <27.565546, 30.752598, 27.635326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478521, 30.929623, 27.772032>,  <27.333479, 31.224665, 27.999874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478521, 30.929623, 27.772032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931806, 0.276479, 0.235154,
		-0.015968, -0.616031, 0.787560,
		0.362606, -0.737608, -0.569607,
		27.587303, 30.708340, 27.601151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854052, 30.937984, 28.340178>,  <27.333479, 31.224665, 27.999874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854052, 30.937984, 28.340178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950024, 30.822632, 27.969391>,  <28.007607, 30.753420, 27.746918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950024, 30.822632, 27.969391>,  <27.854052, 30.937984, 28.340178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950024, 30.822632, 27.969391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947768, 0.276299, 0.159357,
		0.210165, -0.916785, 0.339610,
		0.239930, -0.288381, -0.926968,
		28.022003, 30.736118, 27.691299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530186, 30.788843, 28.479481>,  <27.854052, 30.937984, 28.340178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530186, 30.788843, 28.479481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510319, 30.779566, 28.080082>,  <28.498398, 30.774000, 27.840443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510319, 30.779566, 28.080082>,  <28.530186, 30.788843, 28.479481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510319, 30.779566, 28.080082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988856, 0.139342, -0.052424,
		0.140349, -0.989973, 0.016013,
		-0.049667, -0.023193, -0.998497,
		28.495419, 30.772608, 27.780533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085705, 30.321135, 28.349138>,  <28.530186, 30.788843, 28.479481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085705, 30.321135, 28.349138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998014, 30.511330, 28.008350>,  <28.945400, 30.625446, 27.803879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998014, 30.511330, 28.008350>,  <29.085705, 30.321135, 28.349138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998014, 30.511330, 28.008350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975282, 0.082060, -0.205160,
		-0.027638, -0.875886, -0.481725,
		-0.219227, 0.475488, -0.851969,
		28.932247, 30.653976, 27.752760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413555, 29.979610, 27.825039>,  <29.085705, 30.321135, 28.349138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413555, 29.979610, 27.825039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384665, 30.361637, 27.710058>,  <29.367331, 30.590853, 27.641069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384665, 30.361637, 27.710058>,  <29.413555, 29.979610, 27.825039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384665, 30.361637, 27.710058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942461, -0.028970, -0.333058,
		-0.326421, -0.294965, -0.898023,
		-0.072225, 0.955069, -0.287449,
		29.362997, 30.648157, 27.623823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266418, 29.355600, 27.422380>,  <29.413555, 29.979610, 27.825039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266418, 29.355600, 27.422380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424377, 29.039438, 27.609703>,  <29.519154, 28.849741, 27.722097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424377, 29.039438, 27.609703>,  <29.266418, 29.355600, 27.422380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424377, 29.039438, 27.609703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918444, -0.352237, 0.179972,
		0.022704, -0.501186, -0.865042,
		0.394899, -0.790407, 0.468308,
		29.542847, 28.802317, 27.750195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962694, 28.736732, 27.125954>,  <29.266418, 29.355600, 27.422380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962694, 28.736732, 27.125954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095774, 28.616159, 27.483377>,  <29.175621, 28.543816, 27.697832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095774, 28.616159, 27.483377>,  <28.962694, 28.736732, 27.125954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095774, 28.616159, 27.483377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874128, -0.454116, 0.172274,
		0.353852, -0.838402, -0.414573,
		0.332699, -0.301430, 0.893561,
		29.195583, 28.525730, 27.751446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848026, 27.997261, 27.132065>,  <28.962694, 28.736732, 27.125954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848026, 27.997261, 27.132065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851162, 28.099413, 27.518787>,  <28.853043, 28.160704, 27.750822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851162, 28.099413, 27.518787>,  <28.848026, 27.997261, 27.132065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851162, 28.099413, 27.518787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815385, -0.558055, 0.154019,
		0.578865, -0.789529, 0.203860,
		0.007837, 0.255381, 0.966809,
		28.853514, 28.176027, 27.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519268, 27.422976, 27.348257>,  <28.848026, 27.997261, 27.132065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519268, 27.422976, 27.348257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522493, 27.632616, 27.688904>,  <28.524429, 27.758400, 27.893291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522493, 27.632616, 27.688904>,  <28.519268, 27.422976, 27.348257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522493, 27.632616, 27.688904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807988, -0.498342, 0.314341,
		0.589144, -0.690631, 0.419451,
		0.008063, 0.524103, 0.851617,
		28.524912, 27.789846, 27.944389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527443, 26.941526, 27.751308>,  <28.519268, 27.422976, 27.348257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527443, 26.941526, 27.751308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364542, 27.263819, 27.923330>,  <28.266802, 27.457193, 28.026543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364542, 27.263819, 27.923330>,  <28.527443, 26.941526, 27.751308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364542, 27.263819, 27.923330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748178, -0.564372, 0.348874,
		0.523808, -0.179678, 0.832671,
		-0.407252, 0.805729, 0.430054,
		28.242367, 27.505537, 28.052347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330338, 26.700108, 28.349258>,  <28.527443, 26.941526, 27.751308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330338, 26.700108, 28.349258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.130505, 27.046352, 28.335783>,  <28.010605, 27.254099, 28.327698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.130505, 27.046352, 28.335783>,  <28.330338, 26.700108, 28.349258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130505, 27.046352, 28.335783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795506, -0.443030, 0.413395,
		0.342913, 0.233325, 0.909929,
		-0.499582, 0.865612, -0.033690,
		27.980631, 27.306036, 28.325676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028593, 26.740225, 28.990976>,  <28.330338, 26.700108, 28.349258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028593, 26.740225, 28.990976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796524, 26.956066, 28.746935>,  <27.657282, 27.085571, 28.600510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796524, 26.956066, 28.746935>,  <28.028593, 26.740225, 28.990976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796524, 26.956066, 28.746935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791382, -0.550630, 0.265559,
		-0.192646, 0.636896, 0.746493,
		-0.580174, 0.539602, -0.610105,
		27.622471, 27.117947, 28.563904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452404, 26.836620, 29.411308>,  <28.028593, 26.740225, 28.990976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452404, 26.836620, 29.411308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319046, 26.952112, 29.052313>,  <27.239031, 27.021408, 28.836916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319046, 26.952112, 29.052313>,  <27.452404, 26.836620, 29.411308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319046, 26.952112, 29.052313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710017, -0.703184, 0.037533,
		-0.620262, 0.649744, 0.439440,
		-0.333394, 0.288730, -0.897487,
		27.219028, 27.038731, 28.783066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664091, 26.816917, 29.444744>,  <27.452404, 26.836620, 29.411308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664091, 26.816917, 29.444744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786331, 26.737980, 29.072151>,  <26.859676, 26.690617, 28.848595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786331, 26.737980, 29.072151>,  <26.664091, 26.816917, 29.444744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786331, 26.737980, 29.072151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622981, -0.781271, -0.038869,
		-0.720071, 0.592175, -0.361698,
		0.305601, -0.197343, -0.931485,
		26.878012, 26.678778, 28.792706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.569096, 30.465094, 25.357964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.455807, 30.255331, 25.036770>,  <42.387833, 30.129473, 24.844053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.455807, 30.255331, 25.036770>,  <42.569096, 30.465094, 25.357964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455807, 30.255331, 25.036770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912925, 0.403958, 0.058189,
		0.293856, 0.749543, -0.593156,
		-0.283225, -0.524408, -0.802982,
		42.370838, 30.098009, 24.795876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111801, 30.919981, 24.794954>,  <42.569096, 30.465094, 25.357964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111801, 30.919981, 24.794954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.042812, 30.526045, 24.802351>,  <42.001419, 30.289682, 24.806789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.042812, 30.526045, 24.802351>,  <42.111801, 30.919981, 24.794954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042812, 30.526045, 24.802351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980909, 0.170013, -0.094408,
		0.089833, -0.034423, -0.995362,
		-0.172474, -0.984841, 0.018493,
		41.991070, 30.230593, 24.807899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528938, 30.736650, 24.290592>,  <42.111801, 30.919981, 24.794954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528938, 30.736650, 24.290592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.575714, 30.415155, 24.523943>,  <41.603779, 30.222258, 24.663954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.575714, 30.415155, 24.523943>,  <41.528938, 30.736650, 24.290592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575714, 30.415155, 24.523943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993088, -0.100567, 0.060518,
		0.010029, -0.586424, -0.809942,
		0.116943, -0.803737, 0.583379,
		41.610798, 30.174034, 24.698957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082726, 30.313135, 23.967934>,  <41.528938, 30.736650, 24.290592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082726, 30.313135, 23.967934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.134411, 30.197763, 24.347431>,  <41.165424, 30.128540, 24.575129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.134411, 30.197763, 24.347431>,  <41.082726, 30.313135, 23.967934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134411, 30.197763, 24.347431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988973, -0.107291, 0.102080,
		0.072348, -0.951471, -0.299114,
		0.129218, -0.288431, 0.948741,
		41.173176, 30.111235, 24.632053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605865, 29.850660, 24.054762>,  <41.082726, 30.313135, 23.967934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605865, 29.850660, 24.054762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.709045, 29.915688, 24.435715>,  <40.770954, 29.954704, 24.664288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.709045, 29.915688, 24.435715>,  <40.605865, 29.850660, 24.054762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709045, 29.915688, 24.435715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955365, -0.104012, 0.276511,
		0.144011, -0.981200, 0.128483,
		0.257949, 0.162569, 0.952383,
		40.786430, 29.964458, 24.721430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315445, 29.289261, 24.492800>,  <40.605865, 29.850660, 24.054762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315445, 29.289261, 24.492800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.399456, 29.573311, 24.761608>,  <40.449863, 29.743742, 24.922894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.399456, 29.573311, 24.761608>,  <40.315445, 29.289261, 24.492800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399456, 29.573311, 24.761608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866437, -0.183262, 0.464438,
		0.452966, -0.679805, 0.576790,
		0.210023, 0.710127, 0.672020,
		40.462463, 29.786348, 24.963215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026745, 29.032608, 25.110519>,  <40.315445, 29.289261, 24.492800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026745, 29.032608, 25.110519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033279, 29.428125, 25.169884>,  <40.037201, 29.665436, 25.205502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033279, 29.428125, 25.169884>,  <40.026745, 29.032608, 25.110519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033279, 29.428125, 25.169884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850363, -0.064335, 0.522249,
		0.525943, -0.134733, 0.839780,
		0.016337, 0.988791, 0.148409,
		40.038181, 29.724762, 25.214407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858990, 29.077009, 25.792883>,  <40.026745, 29.032608, 25.110519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858990, 29.077009, 25.792883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777515, 29.423517, 25.610415>,  <39.728630, 29.631422, 25.500935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777515, 29.423517, 25.610415>,  <39.858990, 29.077009, 25.792883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777515, 29.423517, 25.610415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911881, 0.001734, 0.410451,
		0.356353, 0.499573, 0.789582,
		-0.203681, 0.866270, -0.456170,
		39.716412, 29.683397, 25.473564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441463, 29.450420, 26.237268>,  <39.858990, 29.077009, 25.792883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441463, 29.450420, 26.237268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368111, 29.696253, 25.930370>,  <39.324097, 29.843752, 25.746231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368111, 29.696253, 25.930370>,  <39.441463, 29.450420, 26.237268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368111, 29.696253, 25.930370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916998, 0.174299, 0.358795,
		0.354238, 0.769359, 0.531604,
		-0.183385, 0.614579, -0.767244,
		39.313095, 29.880627, 25.700197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021004, 29.913223, 26.481815>,  <39.441463, 29.450420, 26.237268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021004, 29.913223, 26.481815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972897, 29.990044, 26.092220>,  <38.944035, 30.036135, 25.858463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972897, 29.990044, 26.092220>,  <39.021004, 29.913223, 26.481815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972897, 29.990044, 26.092220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949231, 0.265033, 0.169465,
		0.290684, 0.944921, 0.150425,
		-0.120263, 0.192049, -0.973989,
		38.936817, 30.047659, 25.800024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757267, 30.568485, 26.291315>,  <39.021004, 29.913223, 26.481815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757267, 30.568485, 26.291315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637714, 30.338108, 25.986958>,  <38.565983, 30.199881, 25.804344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637714, 30.338108, 25.986958>,  <38.757267, 30.568485, 26.291315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637714, 30.338108, 25.986958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953355, 0.215505, 0.211360,
		0.042244, 0.788572, -0.613490,
		-0.298883, -0.575945, -0.760892,
		38.548050, 30.165325, 25.758690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139194, 30.913408, 25.972097>,  <38.757267, 30.568485, 26.291315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139194, 30.913408, 25.972097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102470, 30.562845, 25.783001>,  <38.080437, 30.352509, 25.669542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102470, 30.562845, 25.783001>,  <38.139194, 30.913408, 25.972097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102470, 30.562845, 25.783001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992811, 0.043958, 0.111325,
		-0.076785, 0.479564, -0.874141,
		-0.091813, -0.876405, -0.472741,
		38.074928, 30.299923, 25.641178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058430, 31.518349, 25.586807>,  <38.139194, 30.913408, 25.972097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058430, 31.518349, 25.586807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940220, 31.881680, 25.705202>,  <37.869293, 32.099678, 25.776239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940220, 31.881680, 25.705202>,  <38.058430, 31.518349, 25.586807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940220, 31.881680, 25.705202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949757, 0.312776, -0.011568,
		-0.103085, 0.277699, -0.955121,
		-0.295526, 0.908325, 0.295989,
		37.851562, 32.154179, 25.793999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318798, 32.032269, 25.066795>,  <38.058430, 31.518349, 25.586807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318798, 32.032269, 25.066795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244324, 32.191956, 25.425896>,  <38.199638, 32.287769, 25.641356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244324, 32.191956, 25.425896>,  <38.318798, 32.032269, 25.066795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244324, 32.191956, 25.425896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901069, 0.433636, -0.005956,
		-0.391675, 0.807827, -0.440462,
		-0.186189, 0.399219, 0.897751,
		38.188469, 32.311722, 25.695221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852882, 32.621956, 25.131613>,  <38.318798, 32.032269, 25.066795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852882, 32.621956, 25.131613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691792, 32.603401, 25.497271>,  <38.595135, 32.592270, 25.716665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691792, 32.603401, 25.497271>,  <38.852882, 32.621956, 25.131613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691792, 32.603401, 25.497271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832268, 0.397123, 0.386812,
		-0.380970, 0.916592, -0.121328,
		-0.402731, -0.046387, 0.914142,
		38.570972, 32.589485, 25.771513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016560, 33.221882, 25.422159>,  <38.852882, 32.621956, 25.131613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016560, 33.221882, 25.422159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.933720, 32.990265, 25.737581>,  <38.884018, 32.851295, 25.926834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.933720, 32.990265, 25.737581>,  <39.016560, 33.221882, 25.422159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933720, 32.990265, 25.737581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692889, 0.482219, 0.536069,
		-0.690663, 0.657400, 0.301346,
		-0.207097, -0.579042, 0.788556,
		38.871590, 32.816551, 25.974148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765823, 33.675343, 25.915867>,  <39.016560, 33.221882, 25.422159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765823, 33.675343, 25.915867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916378, 33.341068, 26.075846>,  <39.006710, 33.140503, 26.171833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916378, 33.341068, 26.075846>,  <38.765823, 33.675343, 25.915867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916378, 33.341068, 26.075846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756855, 0.526327, 0.387491,
		-0.534325, 0.156855, 0.830598,
		0.376386, -0.835689, 0.399946,
		39.029293, 33.090363, 26.195829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895279, 33.905422, 26.672314>,  <38.765823, 33.675343, 25.915867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895279, 33.905422, 26.672314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095547, 33.562035, 26.627836>,  <39.215706, 33.356003, 26.601151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095547, 33.562035, 26.627836>,  <38.895279, 33.905422, 26.672314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095547, 33.562035, 26.627836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823619, 0.432887, 0.366416,
		-0.266423, -0.275034, 0.923783,
		0.500671, -0.858467, -0.111192,
		39.245747, 33.304493, 26.594479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268456, 33.858265, 27.328453>,  <38.895279, 33.905422, 26.672314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268456, 33.858265, 27.328453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444736, 33.636593, 27.045988>,  <39.550507, 33.503590, 26.876509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444736, 33.636593, 27.045988>,  <39.268456, 33.858265, 27.328453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444736, 33.636593, 27.045988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895397, 0.327125, 0.302081,
		0.063595, -0.765423, 0.640378,
		0.440703, -0.554182, -0.706161,
		39.576946, 33.470337, 26.834139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891464, 33.517876, 27.655220>,  <39.268456, 33.858265, 27.328453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891464, 33.517876, 27.655220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.947948, 33.509254, 27.259323>,  <39.981838, 33.504082, 27.021784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.947948, 33.509254, 27.259323>,  <39.891464, 33.517876, 27.655220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947948, 33.509254, 27.259323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974141, 0.181146, 0.135043,
		0.176378, -0.983220, 0.046577,
		0.141214, -0.021554, -0.989744,
		39.990314, 33.502789, 26.962400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552002, 33.075161, 27.579802>,  <39.891464, 33.517876, 27.655220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552002, 33.075161, 27.579802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506451, 33.262882, 27.229536>,  <40.479118, 33.375515, 27.019377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506451, 33.262882, 27.229536>,  <40.552002, 33.075161, 27.579802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506451, 33.262882, 27.229536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980812, 0.193490, -0.023859,
		0.158235, -0.861578, -0.482333,
		-0.113883, 0.469303, -0.875663,
		40.472286, 33.403671, 26.966837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098366, 32.785286, 26.971586>,  <40.552002, 33.075161, 27.579802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098366, 32.785286, 26.971586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.981133, 33.143230, 26.836933>,  <40.910793, 33.357998, 26.756142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.981133, 33.143230, 26.836933>,  <41.098366, 32.785286, 26.971586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981133, 33.143230, 26.836933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954864, 0.256162, -0.150387,
		-0.048343, -0.365515, -0.929549,
		-0.293084, 0.894863, -0.336634,
		40.893208, 33.411690, 26.735943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308975, 32.708622, 26.329605>,  <41.098366, 32.785286, 26.971586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308975, 32.708622, 26.329605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.262772, 33.100613, 26.394470>,  <41.235050, 33.335808, 26.433390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.262772, 33.100613, 26.394470>,  <41.308975, 32.708622, 26.329605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262772, 33.100613, 26.394470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925897, 0.165342, -0.339672,
		-0.359684, 0.110909, -0.926459,
		-0.115510, 0.979980, 0.162161,
		41.228119, 33.394608, 26.443119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488762, 33.018871, 25.742632>,  <41.308975, 32.708622, 26.329605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488762, 33.018871, 25.742632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.516060, 33.311672, 26.013783>,  <41.532440, 33.487350, 26.176474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.516060, 33.311672, 26.013783>,  <41.488762, 33.018871, 25.742632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516060, 33.311672, 26.013783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928966, 0.201152, -0.310741,
		-0.363819, 0.650934, -0.666274,
		0.068249, 0.731999, 0.677878,
		41.536533, 33.531273, 26.217146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704700, 33.749935, 25.372644>,  <41.488762, 33.018871, 25.742632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704700, 33.749935, 25.372644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.789692, 33.790733, 25.761375>,  <41.840687, 33.815212, 25.994614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.789692, 33.790733, 25.761375>,  <41.704700, 33.749935, 25.372644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789692, 33.790733, 25.761375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913223, 0.333129, -0.234626,
		-0.347675, 0.937349, -0.022363,
		0.212477, 0.101995, 0.971829,
		41.853436, 33.821331, 26.052923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911266, 34.441978, 25.421501>,  <41.704700, 33.749935, 25.372644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911266, 34.441978, 25.421501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058598, 34.224659, 25.723274>,  <42.146996, 34.094269, 25.904337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058598, 34.224659, 25.723274>,  <41.911266, 34.441978, 25.421501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058598, 34.224659, 25.723274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922693, 0.313034, -0.225050,
		-0.113894, 0.779000, 0.616593,
		0.368328, -0.543294, 0.754431,
		42.169098, 34.061672, 25.949604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128536, 34.708839, 25.305536>,  <41.911266, 34.441978, 25.421501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128536, 34.708839, 25.305536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.255527, 34.861916, 24.958488>,  <41.331722, 34.953762, 24.750259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.255527, 34.861916, 24.958488>,  <41.128536, 34.708839, 25.305536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255527, 34.861916, 24.958488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941573, 0.235742, -0.240555,
		0.112476, 0.893295, 0.435171,
		0.317475, 0.382688, -0.867617,
		41.350769, 34.976723, 24.698204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832966, 35.394474, 25.216223>,  <41.128536, 34.708839, 25.305536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832966, 35.394474, 25.216223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.916065, 35.227581, 24.862328>,  <40.965923, 35.127445, 24.649990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.916065, 35.227581, 24.862328>,  <40.832966, 35.394474, 25.216223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916065, 35.227581, 24.862328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962615, 0.073517, -0.260707,
		0.173819, 0.905821, -0.386361,
		0.207749, -0.417232, -0.884736,
		40.978390, 35.102409, 24.596907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524685, 35.807644, 24.733768>,  <40.832966, 35.394474, 25.216223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524685, 35.807644, 24.733768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.550953, 35.433983, 24.593460>,  <40.566715, 35.209785, 24.509275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.550953, 35.433983, 24.593460>,  <40.524685, 35.807644, 24.733768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550953, 35.433983, 24.593460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985381, -0.005331, -0.170283,
		0.157201, 0.356825, -0.920849,
		0.065671, -0.934156, -0.350771,
		40.570656, 35.153736, 24.488230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218075, 35.806835, 24.060549>,  <40.524685, 35.807644, 24.733768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218075, 35.806835, 24.060549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.228306, 35.414623, 24.138420>,  <40.234444, 35.179295, 24.185143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.228306, 35.414623, 24.138420>,  <40.218075, 35.806835, 24.060549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228306, 35.414623, 24.138420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969478, -0.071831, -0.234419,
		0.243840, -0.182739, -0.952443,
		0.025578, -0.980534, 0.194677,
		40.235977, 35.120464, 24.196823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897511, 35.432941, 23.411613>,  <40.218075, 35.806835, 24.060549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897511, 35.432941, 23.411613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.881489, 35.177795, 23.719255>,  <39.871876, 35.024708, 23.903841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.881489, 35.177795, 23.719255>,  <39.897511, 35.432941, 23.411613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881489, 35.177795, 23.719255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971416, -0.155382, -0.179462,
		0.233978, -0.754311, -0.613408,
		-0.040057, -0.637864, 0.769106,
		39.869473, 34.986435, 23.949987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615177, 34.830265, 23.182121>,  <39.897511, 35.432941, 23.411613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615177, 34.830265, 23.182121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532902, 34.825680, 23.573542>,  <39.483536, 34.822929, 23.808393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532902, 34.825680, 23.573542>,  <39.615177, 34.830265, 23.182121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532902, 34.825680, 23.573542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961053, -0.186234, -0.204193,
		0.184581, -0.982439, 0.027285,
		-0.205688, -0.011468, 0.978550,
		39.471195, 34.822243, 23.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058369, 34.361790, 23.175526>,  <39.615177, 34.830265, 23.182121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058369, 34.361790, 23.175526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056198, 34.532047, 23.537476>,  <39.054897, 34.634201, 23.754644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056198, 34.532047, 23.537476>,  <39.058369, 34.361790, 23.175526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056198, 34.532047, 23.537476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994636, -0.095769, 0.039088,
		0.103296, -0.899807, 0.423883,
		-0.005423, 0.425647, 0.904873,
		39.054573, 34.659740, 23.808937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741978, 33.892666, 23.716913>,  <39.058369, 34.361790, 23.175526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741978, 33.892666, 23.716913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687054, 34.265125, 23.852036>,  <38.654099, 34.488602, 23.933109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687054, 34.265125, 23.852036>,  <38.741978, 33.892666, 23.716913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687054, 34.265125, 23.852036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983427, -0.168914, 0.065878,
		0.118402, -0.323160, 0.938908,
		-0.137306, 0.931147, 0.337804,
		38.645863, 34.544468, 23.953377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244614, 33.749290, 24.249302>,  <38.741978, 33.892666, 23.716913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244614, 33.749290, 24.249302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224384, 34.142220, 24.177217>,  <38.212246, 34.377979, 24.133966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224384, 34.142220, 24.177217>,  <38.244614, 33.749290, 24.249302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224384, 34.142220, 24.177217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978920, -0.013004, 0.203831,
		0.197886, 0.186720, 0.962277,
		-0.050573, 0.982327, -0.180210,
		38.209213, 34.436916, 24.123154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869835, 34.048985, 24.804838>,  <38.244614, 33.749290, 24.249302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869835, 34.048985, 24.804838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834324, 34.307426, 24.501610>,  <37.813019, 34.462490, 24.319674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834324, 34.307426, 24.501610>,  <37.869835, 34.048985, 24.804838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834324, 34.307426, 24.501610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995609, -0.080246, 0.048201,
		-0.029690, 0.759020, 0.650390,
		-0.088777, 0.646103, -0.758070,
		37.807690, 34.501259, 24.274189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468987, 34.632816, 25.041500>,  <37.869835, 34.048985, 24.804838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468987, 34.632816, 25.041500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427608, 34.577290, 24.647539>,  <37.402782, 34.543972, 24.411163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427608, 34.577290, 24.647539>,  <37.468987, 34.632816, 25.041500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427608, 34.577290, 24.647539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994185, 0.044211, 0.098186,
		0.029913, 0.989331, -0.142582,
		-0.103442, -0.138816, -0.984901,
		37.396576, 34.535645, 24.352068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944729, 35.132221, 24.803209>,  <37.468987, 34.632816, 25.041500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944729, 35.132221, 24.803209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995575, 34.905972, 24.477287>,  <37.026081, 34.770222, 24.281734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995575, 34.905972, 24.477287>,  <36.944729, 35.132221, 24.803209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995575, 34.905972, 24.477287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991091, -0.039504, -0.127192,
		0.039756, 0.823713, -0.565611,
		0.127114, -0.565629, -0.814804,
		37.033710, 34.736282, 24.232845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523911, 35.480358, 24.329367>,  <36.944729, 35.132221, 24.803209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523911, 35.480358, 24.329367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578941, 35.096207, 24.232418>,  <36.611961, 34.865715, 24.174250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578941, 35.096207, 24.232418>,  <36.523911, 35.480358, 24.329367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578941, 35.096207, 24.232418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986845, -0.111925, -0.116663,
		0.084914, 0.255233, -0.963144,
		0.137576, -0.960379, -0.242371,
		36.620213, 34.808094, 24.159706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063179, 35.284462, 23.662209>,  <36.523911, 35.480358, 24.329367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063179, 35.284462, 23.662209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140400, 34.923641, 23.816631>,  <36.186733, 34.707150, 23.909285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140400, 34.923641, 23.816631>,  <36.063179, 35.284462, 23.662209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140400, 34.923641, 23.816631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883594, -0.330898, -0.331312,
		0.426604, -0.277157, -0.860925,
		0.193053, -0.902048, 0.386057,
		36.198315, 34.653027, 23.932449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813316, 34.802929, 23.221241>,  <36.063179, 35.284462, 23.662209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813316, 34.802929, 23.221241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840778, 34.598751, 23.564108>,  <35.857254, 34.476246, 23.769829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840778, 34.598751, 23.564108>,  <35.813316, 34.802929, 23.221241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840778, 34.598751, 23.564108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917560, -0.369586, -0.146597,
		0.391626, -0.776437, -0.493735,
		0.068655, -0.510442, 0.857167,
		35.861374, 34.445618, 23.821259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573227, 34.121407, 22.974365>,  <35.813316, 34.802929, 23.221241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573227, 34.121407, 22.974365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548538, 34.136208, 23.373327>,  <35.533726, 34.145088, 23.612705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548538, 34.136208, 23.373327>,  <35.573227, 34.121407, 22.974365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548538, 34.136208, 23.373327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908501, -0.415887, -0.040789,
		0.413299, -0.908663, 0.059289,
		-0.061721, 0.037006, 0.997407,
		35.530022, 34.147308, 23.672550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502892, 33.359993, 23.242668>,  <35.573227, 34.121407, 22.974365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502892, 33.359993, 23.242668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.359940, 33.603699, 23.525816>,  <35.274170, 33.749924, 23.695704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.359940, 33.603699, 23.525816>,  <35.502892, 33.359993, 23.242668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359940, 33.603699, 23.525816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892992, -0.444921, -0.067899,
		0.273577, -0.656386, 0.703074,
		-0.357380, 0.609264, 0.707868,
		35.252724, 33.786476, 23.738176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095123, 32.904430, 23.714264>,  <35.502892, 33.359993, 23.242668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095123, 32.904430, 23.714264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958424, 33.270176, 23.801111>,  <34.876404, 33.489624, 23.853220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958424, 33.270176, 23.801111>,  <35.095123, 32.904430, 23.714264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958424, 33.270176, 23.801111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930498, -0.361624, 0.058326,
		0.131848, -0.182097, 0.974401,
		-0.341745, 0.914368, 0.217121,
		34.855900, 33.544487, 23.866247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613403, 32.788750, 24.210001>,  <35.095123, 32.904430, 23.714264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613403, 32.788750, 24.210001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506290, 33.135754, 24.042322>,  <34.442024, 33.343956, 23.941715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506290, 33.135754, 24.042322>,  <34.613403, 32.788750, 24.210001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506290, 33.135754, 24.042322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961900, -0.265619, 0.064772,
		-0.055158, 0.420572, 0.905581,
		-0.267781, 0.867505, -0.419199,
		34.425957, 33.396004, 23.916563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064930, 33.033176, 24.640255>,  <34.613403, 32.788750, 24.210001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064930, 33.033176, 24.640255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033440, 33.252514, 24.307238>,  <34.014545, 33.384117, 24.107428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033440, 33.252514, 24.307238>,  <34.064930, 33.033176, 24.640255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033440, 33.252514, 24.307238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995125, -0.092987, 0.032854,
		-0.059400, 0.831069, 0.552988,
		-0.078725, 0.548341, -0.832541,
		34.009823, 33.417015, 24.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527561, 33.428741, 24.840065>,  <34.064930, 33.033176, 24.640255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527561, 33.428741, 24.840065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524166, 33.436035, 24.440145>,  <33.522129, 33.440411, 24.200193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524166, 33.436035, 24.440145>,  <33.527561, 33.428741, 24.840065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524166, 33.436035, 24.440145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995673, -0.092680, 0.006760,
		-0.092538, 0.995529, 0.018945,
		-0.008486, 0.018237, -0.999798,
		33.521622, 33.441505, 24.140205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925606, 33.897976, 24.763018>,  <33.527561, 33.428741, 24.840065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925606, 33.897976, 24.763018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981697, 33.749657, 24.395792>,  <33.015354, 33.660664, 24.175457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981697, 33.749657, 24.395792>,  <32.925606, 33.897976, 24.763018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981697, 33.749657, 24.395792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957242, -0.287729, -0.030004,
		-0.253028, 0.883017, -0.395294,
		0.140232, -0.370800, -0.918065,
		33.023766, 33.638416, 24.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401920, 34.244450, 24.466141>,  <32.925606, 33.897976, 24.763018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401920, 34.244450, 24.466141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512661, 33.925728, 24.251305>,  <32.579105, 33.734497, 24.122404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512661, 33.925728, 24.251305>,  <32.401920, 34.244450, 24.466141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512661, 33.925728, 24.251305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954734, -0.291377, -0.059856,
		-0.108802, 0.529347, -0.841400,
		0.276849, -0.796800, -0.537089,
		32.595715, 33.686687, 24.090178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807936, 34.243263, 23.980667>,  <32.401920, 34.244450, 24.466141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807936, 34.243263, 23.980667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999891, 33.892338, 23.978476>,  <32.115067, 33.681782, 23.977160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999891, 33.892338, 23.978476>,  <31.807936, 34.243263, 23.980667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999891, 33.892338, 23.978476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872576, -0.476632, -0.106923,
		0.091193, 0.056094, -0.994252,
		0.479890, -0.877311, -0.005481,
		32.143860, 33.629143, 23.976831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611370, 34.111164, 23.418343>,  <31.807936, 34.243263, 23.980667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611370, 34.111164, 23.418343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709400, 33.786469, 23.630390>,  <31.768217, 33.591652, 23.757618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709400, 33.786469, 23.630390>,  <31.611370, 34.111164, 23.418343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709400, 33.786469, 23.630390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952477, -0.303617, -0.024580,
		0.180906, -0.498901, -0.847567,
		0.245073, -0.811735, 0.530118,
		31.782923, 33.542950, 23.789425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190338, 33.530415, 23.192244>,  <31.611370, 34.111164, 23.418343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190338, 33.530415, 23.192244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308489, 33.371861, 23.539951>,  <31.379379, 33.276726, 23.748575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308489, 33.371861, 23.539951>,  <31.190338, 33.530415, 23.192244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308489, 33.371861, 23.539951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933059, -0.315218, 0.173315,
		0.205309, -0.862273, -0.462961,
		0.295379, -0.396387, 0.869269,
		31.397102, 33.252945, 23.800732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903086, 32.878540, 23.171904>,  <31.190338, 33.530415, 23.192244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903086, 32.878540, 23.171904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.994293, 32.951427, 23.554485>,  <31.049017, 32.995159, 23.784035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.994293, 32.951427, 23.554485>,  <30.903086, 32.878540, 23.171904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994293, 32.951427, 23.554485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855264, -0.431990, 0.286195,
		0.465329, -0.883279, 0.057341,
		0.228019, 0.182217, 0.956454,
		31.062698, 33.006092, 23.841421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850714, 32.207661, 23.469105>,  <30.903086, 32.878540, 23.171904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850714, 32.207661, 23.469105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800838, 32.495720, 23.742113>,  <30.770912, 32.668556, 23.905918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800838, 32.495720, 23.742113>,  <30.850714, 32.207661, 23.469105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800838, 32.495720, 23.742113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847657, -0.434841, 0.303958,
		0.515684, -0.540643, 0.664662,
		-0.124690, 0.720152, 0.682520,
		30.763432, 32.711765, 23.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798376, 31.464432, 23.620783>,  <30.850714, 32.207661, 23.469105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798376, 31.464432, 23.620783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714195, 31.338669, 23.250517>,  <30.663687, 31.263210, 23.028357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714195, 31.338669, 23.250517>,  <30.798376, 31.464432, 23.620783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714195, 31.338669, 23.250517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972314, 0.031052, -0.231604,
		0.101562, -0.948780, 0.299169,
		-0.210451, -0.314409, -0.925666,
		30.651060, 31.244347, 22.972816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182129, 30.856844, 23.540699>,  <30.798376, 31.464432, 23.620783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182129, 30.856844, 23.540699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.092678, 30.962322, 23.165369>,  <31.039007, 31.025608, 22.940170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.092678, 30.962322, 23.165369>,  <31.182129, 30.856844, 23.540699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092678, 30.962322, 23.165369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963227, -0.087324, -0.254102,
		-0.148944, -0.960645, -0.234470,
		-0.223628, 0.263695, -0.938326,
		31.025589, 31.041431, 22.883871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559198, 30.374039, 23.178852>,  <31.182129, 30.856844, 23.540699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559198, 30.374039, 23.178852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504921, 30.692188, 22.942558>,  <31.472355, 30.883078, 22.800781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504921, 30.692188, 22.942558>,  <31.559198, 30.374039, 23.178852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504921, 30.692188, 22.942558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985862, 0.049241, -0.160157,
		-0.098296, -0.604117, -0.790810,
		-0.135694, 0.795373, -0.590737,
		31.464212, 30.930799, 22.765337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082863, 30.267315, 22.579330>,  <31.559198, 30.374039, 23.178852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082863, 30.267315, 22.579330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973454, 30.651592, 22.560329>,  <31.907808, 30.882158, 22.548929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973454, 30.651592, 22.560329>,  <32.082863, 30.267315, 22.579330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973454, 30.651592, 22.560329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939756, 0.256383, -0.226113,
		-0.205046, -0.106486, -0.972942,
		-0.273524, 0.960692, -0.047501,
		31.891396, 30.939800, 22.546080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241982, 30.550312, 21.874813>,  <32.082863, 30.267315, 22.579330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241982, 30.550312, 21.874813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247608, 30.847223, 22.142792>,  <32.250984, 31.025370, 22.303579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247608, 30.847223, 22.142792>,  <32.241982, 30.550312, 21.874813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247608, 30.847223, 22.142792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908728, 0.270035, -0.318267,
		-0.417151, 0.613274, -0.670731,
		0.014064, 0.742278, 0.669945,
		32.251827, 31.069906, 22.343775>
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
