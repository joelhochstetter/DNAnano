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
	<1.595432, -0.968664, 0.074355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.208542, -1.070221, 0.072882>,  <0.976408, -1.131155, 0.071998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.208542, -1.070221, 0.072882>,  <1.595432, -0.968664, 0.074355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.208542, -1.070221, 0.072882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249227, 0.946481, 0.205082,
		-0.048582, 0.199279, -0.978738,
		-0.967226, -0.253892, -0.003684,
		0.918374, -1.146388, 0.071776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.221560, -0.534198, -0.368812>,  <1.595432, -0.968664, 0.074355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.221560, -0.534198, -0.368812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.974800, -0.650139, -0.076122>,  <0.826744, -0.719703, 0.099491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.974800, -0.650139, -0.076122>,  <1.221560, -0.534198, -0.368812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.974800, -0.650139, -0.076122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314037, 0.943151, 0.108844,
		-0.721675, -0.162642, -0.672855,
		-0.616901, -0.289851, 0.731724,
		0.789730, -0.737094, 0.143395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.595576, -0.250288, -0.550632>,  <1.221560, -0.534198, -0.368812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.595576, -0.250288, -0.550632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.603767, -0.337662, -0.160378>,  <0.608682, -0.390086, 0.073775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.603767, -0.337662, -0.160378>,  <0.595576, -0.250288, -0.550632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.603767, -0.337662, -0.160378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211802, 0.952745, 0.217755,
		-0.977098, -0.211101, -0.026753,
		0.020479, -0.218435, 0.975637,
		0.609911, -0.403192, 0.132314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.105237, 0.062232, -0.093195>,  <0.595576, -0.250288, -0.550632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.105237, 0.062232, -0.093195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.348625, -0.053040, 0.202566>,  <0.494658, -0.122202, 0.380023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.348625, -0.053040, 0.202566>,  <0.105237, 0.062232, -0.093195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.348625, -0.053040, 0.202566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121826, 0.954611, 0.271801,
		-0.784169, -0.075304, 0.615961,
		0.608470, -0.288178, 0.739403,
		0.531166, -0.139493, 0.424387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.042455, 0.503051, 0.329751>,  <0.105237, 0.062232, -0.093195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.042455, 0.503051, 0.329751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.320045, 0.355324, 0.412033>,  <0.537546, 0.266688, 0.461403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.320045, 0.355324, 0.412033>,  <-0.042455, 0.503051, 0.329751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.320045, 0.355324, 0.412033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344674, 0.927256, 0.146276,
		-0.244764, -0.061661, 0.967620,
		0.906251, -0.369317, 0.205706,
		0.591921, 0.244529, 0.473745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.280378, 0.983295, 0.789750>,  <-0.042455, 0.503051, 0.329751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.280378, 0.983295, 0.789750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.586319, 0.768387, 0.647572>,  <0.769884, 0.639442, 0.562264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.586319, 0.768387, 0.647572>,  <0.280378, 0.983295, 0.789750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.586319, 0.768387, 0.647572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560928, 0.826764, -0.042673,
		0.316797, -0.166741, 0.933722,
		0.764853, -0.537269, -0.355446,
		0.815775, 0.607206, 0.540938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.831611, 1.348875, 1.048175>,  <0.280378, 0.983295, 0.789750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.831611, 1.348875, 1.048175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.995476, 1.138317, 0.750158>,  <1.093794, 1.011982, 0.571348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.995476, 1.138317, 0.750158>,  <0.831611, 1.348875, 1.048175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.995476, 1.138317, 0.750158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620815, 0.759290, -0.195108,
		0.668406, -0.382604, 0.637846,
		0.409661, -0.526395, -0.745041,
		1.118374, 0.980398, 0.526646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516356, 1.340934, 1.142439>,  <0.831611, 1.348875, 1.048175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516356, 1.340934, 1.142439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478088, 1.262604, 0.752054>,  <1.455128, 1.215606, 0.517824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478088, 1.262604, 0.752054>,  <1.516356, 1.340934, 1.142439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.478088, 1.262604, 0.752054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698716, 0.685111, -0.205958,
		0.708974, -0.701623, 0.071282,
		-0.095669, -0.195825, -0.975961,
		1.449388, 1.203856, 0.459266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.896671, 2.487257, 0.000081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.037476, 2.194969, -0.233889>,  <2.121958, 2.019596, -0.374270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.037476, 2.194969, -0.233889>,  <1.896671, 2.487257, 0.000081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.037476, 2.194969, -0.233889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701471, -0.619699, 0.352012,
		-0.619699, 0.286394, -0.730720,
		-0.352012, 0.730720, 0.584924,
		2.143079, 1.975753, -0.409366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.339020, 2.156748, -0.282440>,  <1.896671, 2.487257, 0.000081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.339020, 2.156748, -0.282440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.648323, 1.903603, -0.266655>,  <1.833905, 1.751716, -0.257184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.648323, 1.903603, -0.266655>,  <1.339020, 2.156748, -0.282440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.648323, 1.903603, -0.266655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615952, -0.734901, 0.283766,
		-0.150583, -0.243732, -0.958081,
		0.773258, -0.632862, 0.039463,
		1.880300, 1.713744, -0.254816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.206219, 1.589391, -0.732529>,  <1.339020, 2.156748, -0.282440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.206219, 1.589391, -0.732529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.443733, 1.493828, -0.425194>,  <1.586242, 1.436490, -0.240793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.443733, 1.493828, -0.425194>,  <1.206219, 1.589391, -0.732529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.443733, 1.493828, -0.425194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590619, -0.777903, 0.214560,
		0.546432, -0.581197, -0.603011,
		0.593785, -0.238908, 0.768337,
		1.621869, 1.422155, -0.194693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.458602, 0.891518, -0.823945>,  <1.206219, 1.589391, -0.732529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.458602, 0.891518, -0.823945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.434975, 0.979752, -0.434514>,  <1.420798, 1.032692, -0.200855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.434975, 0.979752, -0.434514>,  <1.458602, 0.891518, -0.823945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.434975, 0.979752, -0.434514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435688, -0.883184, 0.173671,
		0.898157, -0.413918, 0.148275,
		-0.059069, 0.220585, 0.973577,
		1.417254, 1.045927, -0.142441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.580360, 0.292580, -0.523157>,  <1.458602, 0.891518, -0.823945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.580360, 0.292580, -0.523157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452057, 0.491440, -0.200678>,  <1.375075, 0.610756, -0.007190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452057, 0.491440, -0.200678>,  <1.580360, 0.292580, -0.523157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.452057, 0.491440, -0.200678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363542, -0.850601, 0.379889,
		0.874615, -0.171235, 0.453572,
		-0.320759, 0.497149, 0.806199,
		1.355829, 0.640585, 0.041182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.787617, -0.112400, 0.127242>,  <1.580360, 0.292580, -0.523157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.787617, -0.112400, 0.127242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.480087, 0.112190, 0.249654>,  <1.295569, 0.246945, 0.323101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.480087, 0.112190, 0.249654>,  <1.787617, -0.112400, 0.127242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.480087, 0.112190, 0.249654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434937, -0.809977, 0.393403,
		0.468763, 0.169355, 0.866937,
		-0.768824, 0.561476, 0.306028,
		1.249440, 0.280633, 0.341462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.716513, -0.293229, 0.812644>,  <1.787617, -0.112400, 0.127242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.716513, -0.293229, 0.812644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369911, -0.142944, 0.681185>,  <1.161950, -0.052773, 0.602309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369911, -0.142944, 0.681185>,  <1.716513, -0.293229, 0.812644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.369911, -0.142944, 0.681185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487497, -0.778490, 0.395347,
		-0.107312, 0.502785, 0.857724,
		-0.866505, 0.375713, -0.328648,
		1.109960, -0.030231, 0.582591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343718, -0.537440, 1.325549>,  <1.716513, -0.293229, 0.812644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343718, -0.537440, 1.325549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.094368, -0.432411, 1.030941>,  <0.944758, -0.369394, 0.854176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.094368, -0.432411, 1.030941>,  <1.343718, -0.537440, 1.325549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.094368, -0.432411, 1.030941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558953, -0.808317, 0.184920,
		-0.546786, 0.526954, 0.650649,
		-0.623375, 0.262571, -0.736519,
		0.907355, -0.353640, 0.809985>
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
