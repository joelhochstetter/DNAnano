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
	<0.121612, 0.097086, 1.123150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.075020, -0.212692, 1.371880>,  <0.047064, -0.398559, 1.521117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.075020, -0.212692, 1.371880>,  <0.121612, 0.097086, 1.123150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.075020, -0.212692, 1.371880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066879, 0.630781, 0.773073,
		-0.990939, 0.048461, -0.125268,
		-0.116481, -0.774446, 0.621825,
		0.040076, -0.445026, 1.558427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.568774, 0.046274, 1.376771>,  <0.121612, 0.097086, 1.123150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.568774, 0.046274, 1.376771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.258831, -0.060181, 1.606125>,  <-0.072865, -0.124053, 1.743737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.258831, -0.060181, 1.606125>,  <-0.568774, 0.046274, 1.376771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.258831, -0.060181, 1.606125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307521, 0.633788, 0.709749,
		-0.552293, -0.726282, 0.409252,
		0.774857, -0.266136, 0.573384,
		-0.026374, -0.140021, 1.778140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.803832, 0.188522, 2.015665>,  <-0.568774, 0.046274, 1.376771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.803832, 0.188522, 2.015665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.404484, 0.210526, 2.021755>,  <-0.164875, 0.223727, 2.025409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.404484, 0.210526, 2.021755>,  <-0.803832, 0.188522, 2.015665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.404484, 0.210526, 2.021755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053478, 0.808330, 0.586296,
		0.019944, -0.586154, 0.809954,
		0.998370, 0.055007, 0.015225,
		-0.104973, 0.227028, 2.026323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.514488, 0.321727, 2.638370>,  <-0.803832, 0.188522, 2.015665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.514488, 0.321727, 2.638370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.228680, 0.475494, 2.404556>,  <-0.057194, 0.567755, 2.264268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.228680, 0.475494, 2.404556>,  <-0.514488, 0.321727, 2.638370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.228680, 0.475494, 2.404556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048406, 0.860674, 0.506851,
		0.697936, -0.333862, 0.633579,
		0.714523, 0.384418, -0.584534,
		-0.014323, 0.590820, 2.229196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.092744, 0.708375, 2.984317>,  <-0.514488, 0.321727, 2.638370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.092744, 0.708375, 2.984317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.016834, 0.864990, 2.624165>,  <0.028712, 0.958959, 2.408073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.016834, 0.864990, 2.624165>,  <-0.092744, 0.708375, 2.984317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.016834, 0.864990, 2.624165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052824, 0.911645, 0.407570,
		0.980406, -0.124908, 0.152324,
		0.189774, 0.391538, -0.900380,
		0.040098, 0.982452, 2.354051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.455563, 1.109982, 3.071052>,  <-0.092744, 0.708375, 2.984317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.455563, 1.109982, 3.071052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.312489, 1.244171, 2.722450>,  <0.226644, 1.324684, 2.513289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.312489, 1.244171, 2.722450>,  <0.455563, 1.109982, 3.071052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.312489, 1.244171, 2.722450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096329, 0.941522, 0.322888,
		0.928860, 0.031541, -0.369085,
		-0.357686, 0.335472, -0.871504,
		0.205183, 1.344813, 2.460999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.877525, 1.663473, 2.853930>,  <0.455563, 1.109982, 3.071052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.877525, 1.663473, 2.853930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.538528, 1.730148, 2.652348>,  <0.335130, 1.770154, 2.531398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.538528, 1.730148, 2.652348>,  <0.877525, 1.663473, 2.853930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.538528, 1.730148, 2.652348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095881, 0.981869, 0.163523,
		0.522076, 0.090265, -0.848109,
		-0.847492, 0.166688, -0.503956,
		0.284281, 1.780155, 2.501161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.083254, 2.265354, 2.456707>,  <0.877525, 1.663473, 2.853930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.083254, 2.265354, 2.456707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683907, 2.245041, 2.446251>,  <0.444298, 2.232853, 2.439977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683907, 2.245041, 2.446251>,  <1.083254, 2.265354, 2.456707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.683907, 2.245041, 2.446251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053772, 0.990001, 0.130407,
		0.019257, 0.131600, -0.991116,
		-0.998368, -0.050783, -0.026141,
		0.384396, 2.229806, 2.438409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.829395, 3.290898, 3.402356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.465219, 3.416473, 3.294624>,  <5.246713, 3.491819, 3.229985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.465219, 3.416473, 3.294624>,  <5.829395, 3.290898, 3.402356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.465219, 3.416473, 3.294624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286436, -0.948248, -0.137040,
		-0.298413, -0.047622, 0.953248,
		-0.910442, 0.313939, -0.269329,
		5.192086, 3.510655, 3.213826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.311217, 2.938583, 3.654214>,  <5.829395, 3.290898, 3.402356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.311217, 2.938583, 3.654214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.164721, 3.072083, 3.306770>,  <5.076824, 3.152182, 3.098304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.164721, 3.072083, 3.306770>,  <5.311217, 2.938583, 3.654214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.164721, 3.072083, 3.306770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290613, -0.927798, -0.233958,
		-0.883975, 0.166744, 0.436788,
		-0.366240, 0.333749, -0.868608,
		5.054850, 3.172207, 3.046188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.699236, 2.433926, 3.540927>,  <5.311217, 2.938583, 3.654214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.699236, 2.433926, 3.540927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.790496, 2.629898, 3.204376>,  <4.845252, 2.747481, 3.002446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.790496, 2.629898, 3.204376>,  <4.699236, 2.433926, 3.540927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.790496, 2.629898, 3.204376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282569, -0.793655, -0.538764,
		-0.931720, 0.360667, -0.042633,
		0.228150, 0.489930, -0.841377,
		4.858941, 2.776877, 2.951963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.220844, 2.188270, 3.051082>,  <4.699236, 2.433926, 3.540927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.220844, 2.188270, 3.051082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.543221, 2.332916, 2.863598>,  <4.736648, 2.419704, 2.751107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.543221, 2.332916, 2.863598>,  <4.220844, 2.188270, 3.051082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.543221, 2.332916, 2.863598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064088, -0.840393, -0.538175,
		-0.588514, 0.403700, -0.700484,
		0.805943, 0.361615, -0.468711,
		4.785005, 2.441401, 2.722985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.040596, 2.206319, 2.356067>,  <4.220844, 2.188270, 3.051082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.040596, 2.206319, 2.356067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.437037, 2.171707, 2.396511>,  <4.674903, 2.150940, 2.420777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.437037, 2.171707, 2.396511>,  <4.040596, 2.206319, 2.356067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.437037, 2.171707, 2.396511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016238, -0.832717, -0.553461,
		0.132086, 0.546896, -0.826715,
		0.991105, -0.086529, 0.101109,
		4.734369, 2.145749, 2.426844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.229637, 1.860433, 1.814412>,  <4.040596, 2.206319, 2.356067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.229637, 1.860433, 1.814412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.579833, 1.862640, 2.007694>,  <4.789950, 1.863965, 2.123663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.579833, 1.862640, 2.007694>,  <4.229637, 1.860433, 1.814412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.579833, 1.862640, 2.007694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239194, -0.873794, -0.423404,
		0.419885, 0.486265, -0.766317,
		0.875490, 0.005517, 0.483205,
		4.842480, 1.864296, 2.152656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.690994, 1.877327, 1.291790>,  <4.229637, 1.860433, 1.814412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.690994, 1.877327, 1.291790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.840878, 1.709106, 1.622299>,  <4.930809, 1.608174, 1.820605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.840878, 1.709106, 1.622299>,  <4.690994, 1.877327, 1.291790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.840878, 1.709106, 1.622299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223184, -0.824083, -0.520650,
		0.899878, 0.379504, -0.214932,
		0.374710, -0.420552, 0.826274,
		4.953291, 1.582941, 1.870181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312915, 1.492419, 1.179656>,  <4.690994, 1.877327, 1.291790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312915, 1.492419, 1.179656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.221080, 1.329712, 1.533340>,  <5.165979, 1.232088, 1.745551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.221080, 1.329712, 1.533340>,  <5.312915, 1.492419, 1.179656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.221080, 1.329712, 1.533340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631068, -0.753848, -0.182938,
		0.740974, 0.515998, 0.429772,
		-0.229587, -0.406767, 0.884212,
		5.152204, 1.207682, 1.798604>
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
