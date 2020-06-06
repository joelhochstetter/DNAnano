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
	<24.031799, 35.229401, 35.139999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.102987, 34.891182, 34.938652>,  <24.145700, 34.688251, 34.817844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.102987, 34.891182, 34.938652>,  <24.031799, 35.229401, 35.139999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.102987, 34.891182, 34.938652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980054, 0.198275, 0.013451,
		0.088432, -0.495722, 0.863968,
		0.177971, -0.845545, -0.503368,
		24.156378, 34.637520, 34.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567463, 34.714474, 35.455967>,  <24.031799, 35.229401, 35.139999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567463, 34.714474, 35.455967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583559, 34.676708, 35.058079>,  <24.593216, 34.654049, 34.819347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583559, 34.676708, 35.058079>,  <24.567463, 34.714474, 35.455967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583559, 34.676708, 35.058079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946222, 0.323428, 0.007581,
		0.321004, -0.941531, 0.102352,
		0.040241, -0.094415, -0.994719,
		24.595631, 34.648384, 34.759663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324694, 34.586025, 35.364128>,  <24.567463, 34.714474, 35.455967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324694, 34.586025, 35.364128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196602, 34.711403, 35.006535>,  <25.119747, 34.786629, 34.791977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196602, 34.711403, 35.006535>,  <25.324694, 34.586025, 35.364128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196602, 34.711403, 35.006535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825111, 0.555934, -0.100642,
		0.465451, -0.769865, -0.436651,
		-0.320230, 0.313442, -0.893984,
		25.100533, 34.805435, 34.738338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816828, 34.523209, 34.875004>,  <25.324694, 34.586025, 35.364128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816828, 34.523209, 34.875004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560282, 34.816319, 34.784061>,  <25.406355, 34.992184, 34.729496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560282, 34.816319, 34.784061>,  <25.816828, 34.523209, 34.875004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560282, 34.816319, 34.784061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753536, 0.657370, -0.006980,
		0.144340, -0.175795, -0.973788,
		-0.641366, 0.732776, -0.227352,
		25.367872, 35.036152, 34.715855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363157, 35.001987, 34.749321>,  <25.816828, 34.523209, 34.875004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363157, 35.001987, 34.749321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663412, 35.047367, 35.009682>,  <26.843565, 35.074596, 35.165897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663412, 35.047367, 35.009682>,  <26.363157, 35.001987, 34.749321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663412, 35.047367, 35.009682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434601, 0.657244, -0.615753,
		-0.497660, 0.745090, 0.444046,
		0.750637, 0.113453, 0.650901,
		26.888603, 35.081402, 35.204952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477531, 35.654987, 34.649250>,  <26.363157, 35.001987, 34.749321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477531, 35.654987, 34.649250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809872, 35.498260, 34.807320>,  <27.009275, 35.404224, 34.902161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809872, 35.498260, 34.807320>,  <26.477531, 35.654987, 34.649250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809872, 35.498260, 34.807320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556419, 0.573314, -0.601422,
		0.009091, 0.719575, 0.694356,
		0.830852, -0.391820, 0.395173,
		27.059128, 35.380714, 34.925873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916426, 36.216568, 34.943821>,  <26.477531, 35.654987, 34.649250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916426, 36.216568, 34.943821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133316, 35.902145, 34.825089>,  <27.263451, 35.713493, 34.753849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133316, 35.902145, 34.825089>,  <26.916426, 36.216568, 34.943821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133316, 35.902145, 34.825089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606797, 0.610698, -0.508768,
		0.581194, 0.095751, 0.808112,
		0.542228, -0.786053, -0.296833,
		27.295984, 35.666328, 34.736038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592665, 36.429577, 35.006931>,  <26.916426, 36.216568, 34.943821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592665, 36.429577, 35.006931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574772, 36.119942, 34.754330>,  <27.564037, 35.934162, 34.602768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574772, 36.119942, 34.754330>,  <27.592665, 36.429577, 35.006931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574772, 36.119942, 34.754330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456754, 0.546345, -0.702056,
		0.888468, -0.319843, 0.329129,
		-0.044730, -0.774085, -0.631500,
		27.561354, 35.887714, 34.564880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299994, 36.345978, 34.686245>,  <27.592665, 36.429577, 35.006931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299994, 36.345978, 34.686245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010651, 36.178349, 34.466743>,  <27.837044, 36.077770, 34.335041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010651, 36.178349, 34.466743>,  <28.299994, 36.345978, 34.686245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010651, 36.178349, 34.466743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304397, 0.519810, -0.798211,
		0.619756, -0.744431, -0.248444,
		-0.723357, -0.419070, -0.548758,
		27.793644, 36.052628, 34.302116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675543, 36.224125, 34.060143>,  <28.299994, 36.345978, 34.686245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675543, 36.224125, 34.060143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283457, 36.182949, 33.992519>,  <28.048204, 36.158245, 33.951946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283457, 36.182949, 33.992519>,  <28.675543, 36.224125, 34.060143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283457, 36.182949, 33.992519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062441, 0.649701, -0.757621,
		0.187829, -0.753188, -0.630419,
		-0.980215, -0.102939, -0.169062,
		27.989391, 36.152069, 33.941799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734388, 36.124004, 33.317379>,  <28.675543, 36.224125, 34.060143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734388, 36.124004, 33.317379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365974, 36.241039, 33.420208>,  <28.144926, 36.311260, 33.481903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365974, 36.241039, 33.420208>,  <28.734388, 36.124004, 33.317379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365974, 36.241039, 33.420208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044444, 0.734677, -0.676959,
		-0.386936, -0.612078, -0.689667,
		-0.921035, 0.292592, 0.257070,
		28.089664, 36.328815, 33.497330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347826, 35.898849, 32.788227>,  <28.734388, 36.124004, 33.317379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347826, 35.898849, 32.788227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148651, 36.197601, 32.964516>,  <28.029146, 36.376854, 33.070290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148651, 36.197601, 32.964516>,  <28.347826, 35.898849, 32.788227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148651, 36.197601, 32.964516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066236, 0.539469, -0.839396,
		-0.864681, -0.388774, -0.318091,
		-0.497935, 0.746879, 0.440718,
		27.999271, 36.421665, 33.096729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049868, 36.207947, 32.199886>,  <28.347826, 35.898849, 32.788227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049868, 36.207947, 32.199886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004356, 36.485294, 32.484505>,  <27.977049, 36.651703, 32.655277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004356, 36.485294, 32.484505>,  <28.049868, 36.207947, 32.199886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004356, 36.485294, 32.484505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166355, 0.719382, -0.674400,
		-0.979480, 0.041638, -0.197194,
		-0.113777, 0.693366, 0.711547,
		27.970222, 36.693306, 32.697968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621223, 36.676273, 31.804977>,  <28.049868, 36.207947, 32.199886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621223, 36.676273, 31.804977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792738, 36.841988, 32.126102>,  <27.895647, 36.941418, 32.318779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792738, 36.841988, 32.126102>,  <27.621223, 36.676273, 31.804977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792738, 36.841988, 32.126102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199605, 0.823242, -0.531442,
		-0.881078, 0.388121, 0.270303,
		0.428788, 0.414288, 0.802811,
		27.921375, 36.966274, 32.366947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375908, 37.289654, 31.747267>,  <27.621223, 36.676273, 31.804977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375908, 37.289654, 31.747267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696917, 37.344669, 31.979488>,  <27.889523, 37.377678, 32.118820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696917, 37.344669, 31.979488>,  <27.375908, 37.289654, 31.747267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696917, 37.344669, 31.979488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300507, 0.747441, -0.592476,
		-0.515416, 0.649935, 0.558507,
		0.802522, 0.137537, 0.580553,
		27.937674, 37.385929, 32.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447239, 38.047306, 31.766037>,  <27.375908, 37.289654, 31.747267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447239, 38.047306, 31.766037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783968, 37.872227, 31.892370>,  <27.986006, 37.767178, 31.968170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783968, 37.872227, 31.892370>,  <27.447239, 38.047306, 31.766037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783968, 37.872227, 31.892370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539632, 0.670140, -0.509617,
		0.011408, 0.599441, 0.800338,
		0.841824, -0.437701, 0.315833,
		28.036514, 37.740917, 31.987120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792690, 38.524849, 31.912743>,  <27.447239, 38.047306, 31.766037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792690, 38.524849, 31.912743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059456, 38.232868, 31.852877>,  <28.219515, 38.057682, 31.816957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059456, 38.232868, 31.852877>,  <27.792690, 38.524849, 31.912743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059456, 38.232868, 31.852877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639703, 0.663880, -0.387354,
		0.382107, 0.162592, 0.909702,
		0.666914, -0.729950, -0.149662,
		28.259531, 38.013882, 31.807978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494616, 38.789757, 32.186600>,  <27.792690, 38.524849, 31.912743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494616, 38.789757, 32.186600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579416, 38.483315, 31.943899>,  <28.630297, 38.299450, 31.798281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579416, 38.483315, 31.943899>,  <28.494616, 38.789757, 32.186600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579416, 38.483315, 31.943899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763034, 0.517676, -0.387027,
		0.610601, -0.380918, 0.694311,
		0.212003, -0.766102, -0.606747,
		28.643017, 38.253483, 31.761875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246023, 38.710392, 32.181797>,  <28.494616, 38.789757, 32.186600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246023, 38.710392, 32.181797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099768, 38.537727, 31.851955>,  <29.012014, 38.434128, 31.654049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099768, 38.537727, 31.851955>,  <29.246023, 38.710392, 32.181797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099768, 38.537727, 31.851955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594321, 0.573544, -0.563764,
		0.716303, -0.696216, 0.046833,
		-0.365641, -0.431660, -0.824607,
		28.990076, 38.408230, 31.604574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798468, 38.588539, 31.787729>,  <29.246023, 38.710392, 32.181797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798468, 38.588539, 31.787729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503452, 38.540352, 31.521940>,  <29.326443, 38.511440, 31.362467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503452, 38.540352, 31.521940>,  <29.798468, 38.588539, 31.787729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503452, 38.540352, 31.521940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585273, 0.376833, -0.717950,
		0.336884, -0.918414, -0.207424,
		-0.737539, -0.120466, -0.664472,
		29.282190, 38.504211, 31.322598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049450, 38.323055, 31.108957>,  <29.798468, 38.588539, 31.787729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049450, 38.323055, 31.108957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707203, 38.503517, 31.007465>,  <29.501854, 38.611794, 30.946569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707203, 38.503517, 31.007465>,  <30.049450, 38.323055, 31.108957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707203, 38.503517, 31.007465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462471, 0.446173, -0.766192,
		-0.232462, -0.772911, -0.590398,
		-0.855618, 0.451152, -0.253731,
		29.450518, 38.638863, 30.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973589, 38.342087, 30.400133>,  <30.049450, 38.323055, 31.108957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973589, 38.342087, 30.400133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676706, 38.605759, 30.448494>,  <29.498577, 38.763962, 30.477510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676706, 38.605759, 30.448494>,  <29.973589, 38.342087, 30.400133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676706, 38.605759, 30.448494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490438, 0.657188, -0.572340,
		-0.456729, -0.365499, -0.811054,
		-0.742205, 0.659177, 0.120902,
		29.454044, 38.803513, 30.484764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877224, 38.614384, 29.714190>,  <29.973589, 38.342087, 30.400133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877224, 38.614384, 29.714190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703241, 38.867901, 29.970039>,  <29.598852, 39.020012, 30.123549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703241, 38.867901, 29.970039>,  <29.877224, 38.614384, 29.714190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703241, 38.867901, 29.970039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352314, 0.773492, -0.526863,
		-0.828667, -0.003813, -0.559729,
		-0.434955, 0.633794, 0.639624,
		29.572756, 39.058041, 30.161926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464827, 39.074177, 29.391825>,  <29.877224, 38.614384, 29.714190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464827, 39.074177, 29.391825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578745, 39.249264, 29.732952>,  <29.647095, 39.354317, 29.937628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578745, 39.249264, 29.732952>,  <29.464827, 39.074177, 29.391825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578745, 39.249264, 29.732952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153981, 0.857217, -0.491394,
		-0.946141, 0.271264, 0.176731,
		0.284794, 0.437715, 0.852818,
		29.664183, 39.380577, 29.988798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048903, 39.732285, 29.489403>,  <29.464827, 39.074177, 29.391825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048903, 39.732285, 29.489403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385796, 39.749683, 29.704346>,  <29.587931, 39.760124, 29.833311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385796, 39.749683, 29.704346>,  <29.048903, 39.732285, 29.489403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385796, 39.749683, 29.704346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222027, 0.880299, -0.419258,
		-0.491274, 0.472420, 0.731757,
		0.842231, 0.043501, 0.537358,
		29.638466, 39.762733, 29.865553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202421, 40.404884, 29.955276>,  <29.048903, 39.732285, 29.489403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202421, 40.404884, 29.955276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554024, 40.263233, 29.827562>,  <29.764984, 40.178242, 29.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554024, 40.263233, 29.827562>,  <29.202421, 40.404884, 29.955276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554024, 40.263233, 29.827562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295242, 0.930046, -0.218737,
		0.374410, 0.098006, 0.922069,
		0.879005, -0.354131, -0.319284,
		29.817726, 40.156994, 29.731777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755682, 40.711235, 30.363949>,  <29.202421, 40.404884, 29.955276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755682, 40.711235, 30.363949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863659, 40.597462, 29.995985>,  <29.928444, 40.529198, 29.775208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863659, 40.597462, 29.995985>,  <29.755682, 40.711235, 30.363949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863659, 40.597462, 29.995985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267603, 0.939898, -0.212084,
		0.924944, -0.188921, 0.329830,
		0.269940, -0.284429, -0.919909,
		29.944641, 40.512135, 29.720013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478966, 40.846085, 30.117697>,  <29.755682, 40.711235, 30.363949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478966, 40.846085, 30.117697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257135, 40.874954, 29.786098>,  <30.124037, 40.892277, 29.587139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257135, 40.874954, 29.786098>,  <30.478966, 40.846085, 30.117697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257135, 40.874954, 29.786098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408605, 0.891477, -0.195730,
		0.724905, -0.447280, -0.523882,
		-0.554576, 0.072175, -0.828997,
		30.090763, 40.896606, 29.537399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937351, 40.850822, 29.422180>,  <30.478966, 40.846085, 30.117697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937351, 40.850822, 29.422180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615574, 41.087990, 29.436691>,  <30.422508, 41.230289, 29.445398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615574, 41.087990, 29.436691>,  <30.937351, 40.850822, 29.422180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615574, 41.087990, 29.436691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559233, 0.776504, -0.290344,
		-0.200321, -0.213278, -0.956235,
		-0.804444, 0.592920, 0.036278,
		30.374241, 41.265865, 29.447575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223785, 41.370689, 29.024977>,  <30.937351, 40.850822, 29.422180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223785, 41.370689, 29.024977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186712, 41.710564, 29.232607>,  <31.164469, 41.914490, 29.357185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186712, 41.710564, 29.232607>,  <31.223785, 41.370689, 29.024977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186712, 41.710564, 29.232607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105284, 0.526762, -0.843467,
		-0.990114, -0.023524, -0.138280,
		-0.092682, 0.849687, 0.519078,
		31.158907, 41.965469, 29.388330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639938, 40.898273, 28.829721>,  <31.223785, 41.370689, 29.024977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639938, 40.898273, 28.829721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528984, 40.791916, 29.199015>,  <31.462412, 40.728104, 29.420591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528984, 40.791916, 29.199015>,  <31.639938, 40.898273, 28.829721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528984, 40.791916, 29.199015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943683, 0.104960, 0.313759,
		-0.180328, 0.958272, 0.221802,
		-0.277386, -0.265891, 0.923233,
		31.445768, 40.712147, 29.475985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921453, 41.277393, 29.311739>,  <31.639938, 40.898273, 28.829721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921453, 41.277393, 29.311739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828011, 40.937077, 29.500027>,  <31.771944, 40.732887, 29.612999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828011, 40.937077, 29.500027>,  <31.921453, 41.277393, 29.311739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828011, 40.937077, 29.500027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940817, -0.075531, 0.330392,
		-0.245542, 0.520044, 0.818085,
		-0.233609, -0.850793, 0.470720,
		31.757927, 40.681839, 29.641243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218838, 40.694935, 29.180674>,  <31.921453, 41.277393, 29.311739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218838, 40.694935, 29.180674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599033, 40.814030, 29.216274>,  <32.827152, 40.885487, 29.237635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599033, 40.814030, 29.216274>,  <32.218838, 40.694935, 29.180674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599033, 40.814030, 29.216274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131529, -0.644927, 0.752841,
		0.281551, -0.703861, -0.652157,
		0.950489, 0.297740, 0.089002,
		32.884182, 40.903351, 29.242975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531048, 40.155914, 29.077930>,  <32.218838, 40.694935, 29.180674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531048, 40.155914, 29.077930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704678, 40.408581, 29.334860>,  <32.808857, 40.560181, 29.489017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704678, 40.408581, 29.334860>,  <32.531048, 40.155914, 29.077930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704678, 40.408581, 29.334860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023557, -0.704796, 0.709019,
		0.900568, -0.322899, -0.291055,
		0.434076, 0.631664, 0.642323,
		32.834900, 40.598080, 29.527557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093792, 39.745098, 29.323116>,  <32.531048, 40.155914, 29.077930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093792, 39.745098, 29.323116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933010, 40.017342, 29.568134>,  <32.836540, 40.180687, 29.715145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933010, 40.017342, 29.568134>,  <33.093792, 39.745098, 29.323116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933010, 40.017342, 29.568134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042738, -0.682179, 0.729935,
		0.914662, 0.267221, 0.303292,
		-0.401953, 0.680606, 0.612543,
		32.812424, 40.221523, 29.751898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456856, 39.824615, 29.955984>,  <33.093792, 39.745098, 29.323116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456856, 39.824615, 29.955984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085999, 39.945934, 30.043999>,  <32.863483, 40.018726, 30.096807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085999, 39.945934, 30.043999>,  <33.456856, 39.824615, 29.955984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085999, 39.945934, 30.043999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046279, -0.490042, 0.870469,
		0.371835, 0.817234, 0.440304,
		-0.927144, 0.303294, 0.220036,
		32.807854, 40.036922, 30.110010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496819, 40.058212, 30.682653>,  <33.456856, 39.824615, 29.955984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496819, 40.058212, 30.682653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114639, 39.960129, 30.616936>,  <32.885330, 39.901279, 30.577505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114639, 39.960129, 30.616936>,  <33.496819, 40.058212, 30.682653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114639, 39.960129, 30.616936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000274, -0.557351, 0.830277,
		-0.295163, 0.793241, 0.532586,
		-0.955447, -0.245212, -0.164292,
		32.828007, 39.886566, 30.567648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281822, 40.093662, 31.282593>,  <33.496819, 40.058212, 30.682653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281822, 40.093662, 31.282593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049934, 39.850677, 31.065371>,  <32.910801, 39.704887, 30.935038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049934, 39.850677, 31.065371>,  <33.281822, 40.093662, 31.282593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049934, 39.850677, 31.065371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069626, -0.627108, 0.775814,
		-0.811835, 0.487567, 0.321252,
		-0.579721, -0.607466, -0.543055,
		32.876019, 39.668438, 30.902454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718235, 39.979965, 31.681564>,  <33.281822, 40.093662, 31.282593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718235, 39.979965, 31.681564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717670, 39.680496, 31.416388>,  <32.717331, 39.500816, 31.257280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717670, 39.680496, 31.416388>,  <32.718235, 39.979965, 31.681564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717670, 39.680496, 31.416388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200273, -0.649301, 0.733688,
		-0.979739, 0.133802, -0.149025,
		-0.001407, -0.748669, -0.662943,
		32.717247, 39.455894, 31.217505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022957, 39.599670, 31.752378>,  <32.718235, 39.979965, 31.681564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022957, 39.599670, 31.752378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257854, 39.353039, 31.542625>,  <32.398792, 39.205059, 31.416775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257854, 39.353039, 31.542625>,  <32.022957, 39.599670, 31.752378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257854, 39.353039, 31.542625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336605, -0.775209, 0.534553,
		-0.736101, -0.137403, -0.662779,
		0.587241, -0.616580, -0.524382,
		32.434029, 39.168064, 31.385311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620777, 39.067177, 31.814058>,  <32.022957, 39.599670, 31.752378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620777, 39.067177, 31.814058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974564, 38.923626, 31.694777>,  <32.186836, 38.837494, 31.623207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974564, 38.923626, 31.694777>,  <31.620777, 39.067177, 31.814058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974564, 38.923626, 31.694777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162096, -0.835611, 0.524860,
		-0.437545, -0.415883, -0.797242,
		0.884465, -0.358880, -0.298205,
		32.239902, 38.815964, 31.605314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440247, 38.408695, 31.526552>,  <31.620777, 39.067177, 31.814058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440247, 38.408695, 31.526552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829233, 38.357948, 31.604744>,  <32.062626, 38.327499, 31.651659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829233, 38.357948, 31.604744>,  <31.440247, 38.408695, 31.526552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829233, 38.357948, 31.604744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199259, -0.887661, 0.415156,
		0.120848, -0.442676, -0.888501,
		0.972467, -0.126870, 0.195479,
		32.120972, 38.319889, 31.663387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600479, 37.919502, 31.221632>,  <31.440247, 38.408695, 31.526552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600479, 37.919502, 31.221632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884291, 37.922836, 31.503483>,  <32.054577, 37.924835, 31.672594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884291, 37.922836, 31.503483>,  <31.600479, 37.919502, 31.221632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884291, 37.922836, 31.503483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287846, -0.909277, 0.300600,
		0.643206, -0.416109, -0.642759,
		0.709529, 0.008332, 0.704627,
		32.097149, 37.925335, 31.714870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847622, 37.228180, 31.167028>,  <31.600479, 37.919502, 31.221632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847622, 37.228180, 31.167028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955822, 37.385677, 31.518435>,  <32.020744, 37.480179, 31.729279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955822, 37.385677, 31.518435>,  <31.847622, 37.228180, 31.167028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955822, 37.385677, 31.518435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131995, -0.888750, 0.438977,
		0.953628, -0.234704, -0.188436,
		0.270502, 0.393748, 0.878516,
		32.036972, 37.503803, 31.781990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408703, 36.802101, 31.462790>,  <31.847622, 37.228180, 31.167028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408703, 36.802101, 31.462790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238216, 37.002357, 31.764172>,  <32.135925, 37.122509, 31.945002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238216, 37.002357, 31.764172>,  <32.408703, 36.802101, 31.462790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238216, 37.002357, 31.764172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157234, -0.861221, 0.483298,
		0.890851, 0.087522, 0.445786,
		-0.426219, 0.500639, 0.753458,
		32.110352, 37.152550, 31.990210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691257, 36.473316, 32.135643>,  <32.408703, 36.802101, 31.462790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691257, 36.473316, 32.135643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369202, 36.680920, 32.250450>,  <32.175968, 36.805481, 32.319336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369202, 36.680920, 32.250450>,  <32.691257, 36.473316, 32.135643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369202, 36.680920, 32.250450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196001, -0.689599, 0.697163,
		0.559764, 0.505057, 0.656949,
		-0.805139, 0.519009, 0.287021,
		32.127659, 36.836624, 32.336555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587864, 36.457455, 32.889614>,  <32.691257, 36.473316, 32.135643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587864, 36.457455, 32.889614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216743, 36.558907, 32.780182>,  <31.994070, 36.619778, 32.714523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216743, 36.558907, 32.780182>,  <32.587864, 36.457455, 32.889614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216743, 36.558907, 32.780182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371912, -0.686452, 0.624872,
		-0.029315, 0.681509, 0.731222,
		-0.927805, 0.253632, -0.273584,
		31.938402, 36.634995, 32.698105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273624, 36.525780, 33.557907>,  <32.587864, 36.457455, 32.889614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273624, 36.525780, 33.557907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970966, 36.487713, 33.299164>,  <31.789371, 36.464874, 33.143917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970966, 36.487713, 33.299164>,  <32.273624, 36.525780, 33.557907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970966, 36.487713, 33.299164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496238, -0.560594, 0.662935,
		-0.425716, 0.822604, 0.376946,
		-0.756646, -0.095167, -0.646861,
		31.743973, 36.459164, 33.105106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668873, 36.838589, 33.829460>,  <32.273624, 36.525780, 33.557907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668873, 36.838589, 33.829460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508574, 36.593395, 33.557091>,  <31.412394, 36.446281, 33.393669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508574, 36.593395, 33.557091>,  <31.668873, 36.838589, 33.829460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508574, 36.593395, 33.557091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701951, -0.272197, 0.658160,
		-0.588784, 0.741731, -0.321199,
		-0.400748, -0.612979, -0.680924,
		31.388350, 36.409500, 33.352814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952822, 36.793102, 33.921310>,  <31.668873, 36.838589, 33.829460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952822, 36.793102, 33.921310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000374, 36.454502, 33.713730>,  <31.028906, 36.251343, 33.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000374, 36.454502, 33.713730>,  <30.952822, 36.793102, 33.921310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000374, 36.454502, 33.713730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669645, -0.454252, 0.587564,
		-0.733105, 0.277660, -0.620855,
		0.118881, -0.846499, -0.518948,
		31.036037, 36.200554, 33.558044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286221, 36.510479, 33.813831>,  <30.952822, 36.793102, 33.921310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286221, 36.510479, 33.813831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513693, 36.191307, 33.733917>,  <30.650177, 35.999805, 33.685970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513693, 36.191307, 33.733917>,  <30.286221, 36.510479, 33.813831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513693, 36.191307, 33.733917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644509, -0.583152, 0.494511,
		-0.511087, -0.152459, -0.845900,
		0.568681, -0.797928, -0.199781,
		30.684298, 35.951927, 33.673985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850471, 35.957539, 33.523987>,  <30.286221, 36.510479, 33.813831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850471, 35.957539, 33.523987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176277, 35.780163, 33.673615>,  <30.371761, 35.673737, 33.763393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176277, 35.780163, 33.673615>,  <29.850471, 35.957539, 33.523987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176277, 35.780163, 33.673615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567642, -0.742299, 0.356054,
		0.119787, -0.502351, -0.856326,
		0.814514, -0.443436, 0.374074,
		30.420631, 35.647133, 33.785835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889223, 35.263939, 33.217861>,  <29.850471, 35.957539, 33.523987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889223, 35.263939, 33.217861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094772, 35.266212, 33.561001>,  <30.218102, 35.267578, 33.766884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094772, 35.266212, 33.561001>,  <29.889223, 35.263939, 33.217861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094772, 35.266212, 33.561001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486559, -0.821649, 0.296905,
		0.706538, -0.569965, -0.419457,
		0.513872, 0.005684, 0.857848,
		30.248934, 35.267918, 33.818356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135586, 34.523834, 33.342396>,  <29.889223, 35.263939, 33.217861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135586, 34.523834, 33.342396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152399, 34.723804, 33.688416>,  <30.162487, 34.843788, 33.896027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152399, 34.723804, 33.688416>,  <30.135586, 34.523834, 33.342396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152399, 34.723804, 33.688416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476122, -0.751157, 0.457243,
		0.878374, -0.431087, 0.206452,
		0.042034, 0.499927, 0.865047,
		30.165009, 34.873783, 33.947929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153292, 34.060829, 33.814369>,  <30.135586, 34.523834, 33.342396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153292, 34.060829, 33.814369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075708, 34.364162, 34.063305>,  <30.029158, 34.546162, 34.212666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075708, 34.364162, 34.063305>,  <30.153292, 34.060829, 33.814369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075708, 34.364162, 34.063305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521282, -0.617087, 0.589464,
		0.831050, -0.210084, 0.514996,
		-0.193960, 0.758332, 0.622343,
		30.017521, 34.591663, 34.250008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363899, 33.870407, 34.388268>,  <30.153292, 34.060829, 33.814369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363899, 33.870407, 34.388268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102468, 34.162445, 34.468067>,  <29.945610, 34.337669, 34.515945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102468, 34.162445, 34.468067>,  <30.363899, 33.870407, 34.388268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102468, 34.162445, 34.468067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512300, -0.620771, 0.593458,
		0.557123, 0.285667, 0.779749,
		-0.653577, 0.730094, 0.199498,
		29.906395, 34.381474, 34.527916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274515, 33.804783, 34.990921>,  <30.363899, 33.870407, 34.388268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274515, 33.804783, 34.990921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944794, 34.012314, 34.900280>,  <29.746962, 34.136833, 34.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944794, 34.012314, 34.900280>,  <30.274515, 33.804783, 34.990921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944794, 34.012314, 34.900280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560532, -0.691653, 0.455434,
		0.079560, 0.502433, 0.860948,
		-0.824302, 0.518823, -0.226602,
		29.697502, 34.167961, 34.832298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736816, 34.369732, 34.726192>,  <30.274515, 33.804783, 34.990921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736816, 34.369732, 34.726192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100424, 34.204426, 34.704655>,  <31.318588, 34.105244, 34.691730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100424, 34.204426, 34.704655>,  <30.736816, 34.369732, 34.726192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100424, 34.204426, 34.704655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384315, 0.781258, 0.491873,
		-0.161206, -0.467815, 0.869001,
		0.909019, -0.413263, -0.053845,
		31.373129, 34.080448, 34.688499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004213, 34.224480, 35.413815>,  <30.736816, 34.369732, 34.726192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004213, 34.224480, 35.413815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285410, 34.305817, 35.141209>,  <31.454128, 34.354618, 34.977646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285410, 34.305817, 35.141209>,  <31.004213, 34.224480, 35.413815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285410, 34.305817, 35.141209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313616, 0.771425, 0.553667,
		0.638319, -0.602956, 0.478533,
		0.702989, 0.203340, -0.681512,
		31.496307, 34.366817, 34.936756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608267, 34.317581, 35.766960>,  <31.004213, 34.224480, 35.413815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608267, 34.317581, 35.766960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668270, 34.533817, 35.435837>,  <31.704271, 34.663559, 35.237164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668270, 34.533817, 35.435837>,  <31.608267, 34.317581, 35.766960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668270, 34.533817, 35.435837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452056, 0.707129, 0.543703,
		0.879286, -0.455772, -0.138303,
		0.150007, 0.540591, -0.827803,
		31.713272, 34.695995, 35.187496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359592, 34.382416, 35.527195>,  <31.608267, 34.317581, 35.766960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359592, 34.382416, 35.527195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120983, 34.688049, 35.428947>,  <31.977816, 34.871429, 35.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120983, 34.688049, 35.428947>,  <32.359592, 34.382416, 35.527195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120983, 34.688049, 35.428947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479862, 0.584854, 0.653971,
		0.643340, 0.272250, -0.715537,
		-0.596528, 0.764085, -0.245618,
		31.942024, 34.917274, 35.355263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672604, 35.108212, 35.334301>,  <32.359592, 34.382416, 35.527195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672604, 35.108212, 35.334301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306835, 35.152977, 35.489895>,  <32.087376, 35.179836, 35.583252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306835, 35.152977, 35.489895>,  <32.672604, 35.108212, 35.334301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306835, 35.152977, 35.489895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400986, 0.381537, 0.832850,
		-0.055204, 0.917553, -0.393761,
		-0.914419, 0.111916, 0.388989,
		32.032509, 35.186550, 35.606590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593822, 35.904243, 35.465664>,  <32.672604, 35.108212, 35.334301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593822, 35.904243, 35.465664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343880, 35.691868, 35.694630>,  <32.193913, 35.564442, 35.832008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343880, 35.691868, 35.694630>,  <32.593822, 35.904243, 35.465664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343880, 35.691868, 35.694630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215687, 0.587243, 0.780144,
		-0.750353, 0.610943, -0.252428,
		-0.624860, -0.530938, 0.572412,
		32.156422, 35.532585, 35.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080276, 36.387642, 35.656536>,  <32.593822, 35.904243, 35.465664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080276, 36.387642, 35.656536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124733, 36.073318, 35.899899>,  <32.151405, 35.884724, 36.045918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124733, 36.073318, 35.899899>,  <32.080276, 36.387642, 35.656536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124733, 36.073318, 35.899899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128068, 0.618419, 0.775343,
		-0.985518, -0.008256, 0.169368,
		0.111142, -0.785805, 0.608406,
		32.158077, 35.837578, 36.082420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652597, 36.566906, 36.305214>,  <32.080276, 36.387642, 35.656536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652597, 36.566906, 36.305214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922049, 36.283760, 36.390209>,  <32.083717, 36.113873, 36.441208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922049, 36.283760, 36.390209>,  <31.652597, 36.566906, 36.305214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922049, 36.283760, 36.390209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221808, 0.467890, 0.855500,
		-0.705002, -0.529155, 0.472193,
		0.673627, -0.707865, 0.212493,
		32.124138, 36.071400, 36.453957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562244, 36.400173, 37.039787>,  <31.652597, 36.566906, 36.305214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562244, 36.400173, 37.039787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928183, 36.261147, 36.957565>,  <32.147747, 36.177731, 36.908234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928183, 36.261147, 36.957565>,  <31.562244, 36.400173, 37.039787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928183, 36.261147, 36.957565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351406, 0.434502, 0.829290,
		-0.198919, -0.830907, 0.519640,
		0.914847, -0.347566, -0.205555,
		32.202637, 36.156876, 36.895897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705376, 35.941711, 37.571491>,  <31.562244, 36.400173, 37.039787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705376, 35.941711, 37.571491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064003, 36.071033, 37.450405>,  <32.279179, 36.148628, 37.377754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064003, 36.071033, 37.450405>,  <31.705376, 35.941711, 37.571491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064003, 36.071033, 37.450405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188670, 0.339561, 0.921467,
		0.400704, -0.883273, 0.243442,
		0.896571, 0.323306, -0.302711,
		32.332973, 36.168026, 37.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186832, 35.853138, 38.190849>,  <31.705376, 35.941711, 37.571491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186832, 35.853138, 38.190849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373920, 36.091690, 37.929905>,  <32.486172, 36.234821, 37.773338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373920, 36.091690, 37.929905>,  <32.186832, 35.853138, 38.190849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373920, 36.091690, 37.929905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397732, 0.517110, 0.757896,
		0.789334, -0.613946, 0.004663,
		0.467719, 0.596378, -0.652359,
		32.514236, 36.270603, 37.734196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829266, 36.018520, 38.470940>,  <32.186832, 35.853138, 38.190849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829266, 36.018520, 38.470940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817482, 36.296310, 38.183376>,  <32.810410, 36.462986, 38.010838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817482, 36.296310, 38.183376>,  <32.829266, 36.018520, 38.470940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817482, 36.296310, 38.183376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413974, 0.663119, 0.623617,
		0.909811, -0.279237, -0.307034,
		-0.029463, 0.694478, -0.718911,
		32.808643, 36.504654, 37.967705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424088, 36.441902, 38.538990>,  <32.829266, 36.018520, 38.470940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424088, 36.441902, 38.538990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170368, 36.663143, 38.322937>,  <33.018135, 36.795887, 38.193306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170368, 36.663143, 38.322937>,  <33.424088, 36.441902, 38.538990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170368, 36.663143, 38.322937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242013, 0.805618, 0.540749,
		0.734232, 0.212276, -0.644859,
		-0.634298, 0.553100, -0.540136,
		32.980080, 36.829075, 38.160896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799702, 37.072815, 38.318512>,  <33.424088, 36.441902, 38.538990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799702, 37.072815, 38.318512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406780, 37.147461, 38.312130>,  <33.171028, 37.192249, 38.308300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406780, 37.147461, 38.312130>,  <33.799702, 37.072815, 38.318512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406780, 37.147461, 38.312130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122849, 0.706285, 0.697187,
		0.141375, 0.682889, -0.716712,
		-0.982304, 0.186612, -0.015959,
		33.112087, 37.203445, 38.307343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794964, 37.716740, 38.182640>,  <33.799702, 37.072815, 38.318512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794964, 37.716740, 38.182640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437935, 37.639801, 38.345768>,  <33.223717, 37.593639, 38.443645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437935, 37.639801, 38.345768>,  <33.794964, 37.716740, 38.182640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437935, 37.639801, 38.345768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172915, 0.689286, 0.703551,
		-0.416427, 0.698490, -0.581980,
		-0.892574, -0.192345, 0.407817,
		33.170162, 37.582096, 38.468113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529488, 38.409779, 38.445690>,  <33.794964, 37.716740, 38.182640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529488, 38.409779, 38.445690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310093, 38.138908, 38.641891>,  <33.178455, 37.976387, 38.759613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310093, 38.138908, 38.641891>,  <33.529488, 38.409779, 38.445690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310093, 38.138908, 38.641891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123758, 0.645906, 0.753319,
		-0.826948, 0.352484, -0.438079,
		-0.548490, -0.677171, 0.490507,
		33.145546, 37.935757, 38.789043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891560, 38.751785, 38.622131>,  <33.529488, 38.409779, 38.445690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891560, 38.751785, 38.622131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930931, 38.444973, 38.875736>,  <32.954556, 38.260887, 39.027901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930931, 38.444973, 38.875736>,  <32.891560, 38.751785, 38.622131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930931, 38.444973, 38.875736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128289, 0.622011, 0.772427,
		-0.986841, -0.157365, -0.037179,
		0.098427, -0.767032, 0.634014,
		32.960461, 38.214863, 39.065941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378128, 38.925770, 39.073921>,  <32.891560, 38.751785, 38.622131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378128, 38.925770, 39.073921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593117, 38.649170, 39.266983>,  <32.722111, 38.483212, 39.382820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593117, 38.649170, 39.266983>,  <32.378128, 38.925770, 39.073921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593117, 38.649170, 39.266983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251592, 0.414794, 0.874441,
		-0.804879, -0.591416, 0.048962,
		0.537468, -0.691500, 0.482654,
		32.754356, 38.441719, 39.411777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910040, 38.568157, 39.577648>,  <32.378128, 38.925770, 39.073921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910040, 38.568157, 39.577648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280968, 38.510315, 39.715729>,  <32.503525, 38.475609, 39.798576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280968, 38.510315, 39.715729>,  <31.910040, 38.568157, 39.577648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280968, 38.510315, 39.715729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272945, 0.369792, 0.888118,
		-0.256081, -0.917792, 0.303447,
		0.927320, -0.144606, 0.345204,
		32.559162, 38.466934, 39.819290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796005, 38.208363, 40.139275>,  <31.910040, 38.568157, 39.577648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796005, 38.208363, 40.139275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165382, 38.356499, 40.179474>,  <32.387009, 38.445381, 40.203594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165382, 38.356499, 40.179474>,  <31.796005, 38.208363, 40.139275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165382, 38.356499, 40.179474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251913, 0.387500, 0.886783,
		0.289462, -0.844213, 0.451127,
		0.923445, 0.370335, 0.100502,
		32.442417, 38.467598, 40.209625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058033, 38.053509, 40.805786>,  <31.796005, 38.208363, 40.139275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058033, 38.053509, 40.805786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315681, 38.346424, 40.717373>,  <32.470272, 38.522175, 40.664326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315681, 38.346424, 40.717373>,  <32.058033, 38.053509, 40.805786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315681, 38.346424, 40.717373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133387, 0.392064, 0.910216,
		0.753201, -0.556810, 0.350215,
		0.644124, 0.732290, -0.221032,
		32.508919, 38.566113, 40.651062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472157, 38.188042, 41.418388>,  <32.058033, 38.053509, 40.805786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472157, 38.188042, 41.418388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486401, 38.533428, 41.217129>,  <32.494946, 38.740662, 41.096375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486401, 38.533428, 41.217129>,  <32.472157, 38.188042, 41.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486401, 38.533428, 41.217129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088398, 0.498771, 0.862214,
		0.995449, -0.075178, -0.058569,
		0.035608, 0.863467, -0.503146,
		32.497082, 38.792469, 41.066185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049683, 38.524681, 41.755131>,  <32.472157, 38.188042, 41.418388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049683, 38.524681, 41.755131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827740, 38.796665, 41.563385>,  <32.694576, 38.959854, 41.448338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827740, 38.796665, 41.563385>,  <33.049683, 38.524681, 41.755131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827740, 38.796665, 41.563385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128406, 0.639287, 0.758171,
		0.821977, 0.359122, -0.442023,
		-0.554856, 0.679958, -0.479367,
		32.661282, 39.000652, 41.419575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280098, 39.217804, 41.896748>,  <33.049683, 38.524681, 41.755131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280098, 39.217804, 41.896748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894314, 39.277313, 41.809406>,  <32.662842, 39.313019, 41.757000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894314, 39.277313, 41.809406>,  <33.280098, 39.217804, 41.896748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894314, 39.277313, 41.809406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125232, 0.470300, 0.873576,
		0.232661, 0.869876, -0.434954,
		-0.964462, 0.148777, -0.218356,
		32.604977, 39.321945, 41.743900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103882, 39.684158, 42.394707>,  <33.280098, 39.217804, 41.896748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103882, 39.684158, 42.394707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747215, 39.624573, 42.223713>,  <32.533215, 39.588821, 42.121117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747215, 39.624573, 42.223713>,  <33.103882, 39.684158, 42.394707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747215, 39.624573, 42.223713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449733, 0.183664, 0.874075,
		-0.051695, 0.971636, -0.230762,
		-0.891666, -0.148967, -0.427483,
		32.479717, 39.579884, 42.095467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739525, 40.332096, 42.302299>,  <33.103882, 39.684158, 42.394707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739525, 40.332096, 42.302299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514866, 40.005402, 42.355209>,  <32.380070, 39.809383, 42.386955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514866, 40.005402, 42.355209>,  <32.739525, 40.332096, 42.302299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514866, 40.005402, 42.355209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446441, 0.433759, 0.782652,
		-0.696595, 0.380520, -0.608243,
		-0.561646, -0.816736, 0.132275,
		32.346371, 39.760380, 42.394890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071964, 40.584686, 42.543919>,  <32.739525, 40.332096, 42.302299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071964, 40.584686, 42.543919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082569, 40.197998, 42.645706>,  <32.088932, 39.965984, 42.706779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082569, 40.197998, 42.645706>,  <32.071964, 40.584686, 42.543919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082569, 40.197998, 42.645706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402215, 0.222730, 0.888040,
		-0.915161, -0.125901, -0.382922,
		0.026517, -0.966716, 0.254473,
		32.090523, 39.907982, 42.722050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386253, 40.469765, 42.959969>,  <32.071964, 40.584686, 42.543919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386253, 40.469765, 42.959969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653811, 40.188450, 43.056278>,  <31.814344, 40.019661, 43.114063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653811, 40.188450, 43.056278>,  <31.386253, 40.469765, 42.959969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653811, 40.188450, 43.056278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169400, 0.171160, 0.970571,
		-0.723799, -0.689996, -0.004649,
		0.668894, -0.703286, 0.240771,
		31.854479, 39.977463, 43.128510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061033, 40.155533, 43.558414>,  <31.386253, 40.469765, 42.959969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061033, 40.155533, 43.558414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450003, 40.064449, 43.578587>,  <31.683384, 40.009800, 43.590691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450003, 40.064449, 43.578587>,  <31.061033, 40.155533, 43.558414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450003, 40.064449, 43.578587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015762, 0.279914, 0.959896,
		-0.232692, -0.932629, 0.275784,
		0.972423, -0.227707, 0.050434,
		31.741730, 39.996136, 43.593716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100031, 39.684078, 44.067337>,  <31.061033, 40.155533, 43.558414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100031, 39.684078, 44.067337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465105, 39.846786, 44.051605>,  <31.684149, 39.944412, 44.042168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465105, 39.846786, 44.051605>,  <31.100031, 39.684078, 44.067337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465105, 39.846786, 44.051605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016040, 0.131824, 0.991143,
		0.408352, -0.903969, 0.126839,
		0.912683, 0.406770, -0.039331,
		31.738911, 39.968819, 44.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334610, 39.446125, 44.742908>,  <31.100031, 39.684078, 44.067337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334610, 39.446125, 44.742908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606943, 39.716000, 44.628880>,  <31.770344, 39.877922, 44.560463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606943, 39.716000, 44.628880>,  <31.334610, 39.446125, 44.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606943, 39.716000, 44.628880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200051, 0.203124, 0.958499,
		0.704590, -0.709607, 0.003323,
		0.680832, 0.674684, -0.285077,
		31.811193, 39.918404, 44.543358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974121, 39.213947, 45.064980>,  <31.334610, 39.446125, 44.742908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974121, 39.213947, 45.064980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033310, 39.597469, 44.967979>,  <32.068821, 39.827583, 44.909779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033310, 39.597469, 44.967979>,  <31.974121, 39.213947, 45.064980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033310, 39.597469, 44.967979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226530, 0.205823, 0.952009,
		0.962699, -0.195802, -0.186742,
		0.147970, 0.958800, -0.242501,
		32.077702, 39.885109, 44.895229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650734, 39.399792, 45.251236>,  <31.974121, 39.213947, 45.064980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650734, 39.399792, 45.251236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450577, 39.745888, 45.238815>,  <32.330482, 39.953545, 45.231361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450577, 39.745888, 45.238815>,  <32.650734, 39.399792, 45.251236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450577, 39.745888, 45.238815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297572, 0.205555, 0.932308,
		0.813055, 0.457280, -0.360330,
		-0.500393, 0.865241, -0.031054,
		32.300457, 40.005459, 45.229500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144768, 39.873936, 45.545856>,  <32.650734, 39.399792, 45.251236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144768, 39.873936, 45.545856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776360, 40.026619, 45.576900>,  <32.555317, 40.118229, 45.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776360, 40.026619, 45.576900>,  <33.144768, 39.873936, 45.545856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776360, 40.026619, 45.576900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133143, 0.121257, 0.983651,
		0.366060, 0.916293, -0.162502,
		-0.921017, 0.381711, 0.077610,
		32.500053, 40.141132, 45.600185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234669, 40.479309, 45.970066>,  <33.144768, 39.873936, 45.545856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234669, 40.479309, 45.970066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840046, 40.416729, 45.988964>,  <32.603271, 40.379181, 46.000301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840046, 40.416729, 45.988964>,  <33.234669, 40.479309, 45.970066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840046, 40.416729, 45.988964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015298, 0.199406, 0.979798,
		-0.162711, 0.967347, -0.194331,
		-0.986555, -0.156451, 0.047244,
		32.544079, 40.369793, 46.003136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940502, 41.119362, 46.165562>,  <33.234669, 40.479309, 45.970066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940502, 41.119362, 46.165562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716637, 40.821175, 46.310368>,  <32.582317, 40.642262, 46.397251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716637, 40.821175, 46.310368>,  <32.940502, 41.119362, 46.165562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716637, 40.821175, 46.310368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157370, 0.333282, 0.929601,
		-0.813641, 0.577234, -0.069212,
		-0.559664, -0.745469, 0.362011,
		32.548737, 40.597534, 46.418972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597553, 41.409481, 46.788834>,  <32.940502, 41.119362, 46.165562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597553, 41.409481, 46.788834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556805, 41.011585, 46.793087>,  <32.532356, 40.772846, 46.795639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556805, 41.011585, 46.793087>,  <32.597553, 41.409481, 46.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556805, 41.011585, 46.793087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124246, -0.002122, 0.992249,
		-0.987008, 0.102404, 0.123809,
		-0.101873, -0.994740, 0.010629,
		32.526241, 40.713161, 46.796276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059681, 41.343239, 47.328014>,  <32.597553, 41.409481, 46.788834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059681, 41.343239, 47.328014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244698, 40.992737, 47.274021>,  <32.355709, 40.782436, 47.241623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244698, 40.992737, 47.274021>,  <32.059681, 41.343239, 47.328014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244698, 40.992737, 47.274021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152984, -0.071086, 0.985669,
		-0.873297, -0.476567, 0.101173,
		0.462546, -0.876259, -0.134986,
		32.383461, 40.729858, 47.233524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861845, 40.944027, 47.844280>,  <32.059681, 41.343239, 47.328014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861845, 40.944027, 47.844280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192574, 40.760269, 47.714466>,  <32.391010, 40.650017, 47.636578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192574, 40.760269, 47.714466>,  <31.861845, 40.944027, 47.844280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192574, 40.760269, 47.714466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292785, -0.141131, 0.945705,
		-0.480252, -0.876949, 0.017813,
		0.826822, -0.459393, -0.324536,
		32.440620, 40.622452, 47.617104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956272, 40.257175, 48.154770>,  <31.861845, 40.944027, 47.844280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956272, 40.257175, 48.154770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321762, 40.360962, 48.029686>,  <32.541058, 40.423233, 47.954636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321762, 40.360962, 48.029686>,  <31.956272, 40.257175, 48.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321762, 40.360962, 48.029686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334641, -0.043990, 0.941319,
		0.230482, -0.964751, -0.127022,
		0.913725, 0.259464, -0.312706,
		32.595879, 40.438801, 47.935875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356895, 39.647907, 48.353058>,  <31.956272, 40.257175, 48.154770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356895, 39.647907, 48.353058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614906, 39.950180, 48.307652>,  <32.769714, 40.131542, 48.280407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614906, 39.950180, 48.307652>,  <32.356895, 39.647907, 48.353058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614906, 39.950180, 48.307652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533412, -0.338894, 0.774999,
		0.547181, -0.560447, -0.621685,
		0.645031, 0.755678, -0.113513,
		32.808414, 40.176884, 48.273598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058903, 39.390610, 48.497948>,  <32.356895, 39.647907, 48.353058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058903, 39.390610, 48.497948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105183, 39.785763, 48.539322>,  <33.132950, 40.022854, 48.564148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105183, 39.785763, 48.539322>,  <33.058903, 39.390610, 48.497948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105183, 39.785763, 48.539322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574921, -0.151527, 0.804056,
		0.809987, -0.033562, -0.585486,
		0.115703, 0.987883, 0.103439,
		33.139893, 40.082127, 48.570354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709160, 39.396313, 48.740242>,  <33.058903, 39.390610, 48.497948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709160, 39.396313, 48.740242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557732, 39.757347, 48.822235>,  <33.466873, 39.973969, 48.871429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557732, 39.757347, 48.822235>,  <33.709160, 39.396313, 48.740242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557732, 39.757347, 48.822235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382872, -0.048912, 0.922506,
		0.842668, 0.427718, -0.327058,
		-0.378575, 0.902588, 0.204978,
		33.444160, 40.028122, 48.883728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228851, 39.746693, 49.104752>,  <33.709160, 39.396313, 48.740242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228851, 39.746693, 49.104752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887268, 39.930187, 49.202995>,  <33.682320, 40.040283, 49.261940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887268, 39.930187, 49.202995>,  <34.228851, 39.746693, 49.104752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887268, 39.930187, 49.202995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341050, 0.136950, 0.930016,
		0.392998, 0.877955, -0.273402,
		-0.853954, 0.458738, 0.245606,
		33.631081, 40.067810, 49.276676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427013, 40.295773, 49.601868>,  <34.228851, 39.746693, 49.104752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427013, 40.295773, 49.601868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038670, 40.234898, 49.675915>,  <33.805664, 40.198372, 49.720345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038670, 40.234898, 49.675915>,  <34.427013, 40.295773, 49.601868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038670, 40.234898, 49.675915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181741, 0.035957, 0.982689,
		-0.156212, 0.987697, -0.007250,
		-0.970859, -0.152190, 0.185122,
		33.747414, 40.189240, 49.731453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256157, 40.784645, 50.102638>,  <34.427013, 40.295773, 49.601868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256157, 40.784645, 50.102638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998817, 40.478535, 50.111176>,  <33.844414, 40.294868, 50.116299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998817, 40.478535, 50.111176>,  <34.256157, 40.784645, 50.102638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998817, 40.478535, 50.111176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140707, -0.090799, 0.985879,
		-0.752533, 0.637265, 0.166095,
		-0.643347, -0.765277, 0.021339,
		33.805813, 40.248951, 50.117577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815331, 40.886810, 50.703503>,  <34.256157, 40.784645, 50.102638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815331, 40.886810, 50.703503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764511, 40.495869, 50.635807>,  <33.734020, 40.261303, 50.595192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764511, 40.495869, 50.635807>,  <33.815331, 40.886810, 50.703503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764511, 40.495869, 50.635807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044413, -0.176053, 0.983378,
		-0.990902, 0.117422, 0.065774,
		-0.127050, -0.977352, -0.169236,
		33.726395, 40.202663, 50.585037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409554, 40.671970, 51.262688>,  <33.815331, 40.886810, 50.703503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409554, 40.671970, 51.262688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570145, 40.328114, 51.136307>,  <33.666500, 40.121799, 51.060478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570145, 40.328114, 51.136307>,  <33.409554, 40.671970, 51.262688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570145, 40.328114, 51.136307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001466, -0.345574, 0.938390,
		-0.915867, -0.376280, -0.140001,
		0.401479, -0.859646, -0.315949,
		33.690590, 40.070221, 51.041523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245773, 40.210506, 51.702591>,  <33.409554, 40.671970, 51.262688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245773, 40.210506, 51.702591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546314, 40.018528, 51.521431>,  <33.726639, 39.903343, 51.412735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546314, 40.018528, 51.521431>,  <33.245773, 40.210506, 51.702591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546314, 40.018528, 51.521431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342265, -0.303364, 0.889283,
		-0.564199, -0.823181, -0.063667,
		0.751355, -0.479941, -0.452904,
		33.771721, 39.874546, 51.385559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271488, 39.548019, 52.008930>,  <33.245773, 40.210506, 51.702591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271488, 39.548019, 52.008930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626778, 39.646637, 51.853870>,  <33.839951, 39.705807, 51.760834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626778, 39.646637, 51.853870>,  <33.271488, 39.548019, 52.008930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626778, 39.646637, 51.853870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402220, -0.009635, 0.915493,
		0.221973, -0.969084, -0.107723,
		0.888227, 0.246543, -0.387646,
		33.893246, 39.720600, 51.737576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858498, 39.067890, 52.267529>,  <33.271488, 39.548019, 52.008930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858498, 39.067890, 52.267529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034142, 39.416653, 52.180851>,  <34.139526, 39.625912, 52.128845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034142, 39.416653, 52.180851>,  <33.858498, 39.067890, 52.267529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034142, 39.416653, 52.180851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452698, -0.006393, 0.891641,
		0.776045, -0.489625, -0.397519,
		0.439111, 0.871910, -0.216691,
		34.165874, 39.678226, 52.115845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246006, 38.592442, 52.714283>,  <33.858498, 39.067890, 52.267529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246006, 38.592442, 52.714283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439938, 38.882599, 52.909733>,  <34.556297, 39.056694, 53.027000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439938, 38.882599, 52.909733>,  <34.246006, 38.592442, 52.714283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439938, 38.882599, 52.909733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000163, 0.558749, -0.829337,
		-0.874609, 0.402007, 0.271017,
		0.484830, 0.725389, 0.488621,
		34.585388, 39.100216, 53.056320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328407, 37.999989, 53.260441>,  <34.246006, 38.592442, 52.714283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328407, 37.999989, 53.260441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091629, 38.221313, 53.494862>,  <33.949562, 38.354107, 53.635513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091629, 38.221313, 53.494862>,  <34.328407, 37.999989, 53.260441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091629, 38.221313, 53.494862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805554, 0.382492, 0.452530,
		0.026230, 0.739966, -0.672133,
		-0.591942, 0.553309, 0.586050,
		33.914047, 38.387306, 53.670677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724846, 38.437557, 53.509911>,  <34.328407, 37.999989, 53.260441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724846, 38.437557, 53.509911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414986, 38.526512, 53.746708>,  <34.229069, 38.579887, 53.888786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414986, 38.526512, 53.746708>,  <34.724846, 38.437557, 53.509911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414986, 38.526512, 53.746708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611533, 0.501860, 0.611690,
		-0.161063, 0.835870, -0.524767,
		-0.774653, 0.222392, 0.591993,
		34.182590, 38.593231, 53.924305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236591, 39.167236, 53.435066>,  <34.724846, 38.437557, 53.509911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236591, 39.167236, 53.435066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563126, 38.941685, 53.485081>,  <35.759045, 38.806355, 53.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563126, 38.941685, 53.485081>,  <35.236591, 39.167236, 53.435066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563126, 38.941685, 53.485081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119121, -0.376199, -0.918850,
		0.565160, 0.735195, -0.374275,
		0.816336, -0.563881, 0.125035,
		35.808025, 38.772522, 53.522591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620415, 39.244873, 52.823284>,  <35.236591, 39.167236, 53.435066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620415, 39.244873, 52.823284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719978, 38.906509, 53.011955>,  <35.779716, 38.703491, 53.125156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719978, 38.906509, 53.011955>,  <35.620415, 39.244873, 52.823284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719978, 38.906509, 53.011955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094054, -0.505812, -0.857501,
		0.963948, 0.169081, -0.205465,
		0.248914, -0.845911, 0.471674,
		35.794651, 38.652737, 53.153458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144566, 38.925034, 52.525696>,  <35.620415, 39.244873, 52.823284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144566, 38.925034, 52.525696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893696, 38.659176, 52.688129>,  <35.743176, 38.499660, 52.785587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893696, 38.659176, 52.688129>,  <36.144566, 38.925034, 52.525696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893696, 38.659176, 52.688129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004919, -0.517975, -0.855382,
		0.778864, -0.538470, 0.321591,
		-0.627173, -0.664644, 0.406081,
		35.705544, 38.459782, 52.809952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377445, 38.162018, 52.787807>,  <36.144566, 38.925034, 52.525696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377445, 38.162018, 52.787807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998016, 38.159744, 52.661201>,  <35.770359, 38.158379, 52.585236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998016, 38.159744, 52.661201>,  <36.377445, 38.162018, 52.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998016, 38.159744, 52.661201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251982, -0.618787, -0.744048,
		-0.191629, -0.785538, 0.588395,
		-0.948569, -0.005684, -0.316519,
		35.713444, 38.158039, 52.566246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153488, 37.411232, 52.565445>,  <36.377445, 38.162018, 52.787807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153488, 37.411232, 52.565445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920609, 37.693104, 52.403225>,  <35.780880, 37.862225, 52.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920609, 37.693104, 52.403225>,  <36.153488, 37.411232, 52.565445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920609, 37.693104, 52.403225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021004, -0.511675, -0.858922,
		-0.812773, -0.491549, 0.312699,
		-0.582203, 0.704676, -0.405551,
		35.745949, 37.904507, 52.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016094, 37.017178, 51.978970>,  <36.153488, 37.411232, 52.565445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016094, 37.017178, 51.978970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803787, 37.349697, 51.912964>,  <35.676403, 37.549210, 51.873360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803787, 37.349697, 51.912964>,  <36.016094, 37.017178, 51.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803787, 37.349697, 51.912964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139081, -0.277498, -0.950606,
		-0.836030, -0.481597, 0.262904,
		-0.530765, 0.831300, -0.165015,
		35.644558, 37.599087, 51.863461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447605, 36.816349, 51.577168>,  <36.016094, 37.017178, 51.978970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447605, 36.816349, 51.577168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507072, 37.204357, 51.500275>,  <35.542751, 37.437164, 51.454140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507072, 37.204357, 51.500275>,  <35.447605, 36.816349, 51.577168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507072, 37.204357, 51.500275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066265, -0.203730, -0.976782,
		-0.986665, 0.132478, -0.094567,
		0.148668, 0.970023, -0.192235,
		35.551674, 37.495365, 51.442604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907982, 36.994717, 51.092701>,  <35.447605, 36.816349, 51.577168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907982, 36.994717, 51.092701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211308, 37.254234, 51.067333>,  <35.393303, 37.409946, 51.052113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211308, 37.254234, 51.067333>,  <34.907982, 36.994717, 51.092701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211308, 37.254234, 51.067333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058598, -0.164728, -0.984597,
		-0.649246, 0.742922, -0.162934,
		0.758318, 0.648793, -0.063415,
		35.438805, 37.448872, 51.048309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735722, 37.398430, 50.402641>,  <34.907982, 36.994717, 51.092701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735722, 37.398430, 50.402641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121727, 37.450806, 50.493504>,  <35.353333, 37.482231, 50.548019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121727, 37.450806, 50.493504>,  <34.735722, 37.398430, 50.402641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121727, 37.450806, 50.493504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239603, -0.088647, -0.966815,
		-0.106462, 0.987419, -0.116920,
		0.965016, 0.130943, 0.227151,
		35.411232, 37.490089, 50.561649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926323, 37.991558, 49.949078>,  <34.735722, 37.398430, 50.402641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926323, 37.991558, 49.949078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255917, 37.800514, 50.071014>,  <35.453674, 37.685886, 50.144176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255917, 37.800514, 50.071014>,  <34.926323, 37.991558, 49.949078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255917, 37.800514, 50.071014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220580, -0.225180, -0.949020,
		0.521907, 0.849225, -0.080194,
		0.823989, -0.477611, 0.304845,
		35.503113, 37.657230, 50.162468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408051, 38.308205, 49.602310>,  <34.926323, 37.991558, 49.949078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408051, 38.308205, 49.602310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601868, 37.987949, 49.743275>,  <35.718159, 37.795795, 49.827854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601868, 37.987949, 49.743275>,  <35.408051, 38.308205, 49.602310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601868, 37.987949, 49.743275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340559, -0.198424, -0.919047,
		0.805755, 0.565331, 0.176522,
		0.484540, -0.800643, 0.352409,
		35.747231, 37.747757, 49.848999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125732, 38.300682, 49.455551>,  <35.408051, 38.308205, 49.602310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125732, 38.300682, 49.455551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040424, 37.913883, 49.511314>,  <35.989239, 37.681805, 49.544773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040424, 37.913883, 49.511314>,  <36.125732, 38.300682, 49.455551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040424, 37.913883, 49.511314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545586, -0.236253, -0.804065,
		0.810463, -0.095423, 0.577965,
		-0.213273, -0.966995, 0.139413,
		35.976444, 37.623783, 49.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784748, 37.948929, 49.478382>,  <36.125732, 38.300682, 49.455551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784748, 37.948929, 49.478382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483681, 37.704029, 49.381523>,  <36.303040, 37.557091, 49.323406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483681, 37.704029, 49.381523>,  <36.784748, 37.948929, 49.478382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483681, 37.704029, 49.381523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404891, -0.140406, -0.903521,
		0.519180, -0.778099, 0.353574,
		-0.752672, -0.612248, -0.242149,
		36.257877, 37.520355, 49.308880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130573, 37.479748, 48.946236>,  <36.784748, 37.948929, 49.478382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130573, 37.479748, 48.946236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739422, 37.410530, 48.899227>,  <36.504730, 37.368999, 48.871021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739422, 37.410530, 48.899227>,  <37.130573, 37.479748, 48.946236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739422, 37.410530, 48.899227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148332, -0.177522, -0.972874,
		0.147489, -0.968784, 0.199263,
		-0.977878, -0.173045, -0.117519,
		36.446060, 37.358616, 48.863972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049633, 36.839558, 48.555767>,  <37.130573, 37.479748, 48.946236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049633, 36.839558, 48.555767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701981, 37.029797, 48.501492>,  <36.493389, 37.143940, 48.468925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701981, 37.029797, 48.501492>,  <37.049633, 36.839558, 48.555767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701981, 37.029797, 48.501492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102242, -0.095638, -0.990151,
		-0.483894, -0.874446, 0.034496,
		-0.869133, 0.475602, -0.135684,
		36.441242, 37.172478, 48.460785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604206, 36.393482, 48.234764>,  <37.049633, 36.839558, 48.555767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604206, 36.393482, 48.234764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466568, 36.752457, 48.124348>,  <36.383984, 36.967842, 48.058098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466568, 36.752457, 48.124348>,  <36.604206, 36.393482, 48.234764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466568, 36.752457, 48.124348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148961, -0.342451, -0.927652,
		-0.927042, -0.278084, 0.251520,
		-0.344099, 0.897439, -0.276043,
		36.363338, 37.021687, 48.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079021, 36.192196, 47.809605>,  <36.604206, 36.393482, 48.234764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079021, 36.192196, 47.809605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130436, 36.578560, 47.719719>,  <36.161285, 36.810379, 47.665787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130436, 36.578560, 47.719719>,  <36.079021, 36.192196, 47.809605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130436, 36.578560, 47.719719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144389, -0.205954, -0.967851,
		-0.981138, 0.156846, 0.112995,
		0.128532, 0.965910, -0.224716,
		36.168995, 36.868332, 47.652306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533279, 36.380627, 47.411774>,  <36.079021, 36.192196, 47.809605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533279, 36.380627, 47.411774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802666, 36.660770, 47.317162>,  <35.964298, 36.828857, 47.260395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802666, 36.660770, 47.317162>,  <35.533279, 36.380627, 47.411774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802666, 36.660770, 47.317162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103488, -0.227490, -0.968266,
		-0.731943, 0.676567, -0.080726,
		0.673461, 0.700361, -0.236526,
		36.004704, 36.870880, 47.246204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217983, 36.814018, 46.872837>,  <35.533279, 36.380627, 47.411774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217983, 36.814018, 46.872837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615105, 36.851604, 46.843136>,  <35.853378, 36.874157, 46.825314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615105, 36.851604, 46.843136>,  <35.217983, 36.814018, 46.872837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615105, 36.851604, 46.843136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054059, -0.201684, -0.977958,
		-0.106868, 0.974933, -0.195153,
		0.992803, 0.093963, -0.074257,
		35.912945, 36.879795, 46.820858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367310, 37.311470, 46.315022>,  <35.217983, 36.814018, 46.872837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367310, 37.311470, 46.315022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690746, 37.082684, 46.370209>,  <35.884808, 36.945412, 46.403320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690746, 37.082684, 46.370209>,  <35.367310, 37.311470, 46.315022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690746, 37.082684, 46.370209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018025, -0.210299, -0.977471,
		0.588096, 0.792860, -0.159736,
		0.808590, -0.571967, 0.137968,
		35.933323, 36.911095, 46.411598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794189, 37.511337, 45.813648>,  <35.367310, 37.311470, 46.315022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794189, 37.511337, 45.813648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917339, 37.138214, 45.888565>,  <35.991230, 36.914341, 45.933517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917339, 37.138214, 45.888565>,  <35.794189, 37.511337, 45.813648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917339, 37.138214, 45.888565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020810, -0.203411, -0.978872,
		0.951200, 0.297471, -0.082037,
		0.307874, -0.932810, 0.187294,
		36.009701, 36.858372, 45.944752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105320, 37.411655, 45.219849>,  <35.794189, 37.511337, 45.813648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105320, 37.411655, 45.219849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076065, 37.050541, 45.389381>,  <36.058514, 36.833874, 45.491100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076065, 37.050541, 45.389381>,  <36.105320, 37.411655, 45.219849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076065, 37.050541, 45.389381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097430, -0.416466, -0.903916,
		0.992552, -0.107400, -0.057501,
		-0.073133, -0.902785, 0.423828,
		36.054127, 36.779705, 45.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475586, 36.969776, 44.806660>,  <36.105320, 37.411655, 45.219849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475586, 36.969776, 44.806660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259289, 36.713028, 45.024139>,  <36.129513, 36.558979, 45.154625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259289, 36.713028, 45.024139>,  <36.475586, 36.969776, 44.806660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259289, 36.713028, 45.024139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187341, -0.538218, -0.821720,
		0.820064, -0.546193, 0.170788,
		-0.540739, -0.641868, 0.543698,
		36.097069, 36.520466, 45.187248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639492, 36.375458, 44.572998>,  <36.475586, 36.969776, 44.806660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639492, 36.375458, 44.572998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292919, 36.281200, 44.749073>,  <36.084976, 36.224648, 44.854717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292919, 36.281200, 44.749073>,  <36.639492, 36.375458, 44.572998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292919, 36.281200, 44.749073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199038, -0.645533, -0.737340,
		0.457905, -0.726471, 0.512410,
		-0.866434, -0.235643, 0.440188,
		36.032990, 36.210506, 44.881130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564297, 35.631004, 44.630585>,  <36.639492, 36.375458, 44.572998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564297, 35.631004, 44.630585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209198, 35.815102, 44.634102>,  <35.996140, 35.925560, 44.636211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209198, 35.815102, 44.634102>,  <36.564297, 35.631004, 44.630585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209198, 35.815102, 44.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308863, -0.581377, -0.752731,
		-0.341322, -0.670955, 0.658269,
		-0.887751, 0.460239, 0.008796,
		35.942871, 35.953175, 44.636742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122314, 35.087967, 44.338818>,  <36.564297, 35.631004, 44.630585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122314, 35.087967, 44.338818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906979, 35.425026, 44.334332>,  <35.777775, 35.627262, 44.331642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906979, 35.425026, 44.334332>,  <36.122314, 35.087967, 44.338818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906979, 35.425026, 44.334332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547891, -0.360078, -0.755089,
		-0.640315, -0.400353, 0.655526,
		-0.538343, 0.842651, -0.011214,
		35.745476, 35.677822, 44.330967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482365, 34.824718, 44.085381>,  <36.122314, 35.087967, 44.338818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482365, 34.824718, 44.085381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480324, 35.217525, 44.009884>,  <35.479099, 35.453209, 43.964588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480324, 35.217525, 44.009884>,  <35.482365, 34.824718, 44.085381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480324, 35.217525, 44.009884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550130, -0.160368, -0.819536,
		-0.835063, 0.099653, 0.541053,
		-0.005098, 0.982014, -0.188739,
		35.478794, 35.512131, 43.953262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746040, 35.055901, 43.988655>,  <35.482365, 34.824718, 44.085381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746040, 35.055901, 43.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972626, 35.320751, 43.792408>,  <35.108578, 35.479660, 43.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972626, 35.320751, 43.792408>,  <34.746040, 35.055901, 43.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972626, 35.320751, 43.792408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602710, -0.073139, -0.794601,
		-0.562010, 0.745814, 0.357640,
		0.566467, 0.662127, -0.490615,
		35.142567, 35.519390, 43.645222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292503, 35.287201, 43.457729>,  <34.746040, 35.055901, 43.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292503, 35.287201, 43.457729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628540, 35.465698, 43.334366>,  <34.830162, 35.572796, 43.260349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628540, 35.465698, 43.334366>,  <34.292503, 35.287201, 43.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628540, 35.465698, 43.334366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431931, 0.206345, -0.877985,
		-0.328158, 0.870796, 0.366096,
		0.840088, 0.446246, -0.308410,
		34.880566, 35.599571, 43.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090794, 36.004562, 43.074379>,  <34.292503, 35.287201, 43.457729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090794, 36.004562, 43.074379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437099, 35.894279, 42.907318>,  <34.644882, 35.828110, 42.807083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437099, 35.894279, 42.907318>,  <34.090794, 36.004562, 43.074379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437099, 35.894279, 42.907318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369875, 0.209633, -0.905122,
		0.337104, 0.938104, 0.079515,
		0.865768, -0.275710, -0.417649,
		34.696831, 35.811565, 42.782024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147259, 36.389915, 42.462105>,  <34.090794, 36.004562, 43.074379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147259, 36.389915, 42.462105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429588, 36.110519, 42.414902>,  <34.598988, 35.942883, 42.386581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429588, 36.110519, 42.414902>,  <34.147259, 36.389915, 42.462105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429588, 36.110519, 42.414902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258598, -0.098976, -0.960901,
		0.659497, 0.708745, -0.250487,
		0.705826, -0.698487, -0.118006,
		34.641335, 35.900974, 42.379501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582485, 36.537071, 41.816692>,  <34.147259, 36.389915, 42.462105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582485, 36.537071, 41.816692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614880, 36.150818, 41.915474>,  <34.634315, 35.919064, 41.974743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614880, 36.150818, 41.915474>,  <34.582485, 36.537071, 41.816692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614880, 36.150818, 41.915474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251040, -0.259541, -0.932533,
		0.964583, 0.013532, -0.263434,
		0.080991, -0.965637, 0.246951,
		34.639175, 35.861126, 41.989559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819756, 36.266247, 41.157921>,  <34.582485, 36.537071, 41.816692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819756, 36.266247, 41.157921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744244, 35.921989, 41.347092>,  <34.698936, 35.715435, 41.460594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744244, 35.921989, 41.347092>,  <34.819756, 36.266247, 41.157921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744244, 35.921989, 41.347092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134253, -0.454441, -0.880602,
		0.972800, -0.229727, -0.029757,
		-0.188775, -0.860644, 0.472922,
		34.687611, 35.663795, 41.488968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278076, 35.745510, 40.899803>,  <34.819756, 36.266247, 41.157921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278076, 35.745510, 40.899803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939297, 35.601730, 41.056503>,  <34.736027, 35.515465, 41.150524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939297, 35.601730, 41.056503>,  <35.278076, 35.745510, 40.899803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939297, 35.601730, 41.056503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270665, -0.342700, -0.899609,
		0.457614, -0.867960, 0.192961,
		-0.846953, -0.359446, 0.391751,
		34.685211, 35.493896, 41.174030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371590, 35.068409, 40.605213>,  <35.278076, 35.745510, 40.899803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371590, 35.068409, 40.605213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991531, 35.142426, 40.705605>,  <34.763496, 35.186836, 40.765839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991531, 35.142426, 40.705605>,  <35.371590, 35.068409, 40.605213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991531, 35.142426, 40.705605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295859, -0.280763, -0.913039,
		-0.098483, -0.941771, 0.321511,
		-0.950141, 0.185041, 0.250981,
		34.706490, 35.197937, 40.780899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065929, 34.537437, 40.431488>,  <35.371590, 35.068409, 40.605213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065929, 34.537437, 40.431488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765606, 34.797935, 40.475609>,  <34.585411, 34.954235, 40.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765606, 34.797935, 40.475609>,  <35.065929, 34.537437, 40.431488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765606, 34.797935, 40.475609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452606, -0.385633, -0.804011,
		-0.481070, -0.653584, 0.584294,
		-0.750812, 0.651241, 0.110299,
		34.540363, 34.993309, 40.508698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470131, 34.150181, 40.387096>,  <35.065929, 34.537437, 40.431488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470131, 34.150181, 40.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386646, 34.529976, 40.293362>,  <34.336555, 34.757851, 40.237122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386646, 34.529976, 40.293362>,  <34.470131, 34.150181, 40.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386646, 34.529976, 40.293362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427501, -0.304090, -0.851336,
		-0.879591, -0.077506, 0.469374,
		-0.208716, 0.949485, -0.234341,
		34.324032, 34.814823, 40.223061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805679, 34.040657, 40.065342>,  <34.470131, 34.150181, 40.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805679, 34.040657, 40.065342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962875, 34.390697, 39.952374>,  <34.057194, 34.600719, 39.884594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962875, 34.390697, 39.952374>,  <33.805679, 34.040657, 40.065342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962875, 34.390697, 39.952374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243088, -0.197333, -0.949720,
		-0.886829, 0.441885, 0.135176,
		0.392992, 0.875099, -0.282417,
		34.080772, 34.653229, 39.867649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422390, 34.238277, 39.483036>,  <33.805679, 34.040657, 40.065342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422390, 34.238277, 39.483036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766430, 34.439156, 39.447197>,  <33.972855, 34.559681, 39.425694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766430, 34.439156, 39.447197>,  <33.422390, 34.238277, 39.483036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766430, 34.439156, 39.447197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064918, -0.066455, -0.995675,
		-0.505977, 0.862197, -0.024557,
		0.860101, 0.502195, -0.089597,
		34.024460, 34.589813, 39.420319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268417, 34.542614, 38.896076>,  <33.422390, 34.238277, 39.483036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268417, 34.542614, 38.896076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659515, 34.615345, 38.937927>,  <33.894176, 34.658985, 38.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659515, 34.615345, 38.937927>,  <33.268417, 34.542614, 38.896076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659515, 34.615345, 38.937927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101031, 0.028974, -0.994461,
		-0.183855, 0.982903, 0.009959,
		0.977747, 0.181830, 0.104631,
		33.952839, 34.669895, 38.969318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463844, 35.077744, 38.387375>,  <33.268417, 34.542614, 38.896076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463844, 35.077744, 38.387375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820408, 34.917721, 38.472561>,  <34.034344, 34.821709, 38.523670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820408, 34.917721, 38.472561>,  <33.463844, 35.077744, 38.387375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820408, 34.917721, 38.472561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236164, 0.008975, -0.971672,
		0.386811, 0.916447, 0.102479,
		0.891405, -0.400055, 0.212960,
		34.087830, 34.797703, 38.536449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989689, 35.518902, 38.084808>,  <33.463844, 35.077744, 38.387375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989689, 35.518902, 38.084808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174442, 35.169933, 38.148735>,  <34.285294, 34.960552, 38.187092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174442, 35.169933, 38.148735>,  <33.989689, 35.518902, 38.084808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174442, 35.169933, 38.148735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285216, -0.024516, -0.958150,
		0.839829, 0.488138, 0.237505,
		0.461886, -0.872422, 0.159814,
		34.313007, 34.908207, 38.196678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641521, 35.596992, 37.775604>,  <33.989689, 35.518902, 38.084808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641521, 35.596992, 37.775604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570637, 35.203964, 37.798080>,  <34.528107, 34.968147, 37.811565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570637, 35.203964, 37.798080>,  <34.641521, 35.596992, 37.775604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570637, 35.203964, 37.798080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384315, -0.121649, -0.915152,
		0.906034, -0.140582, 0.399173,
		-0.177213, -0.982567, 0.056190,
		34.517471, 34.909195, 37.814938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291813, 35.315010, 37.704777>,  <34.641521, 35.596992, 37.775604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291813, 35.315010, 37.704777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996006, 35.063793, 37.607883>,  <34.818520, 34.913063, 37.549747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996006, 35.063793, 37.607883>,  <35.291813, 35.315010, 37.704777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996006, 35.063793, 37.607883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369808, -0.078376, -0.925797,
		0.562453, -0.774223, 0.290215,
		-0.739519, -0.628041, -0.242231,
		34.774151, 34.875381, 37.535213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384327, 35.910263, 38.120358>,  <35.291813, 35.315010, 37.704777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384327, 35.910263, 38.120358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707085, 35.791988, 37.915813>,  <35.900742, 35.721024, 37.793087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707085, 35.791988, 37.915813>,  <35.384327, 35.910263, 38.120358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707085, 35.791988, 37.915813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501209, -0.115377, 0.857600,
		-0.312583, -0.948291, 0.055105,
		0.806896, -0.295690, -0.511357,
		35.949154, 35.703281, 37.762405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657566, 35.209244, 38.294937>,  <35.384327, 35.910263, 38.120358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657566, 35.209244, 38.294937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956978, 35.423748, 38.138924>,  <36.136627, 35.552452, 38.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956978, 35.423748, 38.138924>,  <35.657566, 35.209244, 38.294937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956978, 35.423748, 38.138924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512698, -0.095028, 0.853294,
		0.420523, -0.838686, -0.346071,
		0.748532, 0.536260, -0.390031,
		36.181538, 35.584625, 38.021915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279472, 34.885769, 38.519749>,  <35.657566, 35.209244, 38.294937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279472, 34.885769, 38.519749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401691, 35.251472, 38.413334>,  <36.475021, 35.470894, 38.349487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401691, 35.251472, 38.413334>,  <36.279472, 34.885769, 38.519749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401691, 35.251472, 38.413334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626413, 0.017417, 0.779297,
		0.717113, -0.404756, -0.567382,
		0.305544, 0.914259, -0.266034,
		36.493355, 35.525749, 38.333523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046093, 34.827671, 38.661461>,  <36.279472, 34.885769, 38.519749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046093, 34.827671, 38.661461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955730, 35.216087, 38.630360>,  <36.901512, 35.449139, 38.611698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955730, 35.216087, 38.630360>,  <37.046093, 34.827671, 38.661461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955730, 35.216087, 38.630360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521869, 0.188032, 0.832044,
		0.822569, 0.147387, -0.549234,
		-0.225906, 0.971041, -0.077752,
		36.887959, 35.507401, 38.607033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619816, 35.159348, 38.484814>,  <37.046093, 34.827671, 38.661461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619816, 35.159348, 38.484814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379265, 35.412075, 38.680428>,  <37.234936, 35.563709, 38.797794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379265, 35.412075, 38.680428>,  <37.619816, 35.159348, 38.484814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379265, 35.412075, 38.680428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734473, 0.196259, 0.649640,
		0.314477, 0.749860, -0.582078,
		-0.601377, 0.631817, 0.489033,
		37.198853, 35.601620, 38.827137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110748, 35.597023, 38.711052>,  <37.619816, 35.159348, 38.484814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110748, 35.597023, 38.711052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781158, 35.688389, 38.918468>,  <37.583405, 35.743206, 39.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781158, 35.688389, 38.918468>,  <38.110748, 35.597023, 38.711052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781158, 35.688389, 38.918468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566508, 0.350409, 0.745843,
		-0.011343, 0.908318, -0.418126,
		-0.823978, 0.228412, 0.518545,
		37.533966, 35.756912, 39.074032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311626, 36.382355, 38.969624>,  <38.110748, 35.597023, 38.711052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311626, 36.382355, 38.969624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035610, 36.209053, 39.201530>,  <37.869999, 36.105072, 39.340675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035610, 36.209053, 39.201530>,  <38.311626, 36.382355, 38.969624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035610, 36.209053, 39.201530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508567, 0.279707, 0.814324,
		-0.514977, 0.856768, 0.027331,
		-0.690042, -0.433258, 0.579767,
		37.828598, 36.079075, 39.375462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273273, 36.849209, 39.601532>,  <38.311626, 36.382355, 38.969624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273273, 36.849209, 39.601532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103840, 36.513073, 39.736832>,  <38.002182, 36.311394, 39.818012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103840, 36.513073, 39.736832>,  <38.273273, 36.849209, 39.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103840, 36.513073, 39.736832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380349, 0.173905, 0.908346,
		-0.822140, 0.513410, 0.245959,
		-0.423581, -0.840338, 0.338249,
		37.976765, 36.260971, 39.838306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897667, 37.021458, 40.219681>,  <38.273273, 36.849209, 39.601532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897667, 37.021458, 40.219681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957409, 36.626308, 40.236603>,  <37.993256, 36.389217, 40.246758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957409, 36.626308, 40.236603>,  <37.897667, 37.021458, 40.219681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957409, 36.626308, 40.236603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297929, 0.085758, 0.950728,
		-0.942831, -0.129396, 0.307126,
		0.149359, -0.987878, 0.042304,
		38.002216, 36.329945, 40.249294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666870, 36.844860, 40.812420>,  <37.897667, 37.021458, 40.219681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666870, 36.844860, 40.812420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909340, 36.535118, 40.739826>,  <38.054821, 36.349274, 40.696270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909340, 36.535118, 40.739826>,  <37.666870, 36.844860, 40.812420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909340, 36.535118, 40.739826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356853, 0.060879, 0.932175,
		-0.710782, -0.629821, 0.313233,
		0.606173, -0.774351, -0.181481,
		38.091190, 36.302814, 40.685383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438316, 36.316158, 41.222435>,  <37.666870, 36.844860, 40.812420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438316, 36.316158, 41.222435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823063, 36.257301, 41.130203>,  <38.053909, 36.221989, 41.074863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823063, 36.257301, 41.130203>,  <37.438316, 36.316158, 41.222435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823063, 36.257301, 41.130203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214264, -0.118657, 0.969542,
		-0.170025, -0.981972, -0.082603,
		0.961864, -0.147147, -0.230576,
		38.111622, 36.213158, 41.061031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591331, 35.721283, 41.651051>,  <37.438316, 36.316158, 41.222435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591331, 35.721283, 41.651051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944191, 35.873356, 41.539864>,  <38.155907, 35.964600, 41.473152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944191, 35.873356, 41.539864>,  <37.591331, 35.721283, 41.651051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944191, 35.873356, 41.539864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330134, -0.078243, 0.940686,
		0.335886, -0.921595, -0.194534,
		0.882152, 0.380186, -0.277969,
		38.208836, 35.987411, 41.456474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190845, 35.276573, 41.820076>,  <37.591331, 35.721283, 41.651051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190845, 35.276573, 41.820076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337757, 35.648418, 41.807873>,  <38.425903, 35.871525, 41.800552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337757, 35.648418, 41.807873>,  <38.190845, 35.276573, 41.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337757, 35.648418, 41.807873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384892, -0.122046, 0.914857,
		0.846736, -0.347752, -0.402625,
		0.367282, 0.929609, -0.030506,
		38.447941, 35.927299, 41.798721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821079, 35.157745, 42.189312>,  <38.190845, 35.276573, 41.820076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821079, 35.157745, 42.189312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769688, 35.554424, 42.187374>,  <38.738853, 35.792431, 42.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769688, 35.554424, 42.187374>,  <38.821079, 35.157745, 42.189312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769688, 35.554424, 42.187374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344477, 0.049206, 0.937504,
		0.929962, 0.118784, -0.347940,
		-0.128481, 0.991700, -0.004842,
		38.731144, 35.851933, 42.185921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364407, 35.371773, 42.531410>,  <38.821079, 35.157745, 42.189312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364407, 35.371773, 42.531410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119736, 35.687023, 42.558853>,  <38.972935, 35.876175, 42.575317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119736, 35.687023, 42.558853>,  <39.364407, 35.371773, 42.531410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119736, 35.687023, 42.558853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171917, 0.047777, 0.983952,
		0.772205, 0.613652, -0.164717,
		-0.611674, 0.788130, 0.068604,
		38.936234, 35.923462, 42.579433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694717, 35.804790, 42.893589>,  <39.364407, 35.371773, 42.531410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694717, 35.804790, 42.893589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324402, 35.953693, 42.919926>,  <39.102211, 36.043034, 42.935726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324402, 35.953693, 42.919926>,  <39.694717, 35.804790, 42.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324402, 35.953693, 42.919926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161288, 0.231432, 0.959388,
		0.341901, 0.898813, -0.274298,
		-0.925792, 0.372257, 0.065841,
		39.046665, 36.065369, 42.939678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802200, 36.377491, 43.201267>,  <39.694717, 35.804790, 42.893589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802200, 36.377491, 43.201267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412735, 36.310703, 43.263363>,  <39.179054, 36.270630, 43.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412735, 36.310703, 43.263363>,  <39.802200, 36.377491, 43.201267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412735, 36.310703, 43.263363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118829, 0.209430, 0.970576,
		-0.194568, 0.963463, -0.184074,
		-0.973665, -0.166969, 0.155236,
		39.120636, 36.260612, 43.309933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566811, 36.854664, 43.687302>,  <39.802200, 36.377491, 43.201267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566811, 36.854664, 43.687302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276890, 36.580776, 43.717846>,  <39.102940, 36.416443, 43.736172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276890, 36.580776, 43.717846>,  <39.566811, 36.854664, 43.687302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276890, 36.580776, 43.717846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101305, 0.215549, 0.971224,
		-0.681473, 0.696205, -0.225594,
		-0.724798, -0.684717, 0.076362,
		39.059452, 36.375362, 43.740753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036850, 37.137642, 44.129829>,  <39.566811, 36.854664, 43.687302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036850, 37.137642, 44.129829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996162, 36.740082, 44.146866>,  <38.971748, 36.501545, 44.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996162, 36.740082, 44.146866>,  <39.036850, 37.137642, 44.129829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996162, 36.740082, 44.146866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105142, 0.053312, 0.993027,
		-0.989241, 0.096536, -0.109924,
		-0.101723, -0.993901, 0.042588,
		38.965645, 36.441910, 44.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448032, 37.026402, 44.589603>,  <39.036850, 37.137642, 44.129829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448032, 37.026402, 44.589603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660213, 36.687363, 44.583855>,  <38.787521, 36.483940, 44.580406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660213, 36.687363, 44.583855>,  <38.448032, 37.026402, 44.589603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660213, 36.687363, 44.583855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038353, 0.007056, 0.999239,
		-0.846847, -0.530600, 0.036251,
		0.530453, -0.847593, -0.014375,
		38.819351, 36.433086, 44.579544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988594, 36.547340, 44.918839>,  <38.448032, 37.026402, 44.589603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988594, 36.547340, 44.918839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370152, 36.432461, 44.953716>,  <38.599087, 36.363533, 44.974644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370152, 36.432461, 44.953716>,  <37.988594, 36.547340, 44.918839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370152, 36.432461, 44.953716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156784, -0.229078, 0.960699,
		-0.255934, -0.930077, -0.263543,
		0.953896, -0.287195, 0.087192,
		38.656319, 36.346302, 44.979874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937855, 35.897240, 45.282581>,  <37.988594, 36.547340, 44.918839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937855, 35.897240, 45.282581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305729, 36.045879, 45.333324>,  <38.526455, 36.135063, 45.363770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305729, 36.045879, 45.333324>,  <37.937855, 35.897240, 45.282581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305729, 36.045879, 45.333324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151472, 0.037683, 0.987743,
		0.362265, -0.927628, 0.090943,
		0.919685, 0.371601, 0.126858,
		38.581635, 36.157360, 45.371384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166916, 35.732014, 46.011097>,  <37.937855, 35.897240, 45.282581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166916, 35.732014, 46.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405487, 36.040699, 45.922794>,  <38.548630, 36.225910, 45.869812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405487, 36.040699, 45.922794>,  <38.166916, 35.732014, 46.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405487, 36.040699, 45.922794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092597, 0.207038, 0.973941,
		0.797310, -0.601324, 0.052024,
		0.596425, 0.771715, -0.220755,
		38.584415, 36.272213, 45.856567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616928, 35.822380, 46.553329>,  <38.166916, 35.732014, 46.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616928, 35.822380, 46.553329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650307, 36.184338, 46.386375>,  <38.670334, 36.401512, 46.286205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650307, 36.184338, 46.386375>,  <38.616928, 35.822380, 46.553329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650307, 36.184338, 46.386375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000934, 0.418913, 0.908026,
		0.996512, -0.075384, 0.035802,
		0.083448, 0.904892, -0.417381,
		38.675343, 36.455807, 46.261162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084648, 36.171127, 46.910976>,  <38.616928, 35.822380, 46.553329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084648, 36.171127, 46.910976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892666, 36.482647, 46.749424>,  <38.777477, 36.669559, 46.652493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892666, 36.482647, 46.749424>,  <39.084648, 36.171127, 46.910976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892666, 36.482647, 46.749424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124427, 0.395285, 0.910092,
		0.868423, 0.487059, -0.092817,
		-0.479958, 0.778796, -0.403878,
		38.748680, 36.716286, 46.628262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314491, 36.710541, 47.374065>,  <39.084648, 36.171127, 46.910976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314491, 36.710541, 47.374065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016151, 36.885521, 47.173130>,  <38.837147, 36.990509, 47.052570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016151, 36.885521, 47.173130>,  <39.314491, 36.710541, 47.374065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016151, 36.885521, 47.173130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157575, 0.616860, 0.771138,
		0.647204, 0.654312, -0.391156,
		-0.745853, 0.437447, -0.502337,
		38.792397, 37.016754, 47.022430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432823, 37.360268, 47.270447>,  <39.314491, 36.710541, 47.374065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432823, 37.360268, 47.270447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032986, 37.368034, 47.262142>,  <38.793083, 37.372696, 47.257160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032986, 37.368034, 47.262142>,  <39.432823, 37.360268, 47.270447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032986, 37.368034, 47.262142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001904, 0.682979, 0.730435,
		0.028366, 0.730180, -0.682666,
		-0.999596, 0.019420, -0.020764,
		38.733109, 37.373859, 47.255913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211262, 38.149830, 47.298759>,  <39.432823, 37.360268, 47.270447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211262, 38.149830, 47.298759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902706, 37.926193, 47.420338>,  <38.717575, 37.792011, 47.493282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902706, 37.926193, 47.420338>,  <39.211262, 38.149830, 47.298759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902706, 37.926193, 47.420338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100143, 0.578321, 0.809640,
		-0.628438, 0.594107, -0.502098,
		-0.771387, -0.559090, 0.303943,
		38.671291, 37.758465, 47.511520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730972, 38.608181, 47.630466>,  <39.211262, 38.149830, 47.298759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730972, 38.608181, 47.630466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617065, 38.250866, 47.769577>,  <38.548721, 38.036476, 47.853043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617065, 38.250866, 47.769577>,  <38.730972, 38.608181, 47.630466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617065, 38.250866, 47.769577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013371, 0.366466, 0.930335,
		-0.958503, 0.260280, -0.116302,
		-0.284769, -0.893284, 0.347779,
		38.531635, 37.982880, 47.873909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203671, 38.722103, 47.905331>,  <38.730972, 38.608181, 47.630466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203671, 38.722103, 47.905331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304237, 38.383938, 48.093826>,  <38.364578, 38.181038, 48.206924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304237, 38.383938, 48.093826>,  <38.203671, 38.722103, 47.905331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304237, 38.383938, 48.093826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149115, 0.447235, 0.881899,
		-0.956324, -0.291992, -0.013622,
		0.251415, -0.845412, 0.471242,
		38.379662, 38.130314, 48.235199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857265, 38.763596, 48.507771>,  <38.203671, 38.722103, 47.905331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857265, 38.763596, 48.507771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092476, 38.453499, 48.600052>,  <38.233601, 38.267441, 48.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092476, 38.453499, 48.600052>,  <37.857265, 38.763596, 48.507771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092476, 38.453499, 48.600052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186310, 0.147732, 0.971321,
		-0.787092, -0.614144, -0.057565,
		0.588027, -0.775243, 0.230700,
		38.268883, 38.220924, 48.669262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464344, 38.254333, 48.939461>,  <37.857265, 38.763596, 48.507771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464344, 38.254333, 48.939461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856812, 38.202713, 48.996933>,  <38.092293, 38.171741, 49.031418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856812, 38.202713, 48.996933>,  <37.464344, 38.254333, 48.939461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856812, 38.202713, 48.996933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083195, 0.388967, 0.917487,
		-0.174294, -0.912167, 0.370907,
		0.981173, -0.129055, 0.143683,
		38.151165, 38.163998, 49.040039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562828, 37.849819, 49.564301>,  <37.464344, 38.254333, 48.939461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562828, 37.849819, 49.564301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927864, 38.011993, 49.543114>,  <38.146885, 38.109299, 49.530399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927864, 38.011993, 49.543114>,  <37.562828, 37.849819, 49.564301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927864, 38.011993, 49.543114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086313, 0.317646, 0.944273,
		0.399670, -0.857158, 0.324874,
		0.912586, 0.405439, -0.052970,
		38.201641, 38.133625, 49.527222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800491, 37.771656, 50.201595>,  <37.562828, 37.849819, 49.564301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800491, 37.771656, 50.201595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071377, 38.022476, 50.047611>,  <38.233906, 38.172966, 49.955219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071377, 38.022476, 50.047611>,  <37.800491, 37.771656, 50.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071377, 38.022476, 50.047611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021821, 0.505852, 0.862344,
		0.735466, -0.592388, 0.328885,
		0.677210, 0.627048, -0.384964,
		38.274540, 38.210590, 49.932121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278851, 37.786713, 50.685734>,  <37.800491, 37.771656, 50.201595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278851, 37.786713, 50.685734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333538, 38.118412, 50.468971>,  <38.366352, 38.317432, 50.338913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333538, 38.118412, 50.468971>,  <38.278851, 37.786713, 50.685734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333538, 38.118412, 50.468971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030691, 0.543231, 0.839022,
		0.990134, -0.131342, 0.048819,
		0.136719, 0.829246, -0.541903,
		38.374554, 38.367188, 50.306400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822842, 38.226345, 51.068119>,  <38.278851, 37.786713, 50.685734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822842, 38.226345, 51.068119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592335, 38.462368, 50.841934>,  <38.454029, 38.603981, 50.706223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592335, 38.462368, 50.841934>,  <38.822842, 38.226345, 51.068119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592335, 38.462368, 50.841934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018689, 0.682203, 0.730923,
		0.817047, 0.431775, -0.382105,
		-0.576268, 0.590058, -0.565462,
		38.419453, 38.639385, 50.672295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135979, 38.903980, 51.185429>,  <38.822842, 38.226345, 51.068119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135979, 38.903980, 51.185429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769501, 38.959103, 51.034912>,  <38.549614, 38.992176, 50.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769501, 38.959103, 51.034912>,  <39.135979, 38.903980, 51.185429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769501, 38.959103, 51.034912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210748, 0.632966, 0.744942,
		0.340837, 0.761816, -0.550879,
		-0.916196, 0.137807, -0.376289,
		38.494640, 39.000446, 50.922024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007065, 39.619190, 51.278576>,  <39.135979, 38.903980, 51.185429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007065, 39.619190, 51.278576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652496, 39.438862, 51.236599>,  <38.439754, 39.330666, 51.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652496, 39.438862, 51.236599>,  <39.007065, 39.619190, 51.278576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652496, 39.438862, 51.236599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400567, 0.633525, 0.661961,
		-0.231945, 0.628813, -0.742156,
		-0.886424, -0.450821, -0.104939,
		38.386570, 39.303616, 51.205116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865139, 40.360733, 51.072475>,  <39.007065, 39.619190, 51.278576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865139, 40.360733, 51.072475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106804, 40.678780, 51.093559>,  <39.251801, 40.869610, 51.106209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106804, 40.678780, 51.093559>,  <38.865139, 40.360733, 51.072475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106804, 40.678780, 51.093559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136533, -0.038117, -0.989902,
		-0.785081, 0.605254, -0.131589,
		0.604158, 0.795119, 0.052713,
		39.288052, 40.917316, 51.109371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810589, 40.671783, 50.351746>,  <38.865139, 40.360733, 51.072475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810589, 40.671783, 50.351746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140949, 40.845360, 50.495735>,  <39.339165, 40.949505, 50.582130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140949, 40.845360, 50.495735>,  <38.810589, 40.671783, 50.351746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140949, 40.845360, 50.495735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323970, 0.157294, -0.932900,
		-0.461450, 0.887102, -0.010676,
		0.825898, 0.433945, 0.359978,
		39.388718, 40.975544, 50.603729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954338, 41.345882, 49.970272>,  <38.810589, 40.671783, 50.351746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954338, 41.345882, 49.970272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306984, 41.263885, 50.140324>,  <39.518574, 41.214687, 50.242355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306984, 41.263885, 50.140324>,  <38.954338, 41.345882, 49.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306984, 41.263885, 50.140324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435408, 0.005659, -0.900215,
		0.182130, 0.978748, 0.094244,
		0.881617, -0.204990, 0.425124,
		39.571468, 41.202389, 50.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297546, 41.959976, 49.726013>,  <38.954338, 41.345882, 49.970272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297546, 41.959976, 49.726013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510365, 41.631935, 49.810261>,  <39.638058, 41.435112, 49.860809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510365, 41.631935, 49.810261>,  <39.297546, 41.959976, 49.726013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510365, 41.631935, 49.810261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310226, -0.042638, -0.949706,
		0.787835, 0.570627, 0.231732,
		0.532048, -0.820101, 0.210615,
		39.669979, 41.385906, 49.873444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776337, 41.950157, 49.232861>,  <39.297546, 41.959976, 49.726013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776337, 41.950157, 49.232861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848797, 41.579315, 49.364101>,  <39.892273, 41.356808, 49.442848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848797, 41.579315, 49.364101>,  <39.776337, 41.950157, 49.232861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848797, 41.579315, 49.364101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244625, -0.280662, -0.928110,
		0.952545, 0.248391, 0.175952,
		0.181151, -0.927109, 0.328106,
		39.903141, 41.301182, 49.462532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480949, 41.706158, 48.971706>,  <39.776337, 41.950157, 49.232861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480949, 41.706158, 48.971706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247707, 41.392056, 49.055000>,  <40.107761, 41.203594, 49.104977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247707, 41.392056, 49.055000>,  <40.480949, 41.706158, 48.971706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247707, 41.392056, 49.055000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265173, -0.426254, -0.864865,
		0.767898, -0.449093, 0.456781,
		-0.583109, -0.785254, 0.208233,
		40.072773, 41.156479, 49.117470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910194, 41.184067, 48.651810>,  <40.480949, 41.706158, 48.971706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910194, 41.184067, 48.651810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543461, 41.031498, 48.699020>,  <40.323421, 40.939957, 48.727345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543461, 41.031498, 48.699020>,  <40.910194, 41.184067, 48.651810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543461, 41.031498, 48.699020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110212, -0.525886, -0.843385,
		0.383752, -0.760238, 0.524188,
		-0.916836, -0.381422, 0.118022,
		40.268410, 40.917072, 48.734428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999790, 40.445980, 48.570633>,  <40.910194, 41.184067, 48.651810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999790, 40.445980, 48.570633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611267, 40.508698, 48.499111>,  <40.378151, 40.546329, 48.456196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611267, 40.508698, 48.499111>,  <40.999790, 40.445980, 48.570633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611267, 40.508698, 48.499111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063639, -0.553085, -0.830690,
		-0.229141, -0.818237, 0.527240,
		-0.971311, 0.156792, -0.178806,
		40.319874, 40.555737, 48.445469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790165, 39.795422, 48.134750>,  <40.999790, 40.445980, 48.570633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790165, 39.795422, 48.134750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477844, 40.042946, 48.100285>,  <40.290451, 40.191460, 48.079605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477844, 40.042946, 48.100285>,  <40.790165, 39.795422, 48.134750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477844, 40.042946, 48.100285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276749, -0.466201, -0.840278,
		-0.560145, -0.632241, 0.535265,
		-0.780799, 0.618811, -0.086168,
		40.243603, 40.228588, 48.074432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178864, 39.369911, 47.964775>,  <40.790165, 39.795422, 48.134750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178864, 39.369911, 47.964775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104797, 39.737717, 47.826096>,  <40.060356, 39.958401, 47.742889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104797, 39.737717, 47.826096>,  <40.178864, 39.369911, 47.964775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104797, 39.737717, 47.826096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276911, -0.387326, -0.879374,
		-0.942885, -0.066829, 0.326346,
		-0.185170, 0.919518, -0.346698,
		40.049248, 40.013573, 47.722088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569462, 39.339088, 47.713215>,  <40.178864, 39.369911, 47.964775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569462, 39.339088, 47.713215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720543, 39.661835, 47.531528>,  <39.811192, 39.855484, 47.422516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720543, 39.661835, 47.531528>,  <39.569462, 39.339088, 47.713215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720543, 39.661835, 47.531528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309518, -0.352306, -0.883221,
		-0.872663, 0.474179, 0.116673,
		0.377700, 0.806867, -0.454212,
		39.833855, 39.903896, 47.395264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082615, 39.595425, 47.116215>,  <39.569462, 39.339088, 47.713215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082615, 39.595425, 47.116215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433674, 39.761433, 47.020309>,  <39.644310, 39.861038, 46.962765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433674, 39.761433, 47.020309>,  <39.082615, 39.595425, 47.116215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433674, 39.761433, 47.020309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262183, -0.003059, -0.965013,
		-0.401234, 0.909807, 0.106127,
		0.877651, 0.415021, -0.239763,
		39.696968, 39.885941, 46.948380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949436, 40.090443, 46.589653>,  <39.082615, 39.595425, 47.116215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949436, 40.090443, 46.589653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340118, 40.019493, 46.541363>,  <39.574528, 39.976921, 46.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340118, 40.019493, 46.541363>,  <38.949436, 40.090443, 46.589653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340118, 40.019493, 46.541363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144183, -0.125875, -0.981513,
		0.158900, 0.976060, -0.148518,
		0.976710, -0.177376, -0.120730,
		39.633133, 39.966282, 46.505142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 40.594517, 46.102287>,  <38.949436, 40.090443, 46.589653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202309, 40.594517, 46.102287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455799, 40.285122, 46.106411>,  <39.607895, 40.099487, 46.108887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455799, 40.285122, 46.106411>,  <39.202309, 40.594517, 46.102287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455799, 40.285122, 46.106411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033495, 0.014123, -0.999339,
		0.772828, 0.633657, 0.034858,
		0.633730, -0.773485, 0.010309,
		39.645920, 40.053078, 46.109505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619671, 40.717613, 45.544853>,  <39.202309, 40.594517, 46.102287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619671, 40.717613, 45.544853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660995, 40.327061, 45.620754>,  <39.685791, 40.092728, 45.666294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660995, 40.327061, 45.620754>,  <39.619671, 40.717613, 45.544853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660995, 40.327061, 45.620754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046008, -0.185876, -0.981495,
		0.993584, 0.110133, 0.025717,
		0.103314, -0.976382, 0.189751,
		39.691990, 40.034145, 45.677681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985146, 40.545643, 44.948593>,  <39.619671, 40.717613, 45.544853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985146, 40.545643, 44.948593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839035, 40.203682, 45.095951>,  <39.751369, 39.998505, 45.184364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839035, 40.203682, 45.095951>,  <39.985146, 40.545643, 44.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839035, 40.203682, 45.095951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059444, -0.416350, -0.907259,
		0.929001, -0.309499, 0.202901,
		-0.365273, -0.854905, 0.368392,
		39.729454, 39.947212, 45.206467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503971, 40.042534, 44.736656>,  <39.985146, 40.545643, 44.948593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503971, 40.042534, 44.736656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163528, 39.844124, 44.805439>,  <39.959263, 39.725079, 44.846706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163528, 39.844124, 44.805439>,  <40.503971, 40.042534, 44.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163528, 39.844124, 44.805439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120197, -0.502952, -0.855916,
		0.511044, -0.707810, 0.487688,
		-0.851109, -0.496029, 0.171954,
		39.908195, 39.695316, 44.857025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644325, 39.430176, 44.499981>,  <40.503971, 40.042534, 44.736656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644325, 39.430176, 44.499981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247040, 39.383873, 44.495609>,  <40.008667, 39.356091, 44.492985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247040, 39.383873, 44.495609>,  <40.644325, 39.430176, 44.499981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247040, 39.383873, 44.495609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077907, -0.592767, -0.801597,
		0.086314, -0.797011, 0.597765,
		-0.993217, -0.115759, -0.010929,
		39.949074, 39.349144, 44.492332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549564, 38.810902, 44.363163>,  <40.644325, 39.430176, 44.499981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549564, 38.810902, 44.363163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182800, 38.947956, 44.281315>,  <39.962742, 39.030190, 44.232208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182800, 38.947956, 44.281315>,  <40.549564, 38.810902, 44.363163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182800, 38.947956, 44.281315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066645, -0.636976, -0.767997,
		-0.393484, -0.690550, 0.606887,
		-0.916912, 0.342640, -0.204618,
		39.907726, 39.050747, 44.219929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198982, 38.226341, 44.176014>,  <40.549564, 38.810902, 44.363163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198982, 38.226341, 44.176014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004356, 38.538445, 44.018810>,  <39.887581, 38.725704, 43.924488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004356, 38.538445, 44.018810>,  <40.198982, 38.226341, 44.176014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004356, 38.538445, 44.018810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034964, -0.466882, -0.883628,
		-0.872946, -0.416199, 0.254449,
		-0.486563, 0.780256, -0.393011,
		39.858387, 38.772522, 43.900906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690750, 37.906391, 43.764626>,  <40.198982, 38.226341, 44.176014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690750, 37.906391, 43.764626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732861, 38.283749, 43.638813>,  <39.758125, 38.510162, 43.563324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732861, 38.283749, 43.638813>,  <39.690750, 37.906391, 43.764626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732861, 38.283749, 43.638813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014865, -0.317745, -0.948060,
		-0.994332, 0.095128, -0.047473,
		0.105272, 0.943392, -0.314530,
		39.764442, 38.566765, 43.544453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179798, 37.939114, 43.210670>,  <39.690750, 37.906391, 43.764626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179798, 37.939114, 43.210670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429066, 38.246300, 43.151489>,  <39.578625, 38.430611, 43.115982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429066, 38.246300, 43.151489>,  <39.179798, 37.939114, 43.210670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429066, 38.246300, 43.151489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022628, -0.171390, -0.984943,
		-0.781762, 0.617131, -0.089427,
		0.623166, 0.767968, -0.147951,
		39.616016, 38.476688, 43.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811897, 38.232216, 42.628925>,  <39.179798, 37.939114, 43.210670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811897, 38.232216, 42.628925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191368, 38.356682, 42.651497>,  <39.419052, 38.431362, 42.665039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191368, 38.356682, 42.651497>,  <38.811897, 38.232216, 42.628925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191368, 38.356682, 42.651497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116336, -0.177473, -0.977225,
		-0.294062, 0.933638, -0.204565,
		0.948680, 0.311163, 0.056428,
		39.475971, 38.450031, 42.668427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930923, 38.709450, 42.052181>,  <38.811897, 38.232216, 42.628925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930923, 38.709450, 42.052181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302647, 38.604206, 42.155838>,  <39.525681, 38.541061, 42.218033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302647, 38.604206, 42.155838>,  <38.930923, 38.709450, 42.052181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302647, 38.604206, 42.155838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246142, -0.081818, -0.965774,
		0.275306, 0.961290, -0.011272,
		0.929312, -0.263109, 0.259139,
		39.581440, 38.525272, 42.233582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353447, 39.121006, 41.688782>,  <38.930923, 38.709450, 42.052181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353447, 39.121006, 41.688782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578564, 38.802723, 41.778332>,  <39.713634, 38.611755, 41.832062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578564, 38.802723, 41.778332>,  <39.353447, 39.121006, 41.688782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578564, 38.802723, 41.778332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270215, -0.078858, -0.959565,
		0.781183, 0.600532, 0.170630,
		0.562794, -0.795703, 0.223875,
		39.747402, 38.564011, 41.845493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880569, 39.229855, 41.248722>,  <39.353447, 39.121006, 41.688782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880569, 39.229855, 41.248722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937817, 38.851006, 41.363602>,  <39.972164, 38.623695, 41.432529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937817, 38.851006, 41.363602>,  <39.880569, 39.229855, 41.248722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937817, 38.851006, 41.363602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287935, -0.237785, -0.927659,
		0.946895, 0.215460, 0.238678,
		0.143119, -0.947119, 0.287196,
		39.980751, 38.566868, 41.449760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553066, 38.958118, 41.117638>,  <39.880569, 39.229855, 41.248722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553066, 38.958118, 41.117638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348431, 38.614693, 41.131145>,  <40.225647, 38.408638, 41.139252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348431, 38.614693, 41.131145>,  <40.553066, 38.958118, 41.117638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348431, 38.614693, 41.131145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400795, -0.273221, -0.874479,
		0.760023, -0.433842, 0.483886,
		-0.511594, -0.858564, 0.033772,
		40.194954, 38.357124, 41.141277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010132, 38.359489, 41.163231>,  <40.553066, 38.958118, 41.117638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010132, 38.359489, 41.163231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676422, 38.231091, 40.983925>,  <40.476196, 38.154053, 40.876343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676422, 38.231091, 40.983925>,  <41.010132, 38.359489, 41.163231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676422, 38.231091, 40.983925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507217, -0.128131, -0.852240,
		0.216130, -0.938373, 0.269712,
		-0.834277, -0.320997, -0.448266,
		40.426140, 38.134792, 40.849445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253677, 37.860271, 40.811420>,  <41.010132, 38.359489, 41.163231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253677, 37.860271, 40.811420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892262, 37.881622, 40.641357>,  <40.675411, 37.894432, 40.539318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892262, 37.881622, 40.641357>,  <41.253677, 37.860271, 40.811420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892262, 37.881622, 40.641357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413548, -0.151155, -0.897848,
		-0.112197, -0.987067, 0.114498,
		-0.903543, 0.053385, -0.425159,
		40.621197, 37.897636, 40.513809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216438, 37.244339, 40.443939>,  <41.253677, 37.860271, 40.811420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216438, 37.244339, 40.443939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963970, 37.514874, 40.292049>,  <40.812489, 37.677197, 40.200916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963970, 37.514874, 40.292049>,  <41.216438, 37.244339, 40.443939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963970, 37.514874, 40.292049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332143, -0.206731, -0.920295,
		-0.700934, -0.706983, -0.094160,
		-0.631167, 0.676341, -0.379724,
		40.774620, 37.717777, 40.178131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897446, 36.913872, 39.866917>,  <41.216438, 37.244339, 40.443939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897446, 36.913872, 39.866917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841774, 37.305843, 39.809822>,  <40.808372, 37.541027, 39.775566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841774, 37.305843, 39.809822>,  <40.897446, 36.913872, 39.866917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841774, 37.305843, 39.809822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271067, -0.100940, -0.957253,
		-0.952446, -0.171918, -0.251577,
		-0.139175, 0.979926, -0.142741,
		40.800022, 37.599823, 39.766998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560719, 36.966465, 39.211746>,  <40.897446, 36.913872, 39.866917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560719, 36.966465, 39.211746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670784, 37.347084, 39.266659>,  <40.736824, 37.575455, 39.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670784, 37.347084, 39.266659>,  <40.560719, 36.966465, 39.211746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670784, 37.347084, 39.266659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227893, 0.074169, -0.970857,
		-0.933998, 0.298427, -0.196442,
		0.275160, 0.951546, 0.137283,
		40.753330, 37.632549, 39.307842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215057, 37.329494, 38.746971>,  <40.560719, 36.966465, 39.211746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215057, 37.329494, 38.746971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533371, 37.562168, 38.814346>,  <40.724358, 37.701775, 38.854771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533371, 37.562168, 38.814346>,  <40.215057, 37.329494, 38.746971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533371, 37.562168, 38.814346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186216, 0.029612, -0.982063,
		-0.576242, 0.812873, -0.084755,
		0.795782, 0.581688, 0.168433,
		40.772106, 37.736675, 38.864876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072075, 37.969730, 38.273884>,  <40.215057, 37.329494, 38.746971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072075, 37.969730, 38.273884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450905, 37.904819, 38.384678>,  <40.678204, 37.865871, 38.451153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450905, 37.904819, 38.384678>,  <40.072075, 37.969730, 38.273884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450905, 37.904819, 38.384678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261952, -0.108111, -0.959006,
		0.185574, 0.980804, -0.059879,
		0.947071, -0.162281, 0.276986,
		40.735027, 37.856136, 38.467773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433773, 38.473675, 37.951698>,  <40.072075, 37.969730, 38.273884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433773, 38.473675, 37.951698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703579, 38.186378, 38.020000>,  <40.865463, 38.014000, 38.060982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703579, 38.186378, 38.020000>,  <40.433773, 38.473675, 37.951698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703579, 38.186378, 38.020000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323139, 0.079268, -0.943026,
		0.663781, 0.691267, 0.285559,
		0.674519, -0.718238, 0.170759,
		40.905933, 37.970905, 38.071228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963924, 38.568794, 37.491169>,  <40.433773, 38.473675, 37.951698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963924, 38.568794, 37.491169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033745, 38.191616, 37.604576>,  <41.075638, 37.965309, 37.672619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033745, 38.191616, 37.604576>,  <40.963924, 38.568794, 37.491169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033745, 38.191616, 37.604576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292552, -0.225272, -0.929336,
		0.940184, 0.245159, 0.236540,
		0.174549, -0.942947, 0.283519,
		41.086109, 37.908733, 37.689632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641407, 38.500980, 37.214031>,  <40.963924, 38.568794, 37.491169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641407, 38.500980, 37.214031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498657, 38.134563, 37.287247>,  <41.413006, 37.914711, 37.331177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498657, 38.134563, 37.287247>,  <41.641407, 38.500980, 37.214031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498657, 38.134563, 37.287247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386334, -0.323126, -0.863907,
		0.850522, -0.237593, 0.469215,
		-0.356874, -0.916045, 0.183036,
		41.391594, 37.859749, 37.342155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031441, 38.163033, 36.865494>,  <41.641407, 38.500980, 37.214031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031441, 38.163033, 36.865494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764023, 37.866718, 36.891685>,  <41.603573, 37.688931, 36.907402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764023, 37.866718, 36.891685>,  <42.031441, 38.163033, 36.865494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764023, 37.866718, 36.891685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203708, -0.267103, -0.941891,
		0.715229, -0.616356, 0.329474,
		-0.668544, -0.740784, 0.065482,
		41.563461, 37.644482, 36.911331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310432, 37.525681, 36.635567>,  <42.031441, 38.163033, 36.865494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310432, 37.525681, 36.635567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913246, 37.513458, 36.589821>,  <41.674934, 37.506126, 36.562374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913246, 37.513458, 36.589821>,  <42.310432, 37.525681, 36.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913246, 37.513458, 36.589821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118311, -0.288990, -0.949993,
		-0.004028, -0.956844, 0.290573,
		-0.992968, -0.030552, -0.114369,
		41.615356, 37.504292, 36.555511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164608, 36.827755, 36.320477>,  <42.310432, 37.525681, 36.635567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164608, 36.827755, 36.320477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843826, 37.052261, 36.238655>,  <41.651356, 37.186966, 36.189560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843826, 37.052261, 36.238655>,  <42.164608, 36.827755, 36.320477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843826, 37.052261, 36.238655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092446, -0.221698, -0.970724,
		-0.590184, -0.797390, 0.125906,
		-0.801958, 0.561266, -0.204558,
		41.603237, 37.220642, 36.177288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790138, 36.565380, 35.819824>,  <42.164608, 36.827755, 36.320477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790138, 36.565380, 35.819824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679653, 36.948929, 35.793690>,  <41.613361, 37.179058, 35.778011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679653, 36.948929, 35.793690>,  <41.790138, 36.565380, 35.819824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679653, 36.948929, 35.793690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229550, -0.000193, -0.973297,
		-0.933280, -0.283837, -0.220056,
		-0.276215, 0.958872, -0.065334,
		41.596790, 37.236591, 35.774090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234814, 36.688816, 35.246861>,  <41.790138, 36.565380, 35.819824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234814, 36.688816, 35.246861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443176, 37.017853, 35.338074>,  <41.568195, 37.215275, 35.392803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443176, 37.017853, 35.338074>,  <41.234814, 36.688816, 35.246861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443176, 37.017853, 35.338074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202832, 0.140212, -0.969123,
		-0.829163, 0.551080, -0.093809,
		0.520911, 0.822589, 0.228035,
		41.599449, 37.264629, 35.406483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151272, 36.248089, 34.677616>,  <41.234814, 36.688816, 35.246861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151272, 36.248089, 34.677616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405071, 36.249043, 34.986786>,  <41.557350, 36.249615, 35.172287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405071, 36.249043, 34.986786>,  <41.151272, 36.248089, 34.677616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405071, 36.249043, 34.986786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610470, 0.614883, 0.499244,
		-0.474067, -0.788614, 0.391597,
		0.634497, 0.002384, 0.772922,
		41.595421, 36.249756, 35.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145611, 36.952507, 34.463364>,  <41.151272, 36.248089, 34.677616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145611, 36.952507, 34.463364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211857, 36.693687, 34.165665>,  <41.251606, 36.538395, 33.987045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211857, 36.693687, 34.165665>,  <41.145611, 36.952507, 34.463364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211857, 36.693687, 34.165665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540764, 0.690678, -0.480144,
		0.824710, -0.322942, 0.464288,
		0.165615, -0.647049, -0.744244,
		41.261539, 36.499573, 33.942390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764793, 36.841011, 34.016045>,  <41.145611, 36.952507, 34.463364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764793, 36.841011, 34.016045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935009, 36.803562, 33.656013>,  <42.037140, 36.781094, 33.439995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935009, 36.803562, 33.656013>,  <41.764793, 36.841011, 34.016045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935009, 36.803562, 33.656013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666001, 0.640988, -0.381545,
		0.612662, 0.761820, 0.210417,
		0.425544, -0.093620, -0.900082,
		42.062672, 36.775475, 33.385990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249252, 37.253536, 34.462009>,  <41.764793, 36.841011, 34.016045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249252, 37.253536, 34.462009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474686, 37.544701, 34.618217>,  <42.609947, 37.719398, 34.711945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474686, 37.544701, 34.618217>,  <42.249252, 37.253536, 34.462009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474686, 37.544701, 34.618217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141470, 0.380719, -0.913805,
		-0.813852, 0.570257, 0.111590,
		0.563588, 0.727915, 0.390523,
		42.643761, 37.763077, 34.735374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180084, 37.842068, 34.132954>,  <42.249252, 37.253536, 34.462009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180084, 37.842068, 34.132954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565586, 37.906048, 34.218361>,  <42.796886, 37.944435, 34.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565586, 37.906048, 34.218361>,  <42.180084, 37.842068, 34.132954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565586, 37.906048, 34.218361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167141, 0.261805, -0.950538,
		-0.207944, 0.951773, 0.225581,
		0.963755, 0.159954, 0.213521,
		42.854713, 37.954033, 34.282417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395054, 38.544113, 33.952099>,  <42.180084, 37.842068, 34.132954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395054, 38.544113, 33.952099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726761, 38.320606, 33.948120>,  <42.925785, 38.186501, 33.945732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726761, 38.320606, 33.948120>,  <42.395054, 38.544113, 33.952099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726761, 38.320606, 33.948120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245253, 0.379865, -0.891938,
		0.502165, 0.737213, 0.452048,
		0.829265, -0.558766, -0.009951,
		42.975540, 38.152977, 33.945133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971779, 39.070774, 33.856991>,  <42.395054, 38.544113, 33.952099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971779, 39.070774, 33.856991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051308, 38.699749, 33.730434>,  <43.099026, 38.477135, 33.654499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051308, 38.699749, 33.730434>,  <42.971779, 39.070774, 33.856991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051308, 38.699749, 33.730434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036253, 0.329578, -0.943432,
		0.979366, 0.176100, 0.099152,
		0.198817, -0.927559, -0.316394,
		43.110954, 38.421482, 33.635517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613743, 39.136166, 33.516251>,  <42.971779, 39.070774, 33.856991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613743, 39.136166, 33.516251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450199, 38.802937, 33.367214>,  <43.352074, 38.603001, 33.277790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450199, 38.802937, 33.367214>,  <43.613743, 39.136166, 33.516251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450199, 38.802937, 33.367214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437909, 0.179109, -0.880997,
		0.800667, -0.523369, 0.291578,
		-0.408862, -0.833070, -0.372595,
		43.327541, 38.553017, 33.255436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041924, 38.844975, 33.030174>,  <43.613743, 39.136166, 33.516251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041924, 38.844975, 33.030174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698452, 38.673038, 32.918526>,  <43.492371, 38.569878, 32.851536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698452, 38.673038, 32.918526>,  <44.041924, 38.844975, 33.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698452, 38.673038, 32.918526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260015, 0.103967, -0.959991,
		0.441662, -0.896900, 0.022490,
		-0.858678, -0.429839, -0.279126,
		43.440849, 38.544086, 32.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217655, 38.335770, 32.473682>,  <44.041924, 38.844975, 33.030174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217655, 38.335770, 32.473682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824318, 38.402859, 32.445656>,  <43.588314, 38.443111, 32.428841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824318, 38.402859, 32.445656>,  <44.217655, 38.335770, 32.473682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824318, 38.402859, 32.445656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064985, -0.035591, -0.997251,
		-0.169752, -0.985192, 0.024099,
		-0.983342, 0.167720, -0.070064,
		43.529316, 38.453175, 32.424637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160378, 38.005291, 31.885303>,  <44.217655, 38.335770, 32.473682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160378, 38.005291, 31.885303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827660, 38.218964, 31.945667>,  <43.628029, 38.347168, 31.981886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827660, 38.218964, 31.945667>,  <44.160378, 38.005291, 31.885303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827660, 38.218964, 31.945667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165771, 0.020405, -0.985953,
		-0.529755, -0.845125, 0.071578,
		-0.831793, 0.534179, 0.150907,
		43.578121, 38.379219, 31.990940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570175, 37.636715, 31.467682>,  <44.160378, 38.005291, 31.885303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570175, 37.636715, 31.467682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428326, 38.003590, 31.540363>,  <43.343216, 38.223713, 31.583973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428326, 38.003590, 31.540363>,  <43.570175, 37.636715, 31.467682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428326, 38.003590, 31.540363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329414, 0.059320, -0.942320,
		-0.875061, -0.394021, 0.281098,
		-0.354620, 0.917185, 0.181705,
		43.321941, 38.278744, 31.594875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990082, 37.633949, 31.134996>,  <43.570175, 37.636715, 31.467682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990082, 37.633949, 31.134996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078144, 38.021027, 31.184145>,  <43.130981, 38.253273, 31.213634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078144, 38.021027, 31.184145>,  <42.990082, 37.633949, 31.134996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078144, 38.021027, 31.184145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494381, 0.219274, -0.841134,
		-0.840904, 0.124435, 0.526684,
		0.220155, 0.967695, 0.122870,
		43.144192, 38.311337, 31.221006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420147, 37.986885, 31.133167>,  <42.990082, 37.633949, 31.134996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420147, 37.986885, 31.133167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685627, 38.267071, 31.028212>,  <42.844917, 38.435181, 30.965239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685627, 38.267071, 31.028212>,  <42.420147, 37.986885, 31.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685627, 38.267071, 31.028212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521719, 0.182131, -0.833449,
		-0.536013, 0.690056, 0.486327,
		0.663702, 0.700465, -0.262391,
		42.884739, 38.477211, 30.949495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010075, 38.579166, 30.809071>,  <42.420147, 37.986885, 31.133167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010075, 38.579166, 30.809071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368851, 38.680161, 30.663879>,  <42.584118, 38.740757, 30.576765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368851, 38.680161, 30.663879>,  <42.010075, 38.579166, 30.809071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368851, 38.680161, 30.663879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401946, 0.123564, -0.907288,
		-0.184222, 0.959680, 0.212313,
		0.896940, 0.252481, -0.362976,
		42.637932, 38.755905, 30.554987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885616, 39.218452, 30.384518>,  <42.010075, 38.579166, 30.809071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885616, 39.218452, 30.384518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237415, 39.072952, 30.261770>,  <42.448494, 38.985653, 30.188122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237415, 39.072952, 30.261770>,  <41.885616, 39.218452, 30.384518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237415, 39.072952, 30.261770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240689, 0.216281, -0.946198,
		0.410549, 0.906040, 0.102669,
		0.879499, -0.363750, -0.306868,
		42.501266, 38.963829, 30.169710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144093, 39.683601, 29.843580>,  <41.885616, 39.218452, 30.384518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144093, 39.683601, 29.843580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334240, 39.337894, 29.777782>,  <42.448330, 39.130470, 29.738304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334240, 39.337894, 29.777782>,  <42.144093, 39.683601, 29.843580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334240, 39.337894, 29.777782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094362, 0.135803, -0.986232,
		0.874711, 0.484346, -0.016998,
		0.475369, -0.864272, -0.164493,
		42.476852, 39.078613, 29.728436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763687, 39.874729, 29.348013>,  <42.144093, 39.683601, 29.843580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763687, 39.874729, 29.348013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698463, 39.480377, 29.332792>,  <42.659328, 39.243767, 29.323660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698463, 39.480377, 29.332792>,  <42.763687, 39.874729, 29.348013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698463, 39.480377, 29.332792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003752, 0.039189, -0.999225,
		0.986609, -0.162790, -0.010089,
		-0.163059, -0.985882, -0.038054,
		42.649544, 39.184612, 29.321377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384678, 39.533115, 28.943247>,  <42.763687, 39.874729, 29.348013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384678, 39.533115, 28.943247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031029, 39.347656, 28.920061>,  <42.818840, 39.236382, 28.906151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031029, 39.347656, 28.920061>,  <43.384678, 39.533115, 28.943247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031029, 39.347656, 28.920061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082256, -0.032326, -0.996087,
		0.459962, -0.885429, 0.066718,
		-0.884120, -0.463650, -0.057963,
		42.765793, 39.208561, 28.902672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416832, 39.124146, 28.333603>,  <43.384678, 39.533115, 28.943247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416832, 39.124146, 28.333603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023689, 39.067360, 28.380650>,  <42.787804, 39.033287, 28.408876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023689, 39.067360, 28.380650>,  <43.416832, 39.124146, 28.333603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023689, 39.067360, 28.380650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105713, -0.088677, -0.990435,
		0.151037, -0.985892, 0.072149,
		-0.982859, -0.141965, 0.117615,
		42.728832, 39.024773, 28.415934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263817, 38.580654, 27.913004>,  <43.416832, 39.124146, 28.333603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263817, 38.580654, 27.913004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920692, 38.780804, 27.959953>,  <42.714817, 38.900894, 27.988123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920692, 38.780804, 27.959953>,  <43.263817, 38.580654, 27.913004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920692, 38.780804, 27.959953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163273, -0.048765, -0.985375,
		-0.487336, -0.864433, 0.123529,
		-0.857814, 0.500378, 0.117373,
		42.663349, 38.930916, 27.995165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742104, 38.311081, 27.472620>,  <43.263817, 38.580654, 27.913004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742104, 38.311081, 27.472620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563313, 38.661320, 27.545877>,  <42.456039, 38.871464, 27.589832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563313, 38.661320, 27.545877>,  <42.742104, 38.311081, 27.472620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563313, 38.661320, 27.545877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221289, 0.090144, -0.971033,
		-0.866745, -0.474554, 0.153468,
		-0.446973, 0.875598, 0.183146,
		42.429222, 38.924000, 27.600821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106976, 38.267551, 27.155758>,  <42.742104, 38.311081, 27.472620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106976, 38.267551, 27.155758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174644, 38.661167, 27.177841>,  <42.215244, 38.897335, 27.191092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174644, 38.661167, 27.177841>,  <42.106976, 38.267551, 27.155758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174644, 38.661167, 27.177841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249008, 0.096873, -0.963644,
		-0.953613, 0.149271, 0.261422,
		0.169169, 0.984040, 0.055210,
		42.225395, 38.956379, 27.194405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526608, 38.506210, 26.915604>,  <42.106976, 38.267551, 27.155758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526608, 38.506210, 26.915604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790314, 38.805195, 26.882931>,  <41.948536, 38.984585, 26.863327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790314, 38.805195, 26.882931>,  <41.526608, 38.506210, 26.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790314, 38.805195, 26.882931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394974, 0.251819, -0.883506,
		-0.639817, 0.614726, 0.461243,
		0.659264, 0.747462, -0.081683,
		41.988094, 39.029434, 26.858425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136166, 39.087925, 26.698154>,  <41.526608, 38.506210, 26.915604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136166, 39.087925, 26.698154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511486, 39.167225, 26.584810>,  <41.736679, 39.214806, 26.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511486, 39.167225, 26.584810>,  <41.136166, 39.087925, 26.698154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511486, 39.167225, 26.584810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333039, 0.297236, -0.894839,
		-0.093178, 0.933995, 0.344922,
		0.938298, 0.198251, -0.283361,
		41.792976, 39.226700, 26.499802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261284, 39.842896, 26.409468>,  <41.136166, 39.087925, 26.698154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261284, 39.842896, 26.409468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535267, 39.595036, 26.256174>,  <41.699657, 39.446320, 26.164198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535267, 39.595036, 26.256174>,  <41.261284, 39.842896, 26.409468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535267, 39.595036, 26.256174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172620, 0.372999, -0.911632,
		0.707839, 0.690583, 0.148524,
		0.684957, -0.619651, -0.383232,
		41.740753, 39.409142, 26.141205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407162, 40.108124, 25.775581>,  <41.261284, 39.842896, 26.409468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407162, 40.108124, 25.775581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630325, 39.779713, 25.727184>,  <41.764225, 39.582664, 25.698147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630325, 39.779713, 25.727184>,  <41.407162, 40.108124, 25.775581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630325, 39.779713, 25.727184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072139, 0.097263, -0.992641,
		0.826758, 0.562536, -0.004964,
		0.557913, -0.821032, -0.120993,
		41.797699, 39.533401, 25.690886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110500, 40.170330, 25.539276>,  <41.407162, 40.108124, 25.775581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110500, 40.170330, 25.539276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974937, 39.807129, 25.440748>,  <41.893600, 39.589207, 25.381632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974937, 39.807129, 25.440748>,  <42.110500, 40.170330, 25.539276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974937, 39.807129, 25.440748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041284, 0.247210, -0.968082,
		0.939913, -0.338261, -0.046296,
		-0.338909, -0.908001, -0.246321,
		41.873264, 39.534729, 25.366852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558277, 39.806320, 25.129435>,  <42.110500, 40.170330, 25.539276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558277, 39.806320, 25.129435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195236, 39.663769, 25.040667>,  <41.977413, 39.578236, 24.987406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195236, 39.663769, 25.040667>,  <42.558277, 39.806320, 25.129435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195236, 39.663769, 25.040667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122219, 0.281414, -0.951771,
		0.401645, -0.890954, -0.211856,
		-0.907604, -0.356381, -0.221920,
		41.922955, 39.556854, 24.974091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626789, 40.364967, 24.613693>,  <42.558277, 39.806320, 25.129435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626789, 40.364967, 24.613693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956799, 40.589592, 24.588438>,  <43.154804, 40.724365, 24.573284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956799, 40.589592, 24.588438>,  <42.626789, 40.364967, 24.613693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956799, 40.589592, 24.588438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323518, -0.377761, 0.867544,
		0.463326, -0.736171, -0.493337,
		0.825024, 0.561559, -0.063138,
		43.204308, 40.758060, 24.569496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291088, 39.951893, 24.718674>,  <42.626789, 40.364967, 24.613693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291088, 39.951893, 24.718674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307396, 40.336529, 24.827250>,  <43.317181, 40.567310, 24.892395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307396, 40.336529, 24.827250>,  <43.291088, 39.951893, 24.718674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307396, 40.336529, 24.827250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284671, -0.271585, 0.919350,
		0.957758, 0.039792, -0.284809,
		0.040766, 0.961592, 0.271440,
		43.319626, 40.625008, 24.908682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933292, 40.120502, 24.827145>,  <43.291088, 39.951893, 24.718674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933292, 40.120502, 24.827145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701603, 40.330437, 25.076639>,  <43.562588, 40.456398, 25.226336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701603, 40.330437, 25.076639>,  <43.933292, 40.120502, 24.827145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701603, 40.330437, 25.076639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421105, -0.462507, 0.780229,
		0.697972, 0.714588, 0.046886,
		-0.579227, 0.524835, 0.623734,
		43.527836, 40.487888, 25.263760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301022, 40.612072, 25.174534>,  <43.933292, 40.120502, 24.827145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301022, 40.612072, 25.174534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993824, 40.524250, 25.415195>,  <43.809505, 40.471558, 25.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993824, 40.524250, 25.415195>,  <44.301022, 40.612072, 25.174534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993824, 40.524250, 25.415195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636616, -0.158915, 0.754630,
		-0.070068, 0.962571, 0.261815,
		-0.767991, -0.219551, 0.601653,
		43.763428, 40.458385, 25.595692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345985, 41.065090, 25.796389>,  <44.301022, 40.612072, 25.174534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345985, 41.065090, 25.796389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128956, 40.743767, 25.894623>,  <43.998737, 40.550972, 25.953564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128956, 40.743767, 25.894623>,  <44.345985, 41.065090, 25.796389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128956, 40.743767, 25.894623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556372, -0.124627, 0.821534,
		-0.629337, 0.582380, 0.514556,
		-0.542573, -0.803307, 0.245588,
		43.966183, 40.502773, 25.968300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968822, 41.711140, 25.844978>,  <44.345985, 41.065090, 25.796389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968822, 41.711140, 25.844978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035938, 41.951168, 26.157839>,  <45.076206, 42.095184, 26.345554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035938, 41.951168, 26.157839>,  <44.968822, 41.711140, 25.844978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035938, 41.951168, 26.157839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123762, -0.799942, 0.587176,
		0.978024, -0.001720, -0.208486,
		0.167787, 0.600075, 0.782150,
		45.086273, 42.131191, 26.392483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684460, 41.619858, 26.114264>,  <44.968822, 41.711140, 25.844978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684460, 41.619858, 26.114264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398972, 41.707317, 26.380434>,  <45.227676, 41.759792, 26.540136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398972, 41.707317, 26.380434>,  <45.684460, 41.619858, 26.114264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398972, 41.707317, 26.380434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271932, -0.789012, 0.550920,
		0.645486, 0.574155, 0.503680,
		-0.713723, 0.218645, 0.665427,
		45.184856, 41.772911, 26.580063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079338, 41.726746, 26.782787>,  <45.684460, 41.619858, 26.114264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079338, 41.726746, 26.782787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699783, 41.608955, 26.828207>,  <45.472050, 41.538280, 26.855459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699783, 41.608955, 26.828207>,  <46.079338, 41.726746, 26.782787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699783, 41.608955, 26.828207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277684, -0.607972, 0.743815,
		-0.149996, 0.737330, 0.658669,
		-0.948890, -0.294471, 0.113551,
		45.415115, 41.520615, 26.862272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085678, 41.636261, 27.527945>,  <46.079338, 41.726746, 26.782787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085678, 41.636261, 27.527945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742893, 41.475445, 27.398954>,  <45.537224, 41.378956, 27.321560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742893, 41.475445, 27.398954>,  <46.085678, 41.636261, 27.527945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742893, 41.475445, 27.398954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019095, -0.650030, 0.759668,
		-0.515033, 0.644846, 0.564726,
		-0.856958, -0.402038, -0.322473,
		45.485806, 41.354832, 27.302212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640690, 41.537884, 28.084238>,  <46.085678, 41.636261, 27.527945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640690, 41.537884, 28.084238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501801, 41.274506, 27.817142>,  <45.418465, 41.116478, 27.656885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501801, 41.274506, 27.817142>,  <45.640690, 41.537884, 28.084238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501801, 41.274506, 27.817142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021761, -0.717509, 0.696209,
		-0.937528, 0.227212, 0.263467,
		-0.347227, -0.658449, -0.667741,
		45.397633, 41.076969, 27.616819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168369, 41.154163, 28.413429>,  <45.640690, 41.537884, 28.084238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168369, 41.154163, 28.413429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255180, 40.904175, 28.113480>,  <45.307266, 40.754181, 27.933510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255180, 40.904175, 28.113480>,  <45.168369, 41.154163, 28.413429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255180, 40.904175, 28.113480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016047, -0.770365, 0.637402,
		-0.976034, -0.126300, -0.177218,
		0.217027, -0.624969, -0.749875,
		45.320290, 40.716682, 27.888517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853596, 40.661068, 28.597879>,  <45.168369, 41.154163, 28.413429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853596, 40.661068, 28.597879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106731, 40.488476, 28.340715>,  <45.258614, 40.384918, 28.186417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106731, 40.488476, 28.340715>,  <44.853596, 40.661068, 28.597879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106731, 40.488476, 28.340715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038722, -0.846928, 0.530295,
		-0.773311, -0.310700, -0.552681,
		0.632844, -0.431484, -0.642908,
		45.296585, 40.359032, 28.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491005, 39.919510, 28.332159>,  <44.853596, 40.661068, 28.597879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491005, 39.919510, 28.332159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884651, 39.887817, 28.268618>,  <45.120838, 39.868801, 28.230492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884651, 39.887817, 28.268618>,  <44.491005, 39.919510, 28.332159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884651, 39.887817, 28.268618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029299, -0.810098, 0.585561,
		-0.175083, -0.580915, -0.794911,
		0.984118, -0.079232, -0.158854,
		45.179886, 39.864048, 28.220961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619049, 39.159336, 28.255379>,  <44.491005, 39.919510, 28.332159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619049, 39.159336, 28.255379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968563, 39.335484, 28.337914>,  <45.178272, 39.441174, 28.387434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968563, 39.335484, 28.337914>,  <44.619049, 39.159336, 28.255379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968563, 39.335484, 28.337914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294210, -0.816520, 0.496724,
		0.387219, -0.373324, -0.843025,
		0.873786, 0.440367, 0.206336,
		45.230698, 39.467594, 28.399815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131367, 38.542252, 28.357264>,  <44.619049, 39.159336, 28.255379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131367, 38.542252, 28.357264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289524, 38.882130, 28.496798>,  <45.384418, 39.086056, 28.580519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289524, 38.882130, 28.496798>,  <45.131367, 38.542252, 28.357264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289524, 38.882130, 28.496798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371962, -0.495371, 0.785017,
		0.839827, -0.180636, -0.511919,
		0.395393, 0.849693, 0.348836,
		45.408142, 39.137039, 28.601448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810612, 38.340382, 28.582066>,  <45.131367, 38.542252, 28.357264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810612, 38.340382, 28.582066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690643, 38.666119, 28.780819>,  <45.618664, 38.861561, 28.900070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690643, 38.666119, 28.780819>,  <45.810612, 38.340382, 28.582066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690643, 38.666119, 28.780819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326175, -0.401931, 0.855606,
		0.896469, 0.418686, -0.145070,
		-0.299922, 0.814342, 0.496883,
		45.600666, 38.910419, 28.929884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360703, 38.425476, 29.121614>,  <45.810612, 38.340382, 28.582066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360703, 38.425476, 29.121614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054344, 38.639030, 29.264927>,  <45.870529, 38.767166, 29.350914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054344, 38.639030, 29.264927>,  <46.360703, 38.425476, 29.121614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054344, 38.639030, 29.264927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191359, -0.342706, 0.919747,
		0.613829, 0.772990, 0.160312,
		-0.765895, 0.533891, 0.358281,
		45.824577, 38.799198, 29.372412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676079, 38.911903, 29.670797>,  <46.360703, 38.425476, 29.121614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676079, 38.911903, 29.670797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285831, 38.840294, 29.721596>,  <46.051685, 38.797329, 29.752075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285831, 38.840294, 29.721596>,  <46.676079, 38.911903, 29.670797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285831, 38.840294, 29.721596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148646, -0.113188, 0.982391,
		-0.161494, 0.977313, 0.137038,
		-0.975615, -0.179021, 0.126995,
		45.993149, 38.786587, 29.759695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586670, 39.135609, 30.320705>,  <46.676079, 38.911903, 29.670797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586670, 39.135609, 30.320705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258804, 38.916878, 30.252436>,  <46.062084, 38.785641, 30.211473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258804, 38.916878, 30.252436>,  <46.586670, 39.135609, 30.320705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258804, 38.916878, 30.252436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102240, -0.153513, 0.982843,
		-0.563647, 0.823051, 0.069922,
		-0.819664, -0.546828, -0.170676,
		46.012905, 38.752831, 30.201233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177853, 39.275215, 30.888462>,  <46.586670, 39.135609, 30.320705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177853, 39.275215, 30.888462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997112, 38.948715, 30.744484>,  <45.888668, 38.752815, 30.658098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997112, 38.948715, 30.744484>,  <46.177853, 39.275215, 30.888462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997112, 38.948715, 30.744484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246955, -0.273263, 0.929699,
		-0.857230, 0.508976, -0.078104,
		-0.451852, -0.816254, -0.359943,
		45.861557, 38.703838, 30.636501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566017, 39.169479, 31.299643>,  <46.177853, 39.275215, 30.888462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566017, 39.169479, 31.299643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641594, 38.806980, 31.148369>,  <45.686939, 38.589481, 31.057604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641594, 38.806980, 31.148369>,  <45.566017, 39.169479, 31.299643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641594, 38.806980, 31.148369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276502, -0.418636, 0.865038,
		-0.942257, -0.058872, -0.329675,
		0.188940, -0.906244, -0.378184,
		45.698277, 38.535107, 31.034914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084614, 38.761990, 31.579411>,  <45.566017, 39.169479, 31.299643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084614, 38.761990, 31.579411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347275, 38.480473, 31.470980>,  <45.504871, 38.311562, 31.405922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347275, 38.480473, 31.470980>,  <45.084614, 38.761990, 31.579411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347275, 38.480473, 31.470980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248147, -0.541029, 0.803561,
		-0.712202, -0.460393, -0.529912,
		0.656652, -0.703794, -0.271077,
		45.544270, 38.269333, 31.389656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804821, 38.079342, 31.529154>,  <45.084614, 38.761990, 31.579411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804821, 38.079342, 31.529154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183975, 37.975430, 31.602932>,  <45.411469, 37.913082, 31.647200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183975, 37.975430, 31.602932>,  <44.804821, 38.079342, 31.529154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183975, 37.975430, 31.602932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315780, -0.689227, 0.652111,
		-0.042278, -0.676374, -0.735344,
		0.947890, -0.259776, 0.184446,
		45.468342, 37.897495, 31.658266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820557, 37.462051, 31.822296>,  <44.804821, 38.079342, 31.529154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820557, 37.462051, 31.822296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192963, 37.559498, 31.931013>,  <45.416405, 37.617966, 31.996243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192963, 37.559498, 31.931013>,  <44.820557, 37.462051, 31.822296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192963, 37.559498, 31.931013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098647, -0.548987, 0.829989,
		0.351407, -0.799540, -0.487081,
		0.931011, 0.243615, 0.271790,
		45.472267, 37.632584, 32.012550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087818, 36.870323, 32.157562>,  <44.820557, 37.462051, 31.822296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087818, 36.870323, 32.157562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360500, 37.136894, 32.278328>,  <45.524109, 37.296837, 32.350788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360500, 37.136894, 32.278328>,  <45.087818, 36.870323, 32.157562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360500, 37.136894, 32.278328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062444, -0.464149, 0.883553,
		0.728956, -0.583471, -0.358029,
		0.681707, 0.666428, 0.301910,
		45.565014, 37.336823, 32.368900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665638, 36.448666, 32.365185>,  <45.087818, 36.870323, 32.157562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665638, 36.448666, 32.365185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676117, 36.803616, 32.549309>,  <45.682404, 37.016586, 32.659782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676117, 36.803616, 32.549309>,  <45.665638, 36.448666, 32.365185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676117, 36.803616, 32.549309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165878, -0.457939, 0.873371,
		0.985798, 0.053477, -0.159191,
		0.026194, 0.887374, 0.460306,
		45.683975, 37.069828, 32.687401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233120, 36.366882, 32.760796>,  <45.665638, 36.448666, 32.365185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233120, 36.366882, 32.760796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011574, 36.656860, 32.924595>,  <45.878647, 36.830845, 33.022873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011574, 36.656860, 32.924595>,  <46.233120, 36.366882, 32.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011574, 36.656860, 32.924595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021465, -0.479231, 0.877426,
		0.832327, 0.494769, 0.249870,
		-0.553869, 0.724942, 0.409498,
		45.845413, 36.874344, 33.047443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575680, 36.559120, 33.411205>,  <46.233120, 36.366882, 32.760796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575680, 36.559120, 33.411205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206455, 36.690498, 33.491287>,  <45.984921, 36.769325, 33.539337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206455, 36.690498, 33.491287>,  <46.575680, 36.559120, 33.411205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206455, 36.690498, 33.491287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064534, -0.380881, 0.922369,
		0.379202, 0.864323, 0.330381,
		-0.923061, 0.328443, 0.200209,
		45.929539, 36.789032, 33.551350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875118, 36.532909, 34.172745>,  <46.575680, 36.559120, 33.411205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875118, 36.532909, 34.172745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211739, 36.445534, 34.370365>,  <47.413712, 36.393108, 34.488937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211739, 36.445534, 34.370365>,  <46.875118, 36.532909, 34.172745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211739, 36.445534, 34.370365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506133, -0.638427, 0.579862,
		0.188750, -0.738035, -0.647825,
		0.841548, -0.218437, 0.494048,
		47.464203, 36.380001, 34.518578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125629, 35.767891, 33.987339>,  <46.875118, 36.532909, 34.172745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125629, 35.767891, 33.987339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236973, 35.905003, 34.346230>,  <47.303780, 35.987270, 34.561565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236973, 35.905003, 34.346230>,  <47.125629, 35.767891, 33.987339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236973, 35.905003, 34.346230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425494, -0.793477, 0.435143,
		0.861087, -0.502892, -0.075023,
		0.278359, 0.342775, 0.897230,
		47.320480, 36.007835, 34.615398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640396, 35.307941, 34.439434>,  <47.125629, 35.767891, 33.987339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640396, 35.307941, 34.439434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386024, 35.485229, 34.692146>,  <47.233402, 35.591602, 34.843773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386024, 35.485229, 34.692146>,  <47.640396, 35.307941, 34.439434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386024, 35.485229, 34.692146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332036, -0.896132, 0.294448,
		0.696666, -0.022527, 0.717042,
		-0.635931, 0.443216, 0.631785,
		47.195244, 35.618195, 34.881683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584812, 35.083530, 35.218575>,  <47.640396, 35.307941, 34.439434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584812, 35.083530, 35.218575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.913288, 35.243713, 35.055954>,  <48.110374, 35.339821, 34.958382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.913288, 35.243713, 35.055954>,  <47.584812, 35.083530, 35.218575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.913288, 35.243713, 35.055954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314802, -0.276331, -0.908042,
		-0.475972, 0.873658, -0.100856,
		0.821188, 0.400453, -0.406555,
		48.159645, 35.363850, 34.933987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.721100, 41.130127, 43.657566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333817, 41.195652, 43.733181>,  <35.101444, 41.234966, 43.778549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333817, 41.195652, 43.733181>,  <35.721100, 41.130127, 43.657566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333817, 41.195652, 43.733181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233396, -0.319808, -0.918286,
		-0.089969, -0.933214, 0.347875,
		-0.968211, 0.163810, 0.189036,
		35.043354, 41.244797, 43.789890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355656, 40.469509, 43.516026>,  <35.721100, 41.130127, 43.657566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355656, 40.469509, 43.516026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088634, 40.766582, 43.494904>,  <34.928421, 40.944828, 43.482231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088634, 40.766582, 43.494904>,  <35.355656, 40.469509, 43.516026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088634, 40.766582, 43.494904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245313, -0.286344, -0.926190,
		-0.702990, -0.605327, 0.373341,
		-0.667552, 0.742688, -0.052803,
		34.888371, 40.989388, 43.479061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680809, 40.233173, 43.387451>,  <35.355656, 40.469509, 43.516026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680809, 40.233173, 43.387451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656666, 40.602470, 43.235676>,  <34.642178, 40.824051, 43.144611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656666, 40.602470, 43.235676>,  <34.680809, 40.233173, 43.387451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656666, 40.602470, 43.235676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366326, -0.374098, -0.851971,
		-0.928527, 0.087574, 0.360790,
		-0.060360, 0.923245, -0.379441,
		34.638557, 40.879444, 43.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031193, 40.192394, 42.976425>,  <34.680809, 40.233173, 43.387451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031193, 40.192394, 42.976425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.194984, 40.532326, 42.843685>,  <34.293259, 40.736282, 42.764042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.194984, 40.532326, 42.843685>,  <34.031193, 40.192394, 42.976425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194984, 40.532326, 42.843685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222929, -0.259509, -0.939658,
		-0.884664, 0.458748, 0.083188,
		0.409478, 0.849827, -0.331847,
		34.317829, 40.787273, 42.744133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668888, 40.388943, 42.440907>,  <34.031193, 40.192394, 42.976425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668888, 40.388943, 42.440907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019398, 40.564850, 42.362167>,  <34.229702, 40.670395, 42.314922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019398, 40.564850, 42.362167>,  <33.668888, 40.388943, 42.440907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019398, 40.564850, 42.362167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038407, -0.343499, -0.938367,
		-0.480280, 0.829827, -0.284109,
		0.876274, 0.439767, -0.196847,
		34.282280, 40.696781, 42.303112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544945, 40.691723, 41.836319>,  <33.668888, 40.388943, 42.440907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544945, 40.691723, 41.836319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.943584, 40.720158, 41.852962>,  <34.182770, 40.737217, 41.862949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.943584, 40.720158, 41.852962>,  <33.544945, 40.691723, 41.836319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943584, 40.720158, 41.852962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056249, -0.218397, -0.974238,
		-0.060166, 0.973268, -0.221653,
		0.996602, 0.071083, 0.041605,
		34.242565, 40.741482, 41.865444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727783, 40.975151, 41.196831>,  <33.544945, 40.691723, 41.836319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727783, 40.975151, 41.196831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061577, 40.794014, 41.322414>,  <34.261852, 40.685329, 41.397766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061577, 40.794014, 41.322414>,  <33.727783, 40.975151, 41.196831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061577, 40.794014, 41.322414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273434, -0.154371, -0.949423,
		0.478408, 0.878124, -0.004997,
		0.834482, -0.452845, 0.313961,
		34.311920, 40.658161, 41.416603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142410, 41.235043, 40.760571>,  <33.727783, 40.975151, 41.196831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142410, 41.235043, 40.760571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297508, 40.897343, 40.908566>,  <34.390568, 40.694721, 40.997360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297508, 40.897343, 40.908566>,  <34.142410, 41.235043, 40.760571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297508, 40.897343, 40.908566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374842, -0.222278, -0.900048,
		0.842107, 0.487678, 0.230274,
		0.387748, -0.844253, 0.369984,
		34.413834, 40.644066, 41.019562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857555, 41.268864, 40.576504>,  <34.142410, 41.235043, 40.760571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857555, 41.268864, 40.576504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743240, 40.891701, 40.644909>,  <34.674652, 40.665401, 40.685951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743240, 40.891701, 40.644909>,  <34.857555, 41.268864, 40.576504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743240, 40.891701, 40.644909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530056, -0.304212, -0.791515,
		0.798351, -0.135561, 0.586736,
		-0.285791, -0.942909, 0.171013,
		34.657505, 40.608829, 40.696213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434654, 40.998844, 40.293827>,  <34.857555, 41.268864, 40.576504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434654, 40.998844, 40.293827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166328, 40.703228, 40.318584>,  <35.005333, 40.525860, 40.333439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166328, 40.703228, 40.318584>,  <35.434654, 40.998844, 40.293827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166328, 40.703228, 40.318584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311731, -0.356706, -0.880673,
		0.672931, -0.571471, 0.469664,
		-0.670811, -0.739041, 0.061893,
		34.965084, 40.481514, 40.337151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780155, 40.416191, 40.279694>,  <35.434654, 40.998844, 40.293827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780155, 40.416191, 40.279694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416313, 40.282051, 40.181583>,  <35.198009, 40.201565, 40.122719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416313, 40.282051, 40.181583>,  <35.780155, 40.416191, 40.279694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416313, 40.282051, 40.181583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366321, -0.368787, -0.854286,
		0.196033, -0.866911, 0.458297,
		-0.909604, -0.335353, -0.245274,
		35.143433, 40.181446, 40.108002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870564, 39.796459, 39.978836>,  <35.780155, 40.416191, 40.279694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870564, 39.796459, 39.978836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496490, 39.851326, 39.848225>,  <35.272049, 39.884247, 39.769855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496490, 39.851326, 39.848225>,  <35.870564, 39.796459, 39.978836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496490, 39.851326, 39.848225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235975, -0.446198, -0.863263,
		-0.264110, -0.884360, 0.384907,
		-0.935180, 0.137168, -0.326532,
		35.215935, 39.892475, 39.750263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604130, 39.142654, 39.808754>,  <35.870564, 39.796459, 39.978836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604130, 39.142654, 39.808754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387562, 39.403931, 39.597015>,  <35.257622, 39.560696, 39.469971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387562, 39.403931, 39.597015>,  <35.604130, 39.142654, 39.808754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387562, 39.403931, 39.597015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114652, -0.566370, -0.816137,
		-0.832898, -0.502564, 0.231756,
		-0.541421, 0.653188, -0.529348,
		35.225136, 39.599888, 39.438210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220268, 38.697182, 39.300777>,  <35.604130, 39.142654, 39.808754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220268, 38.697182, 39.300777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231052, 39.070747, 39.158184>,  <35.237522, 39.294888, 39.072628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231052, 39.070747, 39.158184>,  <35.220268, 38.697182, 39.300777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231052, 39.070747, 39.158184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249535, -0.351615, -0.902274,
		-0.967990, -0.064628, -0.242524,
		0.026963, 0.933911, -0.356487,
		35.239140, 39.350922, 39.051239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857670, 38.689674, 38.738770>,  <35.220268, 38.697182, 39.300777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857670, 38.689674, 38.738770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106304, 38.998852, 38.687878>,  <35.255486, 39.184361, 38.657345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106304, 38.998852, 38.687878>,  <34.857670, 38.689674, 38.738770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106304, 38.998852, 38.687878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298296, -0.383733, -0.873939,
		-0.724330, 0.505275, -0.469089,
		0.621584, 0.772947, -0.127228,
		35.292778, 39.230736, 38.649708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792965, 38.677258, 38.029438>,  <34.857670, 38.689674, 38.738770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792965, 38.677258, 38.029438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102100, 38.908352, 38.134468>,  <35.287582, 39.047009, 38.197487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102100, 38.908352, 38.134468>,  <34.792965, 38.677258, 38.029438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102100, 38.908352, 38.134468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532663, -0.365646, -0.763265,
		-0.344960, 0.729739, -0.590325,
		0.772834, 0.577740, 0.262571,
		35.333950, 39.081673, 38.213238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890842, 39.207840, 37.421177>,  <34.792965, 38.677258, 38.029438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890842, 39.207840, 37.421177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229008, 39.161629, 37.629765>,  <35.431908, 39.133904, 37.754917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229008, 39.161629, 37.629765>,  <34.890842, 39.207840, 37.421177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229008, 39.161629, 37.629765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490458, -0.218671, -0.843584,
		0.211488, 0.968936, -0.128206,
		0.845413, -0.115528, 0.521469,
		35.482632, 39.126972, 37.786205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351303, 39.683506, 37.171524>,  <34.890842, 39.207840, 37.421177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351303, 39.683506, 37.171524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594845, 39.425552, 37.356316>,  <35.740971, 39.270779, 37.467190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594845, 39.425552, 37.356316>,  <35.351303, 39.683506, 37.171524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594845, 39.425552, 37.356316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570027, -0.049351, -0.820142,
		0.551697, 0.762684, 0.337556,
		0.608850, -0.644886, 0.461977,
		35.777500, 39.232086, 37.494907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951992, 39.921051, 37.053616>,  <35.351303, 39.683506, 37.171524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951992, 39.921051, 37.053616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.000713, 39.532116, 37.133343>,  <36.029945, 39.298756, 37.181179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.000713, 39.532116, 37.133343>,  <35.951992, 39.921051, 37.053616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000713, 39.532116, 37.133343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573164, -0.095044, -0.813910,
		0.810337, 0.213380, 0.545731,
		0.121803, -0.972335, 0.199319,
		36.037254, 39.240414, 37.193138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603149, 39.690655, 36.796055>,  <35.951992, 39.921051, 37.053616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603149, 39.690655, 36.796055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438885, 39.328384, 36.838207>,  <36.340324, 39.111023, 36.863499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438885, 39.328384, 36.838207>,  <36.603149, 39.690655, 36.796055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438885, 39.328384, 36.838207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450508, -0.302032, -0.840131,
		0.792717, -0.297531, 0.532047,
		-0.410660, -0.905678, 0.105386,
		36.315685, 39.056683, 36.869823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136189, 39.163353, 36.600861>,  <36.603149, 39.690655, 36.796055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136189, 39.163353, 36.600861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786121, 38.981438, 36.534828>,  <36.576080, 38.872288, 36.495209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786121, 38.981438, 36.534828>,  <37.136189, 39.163353, 36.600861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786121, 38.981438, 36.534828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397229, -0.480612, -0.781807,
		0.276214, -0.749787, 0.601270,
		-0.875166, -0.454788, -0.165085,
		36.523571, 38.845001, 36.485302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268578, 38.372974, 36.386940>,  <37.136189, 39.163353, 36.600861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268578, 38.372974, 36.386940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899200, 38.456295, 36.258022>,  <36.677574, 38.506287, 36.180672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899200, 38.456295, 36.258022>,  <37.268578, 38.372974, 36.386940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899200, 38.456295, 36.258022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193331, -0.472953, -0.859616,
		-0.331488, -0.856111, 0.396472,
		-0.923439, 0.208302, -0.322291,
		36.622169, 38.518787, 36.161335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978558, 38.281860, 36.010162>,  <37.268578, 38.372974, 36.386940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978558, 38.281860, 36.010162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345524, 38.441025, 36.012081>,  <38.565704, 38.536522, 36.013233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345524, 38.441025, 36.012081>,  <37.978558, 38.281860, 36.010162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345524, 38.441025, 36.012081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135461, 0.300946, 0.943971,
		0.374176, -0.866659, 0.329993,
		0.917411, 0.397912, 0.004792,
		38.620747, 38.560398, 36.013519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302227, 37.963100, 36.570339>,  <37.978558, 38.281860, 36.010162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302227, 37.963100, 36.570339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540691, 38.279617, 36.516010>,  <38.683769, 38.469528, 36.483414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540691, 38.279617, 36.516010>,  <38.302227, 37.963100, 36.570339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540691, 38.279617, 36.516010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018640, 0.155485, 0.987663,
		0.802651, -0.591335, 0.077944,
		0.596158, 0.791295, -0.135822,
		38.719540, 38.517006, 36.475262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743523, 37.827045, 37.012135>,  <38.302227, 37.963100, 36.570339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743523, 37.827045, 37.012135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771564, 38.222534, 36.959187>,  <38.788391, 38.459827, 36.927418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771564, 38.222534, 36.959187>,  <38.743523, 37.827045, 37.012135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771564, 38.222534, 36.959187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037221, 0.130012, 0.990814,
		0.996845, -0.074386, -0.027687,
		0.070103, 0.988718, -0.132370,
		38.792595, 38.519150, 36.919476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159584, 38.119392, 37.581055>,  <38.743523, 37.827045, 37.012135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159584, 38.119392, 37.581055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952843, 38.435261, 37.448818>,  <38.828800, 38.624783, 37.369476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952843, 38.435261, 37.448818>,  <39.159584, 38.119392, 37.581055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952843, 38.435261, 37.448818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087392, 0.335488, 0.937982,
		0.851604, 0.513687, -0.104386,
		-0.516850, 0.789667, -0.330595,
		38.797787, 38.672161, 37.349640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567928, 38.611458, 37.896999>,  <39.159584, 38.119392, 37.581055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567928, 38.611458, 37.896999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211246, 38.761604, 37.795841>,  <38.997238, 38.851692, 37.735146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211246, 38.761604, 37.795841>,  <39.567928, 38.611458, 37.896999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211246, 38.761604, 37.795841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214592, 0.141328, 0.966425,
		0.398508, 0.916037, -0.045472,
		-0.891707, 0.375370, -0.252895,
		38.943733, 38.874214, 37.719975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593262, 39.273197, 38.219826>,  <39.567928, 38.611458, 37.896999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593262, 39.273197, 38.219826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218594, 39.137760, 38.184052>,  <38.993793, 39.056496, 38.162586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218594, 39.137760, 38.184052>,  <39.593262, 39.273197, 38.219826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218594, 39.137760, 38.184052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270161, 0.536124, 0.799740,
		-0.222843, 0.773255, -0.593648,
		-0.936672, -0.338597, -0.089432,
		38.937592, 39.036182, 38.157223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103752, 39.870144, 38.558159>,  <39.593262, 39.273197, 38.219826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103752, 39.870144, 38.558159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868176, 39.547100, 38.546040>,  <38.726830, 39.353275, 38.538769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868176, 39.547100, 38.546040>,  <39.103752, 39.870144, 38.558159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868176, 39.547100, 38.546040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491025, 0.327791, 0.807123,
		-0.641907, 0.490225, -0.589605,
		-0.588940, -0.807609, -0.030301,
		38.691494, 39.304817, 38.536949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407730, 40.090897, 38.400902>,  <39.103752, 39.870144, 38.558159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407730, 40.090897, 38.400902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383415, 39.729126, 38.569813>,  <38.368828, 39.512066, 38.671162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383415, 39.729126, 38.569813>,  <38.407730, 40.090897, 38.400902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383415, 39.729126, 38.569813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565812, 0.379746, 0.731881,
		-0.822291, -0.194444, -0.534817,
		-0.060785, -0.904425, 0.422281,
		38.365181, 39.457798, 38.696499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812599, 40.075119, 38.756916>,  <38.407730, 40.090897, 38.400902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812599, 40.075119, 38.756916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985008, 39.760872, 38.934467>,  <38.088451, 39.572323, 39.041000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985008, 39.760872, 38.934467>,  <37.812599, 40.075119, 38.756916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985008, 39.760872, 38.934467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464877, 0.228282, 0.855440,
		-0.773377, -0.575061, -0.266820,
		0.431019, -0.785616, 0.443881,
		38.114315, 39.525188, 39.067631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264530, 39.624832, 39.006775>,  <37.812599, 40.075119, 38.756916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264530, 39.624832, 39.006775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553276, 39.501129, 39.254410>,  <37.726524, 39.426907, 39.402992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553276, 39.501129, 39.254410>,  <37.264530, 39.624832, 39.006775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553276, 39.501129, 39.254410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615885, 0.120875, 0.778508,
		-0.315590, -0.943266, -0.103211,
		0.721864, -0.309255, 0.619090,
		37.769836, 39.408352, 39.440136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924805, 39.301624, 39.668526>,  <37.264530, 39.624832, 39.006775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924805, 39.301624, 39.668526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 39.352467, 39.779556>,  <37.534252, 39.382973, 39.846176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 39.352467, 39.779556>,  <36.924805, 39.301624, 39.668526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305710, 39.352467, 39.779556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279233, -0.004950, 0.960211,
		0.123421, -0.991877, 0.030778,
		0.952259, 0.127104, 0.277576,
		37.591389, 39.390598, 39.862827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921791, 38.829048, 40.225151>,  <36.924805, 39.301624, 39.668526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921791, 38.829048, 40.225151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210808, 39.105473, 40.232834>,  <37.384216, 39.271328, 40.237442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210808, 39.105473, 40.232834>,  <36.921791, 38.829048, 40.225151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210808, 39.105473, 40.232834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146464, 0.125867, 0.981176,
		0.675636, -0.711752, 0.192159,
		0.722540, 0.691062, 0.019206,
		37.427570, 39.312790, 40.238594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326595, 38.695370, 40.822292>,  <36.921791, 38.829048, 40.225151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326595, 38.695370, 40.822292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.362671, 39.085793, 40.743107>,  <37.384315, 39.320045, 40.695595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.362671, 39.085793, 40.743107>,  <37.326595, 38.695370, 40.822292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362671, 39.085793, 40.743107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032737, 0.195757, 0.980106,
		0.995387, -0.094872, -0.014298,
		0.090185, 0.976053, -0.197960,
		37.389725, 39.378609, 40.683720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878647, 38.861599, 41.187286>,  <37.326595, 38.695370, 40.822292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878647, 38.861599, 41.187286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690094, 39.208546, 41.123444>,  <37.576962, 39.416714, 41.085136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690094, 39.208546, 41.123444>,  <37.878647, 38.861599, 41.187286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690094, 39.208546, 41.123444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093424, 0.229072, 0.968916,
		0.876965, 0.441822, -0.189014,
		-0.471386, 0.867364, -0.159611,
		37.548679, 39.468754, 41.075562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240505, 39.357101, 41.542130>,  <37.878647, 38.861599, 41.187286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240505, 39.357101, 41.542130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891369, 39.545578, 41.491325>,  <37.681889, 39.658665, 41.460842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891369, 39.545578, 41.491325>,  <38.240505, 39.357101, 41.542130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891369, 39.545578, 41.491325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006733, 0.248620, 0.968578,
		0.487961, 0.846268, -0.213832,
		-0.872839, 0.471189, -0.127014,
		37.629517, 39.686935, 41.453220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300297, 40.016602, 41.942795>,  <38.240505, 39.357101, 41.542130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300297, 40.016602, 41.942795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906883, 39.985226, 41.877670>,  <37.670834, 39.966400, 41.838596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906883, 39.985226, 41.877670>,  <38.300297, 40.016602, 41.942795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906883, 39.985226, 41.877670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178710, 0.288140, 0.940765,
		-0.026877, 0.954371, -0.297412,
		-0.983535, -0.078435, -0.162811,
		37.611824, 39.961697, 41.828827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005215, 40.685669, 42.180397>,  <38.300297, 40.016602, 41.942795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005215, 40.685669, 42.180397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713482, 40.412006, 42.181881>,  <37.538445, 40.247810, 42.182774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713482, 40.412006, 42.181881>,  <38.005215, 40.685669, 42.180397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713482, 40.412006, 42.181881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301559, 0.326331, 0.895863,
		-0.614119, 0.652259, -0.444315,
		-0.729328, -0.684154, 0.003712,
		37.494682, 40.206760, 42.182995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440296, 41.083797, 42.378807>,  <38.005215, 40.685669, 42.180397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440296, 41.083797, 42.378807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368584, 40.697433, 42.453506>,  <37.325554, 40.465614, 42.498325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368584, 40.697433, 42.453506>,  <37.440296, 41.083797, 42.378807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368584, 40.697433, 42.453506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452873, 0.249545, 0.855940,
		-0.873363, 0.068883, -0.482174,
		-0.179284, -0.965910, 0.186748,
		37.314800, 40.407661, 42.509529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.751266, 41.111164, 42.605324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918816, 40.766991, 42.721394>,  <37.019344, 40.560486, 42.791035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918816, 40.766991, 42.721394>,  <36.751266, 41.111164, 42.605324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918816, 40.766991, 42.721394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342067, 0.146499, 0.928185,
		-0.841149, -0.488055, -0.232960,
		0.418877, -0.860430, 0.290175,
		37.044479, 40.508862, 42.808445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275188, 40.723347, 43.059383>,  <36.751266, 41.111164, 42.605324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275188, 40.723347, 43.059383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618061, 40.538284, 43.149879>,  <36.823784, 40.427246, 43.204178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618061, 40.538284, 43.149879>,  <36.275188, 40.723347, 43.059383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618061, 40.538284, 43.149879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191482, 0.121503, 0.973947,
		-0.478088, -0.878174, 0.015561,
		0.857186, -0.462652, 0.226244,
		36.875217, 40.399490, 43.217754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111893, 40.334633, 43.573643>,  <36.275188, 40.723347, 43.059383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111893, 40.334633, 43.573643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510708, 40.354431, 43.597172>,  <36.749996, 40.366310, 43.611290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510708, 40.354431, 43.597172>,  <36.111893, 40.334633, 43.573643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510708, 40.354431, 43.597172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067968, 0.210059, 0.975323,
		0.035922, -0.976435, 0.212802,
		0.997041, 0.049499, 0.058821,
		36.809818, 40.369282, 43.614819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253590, 40.145882, 44.309925>,  <36.111893, 40.334633, 43.573643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253590, 40.145882, 44.309925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576820, 40.325390, 44.157284>,  <36.770760, 40.433094, 44.065701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576820, 40.325390, 44.157284>,  <36.253590, 40.145882, 44.309925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576820, 40.325390, 44.157284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152999, 0.465671, 0.871632,
		0.568866, -0.762727, 0.307634,
		0.808073, 0.448774, -0.381601,
		36.819244, 40.460022, 44.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880554, 40.002754, 44.755013>,  <36.253590, 40.145882, 44.309925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880554, 40.002754, 44.755013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949032, 40.334412, 44.542137>,  <36.990120, 40.533405, 44.414413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949032, 40.334412, 44.542137>,  <36.880554, 40.002754, 44.755013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949032, 40.334412, 44.542137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269260, 0.480222, 0.834797,
		0.947730, -0.286208, -0.141043,
		0.171194, 0.829139, -0.532185,
		37.000389, 40.583153, 44.382481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641373, 40.313938, 44.930603>,  <36.880554, 40.002754, 44.755013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641373, 40.313938, 44.930603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420238, 40.600529, 44.760410>,  <37.287560, 40.772484, 44.658295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420238, 40.600529, 44.760410>,  <37.641373, 40.313938, 44.930603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420238, 40.600529, 44.760410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167400, 0.595687, 0.785579,
		0.816306, 0.363066, -0.449253,
		-0.552831, 0.716478, -0.425485,
		37.254391, 40.815472, 44.632763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044037, 40.895916, 44.987869>,  <37.641373, 40.313938, 44.930603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044037, 40.895916, 44.987869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665867, 41.024292, 44.965332>,  <37.438965, 41.101318, 44.951809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665867, 41.024292, 44.965332>,  <38.044037, 40.895916, 44.987869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665867, 41.024292, 44.965332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153050, 0.590012, 0.792756,
		0.287670, 0.740865, -0.606930,
		-0.945421, 0.320943, -0.056339,
		37.382240, 41.120575, 44.948429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110516, 41.556602, 45.182362>,  <38.044037, 40.895916, 44.987869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110516, 41.556602, 45.182362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718204, 41.496246, 45.231857>,  <37.482819, 41.460033, 45.261555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718204, 41.496246, 45.231857>,  <38.110516, 41.556602, 45.182362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718204, 41.496246, 45.231857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022184, 0.543781, 0.838934,
		-0.193868, 0.825552, -0.529980,
		-0.980777, -0.150886, 0.123736,
		37.423973, 41.450981, 45.268978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892223, 42.173492, 45.473629>,  <38.110516, 41.556602, 45.182362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892223, 42.173492, 45.473629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589493, 41.922318, 45.546200>,  <37.407856, 41.771614, 45.589741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589493, 41.922318, 45.546200>,  <37.892223, 42.173492, 45.473629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589493, 41.922318, 45.546200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153266, 0.440328, 0.884659,
		-0.635394, 0.641726, -0.429492,
		-0.756825, -0.627933, 0.181427,
		37.362446, 41.733936, 45.600628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387592, 42.576298, 45.867813>,  <37.892223, 42.173492, 45.473629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387592, 42.576298, 45.867813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275833, 42.199799, 45.943699>,  <37.208778, 41.973900, 45.989227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275833, 42.199799, 45.943699>,  <37.387592, 42.576298, 45.867813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275833, 42.199799, 45.943699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079486, 0.219574, 0.972352,
		-0.956878, 0.256598, -0.136166,
		-0.279403, -0.941246, 0.189710,
		37.192013, 41.917423, 46.000610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853252, 42.624859, 46.287842>,  <37.387592, 42.576298, 45.867813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853252, 42.624859, 46.287842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017403, 42.264668, 46.345440>,  <37.115894, 42.048553, 46.379997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017403, 42.264668, 46.345440>,  <36.853252, 42.624859, 46.287842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017403, 42.264668, 46.345440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004673, 0.159975, 0.987110,
		-0.911903, -0.404416, 0.069858,
		0.410379, -0.900475, 0.143991,
		37.140518, 41.994526, 46.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423618, 42.248672, 46.831493>,  <36.853252, 42.624859, 46.287842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423618, 42.248672, 46.831493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769089, 42.048298, 46.809162>,  <36.976372, 41.928074, 46.795761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769089, 42.048298, 46.809162>,  <36.423618, 42.248672, 46.831493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769089, 42.048298, 46.809162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129877, 0.114148, 0.984938,
		-0.487021, -0.857922, 0.163648,
		0.863680, -0.500940, -0.055832,
		37.028194, 41.898018, 46.792412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424965, 41.831177, 47.459862>,  <36.423618, 42.248672, 46.831493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424965, 41.831177, 47.459862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800613, 41.869408, 47.327850>,  <37.026001, 41.892345, 47.248642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800613, 41.869408, 47.327850>,  <36.424965, 41.831177, 47.459862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800613, 41.869408, 47.327850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298150, 0.250716, 0.921004,
		0.170771, -0.963331, 0.206956,
		0.939119, 0.095576, -0.330032,
		37.082348, 41.898079, 47.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755924, 41.456245, 47.881222>,  <36.424965, 41.831177, 47.459862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755924, 41.456245, 47.881222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053658, 41.681137, 47.737076>,  <37.232296, 41.816071, 47.650589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053658, 41.681137, 47.737076>,  <36.755924, 41.456245, 47.881222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053658, 41.681137, 47.737076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419692, 0.025908, 0.907297,
		0.519446, -0.826574, -0.216680,
		0.744335, 0.562231, -0.360364,
		37.276958, 41.849808, 47.628967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294594, 41.077091, 48.086296>,  <36.755924, 41.456245, 47.881222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294594, 41.077091, 48.086296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438904, 41.441956, 48.008530>,  <37.525490, 41.660873, 47.961868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438904, 41.441956, 48.008530>,  <37.294594, 41.077091, 48.086296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438904, 41.441956, 48.008530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233271, 0.113579, 0.965756,
		0.903008, -0.393776, -0.171804,
		0.360778, 0.912162, -0.194419,
		37.547138, 41.715603, 47.950203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968903, 41.158131, 48.462090>,  <37.294594, 41.077091, 48.086296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968903, 41.158131, 48.462090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843258, 41.531612, 48.393345>,  <37.767872, 41.755699, 48.352100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843258, 41.531612, 48.393345>,  <37.968903, 41.158131, 48.462090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843258, 41.531612, 48.393345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186358, 0.238139, 0.953184,
		0.930914, 0.267383, -0.248806,
		-0.314116, 0.933700, -0.171858,
		37.749023, 41.811722, 48.341789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463127, 41.522091, 48.864872>,  <37.968903, 41.158131, 48.462090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463127, 41.522091, 48.864872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189190, 41.799290, 48.774773>,  <38.024826, 41.965611, 48.720715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189190, 41.799290, 48.774773>,  <38.463127, 41.522091, 48.864872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189190, 41.799290, 48.774773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139800, 0.428327, 0.892744,
		0.715153, 0.579901, -0.390219,
		-0.684844, 0.693002, -0.225249,
		37.983738, 42.007191, 48.707199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788780, 42.219933, 48.915211>,  <38.463127, 41.522091, 48.864872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788780, 42.219933, 48.915211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396751, 42.240837, 48.991859>,  <38.161533, 42.253380, 49.037849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396751, 42.240837, 48.991859>,  <38.788780, 42.219933, 48.915211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396751, 42.240837, 48.991859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197206, 0.371039, 0.907436,
		-0.023675, 0.927146, -0.373953,
		-0.980076, 0.052262, 0.191624,
		38.102730, 42.256516, 49.049347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678577, 42.842659, 49.246449>,  <38.788780, 42.219933, 48.915211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678577, 42.842659, 49.246449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.340237, 42.650940, 49.340096>,  <38.137234, 42.535908, 49.396282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.340237, 42.650940, 49.340096>,  <38.678577, 42.842659, 49.246449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340237, 42.650940, 49.340096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036792, 0.490269, 0.870794,
		-0.532151, 0.727948, -0.432329,
		-0.845850, -0.479300, 0.234114,
		38.086483, 42.507149, 49.410328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270184, 43.369434, 49.559490>,  <38.678577, 42.842659, 49.246449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270184, 43.369434, 49.559490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132446, 43.013569, 49.679436>,  <38.049805, 42.800049, 49.751404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132446, 43.013569, 49.679436>,  <38.270184, 43.369434, 49.559490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132446, 43.013569, 49.679436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059040, 0.339283, 0.938830,
		-0.936984, 0.305579, -0.169357,
		-0.344347, -0.889668, 0.299861,
		38.029140, 42.746670, 49.769394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963551, 43.489868, 50.156845>,  <38.270184, 43.369434, 49.559490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963551, 43.489868, 50.156845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969543, 43.090553, 50.179455>,  <37.973141, 42.850964, 50.193020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969543, 43.090553, 50.179455>,  <37.963551, 43.489868, 50.156845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969543, 43.090553, 50.179455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086650, 0.055022, 0.994718,
		-0.996126, -0.019801, -0.085677,
		0.014982, -0.998289, 0.056524,
		37.974037, 42.791065, 50.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383526, 43.362793, 50.568176>,  <37.963551, 43.489868, 50.156845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383526, 43.362793, 50.568176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660946, 43.076710, 50.602734>,  <37.827396, 42.905060, 50.623470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660946, 43.076710, 50.602734>,  <37.383526, 43.362793, 50.568176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660946, 43.076710, 50.602734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087031, 0.035866, 0.995560,
		-0.715134, -0.697988, -0.037371,
		0.693548, -0.715211, 0.086396,
		37.869011, 42.862144, 50.628651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996983, 42.700645, 50.884430>,  <37.383526, 43.362793, 50.568176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996983, 42.700645, 50.884430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390282, 42.698112, 50.957287>,  <37.626263, 42.696594, 51.001003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390282, 42.698112, 50.957287>,  <36.996983, 42.700645, 50.884430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390282, 42.698112, 50.957287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180695, -0.164367, 0.969708,
		0.023804, -0.986379, -0.162757,
		0.983251, -0.006327, 0.182146,
		37.685257, 42.696213, 51.011932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697876, 42.546768, 51.563587>,  <36.996983, 42.700645, 50.884430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697876, 42.546768, 51.563587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314442, 42.561932, 51.676495>,  <36.084381, 42.571030, 51.744240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314442, 42.561932, 51.676495>,  <36.697876, 42.546768, 51.563587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314442, 42.561932, 51.676495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284722, -0.103929, -0.952960,
		-0.006785, -0.993862, 0.110417,
		-0.958586, 0.037904, 0.282269,
		36.026867, 42.573303, 51.761177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261124, 42.044109, 51.162815>,  <36.697876, 42.546768, 51.563587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261124, 42.044109, 51.162815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997810, 42.316696, 51.290733>,  <35.839825, 42.480247, 51.367485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997810, 42.316696, 51.290733>,  <36.261124, 42.044109, 51.162815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997810, 42.316696, 51.290733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427539, 0.011201, -0.903927,
		-0.619577, -0.731765, 0.283980,
		-0.658281, 0.681466, 0.319798,
		35.800327, 42.521137, 51.386673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639732, 41.772499, 50.964558>,  <36.261124, 42.044109, 51.162815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639732, 41.772499, 50.964558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573841, 42.158070, 51.048195>,  <35.534306, 42.389412, 51.098377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573841, 42.158070, 51.048195>,  <35.639732, 41.772499, 50.964558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573841, 42.158070, 51.048195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446190, 0.116235, -0.887358,
		-0.879648, -0.239467, 0.410945,
		-0.164727, 0.963922, 0.209094,
		35.524422, 42.447247, 51.110924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000145, 41.833649, 50.988033>,  <35.639732, 41.772499, 50.964558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000145, 41.833649, 50.988033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138790, 42.195824, 50.890018>,  <35.221977, 42.413128, 50.831207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138790, 42.195824, 50.890018>,  <35.000145, 41.833649, 50.988033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138790, 42.195824, 50.890018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532850, -0.024926, -0.845843,
		-0.771963, 0.423753, 0.473821,
		0.346618, 0.905435, -0.245039,
		35.242775, 42.467453, 50.816505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366665, 42.191193, 50.700535>,  <35.000145, 41.833649, 50.988033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366665, 42.191193, 50.700535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670261, 42.411922, 50.562305>,  <34.852421, 42.544361, 50.479366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670261, 42.411922, 50.562305>,  <34.366665, 42.191193, 50.700535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670261, 42.411922, 50.562305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461594, 0.081716, -0.883319,
		-0.459197, 0.829948, 0.316740,
		0.758992, 0.551823, -0.345575,
		34.897961, 42.577469, 50.458633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131935, 42.599758, 50.269512>,  <34.366665, 42.191193, 50.700535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131935, 42.599758, 50.269512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517403, 42.634945, 50.168629>,  <34.748684, 42.656059, 50.108097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517403, 42.634945, 50.168629>,  <34.131935, 42.599758, 50.269512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517403, 42.634945, 50.168629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239851, -0.130582, -0.961987,
		-0.117560, 0.987527, -0.104738,
		0.963665, 0.087970, -0.252211,
		34.806503, 42.661335, 50.092964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068878, 43.027878, 49.735519>,  <34.131935, 42.599758, 50.269512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068878, 43.027878, 49.735519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414890, 42.828922, 49.709221>,  <34.622498, 42.709549, 49.693443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414890, 42.828922, 49.709221>,  <34.068878, 43.027878, 49.735519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414890, 42.828922, 49.709221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131039, -0.097493, -0.986572,
		0.484298, 0.862033, -0.149512,
		0.865034, -0.497387, -0.065744,
		34.674400, 42.679707, 49.689499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407936, 43.360615, 49.136543>,  <34.068878, 43.027878, 49.735519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407936, 43.360615, 49.136543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565567, 42.997128, 49.191589>,  <34.660145, 42.779037, 49.224617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565567, 42.997128, 49.191589>,  <34.407936, 43.360615, 49.136543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565567, 42.997128, 49.191589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010983, -0.154373, -0.987952,
		0.919010, 0.387822, -0.070816,
		0.394081, -0.908715, 0.137611,
		34.683792, 42.724514, 49.232872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774487, 43.252457, 48.561924>,  <34.407936, 43.360615, 49.136543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774487, 43.252457, 48.561924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778999, 42.873760, 48.690639>,  <34.781708, 42.646542, 48.767868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778999, 42.873760, 48.690639>,  <34.774487, 43.252457, 48.561924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778999, 42.873760, 48.690639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005196, -0.321745, -0.946812,
		0.999923, 0.012356, 0.001289,
		0.011285, -0.946746, 0.321785,
		34.782383, 42.589737, 48.787174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253075, 42.928097, 48.146732>,  <34.774487, 43.252457, 48.561924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253075, 42.928097, 48.146732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046852, 42.626572, 48.309689>,  <34.923119, 42.445656, 48.407463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046852, 42.626572, 48.309689>,  <35.253075, 42.928097, 48.146732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046852, 42.626572, 48.309689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150025, -0.547515, -0.823238,
		0.843622, -0.363303, 0.395363,
		-0.515552, -0.753816, 0.407391,
		34.892185, 42.400425, 48.431908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713902, 42.299305, 48.115402>,  <35.253075, 42.928097, 48.146732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713902, 42.299305, 48.115402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323727, 42.212002, 48.127274>,  <35.089622, 42.159622, 48.134396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323727, 42.212002, 48.127274>,  <35.713902, 42.299305, 48.115402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323727, 42.212002, 48.127274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069933, -0.434660, -0.897875,
		0.208867, -0.873748, 0.439248,
		-0.975440, -0.218254, 0.029682,
		35.031094, 42.146526, 48.136177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692574, 41.603947, 48.016346>,  <35.713902, 42.299305, 48.115402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692574, 41.603947, 48.016346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325314, 41.725723, 47.914902>,  <35.104958, 41.798790, 47.854034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325314, 41.725723, 47.914902>,  <35.692574, 41.603947, 48.016346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325314, 41.725723, 47.914902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062293, -0.521177, -0.851172,
		-0.391310, -0.797300, 0.459553,
		-0.918148, 0.304445, -0.253608,
		35.049870, 41.817059, 47.838818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375835, 41.044575, 47.623371>,  <35.692574, 41.603947, 48.016346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375835, 41.044575, 47.623371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124683, 41.343338, 47.535831>,  <34.973991, 41.522598, 47.483307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124683, 41.343338, 47.535831>,  <35.375835, 41.044575, 47.623371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124683, 41.343338, 47.535831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102693, -0.358226, -0.927970,
		-0.771509, -0.560176, 0.301624,
		-0.627876, 0.746912, -0.218848,
		34.936321, 41.567413, 47.470177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937840, 40.844345, 47.161514>,  <35.375835, 41.044575, 47.623371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937840, 40.844345, 47.161514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.850681, 41.227806, 47.088303>,  <34.798386, 41.457886, 47.044376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.850681, 41.227806, 47.088303>,  <34.937840, 40.844345, 47.161514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850681, 41.227806, 47.088303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231898, -0.233016, -0.944419,
		-0.948022, -0.163340, 0.273083,
		-0.217894, 0.958657, -0.183026,
		34.785313, 41.515404, 47.033394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338840, 40.869400, 46.771816>,  <34.937840, 40.844345, 47.161514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338840, 40.869400, 46.771816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528851, 41.214222, 46.701145>,  <34.642857, 41.421116, 46.658741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528851, 41.214222, 46.701145>,  <34.338840, 40.869400, 46.771816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528851, 41.214222, 46.701145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220748, -0.077624, -0.972237,
		-0.851835, 0.500837, 0.153423,
		0.475023, 0.862054, -0.176682,
		34.671356, 41.472839, 46.648140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008179, 41.064529, 46.169830>,  <34.338840, 40.869400, 46.771816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008179, 41.064529, 46.169830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311192, 41.325401, 46.181190>,  <34.493000, 41.481926, 46.188007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311192, 41.325401, 46.181190>,  <34.008179, 41.064529, 46.169830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311192, 41.325401, 46.181190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048986, 0.100170, -0.993764,
		-0.650958, 0.751416, 0.107830,
		0.757532, 0.652180, 0.028397,
		34.538452, 41.521057, 46.189709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764748, 41.758369, 45.757065>,  <34.008179, 41.064529, 46.169830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764748, 41.758369, 45.757065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.159996, 41.697495, 45.765610>,  <34.397144, 41.660969, 45.770737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.159996, 41.697495, 45.765610>,  <33.764748, 41.758369, 45.757065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159996, 41.697495, 45.765610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043003, 0.140383, -0.989163,
		0.147541, 0.978331, 0.145260,
		0.988121, -0.152188, 0.021359,
		34.456432, 41.651836, 45.772018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136272, 42.289154, 45.471535>,  <33.764748, 41.758369, 45.757065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136272, 42.289154, 45.471535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397114, 41.987862, 45.437103>,  <34.553619, 41.807087, 45.416443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397114, 41.987862, 45.437103>,  <34.136272, 42.289154, 45.471535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397114, 41.987862, 45.437103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068993, 0.172029, -0.982673,
		0.754987, 0.634863, 0.164148,
		0.652101, -0.753230, -0.086079,
		34.592743, 41.761894, 45.411282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547649, 42.498428, 44.944923>,  <34.136272, 42.289154, 45.471535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547649, 42.498428, 44.944923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635433, 42.109882, 44.981346>,  <34.688103, 41.876755, 45.003201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635433, 42.109882, 44.981346>,  <34.547649, 42.498428, 44.944923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635433, 42.109882, 44.981346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142912, -0.060319, -0.987896,
		0.965098, 0.229813, 0.125582,
		0.219457, -0.971364, 0.091057,
		34.701271, 41.818474, 45.008663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033379, 42.425491, 44.462250>,  <34.547649, 42.498428, 44.944923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033379, 42.425491, 44.462250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913033, 42.047516, 44.513741>,  <34.840824, 41.820732, 44.544636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913033, 42.047516, 44.513741>,  <35.033379, 42.425491, 44.462250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913033, 42.047516, 44.513741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336527, -0.231497, -0.912776,
		0.892317, -0.231301, 0.387646,
		-0.300865, -0.944939, 0.128729,
		34.822773, 41.764034, 44.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590462, 41.948074, 44.233883>,  <35.033379, 42.425491, 44.462250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590462, 41.948074, 44.233883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255627, 41.729336, 44.227730>,  <35.054726, 41.598091, 44.224037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255627, 41.729336, 44.227730>,  <35.590462, 41.948074, 44.233883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255627, 41.729336, 44.227730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193403, -0.269512, -0.943376,
		0.511738, -0.792666, 0.331368,
		-0.837090, -0.546849, -0.015384,
		35.004501, 41.565281, 44.223114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.601513, 39.187794, 26.596525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899841, 39.419277, 26.464560>,  <44.078838, 39.558167, 26.385380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899841, 39.419277, 26.464560>,  <43.601513, 39.187794, 26.596525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899841, 39.419277, 26.464560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549941, 0.814385, 0.185313,
		0.375921, 0.043224, 0.925643,
		0.745820, 0.578712, -0.329915,
		44.123589, 39.592892, 26.365585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084530, 39.552479, 26.337420>,  <43.601513, 39.187794, 26.596525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084530, 39.552479, 26.337420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697601, 39.461178, 26.381598>,  <42.465446, 39.406399, 26.408104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697601, 39.461178, 26.381598>,  <43.084530, 39.552479, 26.337420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697601, 39.461178, 26.381598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065687, 0.195130, 0.978575,
		-0.244912, 0.953848, -0.173759,
		-0.967317, -0.228252, 0.110445,
		42.407406, 39.392704, 26.414732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851452, 39.999046, 26.796490>,  <43.084530, 39.552479, 26.337420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851452, 39.999046, 26.796490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586948, 39.699055, 26.802961>,  <42.428246, 39.519058, 26.806845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586948, 39.699055, 26.802961>,  <42.851452, 39.999046, 26.796490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586948, 39.699055, 26.802961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013426, 0.009734, 0.999862,
		-0.750036, 0.661387, 0.003633,
		-0.661260, -0.749982, 0.016181,
		42.388569, 39.474060, 26.807816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211258, 40.278744, 27.086241>,  <42.851452, 39.999046, 26.796490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211258, 40.278744, 27.086241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227459, 39.883709, 27.146938>,  <42.237179, 39.646687, 27.183357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227459, 39.883709, 27.146938>,  <42.211258, 40.278744, 27.086241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227459, 39.883709, 27.146938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138100, 0.155942, 0.978065,
		-0.989590, -0.018656, 0.142702,
		0.040500, -0.987590, 0.151743,
		42.239609, 39.587433, 27.192461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984531, 40.147526, 27.768147>,  <42.211258, 40.278744, 27.086241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984531, 40.147526, 27.768147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088585, 39.763435, 27.727573>,  <42.151016, 39.532982, 27.703230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088585, 39.763435, 27.727573>,  <41.984531, 40.147526, 27.768147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088585, 39.763435, 27.727573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071339, -0.085651, 0.993768,
		-0.962934, -0.265749, 0.046221,
		0.260134, -0.960230, -0.101434,
		42.166626, 39.475365, 27.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608150, 39.763447, 28.292307>,  <41.984531, 40.147526, 27.768147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608150, 39.763447, 28.292307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905750, 39.510750, 28.205256>,  <42.084309, 39.359131, 28.153025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905750, 39.510750, 28.205256>,  <41.608150, 39.763447, 28.292307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905750, 39.510750, 28.205256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058587, -0.262774, 0.963077,
		-0.665605, -0.729280, -0.158492,
		0.744001, -0.631743, -0.217630,
		42.128952, 39.321228, 28.139967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471928, 39.116364, 28.711742>,  <41.608150, 39.763447, 28.292307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471928, 39.116364, 28.711742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860973, 39.095516, 28.621143>,  <42.094402, 39.083008, 28.566784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860973, 39.095516, 28.621143>,  <41.471928, 39.116364, 28.711742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860973, 39.095516, 28.621143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191399, -0.373232, 0.907780,
		-0.131848, -0.926273, -0.353037,
		0.972616, -0.052118, -0.226498,
		42.152760, 39.079880, 28.553194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748768, 38.398262, 28.759024>,  <41.471928, 39.116364, 28.711742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748768, 38.398262, 28.759024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050617, 38.654640, 28.815208>,  <42.231728, 38.808468, 28.848919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050617, 38.654640, 28.815208>,  <41.748768, 38.398262, 28.759024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050617, 38.654640, 28.815208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124411, -0.349951, 0.928470,
		0.644254, -0.683172, -0.343823,
		0.754626, 0.640945, 0.140463,
		42.277004, 38.846924, 28.857347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360565, 37.992378, 29.174543>,  <41.748768, 38.398262, 28.759024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360565, 37.992378, 29.174543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478420, 38.371643, 29.222160>,  <42.549133, 38.599201, 29.250731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478420, 38.371643, 29.222160>,  <42.360565, 37.992378, 29.174543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478420, 38.371643, 29.222160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356841, -0.224728, 0.906731,
		0.886482, -0.224682, -0.404558,
		0.294642, 0.948164, 0.119042,
		42.566814, 38.656094, 29.257874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000080, 37.926521, 29.504927>,  <42.360565, 37.992378, 29.174543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000080, 37.926521, 29.504927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850624, 38.291683, 29.570662>,  <42.760952, 38.510780, 29.610102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850624, 38.291683, 29.570662>,  <43.000080, 37.926521, 29.504927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850624, 38.291683, 29.570662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391623, -0.005348, 0.920110,
		0.840849, 0.408144, -0.355515,
		-0.373636, 0.912902, 0.164336,
		42.738533, 38.565556, 29.619963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559048, 38.425335, 29.703936>,  <43.000080, 37.926521, 29.504927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559048, 38.425335, 29.703936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214344, 38.564575, 29.851551>,  <43.007523, 38.648121, 29.940121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214344, 38.564575, 29.851551>,  <43.559048, 38.425335, 29.703936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214344, 38.564575, 29.851551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363675, -0.083283, 0.927795,
		0.353700, 0.933751, -0.054825,
		-0.861764, 0.348099, 0.369039,
		42.955814, 38.669006, 29.962263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858383, 38.709541, 30.235510>,  <43.559048, 38.425335, 29.703936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858383, 38.709541, 30.235510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.465809, 38.719017, 30.311646>,  <43.230267, 38.724701, 30.357327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.465809, 38.719017, 30.311646>,  <43.858383, 38.709541, 30.235510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465809, 38.719017, 30.311646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190512, 0.005209, 0.981671,
		0.022263, 0.999706, -0.009625,
		-0.981432, 0.023689, 0.190340,
		43.171379, 38.726124, 30.368748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773670, 39.339645, 30.679598>,  <43.858383, 38.709541, 30.235510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773670, 39.339645, 30.679598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.488686, 39.067089, 30.746656>,  <43.317696, 38.903557, 30.786892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.488686, 39.067089, 30.746656>,  <43.773670, 39.339645, 30.679598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488686, 39.067089, 30.746656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094282, 0.143790, 0.985107,
		-0.695350, 0.717655, -0.038202,
		-0.712460, -0.681392, 0.167646,
		43.274948, 38.862671, 30.796949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438206, 39.571388, 31.290508>,  <43.773670, 39.339645, 30.679598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438206, 39.571388, 31.290508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328789, 39.186859, 31.277641>,  <43.263138, 38.956142, 31.269920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328789, 39.186859, 31.277641>,  <43.438206, 39.571388, 31.290508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328789, 39.186859, 31.277641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286505, -0.113359, 0.951349,
		-0.918198, 0.251020, 0.306432,
		-0.273544, -0.961321, -0.032168,
		43.246727, 38.898464, 31.267990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880314, 39.499832, 31.794275>,  <43.438206, 39.571388, 31.290508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880314, 39.499832, 31.794275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013058, 39.126934, 31.736610>,  <43.092705, 38.903194, 31.702011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013058, 39.126934, 31.736610>,  <42.880314, 39.499832, 31.794275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013058, 39.126934, 31.736610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109412, -0.189832, 0.975701,
		-0.936963, -0.308019, -0.164996,
		0.331856, -0.932249, -0.144164,
		43.112614, 38.847260, 31.693361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464760, 39.106319, 32.179848>,  <42.880314, 39.499832, 31.794275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464760, 39.106319, 32.179848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785526, 38.874496, 32.121822>,  <42.977985, 38.735401, 32.087006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785526, 38.874496, 32.121822>,  <42.464760, 39.106319, 32.179848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785526, 38.874496, 32.121822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026579, -0.277176, 0.960452,
		-0.596848, -0.766344, -0.237675,
		0.801914, -0.579561, -0.145064,
		43.026100, 38.700630, 32.078304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283821, 38.390556, 32.357594>,  <42.464760, 39.106319, 32.179848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283821, 38.390556, 32.357594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680679, 38.437622, 32.374573>,  <42.918793, 38.465862, 32.384762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680679, 38.437622, 32.374573>,  <42.283821, 38.390556, 32.357594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680679, 38.437622, 32.374573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015167, -0.223709, 0.974538,
		0.124165, -0.967527, -0.220168,
		0.992146, 0.117664, 0.042451,
		42.978325, 38.472919, 32.387310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419151, 37.773594, 32.779797>,  <42.283821, 38.390556, 32.357594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419151, 37.773594, 32.779797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751957, 37.995415, 32.773800>,  <42.951641, 38.128506, 32.770203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751957, 37.995415, 32.773800>,  <42.419151, 37.773594, 32.779797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751957, 37.995415, 32.773800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205184, -0.282521, 0.937060,
		0.515410, -0.782725, -0.348846,
		0.832017, 0.554548, -0.014988,
		43.001560, 38.161777, 32.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929886, 37.383949, 32.829052>,  <42.419151, 37.773594, 32.779797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929886, 37.383949, 32.829052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039833, 37.743458, 32.965668>,  <43.105801, 37.959164, 33.047638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039833, 37.743458, 32.965668>,  <42.929886, 37.383949, 32.829052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039833, 37.743458, 32.965668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111499, -0.382624, 0.917151,
		0.954996, -0.214011, -0.205383,
		0.274865, 0.898776, 0.341542,
		43.122292, 38.013092, 33.068130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513092, 37.169750, 33.323570>,  <42.929886, 37.383949, 32.829052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513092, 37.169750, 33.323570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394463, 37.542488, 33.407204>,  <43.323284, 37.766132, 33.457382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394463, 37.542488, 33.407204>,  <43.513092, 37.169750, 33.323570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394463, 37.542488, 33.407204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018180, -0.213380, 0.976800,
		0.954838, 0.293491, 0.046341,
		-0.296570, 0.931843, 0.209079,
		43.305492, 37.822041, 33.469929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055023, 37.462486, 33.809986>,  <43.513092, 37.169750, 33.323570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055023, 37.462486, 33.809986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716537, 37.670433, 33.856728>,  <43.513443, 37.795200, 33.884773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716537, 37.670433, 33.856728>,  <44.055023, 37.462486, 33.809986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716537, 37.670433, 33.856728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067073, -0.321493, 0.944534,
		0.528597, 0.791444, 0.306922,
		-0.846219, 0.519863, 0.116855,
		43.462673, 37.826393, 33.891785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784077, 37.391674, 33.578182>,  <44.055023, 37.462486, 33.809986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784077, 37.391674, 33.578182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.132748, 37.197651, 33.606144>,  <45.341949, 37.081238, 33.622921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.132748, 37.197651, 33.606144>,  <44.784077, 37.391674, 33.578182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132748, 37.197651, 33.606144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390575, 0.601441, -0.696936,
		0.296010, 0.634811, 0.713718,
		0.871681, -0.485061, 0.069909,
		45.394253, 37.052132, 33.627117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326454, 37.882378, 33.761120>,  <44.784077, 37.391674, 33.578182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326454, 37.882378, 33.761120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488449, 37.590240, 33.541088>,  <45.585648, 37.414959, 33.409069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488449, 37.590240, 33.541088>,  <45.326454, 37.882378, 33.761120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488449, 37.590240, 33.541088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339677, 0.678745, -0.651095,
		0.848885, 0.076837, 0.522963,
		0.404987, -0.730343, -0.550077,
		45.609943, 37.371136, 33.376064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708565, 38.216122, 33.198463>,  <45.326454, 37.882378, 33.761120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708565, 38.216122, 33.198463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.649242, 37.842995, 33.067101>,  <45.613647, 37.619118, 32.988281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.649242, 37.842995, 33.067101>,  <45.708565, 38.216122, 33.198463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649242, 37.842995, 33.067101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242768, 0.287578, -0.926479,
		0.958680, -0.217132, 0.183808,
		-0.148309, -0.932820, -0.328408,
		45.604752, 37.563148, 32.968578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.300804, 38.235073, 32.817940>,  <45.708565, 38.216122, 33.198463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.300804, 38.235073, 32.817940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.050751, 37.957745, 32.674538>,  <45.900719, 37.791348, 32.588497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.050751, 37.957745, 32.674538>,  <46.300804, 38.235073, 32.817940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050751, 37.957745, 32.674538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211651, 0.291525, -0.932854,
		0.751276, -0.659033, -0.035500,
		-0.625130, -0.693318, -0.358501,
		45.863213, 37.749748, 32.566986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674019, 37.980995, 32.279537>,  <46.300804, 38.235073, 32.817940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674019, 37.980995, 32.279537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.294968, 37.878838, 32.202831>,  <46.067535, 37.817543, 32.156807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.294968, 37.878838, 32.202831>,  <46.674019, 37.980995, 32.279537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294968, 37.878838, 32.202831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111059, 0.299444, -0.947628,
		0.299444, -0.919296, -0.255398,
		0.947628, 0.255398, 0.191763,
		46.010681, 37.802219, 32.145302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715897, 37.642750, 31.590361>,  <46.674019, 37.980995, 32.279537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715897, 37.642750, 31.590361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.335781, 37.749607, 31.654331>,  <46.107712, 37.813721, 31.692713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.335781, 37.749607, 31.654331>,  <46.715897, 37.642750, 31.590361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335781, 37.749607, 31.654331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088009, 0.262224, -0.960985,
		-0.298659, -0.927293, -0.225678,
		-0.950293, 0.267145, 0.159926,
		46.050694, 37.829750, 31.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445141, 37.407803, 30.936882>,  <46.715897, 37.642750, 31.590361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445141, 37.407803, 30.936882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181366, 37.665012, 31.092653>,  <46.023102, 37.819340, 31.186117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181366, 37.665012, 31.092653>,  <46.445141, 37.407803, 30.936882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181366, 37.665012, 31.092653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175111, 0.372386, -0.911408,
		-0.731079, -0.669211, -0.132964,
		-0.659439, 0.643028, 0.389430,
		45.983536, 37.857922, 31.209482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883289, 37.370182, 30.498058>,  <46.445141, 37.407803, 30.936882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883289, 37.370182, 30.498058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.821888, 37.731129, 30.659143>,  <45.785046, 37.947697, 30.755795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.821888, 37.731129, 30.659143>,  <45.883289, 37.370182, 30.498058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821888, 37.731129, 30.659143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147465, 0.382062, -0.912295,
		-0.977083, -0.199426, 0.074419,
		-0.153503, 0.902362, 0.402715,
		45.775837, 38.001839, 30.779959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370098, 37.586769, 30.249229>,  <45.883289, 37.370182, 30.498058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370098, 37.586769, 30.249229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539772, 37.926979, 30.373604>,  <45.641575, 38.131104, 30.448229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539772, 37.926979, 30.373604>,  <45.370098, 37.586769, 30.249229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539772, 37.926979, 30.373604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119635, 0.392980, -0.911731,
		-0.897639, 0.349543, 0.268448,
		0.424184, 0.850521, 0.310936,
		45.667027, 38.182137, 30.466885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876316, 38.138485, 29.992094>,  <45.370098, 37.586769, 30.249229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876316, 38.138485, 29.992094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227821, 38.320168, 30.050707>,  <45.438725, 38.429176, 30.085875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227821, 38.320168, 30.050707>,  <44.876316, 38.138485, 29.992094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227821, 38.320168, 30.050707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072188, 0.429992, -0.899942,
		-0.471766, 0.780259, 0.410650,
		0.878764, 0.454206, 0.146530,
		45.491451, 38.456429, 30.094666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725891, 38.918179, 29.999226>,  <44.876316, 38.138485, 29.992094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725891, 38.918179, 29.999226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114460, 38.873085, 29.915670>,  <45.347599, 38.846027, 29.865538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114460, 38.873085, 29.915670>,  <44.725891, 38.918179, 29.999226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114460, 38.873085, 29.915670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117562, 0.535998, -0.835994,
		0.206208, 0.836658, 0.507426,
		0.971420, -0.112735, -0.208886,
		45.405888, 38.839264, 29.853004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846382, 39.582523, 29.779850>,  <44.725891, 38.918179, 29.999226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846382, 39.582523, 29.779850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.144505, 39.350296, 29.648724>,  <45.323380, 39.210960, 29.570047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.144505, 39.350296, 29.648724>,  <44.846382, 39.582523, 29.779850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144505, 39.350296, 29.648724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042653, 0.449157, -0.892434,
		0.665357, 0.679119, 0.309996,
		0.745306, -0.580565, -0.327816,
		45.368095, 39.176125, 29.550379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348259, 40.025715, 29.539371>,  <44.846382, 39.582523, 29.779850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348259, 40.025715, 29.539371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432487, 39.676224, 29.363981>,  <45.483025, 39.466530, 29.258747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432487, 39.676224, 29.363981>,  <45.348259, 40.025715, 29.539371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432487, 39.676224, 29.363981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055971, 0.458574, -0.886892,
		0.975974, 0.162216, 0.145468,
		0.210576, -0.873725, -0.438477,
		45.495659, 39.414104, 29.232439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930515, 40.218304, 29.121084>,  <45.348259, 40.025715, 29.539371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930515, 40.218304, 29.121084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778900, 39.881542, 28.967443>,  <45.687931, 39.679485, 28.875259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778900, 39.881542, 28.967443>,  <45.930515, 40.218304, 29.121084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778900, 39.881542, 28.967443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025208, 0.424315, -0.905164,
		0.925038, -0.333408, -0.182054,
		-0.379037, -0.841900, -0.384103,
		45.665188, 39.628971, 28.852213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371143, 39.963993, 28.653790>,  <45.930515, 40.218304, 29.121084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371143, 39.963993, 28.653790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018654, 39.796112, 28.566803>,  <45.807159, 39.695385, 28.514610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018654, 39.796112, 28.566803>,  <46.371143, 39.963993, 28.653790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018654, 39.796112, 28.566803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012174, 0.439751, -0.898037,
		0.472544, -0.794018, -0.382409,
		-0.881223, -0.419707, -0.217468,
		45.754288, 39.670200, 28.501562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416279, 39.767185, 27.952629>,  <46.371143, 39.963993, 28.653790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416279, 39.767185, 27.952629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025146, 39.802979, 28.028362>,  <45.790466, 39.824455, 28.073803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025146, 39.802979, 28.028362>,  <46.416279, 39.767185, 27.952629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025146, 39.802979, 28.028362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125635, 0.472651, -0.872248,
		-0.167545, -0.876694, -0.450928,
		-0.977827, 0.089489, 0.189333,
		45.731800, 39.829826, 28.085163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056210, 39.763157, 27.275341>,  <46.416279, 39.767185, 27.952629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056210, 39.763157, 27.275341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806572, 39.952171, 27.524250>,  <45.656792, 40.065578, 27.673595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806572, 39.952171, 27.524250>,  <46.056210, 39.763157, 27.275341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806572, 39.952171, 27.524250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359832, 0.533108, -0.765713,
		-0.693565, -0.701787, -0.162673,
		-0.624089, 0.472537, 0.622271,
		45.619347, 40.093933, 27.710932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476471, 39.871353, 27.013746>,  <46.056210, 39.763157, 27.275341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476471, 39.871353, 27.013746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.431904, 40.161274, 27.285700>,  <45.405163, 40.335228, 27.448872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.431904, 40.161274, 27.285700>,  <45.476471, 39.871353, 27.013746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431904, 40.161274, 27.285700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357611, 0.609071, -0.707917,
		-0.927200, -0.322010, 0.191336,
		-0.111419, 0.724805, 0.679885,
		45.398479, 40.378716, 27.489666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928261, 40.190155, 26.815678>,  <45.476471, 39.871353, 27.013746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928261, 40.190155, 26.815678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068272, 40.472889, 27.061560>,  <45.152279, 40.642529, 27.209089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068272, 40.472889, 27.061560>,  <44.928261, 40.190155, 26.815678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068272, 40.472889, 27.061560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201002, 0.697610, -0.687705,
		-0.914919, 0.117161, 0.386261,
		0.350032, 0.706833, 0.614707,
		45.173283, 40.684940, 27.245972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557564, 40.703106, 26.604294>,  <44.928261, 40.190155, 26.815678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557564, 40.703106, 26.604294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.842812, 40.875477, 26.825476>,  <45.013962, 40.978901, 26.958185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.842812, 40.875477, 26.825476>,  <44.557564, 40.703106, 26.604294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842812, 40.875477, 26.825476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185390, 0.876604, -0.444068,
		-0.676083, 0.214163, 0.705015,
		0.713122, 0.430929, 0.552953,
		45.056747, 41.004757, 26.991362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219631, 41.206696, 27.041090>,  <44.557564, 40.703106, 26.604294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219631, 41.206696, 27.041090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599838, 41.285782, 26.945240>,  <44.827965, 41.333233, 26.887730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599838, 41.285782, 26.945240>,  <44.219631, 41.206696, 27.041090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599838, 41.285782, 26.945240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288999, 0.845759, -0.448521,
		0.113982, 0.495578, 0.861052,
		0.950520, 0.197720, -0.239623,
		44.884995, 41.345097, 26.873354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.315727, 40.311924, 40.319386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078327, 39.989990, 40.319534>,  <37.935886, 39.796829, 40.319622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078327, 39.989990, 40.319534>,  <38.315727, 40.311924, 40.319386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078327, 39.989990, 40.319534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457757, -0.337942, -0.822347,
		0.661976, -0.487896, 0.568987,
		-0.593504, -0.804831, 0.000372,
		37.900276, 39.748543, 40.319645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729637, 39.675060, 40.324211>,  <38.315727, 40.311924, 40.319386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729637, 39.675060, 40.324211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371185, 39.578564, 40.175213>,  <38.156113, 39.520668, 40.085815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371185, 39.578564, 40.175213>,  <38.729637, 39.675060, 40.324211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371185, 39.578564, 40.175213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427546, -0.244307, -0.870355,
		0.118960, -0.939211, 0.322072,
		-0.896132, -0.241238, -0.372493,
		38.102345, 39.506191, 40.063465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885342, 39.050701, 39.933487>,  <38.729637, 39.675060, 40.324211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885342, 39.050701, 39.933487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520473, 39.162491, 39.813591>,  <38.301552, 39.229565, 39.741653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520473, 39.162491, 39.813591>,  <38.885342, 39.050701, 39.933487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520473, 39.162491, 39.813591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142998, -0.468382, -0.871877,
		-0.384058, -0.838161, 0.387279,
		-0.912168, 0.279472, -0.299741,
		38.246822, 39.246334, 39.723667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530998, 38.478378, 39.615154>,  <38.885342, 39.050701, 39.933487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530998, 38.478378, 39.615154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383789, 38.803432, 39.434406>,  <38.295464, 38.998463, 39.325958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383789, 38.803432, 39.434406>,  <38.530998, 38.478378, 39.615154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383789, 38.803432, 39.434406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167808, -0.419949, -0.891899,
		-0.914548, -0.404068, 0.018186,
		-0.368025, 0.812632, -0.451870,
		38.273380, 39.047222, 39.298847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102634, 38.246765, 39.108425>,  <38.530998, 38.478378, 39.615154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102634, 38.246765, 39.108425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183887, 38.618980, 38.986553>,  <38.232639, 38.842312, 38.913429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183887, 38.618980, 38.986553>,  <38.102634, 38.246765, 39.108425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183887, 38.618980, 38.986553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099961, -0.329251, -0.938936,
		-0.974036, 0.160272, -0.159899,
		0.203132, 0.930541, -0.304681,
		38.244827, 38.898144, 38.895149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796257, 38.328316, 38.459034>,  <38.102634, 38.246765, 39.108425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796257, 38.328316, 38.459034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079273, 38.610687, 38.472027>,  <38.249081, 38.780109, 38.479820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079273, 38.610687, 38.472027>,  <37.796257, 38.328316, 38.459034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079273, 38.610687, 38.472027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200447, -0.156406, -0.967139,
		-0.677650, 0.690799, -0.252165,
		0.707539, 0.705928, 0.032480,
		38.291534, 38.822464, 38.481770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645367, 38.782715, 37.930138>,  <37.796257, 38.328316, 38.459034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645367, 38.782715, 37.930138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023586, 38.889080, 38.005222>,  <38.250519, 38.952900, 38.050274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023586, 38.889080, 38.005222>,  <37.645367, 38.782715, 37.930138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023586, 38.889080, 38.005222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192852, 0.006901, -0.981204,
		-0.262209, 0.963973, -0.044757,
		0.945544, 0.265912, 0.187714,
		38.307251, 38.968853, 38.061535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739826, 39.311363, 37.422966>,  <37.645367, 38.782715, 37.930138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739826, 39.311363, 37.422966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110928, 39.188740, 37.508106>,  <38.333588, 39.115166, 37.559189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110928, 39.188740, 37.508106>,  <37.739826, 39.311363, 37.422966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110928, 39.188740, 37.508106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213547, -0.031680, -0.976419,
		0.306072, 0.951325, 0.036073,
		0.927749, -0.306558, 0.212849,
		38.389252, 39.096771, 37.571960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201542, 39.777870, 37.099804>,  <37.739826, 39.311363, 37.422966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201542, 39.777870, 37.099804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373188, 39.420841, 37.155205>,  <38.476173, 39.206623, 37.188446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373188, 39.420841, 37.155205>,  <38.201542, 39.777870, 37.099804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373188, 39.420841, 37.155205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343435, 0.019407, -0.938976,
		0.835413, 0.450493, 0.314867,
		0.429113, -0.892569, 0.138502,
		38.501923, 39.153072, 37.196754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826839, 39.847038, 36.736530>,  <38.201542, 39.777870, 37.099804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826839, 39.847038, 36.736530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791443, 39.451626, 36.785473>,  <38.770203, 39.214378, 36.814838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791443, 39.451626, 36.785473>,  <38.826839, 39.847038, 36.736530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791443, 39.451626, 36.785473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278272, -0.142483, -0.949876,
		0.956417, -0.050010, 0.287690,
		-0.088494, -0.988533, 0.122357,
		38.764896, 39.155067, 36.822182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398201, 39.618923, 36.346043>,  <38.826839, 39.847038, 36.736530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398201, 39.618923, 36.346043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179379, 39.285019, 36.371025>,  <39.048084, 39.084675, 36.386013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179379, 39.285019, 36.371025>,  <39.398201, 39.618923, 36.346043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179379, 39.285019, 36.371025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344700, -0.292630, -0.891936,
		0.762829, -0.466413, 0.447828,
		-0.547059, -0.834761, 0.062454,
		39.015263, 39.034592, 36.389763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826447, 39.060421, 36.031403>,  <39.398201, 39.618923, 36.346043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826447, 39.060421, 36.031403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452713, 38.918751, 36.015503>,  <39.228474, 38.833748, 36.005962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452713, 38.918751, 36.015503>,  <39.826447, 39.060421, 36.031403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452713, 38.918751, 36.015503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235136, -0.528786, -0.815534,
		0.267826, -0.771327, 0.577342,
		-0.934334, -0.354175, -0.039744,
		39.172413, 38.812500, 36.003578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877388, 38.361679, 35.789120>,  <39.826447, 39.060421, 36.031403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877388, 38.361679, 35.789120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501598, 38.479408, 35.718967>,  <39.276123, 38.550045, 35.676876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501598, 38.479408, 35.718967>,  <39.877388, 38.361679, 35.789120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501598, 38.479408, 35.718967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024909, -0.451866, -0.891738,
		-0.341708, -0.842135, 0.417186,
		-0.939476, 0.294322, -0.175383,
		39.219757, 38.567707, 35.666351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553650, 38.678825, 35.775066>,  <39.877388, 38.361679, 35.789120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553650, 38.678825, 35.775066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581047, 38.994099, 36.019714>,  <40.597485, 39.183262, 36.166504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581047, 38.994099, 36.019714>,  <40.553650, 38.678825, 35.775066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581047, 38.994099, 36.019714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433169, -0.528767, 0.729912,
		0.898707, -0.314929, 0.305198,
		0.068492, 0.788179, 0.611624,
		40.601593, 39.230553, 36.203201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535995, 37.985096, 36.094913>,  <40.553650, 38.678825, 35.775066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535995, 37.985096, 36.094913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859001, 37.750462, 36.119663>,  <41.052807, 37.609680, 36.134514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859001, 37.750462, 36.119663>,  <40.535995, 37.985096, 36.094913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859001, 37.750462, 36.119663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084739, -0.011558, 0.996336,
		-0.583723, -0.809803, -0.059040,
		0.807519, -0.586587, 0.061875,
		41.101257, 37.574486, 36.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315830, 37.489544, 36.545078>,  <40.535995, 37.985096, 36.094913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315830, 37.489544, 36.545078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715328, 37.477829, 36.528854>,  <40.955029, 37.470798, 36.519119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715328, 37.477829, 36.528854>,  <40.315830, 37.489544, 36.545078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715328, 37.477829, 36.528854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042522, 0.069784, 0.996656,
		-0.026366, -0.997132, 0.070942,
		0.998748, -0.029295, -0.040560,
		41.014954, 37.469040, 36.516685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486645, 36.896229, 36.970173>,  <40.315830, 37.489544, 36.545078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486645, 36.896229, 36.970173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820095, 37.116550, 36.953766>,  <41.020164, 37.248745, 36.943920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820095, 37.116550, 36.953766>,  <40.486645, 36.896229, 36.970173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820095, 37.116550, 36.953766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043452, 0.008641, 0.999018,
		0.550623, -0.834587, -0.016731,
		0.833622, 0.550809, -0.041022,
		41.070183, 37.281792, 36.941460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830509, 36.688110, 37.585434>,  <40.486645, 36.896229, 36.970173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830509, 36.688110, 37.585434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003231, 37.035786, 37.489052>,  <41.106865, 37.244392, 37.431225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003231, 37.035786, 37.489052>,  <40.830509, 36.688110, 37.585434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003231, 37.035786, 37.489052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174055, 0.181821, 0.967805,
		0.885014, -0.459841, -0.072775,
		0.431804, 0.869188, -0.240952,
		41.132771, 37.296543, 37.416767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465706, 36.737759, 37.964993>,  <40.830509, 36.688110, 37.585434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465706, 36.737759, 37.964993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330742, 37.105877, 37.885792>,  <41.249763, 37.326748, 37.838272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330742, 37.105877, 37.885792>,  <41.465706, 36.737759, 37.964993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330742, 37.105877, 37.885792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126367, 0.252716, 0.959253,
		0.932839, 0.298637, -0.201564,
		-0.337407, 0.920299, -0.198006,
		41.229519, 37.381966, 37.826389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879856, 37.178444, 38.388638>,  <41.465706, 36.737759, 37.964993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879856, 37.178444, 38.388638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576141, 37.420227, 38.292213>,  <41.393913, 37.565296, 38.234360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576141, 37.420227, 38.292213>,  <41.879856, 37.178444, 38.388638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576141, 37.420227, 38.292213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146226, 0.202488, 0.968306,
		0.634111, 0.770475, -0.065360,
		-0.759290, 0.604456, -0.241063,
		41.348354, 37.601562, 38.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038265, 37.796543, 38.780312>,  <41.879856, 37.178444, 38.388638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038265, 37.796543, 38.780312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652859, 37.814655, 38.674797>,  <41.421616, 37.825523, 38.611488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652859, 37.814655, 38.674797>,  <42.038265, 37.796543, 38.780312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652859, 37.814655, 38.674797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229135, 0.369779, 0.900423,
		0.138316, 0.928016, -0.345913,
		-0.963518, 0.045282, -0.263787,
		41.363804, 37.828239, 38.595661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828342, 38.343521, 39.180973>,  <42.038265, 37.796543, 38.780312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828342, 38.343521, 39.180973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483337, 38.172867, 39.072124>,  <41.276333, 38.070473, 39.006817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483337, 38.172867, 39.072124>,  <41.828342, 38.343521, 39.180973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483337, 38.172867, 39.072124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408657, 0.270108, 0.871803,
		-0.298441, 0.863147, -0.407320,
		-0.862515, -0.426636, -0.272120,
		41.224583, 38.044876, 38.990490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251499, 38.861359, 39.384586>,  <41.828342, 38.343521, 39.180973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251499, 38.861359, 39.384586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106716, 38.488686, 39.372227>,  <41.019848, 38.265083, 39.364811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106716, 38.488686, 39.372227>,  <41.251499, 38.861359, 39.384586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106716, 38.488686, 39.372227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530208, 0.178497, 0.828866,
		-0.766725, 0.316394, -0.558594,
		-0.361955, -0.931684, -0.030896,
		40.998131, 38.209179, 39.362957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538265, 38.800201, 39.471409>,  <41.251499, 38.861359, 39.384586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538265, 38.800201, 39.471409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622021, 38.420654, 39.565899>,  <40.672276, 38.192924, 39.622593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622021, 38.420654, 39.565899>,  <40.538265, 38.800201, 39.471409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622021, 38.420654, 39.565899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625760, 0.055604, 0.778031,
		-0.751386, -0.310730, -0.582122,
		0.209389, -0.948870, 0.236223,
		40.684837, 38.135994, 39.636765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918530, 38.588734, 39.646198>,  <40.538265, 38.800201, 39.471409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918530, 38.588734, 39.646198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169220, 38.323250, 39.809521>,  <40.319633, 38.163960, 39.907513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169220, 38.323250, 39.809521>,  <39.918530, 38.588734, 39.646198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169220, 38.323250, 39.809521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548895, -0.004087, 0.835881,
		-0.553113, -0.747980, -0.366868,
		0.626722, -0.663709, 0.408302,
		40.357235, 38.124138, 39.932011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499165, 38.153122, 39.989594>,  <39.918530, 38.588734, 39.646198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499165, 38.153122, 39.989594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858780, 38.073147, 40.145412>,  <40.074551, 38.025162, 40.238903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858780, 38.073147, 40.145412>,  <39.499165, 38.153122, 39.989594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858780, 38.073147, 40.145412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412572, -0.088830, 0.906583,
		-0.146661, -0.975773, -0.162353,
		0.899041, -0.199942, 0.389549,
		40.128494, 38.013165, 40.262276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345917, 37.649712, 40.459381>,  <39.499165, 38.153122, 39.989594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345917, 37.649712, 40.459381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695141, 37.809090, 40.571819>,  <39.904675, 37.904716, 40.639282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695141, 37.809090, 40.571819>,  <39.345917, 37.649712, 40.459381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695141, 37.809090, 40.571819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279542, -0.063364, 0.958040,
		0.399537, -0.915001, 0.056062,
		0.873056, 0.398444, 0.281097,
		39.957058, 37.928623, 40.656147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473068, 37.264572, 41.142075>,  <39.345917, 37.649712, 40.459381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473068, 37.264572, 41.142075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681980, 37.605679, 41.140518>,  <39.807327, 37.810341, 41.139584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681980, 37.605679, 41.140518>,  <39.473068, 37.264572, 41.142075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681980, 37.605679, 41.140518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110823, 0.072394, 0.991200,
		0.845541, -0.517255, 0.132315,
		0.522282, 0.852764, -0.003888,
		39.838665, 37.861507, 41.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323524, 36.608334, 41.059792>,  <39.473068, 37.264572, 41.142075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323524, 36.608334, 41.059792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988747, 36.419224, 41.170071>,  <38.787880, 36.305759, 41.236237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988747, 36.419224, 41.170071>,  <39.323524, 36.608334, 41.059792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988747, 36.419224, 41.170071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193332, -0.215866, -0.957092,
		0.512001, -0.854334, 0.089265,
		-0.836945, -0.472774, 0.275694,
		38.737663, 36.277393, 41.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318447, 35.932701, 40.696358>,  <39.323524, 36.608334, 41.059792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318447, 35.932701, 40.696358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945660, 35.983440, 40.832211>,  <38.721989, 36.013882, 40.913723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945660, 35.983440, 40.832211>,  <39.318447, 35.932701, 40.696358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945660, 35.983440, 40.832211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362542, -0.330567, -0.871372,
		0.001742, -0.935220, 0.354064,
		-0.931966, 0.126845, 0.339632,
		38.666069, 36.021496, 40.934101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863338, 35.376209, 40.436485>,  <39.318447, 35.932701, 40.696358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863338, 35.376209, 40.436485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598263, 35.668224, 40.503292>,  <38.439217, 35.843433, 40.543377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598263, 35.668224, 40.503292>,  <38.863338, 35.376209, 40.436485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598263, 35.668224, 40.503292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541965, -0.313591, -0.779702,
		-0.516838, -0.607212, 0.603467,
		-0.662686, 0.730037, 0.167012,
		38.399456, 35.887234, 40.553394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186737, 35.063965, 40.351013>,  <38.863338, 35.376209, 40.436485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186737, 35.063965, 40.351013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166035, 35.458485, 40.288364>,  <38.153614, 35.695198, 40.250774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166035, 35.458485, 40.288364>,  <38.186737, 35.063965, 40.351013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166035, 35.458485, 40.288364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490127, -0.161731, -0.856515,
		-0.870113, 0.032438, 0.491783,
		-0.051753, 0.986301, -0.156623,
		38.150509, 35.754375, 40.241379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541718, 35.118462, 40.191135>,  <38.186737, 35.063965, 40.351013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541718, 35.118462, 40.191135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666763, 35.481918, 40.080395>,  <37.741791, 35.699993, 40.013950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666763, 35.481918, 40.080395>,  <37.541718, 35.118462, 40.191135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666763, 35.481918, 40.080395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655316, -0.004679, -0.755340,
		-0.687626, 0.417558, 0.593983,
		0.312619, 0.908638, -0.276850,
		37.760548, 35.754509, 39.997341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965092, 35.591625, 40.169224>,  <37.541718, 35.118462, 40.191135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965092, 35.591625, 40.169224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241650, 35.729721, 39.915363>,  <37.407585, 35.812576, 39.763046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241650, 35.729721, 39.915363>,  <36.965092, 35.591625, 40.169224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241650, 35.729721, 39.915363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672386, -0.013927, -0.740070,
		-0.264339, 0.938412, 0.222504,
		0.691392, 0.345238, -0.634656,
		37.449066, 35.833294, 39.724968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604984, 36.119843, 39.853825>,  <36.965092, 35.591625, 40.169224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604984, 36.119843, 39.853825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895351, 36.006981, 39.602928>,  <37.069572, 35.939262, 39.452393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895351, 36.006981, 39.602928>,  <36.604984, 36.119843, 39.853825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895351, 36.006981, 39.602928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628714, 0.097526, -0.771497,
		0.278855, 0.954399, -0.106600,
		0.725919, -0.282157, -0.627240,
		37.113129, 35.922333, 39.414757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447823, 36.524990, 39.295300>,  <36.604984, 36.119843, 39.853825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447823, 36.524990, 39.295300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697937, 36.250610, 39.146442>,  <36.848007, 36.085983, 39.057129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697937, 36.250610, 39.146442>,  <36.447823, 36.524990, 39.295300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697937, 36.250610, 39.146442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473173, 0.045969, -0.879769,
		0.620585, 0.726195, -0.295830,
		0.625285, -0.685950, -0.372143,
		36.885521, 36.044827, 39.034798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530212, 36.744102, 38.588383>,  <36.447823, 36.524990, 39.295300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530212, 36.744102, 38.588383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635479, 36.358208, 38.590546>,  <36.698639, 36.126671, 38.591843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635479, 36.358208, 38.590546>,  <36.530212, 36.744102, 38.588383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635479, 36.358208, 38.590546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485433, -0.137258, -0.863432,
		0.833724, 0.224606, -0.504436,
		0.263170, -0.964734, 0.005404,
		36.714432, 36.068787, 38.592167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910748, 36.670670, 37.960522>,  <36.530212, 36.744102, 38.588383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910748, 36.670670, 37.960522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773445, 36.316669, 38.086353>,  <36.691063, 36.104271, 38.161854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773445, 36.316669, 38.086353>,  <36.910748, 36.670670, 37.960522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773445, 36.316669, 38.086353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265677, -0.229765, -0.936282,
		0.900885, -0.404956, -0.156256,
		-0.343251, -0.884996, 0.314580,
		36.670471, 36.051170, 38.180729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140354, 36.313606, 37.450912>,  <36.910748, 36.670670, 37.960522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140354, 36.313606, 37.450912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838989, 36.111019, 37.618660>,  <36.658173, 35.989468, 37.719307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838989, 36.111019, 37.618660>,  <37.140354, 36.313606, 37.450912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838989, 36.111019, 37.618660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355222, -0.223210, -0.907742,
		0.553346, -0.832869, -0.011739,
		-0.753410, -0.506465, 0.419365,
		36.612965, 35.959080, 37.744469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051567, 35.566795, 37.207893>,  <37.140354, 36.313606, 37.450912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051567, 35.566795, 37.207893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703472, 35.720966, 37.330620>,  <36.494617, 35.813469, 37.404255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703472, 35.720966, 37.330620>,  <37.051567, 35.566795, 37.207893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703472, 35.720966, 37.330620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454810, -0.389226, -0.801031,
		-0.189320, -0.836628, 0.514015,
		-0.870233, 0.385430, 0.306819,
		36.442402, 35.836597, 37.422665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.873302, 35.908566, 45.070301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.494698, 36.035873, 45.049053>,  <39.267536, 36.112259, 45.036304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.494698, 36.035873, 45.049053>,  <39.873302, 35.908566, 45.070301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494698, 36.035873, 45.049053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045594, -0.294880, -0.954446,
		-0.319445, -0.900968, 0.293618,
		-0.946507, 0.318280, -0.053119,
		39.210743, 36.131355, 45.033119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558578, 35.402668, 44.611134>,  <39.873302, 35.908566, 45.070301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558578, 35.402668, 44.611134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303268, 35.710499, 44.618664>,  <39.150082, 35.895195, 44.623180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303268, 35.710499, 44.618664>,  <39.558578, 35.402668, 44.611134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303268, 35.710499, 44.618664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240123, -0.175801, -0.954691,
		-0.731396, -0.613880, 0.297003,
		-0.638279, 0.769575, 0.018826,
		39.111786, 35.941372, 44.624313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922806, 35.159363, 44.222126>,  <39.558578, 35.402668, 44.611134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922806, 35.159363, 44.222126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.917988, 35.559258, 44.214256>,  <38.915096, 35.799194, 44.209534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.917988, 35.559258, 44.214256>,  <38.922806, 35.159363, 44.222126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917988, 35.559258, 44.214256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454492, -0.023002, -0.890454,
		-0.890670, -0.001781, 0.454648,
		-0.012043, 0.999734, -0.019678,
		38.914375, 35.859177, 44.208351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219166, 35.427052, 43.856045>,  <38.922806, 35.159363, 44.222126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219166, 35.427052, 43.856045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473511, 35.735142, 43.836327>,  <38.626118, 35.919994, 43.824497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473511, 35.735142, 43.836327>,  <38.219166, 35.427052, 43.856045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473511, 35.735142, 43.836327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356891, 0.236799, -0.903634,
		-0.684329, 0.592182, 0.425459,
		0.635864, 0.770225, -0.049296,
		38.664268, 35.966209, 43.821537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850334, 35.875233, 43.456276>,  <38.219166, 35.427052, 43.856045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850334, 35.875233, 43.456276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222412, 36.018051, 43.422192>,  <38.445660, 36.103741, 43.401741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222412, 36.018051, 43.422192>,  <37.850334, 35.875233, 43.456276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222412, 36.018051, 43.422192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135070, 0.117069, -0.983896,
		-0.341318, 0.926722, 0.157123,
		0.930192, 0.357044, -0.085215,
		38.501469, 36.125164, 43.396626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818817, 36.451065, 42.887711>,  <37.850334, 35.875233, 43.456276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818817, 36.451065, 42.887711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199184, 36.330444, 42.915520>,  <38.427402, 36.258072, 42.932205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199184, 36.330444, 42.915520>,  <37.818817, 36.451065, 42.887711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199184, 36.330444, 42.915520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071407, -0.004776, -0.997436,
		0.301106, 0.953439, 0.016991,
		0.950913, -0.301547, 0.069520,
		38.484459, 36.239979, 42.936375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185947, 37.025188, 42.757252>,  <37.818817, 36.451065, 42.887711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185947, 37.025188, 42.757252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397057, 36.695484, 42.675224>,  <38.523724, 36.497662, 42.626007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397057, 36.695484, 42.675224>,  <38.185947, 37.025188, 42.757252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397057, 36.695484, 42.675224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074580, 0.195532, -0.977857,
		0.846106, 0.531380, 0.041723,
		0.527772, -0.824259, -0.205071,
		38.555389, 36.448208, 42.613705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591675, 37.146381, 42.185806>,  <38.185947, 37.025188, 42.757252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591675, 37.146381, 42.185806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636108, 36.748932, 42.178188>,  <38.662769, 36.510460, 42.173618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636108, 36.748932, 42.178188>,  <38.591675, 37.146381, 42.185806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636108, 36.748932, 42.178188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000901, 0.019264, -0.999814,
		0.993810, 0.111047, 0.003035,
		0.111085, -0.993629, -0.019045,
		38.669434, 36.450844, 42.172474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119007, 36.965027, 41.701656>,  <38.591675, 37.146381, 42.185806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119007, 36.965027, 41.701656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889618, 36.637867, 41.720295>,  <38.751984, 36.441570, 41.731476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889618, 36.637867, 41.720295>,  <39.119007, 36.965027, 41.701656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889618, 36.637867, 41.720295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019611, -0.070566, -0.997314,
		0.818991, -0.571018, 0.056508,
		-0.573472, -0.817899, 0.046595,
		38.717575, 36.392498, 41.734272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853283, 37.203800, 41.838001>,  <39.119007, 36.965027, 41.701656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853283, 37.203800, 41.838001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873901, 37.583374, 41.713501>,  <39.886272, 37.811119, 41.638802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873901, 37.583374, 41.713501>,  <39.853283, 37.203800, 41.838001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873901, 37.583374, 41.713501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190898, 0.296551, 0.935743,
		0.980255, -0.107653, -0.165862,
		0.051549, 0.948930, -0.311247,
		39.889366, 37.868053, 41.620129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429562, 37.552261, 42.220966>,  <39.853283, 37.203800, 41.838001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429562, 37.552261, 42.220966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227734, 37.866837, 42.078461>,  <40.106636, 38.055580, 41.992958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227734, 37.866837, 42.078461>,  <40.429562, 37.552261, 42.220966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227734, 37.866837, 42.078461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038905, 0.432937, 0.900584,
		0.862496, 0.440544, -0.249042,
		-0.504567, 0.786439, -0.356267,
		40.076363, 38.102768, 41.971581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748802, 38.137444, 42.444672>,  <40.429562, 37.552261, 42.220966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748802, 38.137444, 42.444672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365593, 38.238491, 42.390457>,  <40.135666, 38.299118, 42.357929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365593, 38.238491, 42.390457>,  <40.748802, 38.137444, 42.444672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365593, 38.238491, 42.390457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010593, 0.503643, 0.863847,
		0.286487, 0.826152, -0.485179,
		-0.958026, 0.252620, -0.135535,
		40.078186, 38.314278, 42.349796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715649, 38.787216, 42.703316>,  <40.748802, 38.137444, 42.444672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715649, 38.787216, 42.703316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325432, 38.699959, 42.692524>,  <40.091301, 38.647606, 42.686050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325432, 38.699959, 42.692524>,  <40.715649, 38.787216, 42.703316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325432, 38.699959, 42.692524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126989, 0.459158, 0.879232,
		-0.179410, 0.861155, -0.475630,
		-0.975544, -0.218142, -0.026980,
		40.032768, 38.634518, 42.684429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475979, 39.424019, 42.846756>,  <40.715649, 38.787216, 42.703316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475979, 39.424019, 42.846756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205444, 39.139351, 42.922749>,  <40.043125, 38.968548, 42.968342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205444, 39.139351, 42.922749>,  <40.475979, 39.424019, 42.846756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205444, 39.139351, 42.922749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199281, 0.425083, 0.882945,
		-0.709125, 0.559307, -0.429321,
		-0.676334, -0.711674, 0.189977,
		40.002544, 38.925850, 42.979740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858383, 39.759457, 43.036312>,  <40.475979, 39.424019, 42.846756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858383, 39.759457, 43.036312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828423, 39.387505, 43.180370>,  <39.810444, 39.164333, 43.266808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828423, 39.387505, 43.180370>,  <39.858383, 39.759457, 43.036312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828423, 39.387505, 43.180370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174174, 0.367811, 0.913443,
		-0.981862, 0.005691, -0.189512,
		-0.074903, -0.929883, 0.360148,
		39.805950, 39.108540, 43.288414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268658, 39.835167, 43.425896>,  <39.858383, 39.759457, 43.036312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268658, 39.835167, 43.425896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472633, 39.515472, 43.553139>,  <39.595016, 39.323658, 43.629486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472633, 39.515472, 43.553139>,  <39.268658, 39.835167, 43.425896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472633, 39.515472, 43.553139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325448, 0.163062, 0.931394,
		-0.796271, -0.578479, -0.176957,
		0.509937, -0.799233, 0.318107,
		39.625614, 39.275703, 43.648571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779282, 39.547245, 43.794415>,  <39.268658, 39.835167, 43.425896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779282, 39.547245, 43.794415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112991, 39.381767, 43.940208>,  <39.313217, 39.282482, 44.027683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112991, 39.381767, 43.940208>,  <38.779282, 39.547245, 43.794415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112991, 39.381767, 43.940208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237180, 0.327491, 0.914601,
		-0.497729, -0.849474, 0.175097,
		0.834273, -0.413694, 0.364480,
		39.363274, 39.257660, 44.049553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646275, 39.316292, 44.514675>,  <38.779282, 39.547245, 43.794415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646275, 39.316292, 44.514675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.046093, 39.307957, 44.505955>,  <39.285984, 39.302956, 44.500721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.046093, 39.307957, 44.505955>,  <38.646275, 39.316292, 44.514675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046093, 39.307957, 44.505955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026376, 0.253567, 0.966958,
		-0.014618, -0.967093, 0.254001,
		0.999545, -0.020835, -0.021802,
		39.345955, 39.301708, 44.499413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909523, 38.938244, 45.031776>,  <38.646275, 39.316292, 44.514675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909523, 38.938244, 45.031776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197548, 39.209282, 44.971931>,  <39.370361, 39.371906, 44.936024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197548, 39.209282, 44.971931>,  <38.909523, 38.938244, 45.031776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197548, 39.209282, 44.971931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012295, 0.228026, 0.973577,
		0.693805, -0.699192, 0.172523,
		0.720058, 0.677594, -0.149609,
		39.413567, 39.412560, 44.927048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293007, 38.810062, 45.584885>,  <38.909523, 38.938244, 45.031776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293007, 38.810062, 45.584885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423771, 39.169033, 45.466396>,  <39.502232, 39.384415, 45.395302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423771, 39.169033, 45.466396>,  <39.293007, 38.810062, 45.584885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423771, 39.169033, 45.466396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206919, 0.237868, 0.949001,
		0.922124, -0.371534, -0.107934,
		0.326912, 0.897430, -0.296222,
		39.521843, 39.438263, 45.377529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989788, 38.826729, 45.829399>,  <39.293007, 38.810062, 45.584885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989788, 38.826729, 45.829399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873657, 39.207066, 45.786293>,  <39.803978, 39.435268, 45.760429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873657, 39.207066, 45.786293>,  <39.989788, 38.826729, 45.829399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873657, 39.207066, 45.786293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323604, 0.203539, 0.924041,
		0.900549, 0.233403, -0.366789,
		-0.290330, 0.950839, -0.107766,
		39.786560, 39.492317, 45.753963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560555, 39.127651, 45.979084>,  <39.989788, 38.826729, 45.829399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560555, 39.127651, 45.979084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.277004, 39.402752, 46.041691>,  <40.106876, 39.567814, 46.079254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.277004, 39.402752, 46.041691>,  <40.560555, 39.127651, 45.979084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277004, 39.402752, 46.041691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439972, 0.257711, 0.860238,
		0.551293, 0.678663, -0.485275,
		-0.708873, 0.687751, 0.156518,
		40.064342, 39.609077, 46.088646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915855, 39.753075, 46.345097>,  <40.560555, 39.127651, 45.979084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915855, 39.753075, 46.345097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524105, 39.803776, 46.408031>,  <40.289055, 39.834198, 46.445793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524105, 39.803776, 46.408031>,  <40.915855, 39.753075, 46.345097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524105, 39.803776, 46.408031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178901, 0.182167, 0.966856,
		0.093892, 0.975063, -0.201086,
		-0.979377, 0.126754, 0.157336,
		40.230293, 39.841801, 46.455231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.336210, 40.701328, 45.742477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697512, 40.532917, 45.709335>,  <31.914293, 40.431870, 45.689449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697512, 40.532917, 45.709335>,  <31.336210, 40.701328, 45.742477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697512, 40.532917, 45.709335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133945, -0.093193, -0.986597,
		0.407666, 0.902246, -0.140572,
		0.903254, -0.421031, -0.082859,
		31.968489, 40.406609, 45.684479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669260, 41.073502, 45.170231>,  <31.336210, 40.701328, 45.742477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669260, 41.073502, 45.170231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863426, 40.726864, 45.216507>,  <31.979925, 40.518883, 45.244274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863426, 40.726864, 45.216507>,  <31.669260, 41.073502, 45.170231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863426, 40.726864, 45.216507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090855, -0.081610, -0.992515,
		0.869550, 0.492293, 0.039120,
		0.485415, -0.866595, 0.115691,
		32.009052, 40.466885, 45.251213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274700, 41.199913, 44.688862>,  <31.669260, 41.073502, 45.170231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274700, 41.199913, 44.688862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204315, 40.809887, 44.742954>,  <32.162086, 40.575871, 44.775410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204315, 40.809887, 44.742954>,  <32.274700, 41.199913, 44.688862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204315, 40.809887, 44.742954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008424, -0.138857, -0.990277,
		0.984361, -0.173110, 0.032648,
		-0.175960, -0.975065, 0.135228,
		32.151527, 40.517368, 44.783524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702591, 40.820827, 44.218708>,  <32.274700, 41.199913, 44.688862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702591, 40.820827, 44.218708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.417599, 40.558678, 44.319000>,  <32.246605, 40.401390, 44.379177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.417599, 40.558678, 44.319000>,  <32.702591, 40.820827, 44.218708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417599, 40.558678, 44.319000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097123, -0.445985, -0.889755,
		0.694941, -0.609579, 0.381406,
		-0.712477, -0.655371, 0.250730,
		32.203857, 40.362068, 44.394218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995914, 40.189987, 43.941338>,  <32.702591, 40.820827, 44.218708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995914, 40.189987, 43.941338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597237, 40.160801, 43.955589>,  <32.358028, 40.143291, 43.964142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597237, 40.160801, 43.955589>,  <32.995914, 40.189987, 43.941338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597237, 40.160801, 43.955589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007969, -0.348771, -0.937174,
		0.080803, -0.934364, 0.347038,
		-0.996698, -0.072961, 0.035628,
		32.298225, 40.138912, 43.966278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955029, 39.527344, 43.649818>,  <32.995914, 40.189987, 43.941338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955029, 39.527344, 43.649818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584244, 39.675182, 43.624084>,  <32.361771, 39.763885, 43.608643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584244, 39.675182, 43.624084>,  <32.955029, 39.527344, 43.649818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584244, 39.675182, 43.624084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034184, -0.254002, -0.966600,
		-0.373591, -0.893803, 0.248085,
		-0.926963, 0.369594, -0.064339,
		32.306156, 39.786060, 43.604782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575199, 38.949429, 43.441879>,  <32.955029, 39.527344, 43.649818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575199, 38.949429, 43.441879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352859, 39.271408, 43.358849>,  <32.219456, 39.464596, 43.309029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352859, 39.271408, 43.358849>,  <32.575199, 38.949429, 43.441879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352859, 39.271408, 43.358849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044162, -0.220765, -0.974327,
		-0.830108, -0.550748, 0.087165,
		-0.555852, 0.804947, -0.207581,
		32.186104, 39.512894, 43.296574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983553, 38.669838, 43.056118>,  <32.575199, 38.949429, 43.441879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983553, 38.669838, 43.056118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.019066, 39.056202, 42.958839>,  <32.040375, 39.288021, 42.900475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.019066, 39.056202, 42.958839>,  <31.983553, 38.669838, 43.056118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019066, 39.056202, 42.958839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066629, -0.249371, -0.966113,
		-0.993820, 0.069571, -0.086497,
		0.088784, 0.965906, -0.243194,
		32.045700, 39.345974, 42.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651995, 38.616367, 42.382160>,  <31.983553, 38.669838, 43.056118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651995, 38.616367, 42.382160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.857311, 38.959633, 42.385757>,  <31.980501, 39.165592, 42.387917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.857311, 38.959633, 42.385757>,  <31.651995, 38.616367, 42.382160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857311, 38.959633, 42.385757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113404, -0.057432, -0.991888,
		-0.850689, 0.510148, -0.126799,
		0.513292, 0.858167, 0.008996,
		32.011299, 39.217083, 42.388454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376829, 39.029751, 41.800209>,  <31.651995, 38.616367, 42.382160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376829, 39.029751, 41.800209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733694, 39.187351, 41.888580>,  <31.947813, 39.281914, 41.941601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733694, 39.187351, 41.888580>,  <31.376829, 39.029751, 41.800209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733694, 39.187351, 41.888580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157970, 0.186064, -0.969756,
		-0.423195, 0.900078, 0.103758,
		0.892161, 0.394005, 0.220926,
		32.001343, 39.305553, 41.954857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482222, 39.534988, 41.274834>,  <31.376829, 39.029751, 41.800209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482222, 39.534988, 41.274834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843294, 39.462688, 41.431038>,  <32.059937, 39.419308, 41.524761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843294, 39.462688, 41.431038>,  <31.482222, 39.534988, 41.274834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843294, 39.462688, 41.431038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421666, 0.190540, -0.886506,
		0.085824, 0.964897, 0.248211,
		0.902681, -0.180745, 0.390511,
		32.114098, 39.408466, 41.548191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921597, 39.911377, 40.814224>,  <31.482222, 39.534988, 41.274834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921597, 39.911377, 40.814224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.148651, 39.624416, 40.975780>,  <32.284885, 39.452240, 41.072712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.148651, 39.624416, 40.975780>,  <31.921597, 39.911377, 40.814224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148651, 39.624416, 40.975780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306208, -0.271416, -0.912453,
		0.764215, 0.641616, 0.065608,
		0.567637, -0.717400, 0.403888,
		32.318943, 39.409195, 41.096947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551910, 39.894684, 40.406689>,  <31.921597, 39.911377, 40.814224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551910, 39.894684, 40.406689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537418, 39.547688, 40.605141>,  <32.528725, 39.339489, 40.724213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537418, 39.547688, 40.605141>,  <32.551910, 39.894684, 40.406689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537418, 39.547688, 40.605141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335238, -0.478241, -0.811727,
		0.941437, 0.136913, 0.308143,
		-0.036231, -0.867491, 0.496132,
		32.526550, 39.287441, 40.753979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208755, 39.579876, 40.294239>,  <32.551910, 39.894684, 40.406689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208755, 39.579876, 40.294239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978355, 39.274899, 40.412159>,  <32.840115, 39.091911, 40.482910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978355, 39.274899, 40.412159>,  <33.208755, 39.579876, 40.294239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978355, 39.274899, 40.412159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371641, -0.565458, -0.736301,
		0.728083, -0.314551, 0.609059,
		-0.576002, -0.762440, 0.294801,
		32.805553, 39.046165, 40.500599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934330, 39.606972, 40.403221>,  <33.208755, 39.579876, 40.294239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934330, 39.606972, 40.403221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228241, 39.876888, 40.375595>,  <34.404587, 40.038837, 40.359020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228241, 39.876888, 40.375595>,  <33.934330, 39.606972, 40.403221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228241, 39.876888, 40.375595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016969, 0.083495, 0.996364,
		0.678100, -0.733274, 0.049899,
		0.734774, 0.674787, -0.069061,
		34.448673, 40.079323, 40.354877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500336, 39.349243, 40.817638>,  <33.934330, 39.606972, 40.403221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500336, 39.349243, 40.817638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514652, 39.746872, 40.776569>,  <34.523243, 39.985451, 40.751930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514652, 39.746872, 40.776569>,  <34.500336, 39.349243, 40.817638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514652, 39.746872, 40.776569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026619, 0.101751, 0.994454,
		0.999005, -0.038323, -0.022820,
		0.035789, 0.994071, -0.102670,
		34.525391, 40.045094, 40.745770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933750, 39.497112, 41.432552>,  <34.500336, 39.349243, 40.817638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933750, 39.497112, 41.432552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802067, 39.847420, 41.291325>,  <34.723057, 40.057602, 41.206589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802067, 39.847420, 41.291325>,  <34.933750, 39.497112, 41.432552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802067, 39.847420, 41.291325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012558, 0.377939, 0.925745,
		0.944173, 0.300332, -0.135419,
		-0.329211, 0.875764, -0.353069,
		34.703304, 40.110149, 41.185406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409657, 40.025898, 41.592545>,  <34.933750, 39.497112, 41.432552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409657, 40.025898, 41.592545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053474, 40.205635, 41.563763>,  <34.839764, 40.313477, 41.546494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053474, 40.205635, 41.563763>,  <35.409657, 40.025898, 41.592545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053474, 40.205635, 41.563763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008017, 0.142601, 0.989748,
		0.454998, 0.881904, -0.123377,
		-0.890457, 0.449344, -0.071953,
		34.786339, 40.340439, 41.542175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570763, 40.683113, 41.950653>,  <35.409657, 40.025898, 41.592545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570763, 40.683113, 41.950653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173710, 40.703297, 41.906593>,  <34.935478, 40.715408, 41.880157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173710, 40.703297, 41.906593>,  <35.570763, 40.683113, 41.950653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173710, 40.703297, 41.906593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080701, 0.402714, 0.911761,
		0.090364, 0.913934, -0.395675,
		-0.992634, 0.050459, -0.110147,
		34.875919, 40.718433, 41.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292496, 41.416565, 41.947449>,  <35.570763, 40.683113, 41.950653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292496, 41.416565, 41.947449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987240, 41.189106, 42.070251>,  <34.804085, 41.052631, 42.143932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987240, 41.189106, 42.070251>,  <35.292496, 41.416565, 41.947449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987240, 41.189106, 42.070251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052974, 0.528524, 0.847264,
		-0.644059, 0.630317, -0.433461,
		-0.763139, -0.568650, 0.307010,
		34.758297, 41.018513, 42.162354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769623, 41.908085, 42.243347>,  <35.292496, 41.416565, 41.947449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769623, 41.908085, 42.243347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.673950, 41.555496, 42.406223>,  <34.616547, 41.343945, 42.503948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.673950, 41.555496, 42.406223>,  <34.769623, 41.908085, 42.243347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673950, 41.555496, 42.406223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010450, 0.421673, 0.906688,
		-0.970919, 0.212606, -0.110067,
		-0.239180, -0.881471, 0.407188,
		34.602196, 41.291054, 42.528381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353813, 42.086891, 42.807579>,  <34.769623, 41.908085, 42.243347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353813, 42.086891, 42.807579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461849, 41.712044, 42.896004>,  <34.526672, 41.487137, 42.949059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461849, 41.712044, 42.896004>,  <34.353813, 42.086891, 42.807579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461849, 41.712044, 42.896004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013202, 0.225966, 0.974046,
		-0.962745, -0.265997, 0.048659,
		0.270088, -0.937115, 0.221060,
		34.542877, 41.430908, 42.962322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068687, 42.005814, 43.425671>,  <34.353813, 42.086891, 42.807579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068687, 42.005814, 43.425671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312946, 41.689529, 43.443001>,  <34.459503, 41.499760, 43.453400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312946, 41.689529, 43.443001>,  <34.068687, 42.005814, 43.425671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312946, 41.689529, 43.443001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096562, 0.128652, 0.986977,
		-0.785990, -0.598515, 0.154914,
		0.610651, -0.790714, 0.043325,
		34.496143, 41.452316, 43.455997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822247, 41.545208, 43.928268>,  <34.068687, 42.005814, 43.425671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822247, 41.545208, 43.928268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208111, 41.446609, 43.891026>,  <34.439629, 41.387451, 43.868679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208111, 41.446609, 43.891026>,  <33.822247, 41.545208, 43.928268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208111, 41.446609, 43.891026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098245, 0.008612, 0.995125,
		-0.244491, -0.969106, 0.032524,
		0.964662, -0.246495, -0.093104,
		34.497509, 41.372662, 43.863094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893616, 40.909477, 44.210312>,  <33.822247, 41.545208, 43.928268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893616, 40.909477, 44.210312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239655, 41.109417, 44.227081>,  <34.447277, 41.229382, 44.237144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239655, 41.109417, 44.227081>,  <33.893616, 40.909477, 44.210312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239655, 41.109417, 44.227081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074705, 0.045741, 0.996156,
		0.496013, -0.864902, 0.076912,
		0.865095, 0.499852, 0.041924,
		34.499184, 41.259373, 44.239658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340931, 40.524117, 44.675117>,  <33.893616, 40.909477, 44.210312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340931, 40.524117, 44.675117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507103, 40.886761, 44.645500>,  <34.606808, 41.104347, 44.627731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507103, 40.886761, 44.645500>,  <34.340931, 40.524117, 44.675117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507103, 40.886761, 44.645500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152761, 0.010704, 0.988205,
		0.896706, -0.421842, -0.134047,
		0.415431, 0.906606, -0.074039,
		34.631733, 41.158741, 44.623287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081799, 40.557964, 44.949211>,  <34.340931, 40.524117, 44.675117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081799, 40.557964, 44.949211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940674, 40.931950, 44.964016>,  <34.855999, 41.156342, 44.972897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940674, 40.931950, 44.964016>,  <35.081799, 40.557964, 44.949211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940674, 40.931950, 44.964016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238236, 0.051510, 0.969840,
		0.904856, 0.350992, -0.240915,
		-0.352816, 0.934960, 0.037010,
		34.834827, 41.212437, 44.975121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515739, 40.821697, 45.337242>,  <35.081799, 40.557964, 44.949211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515739, 40.821697, 45.337242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189827, 41.053589, 45.334774>,  <34.994278, 41.192726, 45.333294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189827, 41.053589, 45.334774>,  <35.515739, 40.821697, 45.337242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189827, 41.053589, 45.334774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114255, 0.170990, 0.978626,
		0.568395, 0.796664, -0.205557,
		-0.814784, 0.579732, -0.006167,
		34.945393, 41.227509, 45.332924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115757, 41.297726, 45.246441>,  <35.515739, 40.821697, 45.337242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115757, 41.297726, 45.246441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.511971, 41.342892, 45.277657>,  <36.749699, 41.369991, 45.296387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.511971, 41.342892, 45.277657>,  <36.115757, 41.297726, 45.246441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511971, 41.342892, 45.277657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113824, -0.358028, -0.926747,
		-0.076703, 0.926858, -0.367492,
		0.990536, 0.112914, 0.078037,
		36.809132, 41.376766, 45.301067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214405, 41.710316, 44.733242>,  <36.115757, 41.297726, 45.246441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214405, 41.710316, 44.733242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551910, 41.514843, 44.822006>,  <36.754414, 41.397560, 44.875263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551910, 41.514843, 44.822006>,  <36.214405, 41.710316, 44.733242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551910, 41.514843, 44.822006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095103, -0.270785, -0.957930,
		0.528216, 0.829375, -0.182004,
		0.843767, -0.488685, 0.221909,
		36.805042, 41.368237, 44.888580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564220, 41.784889, 44.156937>,  <36.214405, 41.710316, 44.733242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564220, 41.784889, 44.156937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786972, 41.486763, 44.303570>,  <36.920624, 41.307888, 44.391548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786972, 41.486763, 44.303570>,  <36.564220, 41.784889, 44.156937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786972, 41.486763, 44.303570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063125, -0.478054, -0.876059,
		0.828190, 0.464721, -0.313268,
		0.556882, -0.745318, 0.366584,
		36.954037, 41.263168, 44.413544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290951, 41.659145, 43.637867>,  <36.564220, 41.784889, 44.156937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290951, 41.659145, 43.637867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212639, 41.338169, 43.863346>,  <37.165649, 41.145584, 43.998634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212639, 41.338169, 43.863346>,  <37.290951, 41.659145, 43.637867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212639, 41.338169, 43.863346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193062, -0.595117, -0.780104,
		0.961455, -0.043903, 0.271435,
		-0.195784, -0.802439, 0.563702,
		37.153904, 41.097439, 44.032455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825634, 41.179508, 43.567089>,  <37.290951, 41.659145, 43.637867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825634, 41.179508, 43.567089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.523575, 40.951626, 43.696819>,  <37.342339, 40.814896, 43.774658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.523575, 40.951626, 43.696819>,  <37.825634, 41.179508, 43.567089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523575, 40.951626, 43.696819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246305, -0.705054, -0.665006,
		0.607523, -0.422296, 0.672742,
		-0.755149, -0.569706, 0.324323,
		37.297031, 40.780712, 43.794117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102993, 40.499352, 43.701633>,  <37.825634, 41.179508, 43.567089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102993, 40.499352, 43.701633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707760, 40.455143, 43.658772>,  <37.470619, 40.428616, 43.633057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707760, 40.455143, 43.658772>,  <38.102993, 40.499352, 43.701633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707760, 40.455143, 43.658772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151858, -0.585749, -0.796139,
		0.025228, -0.802921, 0.595551,
		-0.988080, -0.110524, -0.107153,
		37.411335, 40.421986, 43.626625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994545, 39.801575, 43.492737>,  <38.102993, 40.499352, 43.701633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994545, 39.801575, 43.492737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654030, 39.992184, 43.404892>,  <37.449718, 40.106548, 43.352184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654030, 39.992184, 43.404892>,  <37.994545, 39.801575, 43.492737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654030, 39.992184, 43.404892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030754, -0.372507, -0.927519,
		-0.523793, -0.796342, 0.302457,
		-0.851290, 0.476527, -0.219608,
		37.398643, 40.135143, 43.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727921, 39.372368, 43.110363>,  <37.994545, 39.801575, 43.492737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727921, 39.372368, 43.110363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499508, 39.690918, 43.030651>,  <37.362461, 39.882050, 42.982826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499508, 39.690918, 43.030651>,  <37.727921, 39.372368, 43.110363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499508, 39.690918, 43.030651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048422, -0.274996, -0.960225,
		-0.819499, -0.538668, 0.195594,
		-0.571030, 0.796375, -0.199276,
		37.328197, 39.929829, 42.970867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042519, 39.182934, 42.791000>,  <37.727921, 39.372368, 43.110363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042519, 39.182934, 42.791000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.131271, 39.558655, 42.686325>,  <37.184525, 39.784088, 42.623520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.131271, 39.558655, 42.686325>,  <37.042519, 39.182934, 42.791000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131271, 39.558655, 42.686325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027343, -0.274264, -0.961266,
		-0.974690, 0.206132, -0.086538,
		0.221882, 0.939302, -0.261686,
		37.197838, 39.840446, 42.607819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533630, 39.340477, 42.191910>,  <37.042519, 39.182934, 42.791000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533630, 39.340477, 42.191910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.829803, 39.609261, 42.198116>,  <37.007507, 39.770531, 42.201839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.829803, 39.609261, 42.198116>,  <36.533630, 39.340477, 42.191910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829803, 39.609261, 42.198116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072213, -0.056575, -0.995783,
		-0.668243, 0.738428, -0.090413,
		0.740430, 0.671955, 0.015519,
		37.051933, 39.810848, 42.202770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368015, 39.807472, 41.697567>,  <36.533630, 39.340477, 42.191910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368015, 39.807472, 41.697567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758034, 39.885284, 41.740341>,  <36.992046, 39.931973, 41.766006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758034, 39.885284, 41.740341>,  <36.368015, 39.807472, 41.697567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758034, 39.885284, 41.740341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131034, -0.115540, -0.984622,
		-0.179182, 0.974068, -0.138148,
		0.975051, 0.194529, 0.106933,
		37.050549, 39.943642, 41.772423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560883, 40.334068, 41.256351>,  <36.368015, 39.807472, 41.697567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560883, 40.334068, 41.256351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917244, 40.160797, 41.310978>,  <37.131062, 40.056835, 41.343754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917244, 40.160797, 41.310978>,  <36.560883, 40.334068, 41.256351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917244, 40.160797, 41.310978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144778, -0.014160, -0.989363,
		0.430506, 0.901196, 0.050100,
		0.890901, -0.433180, 0.136569,
		37.184513, 40.030842, 41.351948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977207, 40.656670, 40.752338>,  <36.560883, 40.334068, 41.256351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977207, 40.656670, 40.752338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195278, 40.338474, 40.858154>,  <37.326122, 40.147556, 40.921646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195278, 40.338474, 40.858154>,  <36.977207, 40.656670, 40.752338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195278, 40.338474, 40.858154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274316, -0.128911, -0.952960,
		0.792170, 0.592100, 0.147936,
		0.545177, -0.795487, 0.264541,
		37.358829, 40.099827, 40.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607212, 40.641220, 40.423531>,  <36.977207, 40.656670, 40.752338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607212, 40.641220, 40.423531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.547928, 40.254238, 40.505562>,  <37.512356, 40.022049, 40.554779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.547928, 40.254238, 40.505562>,  <37.607212, 40.641220, 40.423531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547928, 40.254238, 40.505562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180687, -0.230368, -0.956181,
		0.972309, -0.104665, 0.208951,
		-0.148214, -0.967458, 0.205077,
		37.503464, 39.964001, 40.567085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.569069, 39.806728, 30.681648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266672, 39.855835, 30.424461>,  <30.085234, 39.885300, 30.270149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266672, 39.855835, 30.424461>,  <30.569069, 39.806728, 30.681648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266672, 39.855835, 30.424461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600550, -0.520863, 0.606664,
		-0.260416, 0.844765, 0.467498,
		-0.755991, 0.122771, -0.642965,
		30.039875, 39.892666, 30.231571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003839, 40.103462, 30.938234>,  <30.569069, 39.806728, 30.681648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003839, 40.103462, 30.938234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882132, 39.876648, 30.632061>,  <29.809107, 39.740559, 30.448357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882132, 39.876648, 30.632061>,  <30.003839, 40.103462, 30.938234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882132, 39.876648, 30.632061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574805, -0.531470, 0.622205,
		-0.759617, 0.629295, -0.164224,
		-0.304271, -0.567035, -0.765435,
		29.790850, 39.706539, 30.402430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177696, 40.017357, 30.943659>,  <30.003839, 40.103462, 30.938234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177696, 40.017357, 30.943659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299944, 39.704098, 30.727041>,  <29.373293, 39.516140, 30.597071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299944, 39.704098, 30.727041>,  <29.177696, 40.017357, 30.943659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299944, 39.704098, 30.727041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632066, -0.592234, 0.499751,
		-0.712103, 0.189560, -0.676001,
		0.305618, -0.783151, -0.541546,
		29.391630, 39.469151, 30.564577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580669, 39.689831, 30.750364>,  <29.177696, 40.017357, 30.943659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580669, 39.689831, 30.750364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851835, 39.409042, 30.663027>,  <29.014534, 39.240570, 30.610624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851835, 39.409042, 30.663027>,  <28.580669, 39.689831, 30.750364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851835, 39.409042, 30.663027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635207, -0.708839, 0.306691,
		-0.370057, -0.069217, -0.926427,
		0.677915, -0.701966, -0.218344,
		29.055210, 39.198452, 30.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355307, 39.126148, 30.513998>,  <28.580669, 39.689831, 30.750364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355307, 39.126148, 30.513998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687546, 38.946396, 30.645550>,  <28.886890, 38.838543, 30.724480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687546, 38.946396, 30.645550>,  <28.355307, 39.126148, 30.513998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687546, 38.946396, 30.645550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551767, -0.743901, 0.377046,
		0.075216, -0.494639, -0.865838,
		0.830600, -0.449381, 0.328879,
		28.936726, 38.811581, 30.744213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299242, 38.432961, 30.488886>,  <28.355307, 39.126148, 30.513998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299242, 38.432961, 30.488886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598103, 38.458591, 30.753510>,  <28.777418, 38.473969, 30.912283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598103, 38.458591, 30.753510>,  <28.299242, 38.432961, 30.488886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598103, 38.458591, 30.753510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371730, -0.784833, 0.495837,
		0.550983, -0.616386, -0.562571,
		0.747151, 0.064073, 0.661559,
		28.822248, 38.477814, 30.951977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640804, 37.800632, 30.538557>,  <28.299242, 38.432961, 30.488886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640804, 37.800632, 30.538557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742073, 37.981976, 30.880404>,  <28.802835, 38.090782, 31.085512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742073, 37.981976, 30.880404>,  <28.640804, 37.800632, 30.538557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742073, 37.981976, 30.880404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343193, -0.783854, 0.517485,
		0.904501, -0.424313, -0.042863,
		0.253174, 0.453356, 0.854618,
		28.818026, 38.117981, 31.136789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767868, 37.242062, 30.976095>,  <28.640804, 37.800632, 30.538557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767868, 37.242062, 30.976095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753958, 37.556351, 31.223135>,  <28.745611, 37.744926, 31.371359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753958, 37.556351, 31.223135>,  <28.767868, 37.242062, 30.976095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753958, 37.556351, 31.223135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220549, -0.608771, 0.762074,
		0.974756, -0.109707, 0.194463,
		-0.034778, 0.785724, 0.617598,
		28.743525, 37.792068, 31.408415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240248, 37.081608, 31.591251>,  <28.767868, 37.242062, 30.976095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240248, 37.081608, 31.591251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.948786, 37.347878, 31.655678>,  <28.773909, 37.507637, 31.694334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.948786, 37.347878, 31.655678>,  <29.240248, 37.081608, 31.591251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948786, 37.347878, 31.655678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297390, -0.519372, 0.801131,
		0.616945, 0.535848, 0.576408,
		-0.728654, 0.665672, 0.161068,
		28.730190, 37.547581, 31.703999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218920, 37.256065, 32.218052>,  <29.240248, 37.081608, 31.591251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218920, 37.256065, 32.218052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.845686, 37.380775, 32.146328>,  <28.621746, 37.455601, 32.103294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.845686, 37.380775, 32.146328>,  <29.218920, 37.256065, 32.218052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845686, 37.380775, 32.146328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259352, -0.237848, 0.936037,
		0.249182, 0.919905, 0.302791,
		-0.933084, 0.311772, -0.179312,
		28.565762, 37.474308, 32.092533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028585, 37.439064, 32.842937>,  <29.218920, 37.256065, 32.218052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028585, 37.439064, 32.842937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687187, 37.430870, 32.634659>,  <28.482347, 37.425953, 32.509693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687187, 37.430870, 32.634659>,  <29.028585, 37.439064, 32.842937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687187, 37.430870, 32.634659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496962, -0.268586, 0.825161,
		-0.156757, 0.963038, 0.219055,
		-0.853496, -0.020488, -0.520696,
		28.431139, 37.424725, 32.478451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575386, 37.583092, 33.347858>,  <29.028585, 37.439064, 32.842937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575386, 37.583092, 33.347858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357235, 37.414742, 33.057915>,  <28.226345, 37.313732, 32.883949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357235, 37.414742, 33.057915>,  <28.575386, 37.583092, 33.347858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357235, 37.414742, 33.057915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543448, -0.480845, 0.688079,
		-0.638144, 0.769187, 0.033517,
		-0.545378, -0.420879, -0.724862,
		28.193623, 37.288479, 32.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835546, 37.605076, 33.572910>,  <28.575386, 37.583092, 33.347858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835546, 37.605076, 33.572910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887848, 37.307396, 33.310894>,  <27.919230, 37.128788, 33.153687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887848, 37.307396, 33.310894>,  <27.835546, 37.605076, 33.572910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887848, 37.307396, 33.310894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417513, -0.640597, 0.644452,
		-0.899214, 0.189222, -0.394473,
		0.130753, -0.744198, -0.655037,
		27.927074, 37.084137, 33.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229567, 37.325100, 33.679684>,  <27.835546, 37.605076, 33.572910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229567, 37.325100, 33.679684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477831, 37.061031, 33.510471>,  <27.626789, 36.902588, 33.408943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477831, 37.061031, 33.510471>,  <27.229567, 37.325100, 33.679684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477831, 37.061031, 33.510471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338115, -0.712129, 0.615265,
		-0.707417, -0.238854, -0.665215,
		0.620677, -0.660168, -0.423012,
		27.664028, 36.862980, 33.383564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890894, 36.751400, 33.670177>,  <27.229567, 37.325100, 33.679684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890894, 36.751400, 33.670177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263285, 36.612324, 33.625660>,  <27.486719, 36.528877, 33.598949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263285, 36.612324, 33.625660>,  <26.890894, 36.751400, 33.670177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263285, 36.612324, 33.625660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233239, -0.801006, 0.551352,
		-0.280852, -0.487338, -0.826816,
		0.930979, -0.347694, -0.111298,
		27.542578, 36.508015, 33.592270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759523, 36.069702, 33.539333>,  <26.890894, 36.751400, 33.670177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759523, 36.069702, 33.539333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145691, 36.090790, 33.641460>,  <27.377392, 36.103443, 33.702736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145691, 36.090790, 33.641460>,  <26.759523, 36.069702, 33.539333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145691, 36.090790, 33.641460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130093, -0.751279, 0.647036,
		0.225924, -0.657876, -0.718441,
		0.965419, 0.052717, 0.255317,
		27.435316, 36.106606, 33.718056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082376, 35.386635, 33.429424>,  <26.759523, 36.069702, 33.539333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082376, 35.386635, 33.429424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.286932, 35.601093, 33.698059>,  <27.409666, 35.729771, 33.859238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.286932, 35.601093, 33.698059>,  <27.082376, 35.386635, 33.429424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286932, 35.601093, 33.698059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134781, -0.721788, 0.678864,
		0.848713, -0.437681, -0.296852,
		0.511390, 0.536151, 0.671582,
		27.440350, 35.761940, 33.899532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486685, 34.803852, 33.782314>,  <27.082376, 35.386635, 33.429424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486685, 34.803852, 33.782314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503134, 35.133823, 34.007812>,  <27.513002, 35.331806, 34.143112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503134, 35.133823, 34.007812>,  <27.486685, 34.803852, 33.782314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503134, 35.133823, 34.007812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114548, -0.556608, 0.822840,
		0.992566, -0.098412, 0.071605,
		0.041122, 0.824926, 0.563743,
		27.515471, 35.381302, 34.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940256, 34.590843, 34.401070>,  <27.486685, 34.803852, 33.782314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940256, 34.590843, 34.401070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.720602, 34.913067, 34.490082>,  <27.588810, 35.106403, 34.543488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.720602, 34.913067, 34.490082>,  <27.940256, 34.590843, 34.401070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720602, 34.913067, 34.490082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190278, -0.379785, 0.905294,
		0.813785, 0.454786, 0.361834,
		-0.549135, 0.805564, 0.222528,
		27.555862, 35.154736, 34.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260180, 34.741283, 35.115646>,  <27.940256, 34.590843, 34.401070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260180, 34.741283, 35.115646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894472, 34.889614, 35.050400>,  <27.675049, 34.978611, 35.011253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894472, 34.889614, 35.050400>,  <28.260180, 34.741283, 35.115646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894472, 34.889614, 35.050400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289477, -0.316320, 0.903407,
		0.283409, 0.873173, 0.396546,
		-0.914266, 0.370824, -0.163115,
		27.620192, 35.000862, 35.001465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633465, 34.846317, 34.510494>,  <28.260180, 34.741283, 35.115646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633465, 34.846317, 34.510494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.962439, 34.638573, 34.603329>,  <29.159822, 34.513927, 34.659031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.962439, 34.638573, 34.603329>,  <28.633465, 34.846317, 34.510494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962439, 34.638573, 34.603329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555193, 0.821723, -0.128577,
		-0.123934, 0.234600, 0.964159,
		0.822436, -0.519360, 0.232087,
		29.209169, 34.482765, 34.672955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046143, 35.336449, 34.694519>,  <28.633465, 34.846317, 34.510494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046143, 35.336449, 34.694519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303572, 35.033470, 34.650539>,  <29.458029, 34.851685, 34.624153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303572, 35.033470, 34.650539>,  <29.046143, 35.336449, 34.694519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303572, 35.033470, 34.650539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716253, 0.646654, -0.262336,
		0.269804, 0.090081, 0.958692,
		0.643573, -0.757446, -0.109950,
		29.496643, 34.806236, 34.617554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633926, 35.652416, 34.947540>,  <29.046143, 35.336449, 34.694519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633926, 35.652416, 34.947540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733814, 35.333473, 34.727772>,  <29.793747, 35.142109, 34.595909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733814, 35.333473, 34.727772>,  <29.633926, 35.652416, 34.947540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733814, 35.333473, 34.727772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763316, 0.511219, -0.394973,
		0.595809, -0.320752, 0.736295,
		0.249720, -0.797354, -0.549424,
		29.808731, 35.094269, 34.562946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404867, 35.622898, 35.059303>,  <29.633926, 35.652416, 34.947540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404867, 35.622898, 35.059303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314938, 35.424358, 34.723900>,  <30.260981, 35.305237, 34.522659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314938, 35.424358, 34.723900>,  <30.404867, 35.622898, 35.059303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314938, 35.424358, 34.723900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840093, 0.337236, -0.424871,
		0.493659, -0.799945, 0.341160,
		-0.224822, -0.496347, -0.838507,
		30.247492, 35.275455, 34.472347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054176, 35.350731, 34.806763>,  <30.404867, 35.622898, 35.059303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054176, 35.350731, 34.806763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811447, 35.328056, 34.489639>,  <30.665810, 35.314453, 34.299366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811447, 35.328056, 34.489639>,  <31.054176, 35.350731, 34.806763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811447, 35.328056, 34.489639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667453, 0.505271, -0.546999,
		0.431588, -0.861097, -0.268780,
		-0.606826, -0.056680, -0.792811,
		30.629400, 35.311050, 34.251797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525206, 35.057667, 34.215336>,  <31.054176, 35.350731, 34.806763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525206, 35.057667, 34.215336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189104, 35.245449, 34.106827>,  <30.987444, 35.358116, 34.041721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189104, 35.245449, 34.106827>,  <31.525206, 35.057667, 34.215336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189104, 35.245449, 34.106827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520009, 0.556108, -0.648332,
		-0.153508, -0.685826, -0.711392,
		-0.840254, 0.469454, -0.271269,
		30.937029, 35.386284, 34.025448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505402, 34.988289, 33.448833>,  <31.525206, 35.057667, 34.215336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505402, 34.988289, 33.448833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252819, 35.289352, 33.523418>,  <31.101271, 35.469990, 33.568169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252819, 35.289352, 33.523418>,  <31.505402, 34.988289, 33.448833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252819, 35.289352, 33.523418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331932, 0.479698, -0.812226,
		-0.700775, -0.450991, -0.552740,
		-0.631455, 0.752660, 0.186462,
		31.063383, 35.515152, 33.579357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201204, 35.156784, 32.821808>,  <31.505402, 34.988289, 33.448833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201204, 35.156784, 32.821808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156652, 35.480793, 33.052097>,  <31.129921, 35.675198, 33.190269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156652, 35.480793, 33.052097>,  <31.201204, 35.156784, 32.821808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156652, 35.480793, 33.052097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344225, 0.574911, -0.742285,
		-0.932257, 0.115501, -0.342864,
		-0.111382, 0.810023, 0.575723,
		31.123238, 35.723801, 33.224815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965860, 35.631504, 32.383022>,  <31.201204, 35.156784, 32.821808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965860, 35.631504, 32.383022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114262, 35.840626, 32.690018>,  <31.203302, 35.966099, 32.874214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114262, 35.840626, 32.690018>,  <30.965860, 35.631504, 32.383022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114262, 35.840626, 32.690018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512987, 0.573540, -0.638668,
		-0.774080, 0.630658, -0.055405,
		0.371004, 0.522802, 0.767485,
		31.225563, 35.997467, 32.920265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785944, 36.272869, 32.158985>,  <30.965860, 35.631504, 32.383022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785944, 36.272869, 32.158985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062336, 36.328476, 32.442738>,  <31.228170, 36.361839, 32.612988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062336, 36.328476, 32.442738>,  <30.785944, 36.272869, 32.158985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062336, 36.328476, 32.442738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344842, 0.799080, -0.492498,
		-0.635319, 0.584930, 0.504208,
		0.690980, 0.139021, 0.709380,
		31.269630, 36.370182, 32.655552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855770, 37.013710, 32.164505>,  <30.785944, 36.272869, 32.158985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855770, 37.013710, 32.164505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.182341, 36.882164, 32.354366>,  <31.378283, 36.803238, 32.468285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.182341, 36.882164, 32.354366>,  <30.855770, 37.013710, 32.164505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182341, 36.882164, 32.354366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493458, 0.824253, -0.277680,
		-0.299918, 0.460928, 0.835221,
		0.816424, -0.328866, 0.474657,
		31.427267, 36.783504, 32.496765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134779, 37.608635, 32.583633>,  <30.855770, 37.013710, 32.164505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134779, 37.608635, 32.583633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.441635, 37.358601, 32.525993>,  <31.625750, 37.208580, 32.491409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.441635, 37.358601, 32.525993>,  <31.134779, 37.608635, 32.583633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441635, 37.358601, 32.525993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585148, 0.773943, -0.242102,
		0.262860, 0.101406, 0.959490,
		0.767142, -0.625083, -0.144101,
		31.671778, 37.171074, 32.482761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634459, 37.788094, 33.032227>,  <31.134779, 37.608635, 32.583633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634459, 37.788094, 33.032227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.785933, 37.596325, 32.715557>,  <31.876816, 37.481262, 32.525555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.785933, 37.596325, 32.715557>,  <31.634459, 37.788094, 33.032227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785933, 37.596325, 32.715557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612251, 0.771238, -0.174188,
		0.694080, -0.418742, 0.585583,
		0.378684, -0.479424, -0.791676,
		31.899538, 37.452499, 32.478054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293678, 38.013996, 32.926079>,  <31.634459, 37.788094, 33.032227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293678, 38.013996, 32.926079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.242741, 37.850029, 32.564804>,  <32.212177, 37.751648, 32.348038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.242741, 37.850029, 32.564804>,  <32.293678, 38.013996, 32.926079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242741, 37.850029, 32.564804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688815, 0.618650, -0.377897,
		0.713665, -0.670252, 0.203580,
		-0.127342, -0.409921, -0.903188,
		32.204536, 37.727055, 32.293846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027885, 37.943504, 32.549484>,  <32.293678, 38.013996, 32.926079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027885, 37.943504, 32.549484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721169, 37.931522, 32.293007>,  <32.537140, 37.924335, 32.139118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721169, 37.931522, 32.293007>,  <33.027885, 37.943504, 32.549484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721169, 37.931522, 32.293007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461198, 0.669071, -0.582787,
		0.446460, -0.742595, -0.499226,
		-0.766792, -0.029950, -0.641197,
		32.491131, 37.922539, 32.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356709, 38.086838, 31.884439>,  <33.027885, 37.943504, 32.549484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356709, 38.086838, 31.884439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973801, 38.164070, 31.798323>,  <32.744057, 38.210411, 31.746653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973801, 38.164070, 31.798323>,  <33.356709, 38.086838, 31.884439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973801, 38.164070, 31.798323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286725, 0.730722, -0.619543,
		0.037694, -0.654800, -0.754861,
		-0.957271, 0.193085, -0.215291,
		32.686619, 38.221996, 31.733736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390808, 38.276405, 31.208359>,  <33.356709, 38.086838, 31.884439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390808, 38.276405, 31.208359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028023, 38.402031, 31.320629>,  <32.810352, 38.477406, 31.387991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028023, 38.402031, 31.320629>,  <33.390808, 38.276405, 31.208359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028023, 38.402031, 31.320629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005103, 0.674513, -0.738246,
		-0.421174, -0.668131, -0.613362,
		-0.906966, 0.314060, 0.280678,
		32.755932, 38.496250, 31.404833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142387, 38.329731, 30.632952>,  <33.390808, 38.276405, 31.208359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142387, 38.329731, 30.632952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930912, 38.568577, 30.874260>,  <32.804028, 38.711884, 31.019045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930912, 38.568577, 30.874260>,  <33.142387, 38.329731, 30.632952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930912, 38.568577, 30.874260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031752, 0.696313, -0.717035,
		-0.848222, -0.398243, -0.349173,
		-0.528688, 0.597118, 0.603273,
		32.772305, 38.747711, 31.055243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572334, 38.521999, 30.315731>,  <33.142387, 38.329731, 30.632952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572334, 38.521999, 30.315731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.609566, 38.808376, 30.592503>,  <32.631905, 38.980202, 30.758566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.609566, 38.808376, 30.592503>,  <32.572334, 38.521999, 30.315731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609566, 38.808376, 30.592503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112356, 0.698061, -0.707168,
		-0.989299, -0.011922, 0.145413,
		0.093076, 0.715939, 0.691931,
		32.637489, 39.023159, 30.800081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036507, 38.933582, 30.086731>,  <32.572334, 38.521999, 30.315731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036507, 38.933582, 30.086731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259800, 39.153980, 30.334852>,  <32.393776, 39.286221, 30.483725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259800, 39.153980, 30.334852>,  <32.036507, 38.933582, 30.086731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259800, 39.153980, 30.334852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145572, 0.801087, -0.580576,
		-0.816812, 0.233799, 0.527405,
		0.558235, 0.550997, 0.620303,
		32.427269, 39.319279, 30.520943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620106, 39.549366, 30.263132>,  <32.036507, 38.933582, 30.086731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620106, 39.549366, 30.263132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.996386, 39.648224, 30.356087>,  <32.222153, 39.707539, 30.411860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.996386, 39.648224, 30.356087>,  <31.620106, 39.549366, 30.263132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996386, 39.648224, 30.356087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119692, 0.882767, -0.454308,
		-0.317421, 0.399553, 0.860001,
		0.940701, 0.247142, 0.232386,
		32.278595, 39.722366, 30.425802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551657, 40.191795, 30.333977>,  <31.620106, 39.549366, 30.263132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551657, 40.191795, 30.333977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.943279, 40.147629, 30.265556>,  <32.178253, 40.121128, 30.224504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.943279, 40.147629, 30.265556>,  <31.551657, 40.191795, 30.333977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943279, 40.147629, 30.265556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013408, 0.873300, -0.486998,
		0.203150, 0.474504, 0.856490,
		0.979056, -0.110418, -0.171049,
		32.236996, 40.114502, 30.214241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.809654, 40.510597, 46.615002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471512, 40.324993, 46.720882>,  <40.268627, 40.213631, 46.784412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471512, 40.324993, 46.720882>,  <40.809654, 40.510597, 46.615002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471512, 40.324993, 46.720882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106547, 0.339107, 0.934695,
		-0.523470, 0.818353, -0.237227,
		-0.845356, -0.464009, 0.264706,
		40.217907, 40.185791, 46.800293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374992, 41.016460, 46.898232>,  <40.809654, 40.510597, 46.615002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374992, 41.016460, 46.898232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.230137, 40.669498, 47.034740>,  <40.143223, 40.461323, 47.116646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.230137, 40.669498, 47.034740>,  <40.374992, 41.016460, 46.898232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230137, 40.669498, 47.034740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062017, 0.387738, 0.919681,
		-0.930059, 0.311887, -0.194209,
		-0.362139, -0.867402, 0.341277,
		40.121494, 40.409279, 47.137123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975624, 41.225521, 47.360916>,  <40.374992, 41.016460, 46.898232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975624, 41.225521, 47.360916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.971004, 40.839367, 47.465145>,  <39.968231, 40.607674, 47.527683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.971004, 40.839367, 47.465145>,  <39.975624, 41.225521, 47.360916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971004, 40.839367, 47.465145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081797, 0.260633, 0.961967,
		-0.996582, -0.010203, -0.081976,
		-0.011551, -0.965384, 0.260576,
		39.967541, 40.549751, 47.543320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390369, 41.125057, 47.792377>,  <39.975624, 41.225521, 47.360916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390369, 41.125057, 47.792377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657330, 40.838593, 47.874058>,  <39.817505, 40.666714, 47.923065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657330, 40.838593, 47.874058>,  <39.390369, 41.125057, 47.792377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657330, 40.838593, 47.874058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026013, 0.251612, 0.967478,
		-0.744248, -0.651004, 0.149296,
		0.667397, -0.716160, 0.204197,
		39.857548, 40.623745, 47.935318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052910, 40.758465, 48.285019>,  <39.390369, 41.125057, 47.792377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052910, 40.758465, 48.285019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443645, 40.692970, 48.340122>,  <39.678085, 40.653675, 48.373184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443645, 40.692970, 48.340122>,  <39.052910, 40.758465, 48.285019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443645, 40.692970, 48.340122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091912, 0.260314, 0.961139,
		-0.193231, -0.951540, 0.239236,
		0.976839, -0.163733, 0.137759,
		39.736698, 40.643852, 48.381451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057442, 40.412098, 48.882675>,  <39.052910, 40.758465, 48.285019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057442, 40.412098, 48.882675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430004, 40.548332, 48.831322>,  <39.653542, 40.630074, 48.800510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430004, 40.548332, 48.831322>,  <39.057442, 40.412098, 48.882675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430004, 40.548332, 48.831322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036219, 0.264252, 0.963773,
		0.362177, -0.902314, 0.233790,
		0.931405, 0.340589, -0.128387,
		39.709427, 40.650509, 48.792805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526642, 40.001293, 49.348618>,  <39.057442, 40.412098, 48.882675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526642, 40.001293, 49.348618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.675327, 40.365639, 49.276886>,  <39.764538, 40.584248, 49.233845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.675327, 40.365639, 49.276886>,  <39.526642, 40.001293, 49.348618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675327, 40.365639, 49.276886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002531, 0.192177, 0.981357,
		0.928345, -0.365234, 0.069129,
		0.371711, 0.910863, -0.179331,
		39.786842, 40.638897, 49.223087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122822, 40.103058, 49.896484>,  <39.526642, 40.001293, 49.348618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122822, 40.103058, 49.896484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054977, 40.473644, 49.762089>,  <40.014271, 40.695995, 49.681450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054977, 40.473644, 49.762089>,  <40.122822, 40.103058, 49.896484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054977, 40.473644, 49.762089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114682, 0.357167, 0.926973,
		0.978815, 0.118697, -0.166830,
		-0.169616, 0.926468, -0.335988,
		40.004093, 40.751583, 49.661293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583691, 40.463478, 50.263424>,  <40.122822, 40.103058, 49.896484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583691, 40.463478, 50.263424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.288284, 40.704559, 50.142532>,  <40.111042, 40.849209, 50.069996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.288284, 40.704559, 50.142532>,  <40.583691, 40.463478, 50.263424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288284, 40.704559, 50.142532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063295, 0.384301, 0.921035,
		0.671259, 0.699328, -0.245664,
		-0.738515, 0.602704, -0.302230,
		40.066730, 40.885372, 50.051865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692226, 40.863201, 50.790131>,  <40.583691, 40.463478, 50.263424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692226, 40.863201, 50.790131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350857, 40.985001, 50.620922>,  <40.146034, 41.058079, 50.519398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350857, 40.985001, 50.620922>,  <40.692226, 40.863201, 50.790131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350857, 40.985001, 50.620922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329788, 0.313017, 0.890651,
		0.403613, 0.899612, -0.166718,
		-0.853426, 0.304496, -0.423019,
		40.094830, 41.076351, 50.494015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528854, 41.500019, 51.007099>,  <40.692226, 40.863201, 50.790131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528854, 41.500019, 51.007099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169250, 41.364349, 50.896294>,  <39.953487, 41.282948, 50.829811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169250, 41.364349, 50.896294>,  <40.528854, 41.500019, 51.007099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169250, 41.364349, 50.896294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395229, 0.355976, 0.846803,
		-0.188603, 0.870770, -0.454078,
		-0.899012, -0.339175, -0.277015,
		39.899548, 41.262596, 50.813190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011089, 42.025936, 51.198132>,  <40.528854, 41.500019, 51.007099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011089, 42.025936, 51.198132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.810341, 41.680889, 51.172798>,  <39.689892, 41.473862, 51.157597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.810341, 41.680889, 51.172798>,  <40.011089, 42.025936, 51.198132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810341, 41.680889, 51.172798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371825, 0.149057, 0.916258,
		-0.780943, 0.483390, -0.395552,
		-0.501870, -0.862621, -0.063332,
		39.659779, 41.422104, 51.153797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404720, 42.096325, 51.635761>,  <40.011089, 42.025936, 51.198132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404720, 42.096325, 51.635761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.447109, 41.701607, 51.586765>,  <39.472542, 41.464775, 51.557369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.447109, 41.701607, 51.586765>,  <39.404720, 42.096325, 51.635761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447109, 41.701607, 51.586765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426932, -0.156406, 0.890655,
		-0.898052, -0.042094, -0.437870,
		0.105976, -0.986795, -0.122489,
		39.478901, 41.405567, 51.550018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779522, 41.823536, 51.628136>,  <39.404720, 42.096325, 51.635761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779522, 41.823536, 51.628136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040108, 41.550671, 51.760952>,  <39.196461, 41.386951, 51.840641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040108, 41.550671, 51.760952>,  <38.779522, 41.823536, 51.628136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040108, 41.550671, 51.760952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488456, -0.042242, 0.871566,
		-0.580523, -0.729980, -0.360725,
		0.651464, -0.682162, 0.332040,
		39.235546, 41.346024, 51.860565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666531, 41.829765, 50.792145>,  <38.779522, 41.823536, 51.628136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666531, 41.829765, 50.792145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.416401, 42.134468, 50.724396>,  <38.266323, 42.317291, 50.683746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.416401, 42.134468, 50.724396>,  <38.666531, 41.829765, 50.792145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416401, 42.134468, 50.724396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052712, -0.257781, -0.964765,
		-0.778581, -0.594365, 0.201351,
		-0.625327, 0.761761, -0.169373,
		38.228802, 42.362995, 50.673584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246494, 41.528881, 50.360191>,  <38.666531, 41.829765, 50.792145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246494, 41.528881, 50.360191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134205, 41.910973, 50.322807>,  <38.066833, 42.140228, 50.300377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134205, 41.910973, 50.322807>,  <38.246494, 41.528881, 50.360191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134205, 41.910973, 50.322807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201929, -0.153972, -0.967221,
		-0.938307, -0.252647, 0.236111,
		-0.280720, 0.955229, -0.093456,
		38.049988, 42.197540, 50.294769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580349, 41.523842, 50.058270>,  <38.246494, 41.528881, 50.360191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580349, 41.523842, 50.058270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689770, 41.903454, 49.995655>,  <37.755424, 42.131222, 49.958088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689770, 41.903454, 49.995655>,  <37.580349, 41.523842, 50.058270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689770, 41.903454, 49.995655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346587, -0.054552, -0.936430,
		-0.897243, 0.310418, 0.314000,
		0.273555, 0.949034, -0.156534,
		37.771835, 42.188164, 49.948696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087349, 41.825226, 49.708611>,  <37.580349, 41.523842, 50.058270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087349, 41.825226, 49.708611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406059, 42.044670, 49.607277>,  <37.597286, 42.176338, 49.546474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406059, 42.044670, 49.607277>,  <37.087349, 41.825226, 49.708611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406059, 42.044670, 49.607277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255748, -0.073688, -0.963931,
		-0.547491, 0.832824, 0.081594,
		0.796773, 0.548611, -0.253337,
		37.645092, 42.209255, 49.531277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766994, 42.259007, 49.172741>,  <37.087349, 41.825226, 49.708611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766994, 42.259007, 49.172741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164467, 42.279221, 49.132656>,  <37.402950, 42.291348, 49.108604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164467, 42.279221, 49.132656>,  <36.766994, 42.259007, 49.172741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164467, 42.279221, 49.132656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101087, 0.015078, -0.994763,
		-0.048760, 0.998608, 0.020091,
		0.993682, 0.050536, -0.100211,
		37.462570, 42.294380, 49.102592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019577, 42.837502, 48.700348>,  <36.766994, 42.259007, 49.172741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019577, 42.837502, 48.700348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312500, 42.565113, 48.700218>,  <37.488255, 42.401680, 48.700142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312500, 42.565113, 48.700218>,  <37.019577, 42.837502, 48.700348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312500, 42.565113, 48.700218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038533, -0.040968, -0.998417,
		0.679881, 0.731162, -0.056242,
		0.732309, -0.680972, -0.000321,
		37.532192, 42.360821, 48.700123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406460, 43.013149, 48.222694>,  <37.019577, 42.837502, 48.700348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406460, 43.013149, 48.222694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529675, 42.633163, 48.243401>,  <37.603603, 42.405170, 48.255825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529675, 42.633163, 48.243401>,  <37.406460, 43.013149, 48.222694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529675, 42.633163, 48.243401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092799, -0.084158, -0.992122,
		0.946837, 0.300809, -0.114080,
		0.308040, -0.949964, 0.051769,
		37.622086, 42.348175, 48.258930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963135, 42.892815, 47.698486>,  <37.406460, 43.013149, 48.222694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963135, 42.892815, 47.698486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814842, 42.531986, 47.786869>,  <37.725864, 42.315491, 47.839897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814842, 42.531986, 47.786869>,  <37.963135, 42.892815, 47.698486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814842, 42.531986, 47.786869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106669, -0.194978, -0.974990,
		0.922593, -0.385031, -0.023938,
		-0.370734, -0.902072, 0.220957,
		37.703621, 42.261364, 47.853157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230713, 42.578602, 47.199890>,  <37.963135, 42.892815, 47.698486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230713, 42.578602, 47.199890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952065, 42.327908, 47.339558>,  <37.784874, 42.177490, 47.423359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952065, 42.327908, 47.339558>,  <38.230713, 42.578602, 47.199890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952065, 42.327908, 47.339558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146064, -0.352603, -0.924303,
		0.702413, -0.694890, 0.154087,
		-0.696621, -0.626737, 0.349171,
		37.743080, 42.139885, 47.444309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332497, 41.837372, 46.917820>,  <38.230713, 42.578602, 47.199890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332497, 41.837372, 46.917820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943764, 41.865345, 47.007851>,  <37.710526, 41.882130, 47.061867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943764, 41.865345, 47.007851>,  <38.332497, 41.837372, 46.917820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943764, 41.865345, 47.007851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234394, -0.386729, -0.891908,
		0.024667, -0.919538, 0.392227,
		-0.971829, 0.069935, 0.225073,
		37.652214, 41.886326, 47.075371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101227, 41.107719, 46.819550>,  <38.332497, 41.837372, 46.917820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101227, 41.107719, 46.819550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795414, 41.365189, 46.805893>,  <37.611927, 41.519672, 46.797699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795414, 41.365189, 46.805893>,  <38.101227, 41.107719, 46.819550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795414, 41.365189, 46.805893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308467, -0.411869, -0.857445,
		-0.565979, -0.645016, 0.513442,
		-0.764536, 0.643676, -0.034143,
		37.566051, 41.558292, 46.795650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643890, 40.737938, 46.401070>,  <38.101227, 41.107719, 46.819550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643890, 40.737938, 46.401070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497253, 41.109356, 46.424412>,  <37.409271, 41.332207, 46.438419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497253, 41.109356, 46.424412>,  <37.643890, 40.737938, 46.401070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497253, 41.109356, 46.424412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426103, -0.111806, -0.897739,
		-0.827070, -0.353973, 0.436645,
		-0.366596, 0.928549, 0.058357,
		37.387276, 41.387920, 46.441917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972881, 40.674969, 46.133503>,  <37.643890, 40.737938, 46.401070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972881, 40.674969, 46.133503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046593, 41.065338, 46.086842>,  <37.090820, 41.299561, 46.058846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046593, 41.065338, 46.086842>,  <36.972881, 40.674969, 46.133503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046593, 41.065338, 46.086842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331967, -0.049912, -0.941970,
		-0.925116, 0.212309, 0.314778,
		0.184277, 0.975927, -0.116653,
		37.101875, 41.358116, 46.051846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399960, 40.919815, 45.785408>,  <36.972881, 40.674969, 46.133503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399960, 40.919815, 45.785408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722450, 41.146805, 45.718517>,  <36.915947, 41.283001, 45.678383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722450, 41.146805, 45.718517>,  <36.399960, 40.919815, 45.785408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722450, 41.146805, 45.718517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145120, -0.084324, -0.985814,
		-0.573528, 0.819060, 0.014368,
		0.806230, 0.567477, -0.167224,
		36.964317, 41.317047, 45.668350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758293, 41.333748, 45.884224>,  <36.399960, 40.919815, 45.785408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758293, 41.333748, 45.884224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369362, 41.421013, 45.850822>,  <35.136002, 41.473373, 45.830784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369362, 41.421013, 45.850822>,  <35.758293, 41.333748, 45.884224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369362, 41.421013, 45.850822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019725, 0.432855, 0.901247,
		0.232766, 0.874665, -0.425183,
		-0.972333, 0.218166, -0.083501,
		35.077663, 41.486462, 45.825771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731232, 42.052891, 46.213131>,  <35.758293, 41.333748, 45.884224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731232, 42.052891, 46.213131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351540, 41.927059, 46.212067>,  <35.123726, 41.851559, 46.211430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351540, 41.927059, 46.212067>,  <35.731232, 42.052891, 46.213131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351540, 41.927059, 46.212067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093675, 0.274576, 0.956992,
		-0.300320, 0.908652, -0.290103,
		-0.949228, -0.314579, -0.002657,
		35.066772, 41.832684, 46.211269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372574, 42.557919, 46.420986>,  <35.731232, 42.052891, 46.213131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372574, 42.557919, 46.420986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161404, 42.229252, 46.506927>,  <35.034702, 42.032051, 46.558491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161404, 42.229252, 46.506927>,  <35.372574, 42.557919, 46.420986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161404, 42.229252, 46.506927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012202, 0.245617, 0.969290,
		-0.849202, 0.514337, -0.119642,
		-0.527928, -0.821663, 0.214854,
		35.003025, 41.982754, 46.571384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846680, 42.758793, 46.812241>,  <35.372574, 42.557919, 46.420986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846680, 42.758793, 46.812241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821972, 42.365074, 46.878380>,  <34.807148, 42.128841, 46.918064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821972, 42.365074, 46.878380>,  <34.846680, 42.758793, 46.812241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821972, 42.365074, 46.878380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287293, 0.176185, 0.941500,
		-0.955849, 0.010651, -0.293665,
		-0.061768, -0.984300, 0.165346,
		34.803440, 42.069786, 46.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176445, 42.531570, 47.037235>,  <34.846680, 42.758793, 46.812241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176445, 42.531570, 47.037235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431545, 42.253605, 47.170124>,  <34.584606, 42.086826, 47.249859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431545, 42.253605, 47.170124>,  <34.176445, 42.531570, 47.037235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431545, 42.253605, 47.170124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313139, 0.160148, 0.936107,
		-0.703717, -0.701035, -0.115469,
		0.637752, -0.694912, 0.332221,
		34.622871, 42.045132, 47.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801159, 42.234581, 47.583755>,  <34.176445, 42.531570, 47.037235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801159, 42.234581, 47.583755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183483, 42.133400, 47.643688>,  <34.412876, 42.072689, 47.679646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183483, 42.133400, 47.643688>,  <33.801159, 42.234581, 47.583755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183483, 42.133400, 47.643688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114928, 0.147595, 0.982348,
		-0.270604, -0.956153, 0.112000,
		0.955806, -0.252955, 0.149829,
		34.470226, 42.057514, 47.688637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776188, 41.859810, 48.161034>,  <33.801159, 42.234581, 47.583755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776188, 41.859810, 48.161034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.168827, 41.936195, 48.160206>,  <34.404411, 41.982029, 48.159710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.168827, 41.936195, 48.160206>,  <33.776188, 41.859810, 48.161034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168827, 41.936195, 48.160206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019868, 0.112868, 0.993411,
		0.189941, -0.975086, 0.114584,
		0.981595, 0.190966, -0.002066,
		34.463306, 41.993484, 48.159588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703278, 41.103466, 48.191334>,  <33.776188, 41.859810, 48.161034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703278, 41.103466, 48.191334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396412, 40.848652, 48.221401>,  <33.212292, 40.695763, 48.239441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396412, 40.848652, 48.221401>,  <33.703278, 41.103466, 48.191334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396412, 40.848652, 48.221401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140593, 0.052645, -0.988667,
		0.625855, -0.769038, -0.129949,
		-0.767163, -0.637032, 0.075173,
		33.166264, 40.657543, 48.243954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788857, 40.632389, 47.574856>,  <33.703278, 41.103466, 48.191334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788857, 40.632389, 47.574856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403725, 40.591919, 47.675034>,  <33.172646, 40.567638, 47.735142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403725, 40.591919, 47.675034>,  <33.788857, 40.632389, 47.574856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403725, 40.591919, 47.675034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247047, -0.045047, -0.967956,
		0.109214, -0.993848, 0.018378,
		-0.962829, -0.101175, 0.250447,
		33.114876, 40.561569, 47.750168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526566, 40.098850, 47.133335>,  <33.788857, 40.632389, 47.574856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526566, 40.098850, 47.133335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192818, 40.270786, 47.271362>,  <32.992569, 40.373947, 47.354179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192818, 40.270786, 47.271362>,  <33.526566, 40.098850, 47.133335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192818, 40.270786, 47.271362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415485, -0.079053, -0.906158,
		-0.362225, -0.899438, 0.244551,
		-0.834366, 0.429841, 0.345068,
		32.942509, 40.399738, 47.374882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934799, 39.590893, 47.121975>,  <33.526566, 40.098850, 47.133335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934799, 39.590893, 47.121975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776913, 39.958324, 47.130104>,  <32.682182, 40.178783, 47.134983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776913, 39.958324, 47.130104>,  <32.934799, 39.590893, 47.121975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776913, 39.958324, 47.130104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448168, -0.173175, -0.877015,
		-0.802087, -0.355281, 0.480032,
		-0.394717, 0.918578, 0.020324,
		32.658497, 40.233898, 47.136200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359188, 39.449142, 46.715000>,  <32.934799, 39.590893, 47.121975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359188, 39.449142, 46.715000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391899, 39.846012, 46.752735>,  <32.411526, 40.084133, 46.775375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391899, 39.846012, 46.752735>,  <32.359188, 39.449142, 46.715000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391899, 39.846012, 46.752735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298353, 0.114681, -0.947541,
		-0.950946, 0.049339, 0.305397,
		0.081773, 0.992176, 0.094335,
		32.416431, 40.143665, 46.781036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650976, 39.602970, 46.637123>,  <32.359188, 39.449142, 46.715000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650976, 39.602970, 46.637123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913004, 39.893902, 46.555267>,  <32.070221, 40.068462, 46.506153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913004, 39.893902, 46.555267>,  <31.650976, 39.602970, 46.637123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913004, 39.893902, 46.555267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411985, 0.116794, -0.903674,
		-0.633368, 0.676278, 0.376157,
		0.655067, 0.727329, -0.204643,
		32.109524, 40.112103, 46.493874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282785, 40.148666, 46.198780>,  <31.650976, 39.602970, 46.637123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282785, 40.148666, 46.198780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672005, 40.222622, 46.143654>,  <31.905537, 40.266994, 46.110577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672005, 40.222622, 46.143654>,  <31.282785, 40.148666, 46.198780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672005, 40.222622, 46.143654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161081, 0.117298, -0.979946,
		-0.165019, 0.975734, 0.143919,
		0.973048, 0.184892, -0.137816,
		31.963919, 40.278088, 46.102310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.143677, 38.960281, 51.112621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510803, 39.118549, 51.125641>,  <37.731079, 39.213509, 51.133453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510803, 39.118549, 51.125641>,  <37.143677, 38.960281, 51.112621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510803, 39.118549, 51.125641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128714, -0.219016, -0.967194,
		-0.375562, 0.891895, -0.251944,
		0.917816, 0.395670, 0.032545,
		37.786148, 39.237251, 51.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331882, 39.166531, 50.363914>,  <37.143677, 38.960281, 51.112621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331882, 39.166531, 50.363914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.690472, 39.131927, 50.537746>,  <37.905624, 39.111168, 50.642044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.690472, 39.131927, 50.537746>,  <37.331882, 39.166531, 50.363914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690472, 39.131927, 50.537746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363660, -0.416729, -0.833120,
		0.253170, 0.904906, -0.342126,
		0.896469, -0.086504, 0.434581,
		37.959412, 39.105976, 50.668121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792316, 39.499626, 49.945057>,  <37.331882, 39.166531, 50.363914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792316, 39.499626, 49.945057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.975845, 39.206150, 50.145531>,  <38.085964, 39.030064, 50.265816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.975845, 39.206150, 50.145531>,  <37.792316, 39.499626, 49.945057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975845, 39.206150, 50.145531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374283, -0.351976, -0.857919,
		0.805848, 0.581218, 0.113112,
		0.458825, -0.733688, 0.501180,
		38.113491, 38.986042, 50.295883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432056, 39.522556, 49.632412>,  <37.792316, 39.499626, 49.945057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432056, 39.522556, 49.632412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.428734, 39.177471, 49.834660>,  <38.426743, 38.970421, 49.956009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.428734, 39.177471, 49.834660>,  <38.432056, 39.522556, 49.632412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428734, 39.177471, 49.834660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333587, -0.479063, -0.811923,
		0.942683, 0.161928, 0.291768,
		-0.008302, -0.862716, 0.505621,
		38.426243, 38.918655, 49.986347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008842, 39.182297, 49.531635>,  <38.432056, 39.522556, 49.632412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008842, 39.182297, 49.531635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792477, 38.863075, 49.637859>,  <38.662655, 38.671543, 49.701595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792477, 38.863075, 49.637859>,  <39.008842, 39.182297, 49.531635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792477, 38.863075, 49.637859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187411, -0.422164, -0.886935,
		0.819929, -0.429991, 0.377920,
		-0.540919, -0.798051, 0.265560,
		38.630199, 38.623661, 49.717525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377373, 38.619720, 49.394077>,  <39.008842, 39.182297, 49.531635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377373, 38.619720, 49.394077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.004673, 38.476570, 49.418636>,  <38.781052, 38.390678, 49.433372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.004673, 38.476570, 49.418636>,  <39.377373, 38.619720, 49.394077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004673, 38.476570, 49.418636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167105, -0.572748, -0.802518,
		0.322369, -0.737485, 0.593460,
		-0.931748, -0.357877, 0.061399,
		38.725147, 38.369205, 49.437057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436268, 37.922428, 49.312603>,  <39.377373, 38.619720, 49.394077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436268, 37.922428, 49.312603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.052025, 37.991760, 49.225704>,  <38.821480, 38.033360, 49.173565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.052025, 37.991760, 49.225704>,  <39.436268, 37.922428, 49.312603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052025, 37.991760, 49.225704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089518, -0.547075, -0.832283,
		-0.263108, -0.818942, 0.510007,
		-0.960604, 0.173325, -0.217250,
		38.763844, 38.043758, 49.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032871, 37.236122, 49.084576>,  <39.436268, 37.922428, 49.312603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032871, 37.236122, 49.084576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.839527, 37.561771, 48.955849>,  <38.723518, 37.757160, 48.878613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.839527, 37.561771, 48.955849>,  <39.032871, 37.236122, 49.084576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839527, 37.561771, 48.955849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140665, -0.435072, -0.889340,
		-0.864044, -0.384606, 0.324817,
		-0.483364, 0.814119, -0.321821,
		38.694519, 37.806007, 48.859303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661816, 36.904125, 48.697147>,  <39.032871, 37.236122, 49.084576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661816, 36.904125, 48.697147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.589645, 37.274952, 48.565697>,  <38.546345, 37.497448, 48.486828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.589645, 37.274952, 48.565697>,  <38.661816, 36.904125, 48.697147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589645, 37.274952, 48.565697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083316, -0.347311, -0.934041,
		-0.980054, -0.141143, 0.139902,
		-0.180423, 0.927067, -0.328625,
		38.535519, 37.553074, 48.467110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002075, 36.826847, 48.261009>,  <38.661816, 36.904125, 48.697147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002075, 36.826847, 48.261009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.164711, 37.177040, 48.156536>,  <38.262295, 37.387157, 48.093853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.164711, 37.177040, 48.156536>,  <38.002075, 36.826847, 48.261009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164711, 37.177040, 48.156536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112711, -0.235624, -0.965286,
		-0.906630, 0.421917, 0.002874,
		0.406594, 0.875481, -0.261178,
		38.286690, 37.439686, 48.078182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646080, 37.027260, 47.797127>,  <38.002075, 36.826847, 48.261009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646080, 37.027260, 47.797127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.958908, 37.265839, 47.724884>,  <38.146606, 37.408985, 47.681538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.958908, 37.265839, 47.724884>,  <37.646080, 37.027260, 47.797127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958908, 37.265839, 47.724884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050481, -0.228222, -0.972299,
		-0.621141, 0.769524, -0.148377,
		0.782071, 0.596445, -0.180605,
		38.193531, 37.444771, 47.670704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415962, 37.410599, 47.196594>,  <37.646080, 37.027260, 47.797127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415962, 37.410599, 47.196594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.815113, 37.400940, 47.220802>,  <38.054604, 37.395145, 47.235329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.815113, 37.400940, 47.220802>,  <37.415962, 37.410599, 47.196594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815113, 37.400940, 47.220802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049238, -0.328896, -0.943082,
		0.042676, 0.944057, -0.327008,
		0.997875, -0.024146, 0.060519,
		38.114475, 37.393696, 47.238956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832611, 37.828335, 46.839134>,  <37.415962, 37.410599, 47.196594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832611, 37.828335, 46.839134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590775, 37.542362, 46.979622>,  <36.445675, 37.370781, 47.063915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590775, 37.542362, 46.979622>,  <36.832611, 37.828335, 46.839134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590775, 37.542362, 46.979622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059922, 0.398858, 0.915053,
		-0.794282, 0.574275, -0.198305,
		-0.604588, -0.714927, 0.351217,
		36.409397, 37.327885, 47.084988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379349, 38.118179, 47.341270>,  <36.832611, 37.828335, 46.839134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379349, 38.118179, 47.341270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293983, 37.739048, 47.435986>,  <36.242764, 37.511570, 47.492813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293983, 37.739048, 47.435986>,  <36.379349, 38.118179, 47.341270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293983, 37.739048, 47.435986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155859, 0.272299, 0.949506,
		-0.964449, 0.165736, -0.205841,
		-0.213417, -0.947832, 0.236787,
		36.229958, 37.454697, 47.507023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791405, 38.149750, 47.788162>,  <36.379349, 38.118179, 47.341270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791405, 38.149750, 47.788162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.976070, 37.804646, 47.870628>,  <36.086872, 37.597584, 47.920109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.976070, 37.804646, 47.870628>,  <35.791405, 38.149750, 47.788162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976070, 37.804646, 47.870628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082118, 0.189852, 0.978372,
		-0.883244, -0.468613, 0.016801,
		0.461668, -0.862762, 0.206167,
		36.114571, 37.545818, 47.932480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320190, 37.835251, 48.293732>,  <35.791405, 38.149750, 47.788162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320190, 37.835251, 48.293732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.663269, 37.639683, 48.357380>,  <35.869118, 37.522343, 48.395569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.663269, 37.639683, 48.357380>,  <35.320190, 37.835251, 48.293732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663269, 37.639683, 48.357380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114894, 0.119395, 0.986177,
		-0.501158, -0.864120, 0.046230,
		0.857695, -0.488918, 0.159118,
		35.920578, 37.493008, 48.405117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199306, 37.182335, 48.550964>,  <35.320190, 37.835251, 48.293732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199306, 37.182335, 48.550964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.558838, 37.274662, 48.700001>,  <35.774559, 37.330059, 48.789421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.558838, 37.274662, 48.700001>,  <35.199306, 37.182335, 48.550964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558838, 37.274662, 48.700001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303566, -0.285326, 0.909086,
		0.316144, -0.930221, -0.186391,
		0.898833, 0.230820, 0.372588,
		35.828487, 37.343906, 48.811775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238194, 36.750130, 49.094124>,  <35.199306, 37.182335, 48.550964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238194, 36.750130, 49.094124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.554790, 36.982738, 49.169361>,  <35.744747, 37.122303, 49.214504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.554790, 36.982738, 49.169361>,  <35.238194, 36.750130, 49.094124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554790, 36.982738, 49.169361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139184, -0.128173, 0.981937,
		0.595122, -0.803374, -0.020510,
		0.791491, 0.581517, 0.188096,
		35.792236, 37.157192, 49.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557327, 36.422867, 49.789276>,  <35.238194, 36.750130, 49.094124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557327, 36.422867, 49.789276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.670532, 36.799492, 49.716206>,  <35.738457, 37.025467, 49.672363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.670532, 36.799492, 49.716206>,  <35.557327, 36.422867, 49.789276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670532, 36.799492, 49.716206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000235, 0.190529, 0.981682,
		0.959115, -0.277788, 0.054144,
		0.283016, 0.941559, -0.182674,
		35.755436, 37.081959, 49.661404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233459, 36.600491, 50.141937>,  <35.557327, 36.422867, 49.789276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233459, 36.600491, 50.141937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107338, 36.969921, 50.054680>,  <36.031666, 37.191578, 50.002323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107338, 36.969921, 50.054680>,  <36.233459, 36.600491, 50.141937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107338, 36.969921, 50.054680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027687, 0.238727, 0.970692,
		0.948585, 0.300028, -0.100844,
		-0.315309, 0.923576, -0.218146,
		36.012745, 37.246994, 49.989235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530346, 36.986328, 50.626904>,  <36.233459, 36.600491, 50.141937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530346, 36.986328, 50.626904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.242950, 37.216446, 50.470535>,  <36.070515, 37.354515, 50.376717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.242950, 37.216446, 50.470535>,  <36.530346, 36.986328, 50.626904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242950, 37.216446, 50.470535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110460, 0.460523, 0.880748,
		0.686714, 0.675986, -0.267332,
		-0.718486, 0.575293, -0.390917,
		36.027405, 37.389034, 50.353260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665428, 37.654449, 50.844879>,  <36.530346, 36.986328, 50.626904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665428, 37.654449, 50.844879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275505, 37.618721, 50.763119>,  <36.041553, 37.597282, 50.714062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.275505, 37.618721, 50.763119>,  <36.665428, 37.654449, 50.844879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275505, 37.618721, 50.763119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221972, 0.478931, 0.849326,
		0.022027, 0.873297, -0.486691,
		-0.974804, -0.089324, -0.204397,
		35.983063, 37.591923, 50.701801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426170, 38.286663, 51.076900>,  <36.665428, 37.654449, 50.844879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426170, 38.286663, 51.076900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111996, 38.040222, 51.053238>,  <35.923489, 37.892357, 51.039040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111996, 38.040222, 51.053238>,  <36.426170, 38.286663, 51.076900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111996, 38.040222, 51.053238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386066, 0.412975, 0.824867,
		-0.483777, 0.670720, -0.562224,
		-0.785439, -0.616106, -0.059155,
		35.876366, 37.855389, 51.035492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820293, 38.735157, 51.166447>,  <36.426170, 38.286663, 51.076900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820293, 38.735157, 51.166447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.729942, 38.357277, 51.261539>,  <35.675732, 38.130547, 51.318596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.729942, 38.357277, 51.261539>,  <35.820293, 38.735157, 51.166447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729942, 38.357277, 51.261539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287340, 0.297791, 0.910360,
		-0.930814, 0.137323, -0.338716,
		-0.225880, -0.944702, 0.237730,
		35.662178, 38.073868, 51.332859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090851, 38.693291, 51.366894>,  <35.820293, 38.735157, 51.166447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090851, 38.693291, 51.366894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.327736, 38.418659, 51.535606>,  <35.469868, 38.253880, 51.636833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.327736, 38.418659, 51.535606>,  <35.090851, 38.693291, 51.366894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327736, 38.418659, 51.535606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457167, 0.144756, 0.877521,
		-0.663542, -0.712501, -0.228155,
		0.592208, -0.686577, 0.421784,
		35.505398, 38.212685, 51.662140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525368, 39.236084, 51.142643>,  <35.090851, 38.693291, 51.366894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525368, 39.236084, 51.142643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159496, 39.365974, 51.238907>,  <33.939972, 39.443909, 51.296665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159496, 39.365974, 51.238907>,  <34.525368, 39.236084, 51.142643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159496, 39.365974, 51.238907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198511, 0.157743, -0.967321,
		-0.352079, -0.932560, -0.079821,
		-0.914677, 0.324728, 0.240662,
		33.885094, 39.463394, 51.311104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971409, 38.839821, 50.689442>,  <34.525368, 39.236084, 51.142643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971409, 38.839821, 50.689442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.842506, 39.203369, 50.795357>,  <33.765167, 39.421497, 50.858906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.842506, 39.203369, 50.795357>,  <33.971409, 38.839821, 50.689442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842506, 39.203369, 50.795357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172716, 0.218568, -0.960415,
		-0.930764, -0.355231, 0.086541,
		-0.322254, 0.908867, 0.264789,
		33.745831, 39.476028, 50.874794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382080, 38.957806, 50.350315>,  <33.971409, 38.839821, 50.689442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382080, 38.957806, 50.350315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481152, 39.336731, 50.431557>,  <33.540596, 39.564087, 50.480301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481152, 39.336731, 50.431557>,  <33.382080, 38.957806, 50.350315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481152, 39.336731, 50.431557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278942, 0.270488, -0.921427,
		-0.927818, 0.171562, 0.331240,
		0.247678, 0.947313, 0.203108,
		33.555454, 39.620926, 50.492489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862000, 39.255672, 50.110001>,  <33.382080, 38.957806, 50.350315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862000, 39.255672, 50.110001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.145161, 39.537518, 50.129547>,  <33.315060, 39.706627, 50.141273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.145161, 39.537518, 50.129547>,  <32.862000, 39.255672, 50.110001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145161, 39.537518, 50.129547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176224, 0.243190, -0.953836,
		-0.683971, 0.666614, 0.296326,
		0.707904, 0.704616, 0.048862,
		33.357533, 39.748901, 50.144207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543980, 39.925552, 49.932297>,  <32.862000, 39.255672, 50.110001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543980, 39.925552, 49.932297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.933399, 39.993996, 49.871742>,  <33.167053, 40.035061, 49.835407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.933399, 39.993996, 49.871742>,  <32.543980, 39.925552, 49.932297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933399, 39.993996, 49.871742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206691, 0.377309, -0.902727,
		-0.097345, 0.910143, 0.402696,
		0.973552, 0.171109, -0.151390,
		33.225464, 40.045330, 49.826324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510059, 40.586334, 49.615391>,  <32.543980, 39.925552, 49.932297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510059, 40.586334, 49.615391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.851864, 40.405033, 49.513905>,  <33.056946, 40.296253, 49.453014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.851864, 40.405033, 49.513905>,  <32.510059, 40.586334, 49.615391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851864, 40.405033, 49.513905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094499, 0.344639, -0.933967,
		0.510766, 0.822060, 0.251665,
		0.854510, -0.453257, -0.253714,
		33.108215, 40.269054, 49.437790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002239, 41.179459, 49.454830>,  <32.510059, 40.586334, 49.615391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002239, 41.179459, 49.454830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.099682, 40.829838, 49.286697>,  <33.158146, 40.620064, 49.185818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.099682, 40.829838, 49.286697>,  <33.002239, 41.179459, 49.454830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099682, 40.829838, 49.286697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249540, 0.362316, -0.898029,
		0.937222, 0.323656, -0.129850,
		0.243606, -0.874056, -0.420336,
		33.172764, 40.567619, 49.160595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276897, 41.322701, 48.863007>,  <33.002239, 41.179459, 49.454830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276897, 41.322701, 48.863007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219231, 40.937237, 48.773048>,  <33.184631, 40.705959, 48.719074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219231, 40.937237, 48.773048>,  <33.276897, 41.322701, 48.863007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219231, 40.937237, 48.773048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047581, 0.233761, -0.971129,
		0.988409, -0.129302, -0.079552,
		-0.144165, -0.963658, -0.224899,
		33.175980, 40.648140, 48.705578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022724, 41.555759, 48.847553>,  <33.276897, 41.322701, 48.863007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022724, 41.555759, 48.847553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314697, 41.797264, 48.719387>,  <34.489883, 41.942165, 48.642487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314697, 41.797264, 48.719387>,  <34.022724, 41.555759, 48.847553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314697, 41.797264, 48.719387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260258, 0.187957, 0.947068,
		0.632028, -0.774689, -0.019937,
		0.729936, 0.603763, -0.320413,
		34.533680, 41.978394, 48.623264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692822, 41.412209, 49.236416>,  <34.022724, 41.555759, 48.847553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692822, 41.412209, 49.236416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.734756, 41.787399, 49.104233>,  <34.759918, 42.012516, 49.024921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.734756, 41.787399, 49.104233>,  <34.692822, 41.412209, 49.236416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734756, 41.787399, 49.104233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283553, 0.290302, 0.913959,
		0.953208, -0.189523, -0.235532,
		0.104841, 0.937980, -0.330458,
		34.766209, 42.068794, 49.005096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389179, 41.621845, 49.441055>,  <34.692822, 41.412209, 49.236416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389179, 41.621845, 49.441055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184170, 41.959488, 49.378063>,  <35.061165, 42.162075, 49.340267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184170, 41.959488, 49.378063>,  <35.389179, 41.621845, 49.441055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184170, 41.959488, 49.378063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323123, 0.359509, 0.875411,
		0.795557, 0.397785, -0.457009,
		-0.512524, 0.844109, -0.157477,
		35.030411, 42.212719, 49.330822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873779, 42.086826, 49.549904>,  <35.389179, 41.621845, 49.441055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873779, 42.086826, 49.549904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520981, 42.267067, 49.605106>,  <35.309303, 42.375210, 49.638229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520981, 42.267067, 49.605106>,  <35.873779, 42.086826, 49.549904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520981, 42.267067, 49.605106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351437, 0.433786, 0.829652,
		0.313977, 0.780248, -0.540954,
		-0.881993, 0.450603, 0.138009,
		35.256382, 42.402248, 49.646507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030403, 42.775093, 49.718018>,  <35.873779, 42.086826, 49.549904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030403, 42.775093, 49.718018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.648983, 42.730755, 49.830059>,  <35.420132, 42.704151, 49.897282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.648983, 42.730755, 49.830059>,  <36.030403, 42.775093, 49.718018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648983, 42.730755, 49.830059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171477, 0.564749, 0.807251,
		-0.247669, 0.817784, -0.519509,
		-0.953549, -0.110847, 0.280102,
		35.362919, 42.697502, 49.914089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850140, 43.348587, 50.025883>,  <36.030403, 42.775093, 49.718018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850140, 43.348587, 50.025883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.552193, 43.121826, 50.166615>,  <35.373425, 42.985767, 50.251053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.552193, 43.121826, 50.166615>,  <35.850140, 43.348587, 50.025883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552193, 43.121826, 50.166615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008226, 0.519474, 0.854447,
		-0.667158, 0.639347, -0.382277,
		-0.744871, -0.566907, 0.351830,
		35.328732, 42.951756, 50.272163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520737, 43.747803, 50.525719>,  <35.850140, 43.348587, 50.025883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520737, 43.747803, 50.525719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436020, 43.364113, 50.600586>,  <35.385189, 43.133900, 50.645508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436020, 43.364113, 50.600586>,  <35.520737, 43.747803, 50.525719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436020, 43.364113, 50.600586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215023, 0.141087, 0.966364,
		-0.953368, 0.244913, 0.176375,
		-0.211791, -0.959225, 0.187170,
		35.372482, 43.076344, 50.656738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257954, 43.799564, 51.191666>,  <35.520737, 43.747803, 50.525719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257954, 43.799564, 51.191666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.356167, 43.412167, 51.174992>,  <35.415092, 43.179729, 51.164989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.356167, 43.412167, 51.174992>,  <35.257954, 43.799564, 51.191666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356167, 43.412167, 51.174992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470324, 0.081416, 0.878730,
		-0.847650, -0.235358, 0.475495,
		0.245529, -0.968493, -0.041683,
		35.429825, 43.121620, 51.162487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079983, 43.488476, 51.844856>,  <35.257954, 43.799564, 51.191666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079983, 43.488476, 51.844856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341663, 43.222641, 51.700447>,  <35.498672, 43.063141, 51.613804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341663, 43.222641, 51.700447>,  <35.079983, 43.488476, 51.844856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341663, 43.222641, 51.700447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360505, -0.145612, 0.921321,
		-0.664872, -0.732881, 0.144329,
		0.654203, -0.664592, -0.361021,
		35.537926, 43.023262, 51.592140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.393848, 38.852180, 35.888000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764538, 38.728863, 35.973923>,  <35.986950, 38.654873, 36.025475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764538, 38.728863, 35.973923>,  <35.393848, 38.852180, 35.888000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764538, 38.728863, 35.973923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104194, 0.338411, 0.935212,
		-0.361018, -0.889061, 0.281490,
		0.926720, -0.308299, 0.214807,
		36.042553, 38.636372, 36.038364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383598, 38.255138, 36.419998>,  <35.393848, 38.852180, 35.888000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383598, 38.255138, 36.419998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742722, 38.431286, 36.418259>,  <35.958195, 38.536976, 36.417213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742722, 38.431286, 36.418259>,  <35.383598, 38.255138, 36.419998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742722, 38.431286, 36.418259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052751, 0.117339, 0.991690,
		0.437220, -0.890116, 0.128577,
		0.897806, 0.440369, -0.004348,
		36.012062, 38.563396, 36.416954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826801, 37.902454, 37.033146>,  <35.383598, 38.255138, 36.419998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826801, 37.902454, 37.033146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993591, 38.262516, 36.982788>,  <36.093666, 38.478554, 36.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993591, 38.262516, 36.982788>,  <35.826801, 37.902454, 37.033146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993591, 38.262516, 36.982788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211362, 0.230745, 0.949780,
		0.883999, -0.369430, 0.286475,
		0.416980, 0.900154, -0.125895,
		36.118687, 38.532562, 36.945019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423065, 38.014061, 37.490479>,  <35.826801, 37.902454, 37.033146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423065, 38.014061, 37.490479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274742, 38.373764, 37.397667>,  <36.185749, 38.589584, 37.341980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274742, 38.373764, 37.397667>,  <36.423065, 38.014061, 37.490479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274742, 38.373764, 37.397667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048444, 0.230771, 0.971801,
		0.927443, 0.371596, -0.042009,
		-0.370812, 0.899256, -0.232029,
		36.163498, 38.643539, 37.328056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669376, 38.448578, 38.033535>,  <36.423065, 38.014061, 37.490479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669376, 38.448578, 38.033535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380062, 38.675438, 37.875950>,  <36.206474, 38.811554, 37.781399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380062, 38.675438, 37.875950>,  <36.669376, 38.448578, 38.033535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380062, 38.675438, 37.875950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305940, 0.248283, 0.919106,
		0.619082, 0.785303, -0.006066,
		-0.723283, 0.567146, -0.393963,
		36.163078, 38.845581, 37.757759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637177, 39.126461, 38.426228>,  <36.669376, 38.448578, 38.033535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637177, 39.126461, 38.426228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281384, 39.102268, 38.245049>,  <36.067905, 39.087753, 38.136341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281384, 39.102268, 38.245049>,  <36.637177, 39.126461, 38.426228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281384, 39.102268, 38.245049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432427, 0.431845, 0.791528,
		0.147726, 0.899918, -0.410275,
		-0.889485, -0.060484, -0.452943,
		36.014538, 39.084122, 38.109165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332657, 39.813801, 38.552559>,  <36.637177, 39.126461, 38.426228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332657, 39.813801, 38.552559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024029, 39.593735, 38.424812>,  <35.838852, 39.461697, 38.348164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024029, 39.593735, 38.424812>,  <36.332657, 39.813801, 38.552559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024029, 39.593735, 38.424812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615212, 0.517615, 0.594634,
		-0.161835, 0.655283, -0.737844,
		-0.771572, -0.550163, -0.319370,
		35.792557, 39.428684, 38.329002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834053, 40.356464, 38.298512>,  <36.332657, 39.813801, 38.552559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834053, 40.356464, 38.298512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686317, 40.006706, 38.424381>,  <35.597675, 39.796852, 38.499901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686317, 40.006706, 38.424381>,  <35.834053, 40.356464, 38.298512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686317, 40.006706, 38.424381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671185, 0.485195, 0.560443,
		-0.642726, -0.004206, -0.766085,
		-0.369343, -0.874396, 0.314671,
		35.575516, 39.744389, 38.518784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186714, 40.574554, 38.467396>,  <35.834053, 40.356464, 38.298512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186714, 40.574554, 38.467396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220802, 40.215858, 38.641109>,  <35.241253, 40.000641, 38.745338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220802, 40.215858, 38.641109>,  <35.186714, 40.574554, 38.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220802, 40.215858, 38.641109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509558, 0.335329, 0.792404,
		-0.856206, -0.288818, -0.428364,
		0.085218, -0.896738, 0.434280,
		35.246368, 39.946838, 38.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492920, 40.456070, 38.845802>,  <35.186714, 40.574554, 38.467396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492920, 40.456070, 38.845802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728565, 40.185562, 39.022713>,  <34.869953, 40.023258, 39.128860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728565, 40.185562, 39.022713>,  <34.492920, 40.456070, 38.845802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728565, 40.185562, 39.022713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518212, 0.103772, 0.848933,
		-0.620001, -0.729311, -0.289316,
		0.589113, -0.676267, 0.442277,
		34.905300, 39.982681, 39.155396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044804, 39.956085, 39.242310>,  <34.492920, 40.456070, 38.845802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044804, 39.956085, 39.242310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405903, 39.971058, 39.413723>,  <34.622562, 39.980042, 39.516571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405903, 39.971058, 39.413723>,  <34.044804, 39.956085, 39.242310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405903, 39.971058, 39.413723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430162, 0.084196, 0.898817,
		-0.002439, -0.995746, 0.092108,
		0.902749, 0.037429, 0.428538,
		34.676727, 39.982288, 39.542286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096424, 39.523579, 39.693596>,  <34.044804, 39.956085, 39.242310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096424, 39.523579, 39.693596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388615, 39.767982, 39.815628>,  <34.563927, 39.914627, 39.888847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388615, 39.767982, 39.815628>,  <34.096424, 39.523579, 39.693596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388615, 39.767982, 39.815628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427302, 0.060430, 0.902087,
		0.532750, -0.789312, 0.305229,
		0.730473, 0.611012, 0.305080,
		34.607758, 39.951286, 39.907154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663517, 38.991104, 40.058186>,  <34.096424, 39.523579, 39.693596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663517, 38.991104, 40.058186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304333, 38.842682, 40.152836>,  <33.088821, 38.753628, 40.209625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304333, 38.842682, 40.152836>,  <33.663517, 38.991104, 40.058186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304333, 38.842682, 40.152836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082796, -0.670525, -0.737252,
		0.432224, -0.642430, 0.632825,
		-0.897958, -0.371053, 0.236626,
		33.034946, 38.731365, 40.223824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816608, 38.266201, 40.065865>,  <33.663517, 38.991104, 40.058186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816608, 38.266201, 40.065865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426853, 38.337303, 40.010765>,  <33.193001, 38.379963, 39.977703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426853, 38.337303, 40.010765>,  <33.816608, 38.266201, 40.065865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426853, 38.337303, 40.010765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015630, -0.664603, -0.747033,
		-0.224339, -0.725746, 0.650358,
		-0.974386, 0.177754, -0.137752,
		33.134537, 38.390629, 39.969440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612045, 37.604183, 39.933357>,  <33.816608, 38.266201, 40.065865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612045, 37.604183, 39.933357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318600, 37.845161, 39.807590>,  <33.142532, 37.989750, 39.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318600, 37.845161, 39.807590>,  <33.612045, 37.604183, 39.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318600, 37.845161, 39.807590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012875, -0.474916, -0.879937,
		-0.679440, -0.641489, 0.356164,
		-0.733618, 0.602450, -0.314418,
		33.098515, 38.025898, 39.713264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928329, 37.189930, 39.811672>,  <33.612045, 37.604183, 39.933357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928329, 37.189930, 39.811672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928940, 37.526482, 39.595493>,  <32.929306, 37.728413, 39.465786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928940, 37.526482, 39.595493>,  <32.928329, 37.189930, 39.811672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928940, 37.526482, 39.595493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204963, -0.528713, -0.823682,
		-0.978768, 0.112026, 0.171646,
		0.001523, 0.841375, -0.540449,
		32.929398, 37.778893, 39.433357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313469, 37.157745, 39.513729>,  <32.928329, 37.189930, 39.811672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313469, 37.157745, 39.513729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544807, 37.387096, 39.281605>,  <32.683609, 37.524708, 39.142330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544807, 37.387096, 39.281605>,  <32.313469, 37.157745, 39.513729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544807, 37.387096, 39.281605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228835, -0.568764, -0.790027,
		-0.783040, 0.589703, -0.197734,
		0.578346, 0.573374, -0.580309,
		32.718311, 37.559109, 39.107513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977406, 37.333828, 38.952667>,  <32.313469, 37.157745, 39.513729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977406, 37.333828, 38.952667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341854, 37.403042, 38.803047>,  <32.560524, 37.444572, 38.713276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341854, 37.403042, 38.803047>,  <31.977406, 37.333828, 38.952667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341854, 37.403042, 38.803047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284303, -0.393180, -0.874403,
		-0.298373, 0.903032, -0.309041,
		0.911123, 0.173037, -0.374050,
		32.615192, 37.454952, 38.690834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853920, 37.558819, 38.291889>,  <31.977406, 37.333828, 38.952667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853920, 37.558819, 38.291889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234787, 37.438362, 38.312622>,  <32.463306, 37.366089, 38.325062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234787, 37.438362, 38.312622>,  <31.853920, 37.558819, 38.291889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234787, 37.438362, 38.312622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071891, -0.385632, -0.919848,
		0.296997, 0.872123, -0.388837,
		0.952168, -0.301146, 0.051833,
		32.520439, 37.348019, 38.328171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995638, 37.419918, 37.628479>,  <31.853920, 37.558819, 38.291889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995638, 37.419918, 37.628479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323860, 37.250488, 37.781982>,  <32.520794, 37.148830, 37.874084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323860, 37.250488, 37.781982>,  <31.995638, 37.419918, 37.628479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323860, 37.250488, 37.781982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032010, -0.636310, -0.770769,
		0.570668, 0.644744, -0.508570,
		0.820557, -0.423574, 0.383760,
		32.570026, 37.123417, 37.897110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596455, 37.395161, 37.126328>,  <31.995638, 37.419918, 37.628479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596455, 37.395161, 37.126328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679604, 37.107803, 37.391869>,  <32.729492, 36.935390, 37.551193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679604, 37.107803, 37.391869>,  <32.596455, 37.395161, 37.126328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679604, 37.107803, 37.391869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124454, -0.653742, -0.746413,
		0.970206, 0.237780, -0.046489,
		0.207874, -0.718389, 0.663857,
		32.741966, 36.892288, 37.591026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277966, 37.097004, 37.047878>,  <32.596455, 37.395161, 37.126328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277966, 37.097004, 37.047878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074112, 36.814957, 37.245090>,  <32.951801, 36.645729, 37.363419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074112, 36.814957, 37.245090>,  <33.277966, 37.097004, 37.047878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074112, 36.814957, 37.245090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070501, -0.605330, -0.792847,
		0.857500, -0.369300, 0.358206,
		-0.509630, -0.705120, 0.493035,
		32.921223, 36.603420, 37.393002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435333, 36.484875, 36.810169>,  <33.277966, 37.097004, 37.047878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435333, 36.484875, 36.810169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096146, 36.364990, 36.985039>,  <32.892635, 36.293060, 37.089962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096146, 36.364990, 36.985039>,  <33.435333, 36.484875, 36.810169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096146, 36.364990, 36.985039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234491, -0.527568, -0.816508,
		0.475359, -0.794886, 0.377080,
		-0.847967, -0.299713, 0.437178,
		32.841755, 36.275078, 37.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454853, 35.848412, 36.722366>,  <33.435333, 36.484875, 36.810169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454853, 35.848412, 36.722366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063610, 35.910027, 36.778324>,  <32.828865, 35.946995, 36.811897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063610, 35.910027, 36.778324>,  <33.454853, 35.848412, 36.722366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063610, 35.910027, 36.778324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203495, -0.567690, -0.797695,
		-0.043458, -0.808703, 0.586610,
		-0.978111, 0.154038, 0.139896,
		32.770176, 35.956238, 36.820293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179737, 35.236320, 36.682484>,  <33.454853, 35.848412, 36.722366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179737, 35.236320, 36.682484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871311, 35.485931, 36.631805>,  <32.686256, 35.635696, 36.601398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871311, 35.485931, 36.631805>,  <33.179737, 35.236320, 36.682484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871311, 35.485931, 36.631805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393456, -0.623353, -0.675740,
		-0.500654, -0.471191, 0.726172,
		-0.771063, 0.624028, -0.126691,
		32.639992, 35.673141, 36.593800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493103, 34.928570, 36.911388>,  <33.179737, 35.236320, 36.682484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493103, 34.928570, 36.911388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399658, 35.217274, 36.650780>,  <32.343590, 35.390495, 36.494415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399658, 35.217274, 36.650780>,  <32.493103, 34.928570, 36.911388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399658, 35.217274, 36.650780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522554, -0.658270, -0.541865,
		-0.819977, 0.213868, 0.530942,
		-0.233615, 0.721762, -0.651523,
		32.329575, 35.433804, 36.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163204, 34.686337, 37.201038>,  <32.493103, 34.928570, 36.911388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163204, 34.686337, 37.201038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853966, 34.473663, 37.339390>,  <32.668423, 34.346058, 37.422401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853966, 34.473663, 37.339390>,  <33.163204, 34.686337, 37.201038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853966, 34.473663, 37.339390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224152, 0.281103, 0.933133,
		-0.593360, 0.798932, -0.098142,
		-0.773098, -0.531685, 0.345878,
		32.622036, 34.314159, 37.443153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782513, 34.454006, 36.879398>,  <33.163204, 34.686337, 37.201038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782513, 34.454006, 36.879398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176144, 34.440376, 36.949169>,  <34.412323, 34.432198, 36.991032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176144, 34.440376, 36.949169>,  <33.782513, 34.454006, 36.879398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176144, 34.440376, 36.949169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174204, 0.009434, 0.984664,
		-0.035199, -0.999375, 0.003347,
		0.984080, -0.034077, 0.174427,
		34.471367, 34.430153, 37.001495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024952, 33.869495, 37.358486>,  <33.782513, 34.454006, 36.879398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024952, 33.869495, 37.358486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299313, 34.159859, 37.378857>,  <34.463928, 34.334076, 37.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299313, 34.159859, 37.378857>,  <34.024952, 33.869495, 37.358486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299313, 34.159859, 37.378857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014121, -0.056698, 0.998291,
		0.727558, -0.685448, -0.028639,
		0.685901, 0.725911, 0.050930,
		34.505081, 34.377632, 37.394135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370327, 33.615173, 37.947147>,  <34.024952, 33.869495, 37.358486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370327, 33.615173, 37.947147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436348, 34.007820, 37.908806>,  <34.475960, 34.243408, 37.885803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436348, 34.007820, 37.908806>,  <34.370327, 33.615173, 37.947147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436348, 34.007820, 37.908806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034824, 0.091323, 0.995212,
		0.985670, -0.167600, -0.019111,
		0.165052, 0.981616, -0.095851,
		34.485863, 34.302303, 37.880051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822254, 33.789059, 38.498405>,  <34.370327, 33.615173, 37.947147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822254, 33.789059, 38.498405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664680, 34.134323, 38.372063>,  <34.570137, 34.341484, 38.296257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664680, 34.134323, 38.372063>,  <34.822254, 33.789059, 38.498405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664680, 34.134323, 38.372063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056729, 0.320153, 0.945666,
		0.917387, 0.390447, -0.077152,
		-0.393933, 0.863165, -0.315854,
		34.546501, 34.393272, 38.277306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201546, 34.230320, 38.739216>,  <34.822254, 33.789059, 38.498405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201546, 34.230320, 38.739216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860992, 34.430443, 38.676163>,  <34.656662, 34.550518, 38.638332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860992, 34.430443, 38.676163>,  <35.201546, 34.230320, 38.739216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860992, 34.430443, 38.676163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059553, 0.206376, 0.976659,
		0.521160, 0.840894, -0.145910,
		-0.851379, 0.500306, -0.157633,
		34.605579, 34.580536, 38.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285767, 34.691246, 39.200348>,  <35.201546, 34.230320, 38.739216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285767, 34.691246, 39.200348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896259, 34.689377, 39.109352>,  <34.662556, 34.688255, 39.054752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896259, 34.689377, 39.109352>,  <35.285767, 34.691246, 39.200348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896259, 34.689377, 39.109352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222964, 0.219130, 0.949879,
		0.045412, 0.975685, -0.214424,
		-0.973768, -0.004673, -0.227493,
		34.604130, 34.687977, 39.041103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998005, 35.428642, 39.185196>,  <35.285767, 34.691246, 39.200348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998005, 35.428642, 39.185196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694748, 35.174236, 39.242752>,  <34.512794, 35.021591, 39.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694748, 35.174236, 39.242752>,  <34.998005, 35.428642, 39.185196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694748, 35.174236, 39.242752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149300, 0.384102, 0.911139,
		-0.634769, 0.669289, -0.386161,
		-0.758141, -0.636016, 0.143891,
		34.467304, 34.983433, 39.285919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491623, 35.822155, 39.464745>,  <34.998005, 35.428642, 39.185196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491623, 35.822155, 39.464745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373692, 35.457260, 39.578510>,  <34.302933, 35.238323, 39.646770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373692, 35.457260, 39.578510>,  <34.491623, 35.822155, 39.464745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373692, 35.457260, 39.578510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087291, 0.322112, 0.942668,
		-0.951554, 0.253101, -0.174599,
		-0.294831, -0.912241, 0.284414,
		34.285244, 35.183586, 39.663834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995453, 36.027531, 39.949184>,  <34.491623, 35.822155, 39.464745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995453, 36.027531, 39.949184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078831, 35.645435, 40.033157>,  <34.128857, 35.416180, 40.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078831, 35.645435, 40.033157>,  <33.995453, 36.027531, 39.949184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078831, 35.645435, 40.033157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114460, 0.237000, 0.964744,
		-0.971314, -0.177062, 0.158737,
		0.208440, -0.955238, 0.209935,
		34.141361, 35.358864, 40.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662659, 35.999027, 40.524857>,  <33.995453, 36.027531, 39.949184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662659, 35.999027, 40.524857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899822, 35.677013, 40.517155>,  <34.042122, 35.483807, 40.512535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899822, 35.677013, 40.517155>,  <33.662659, 35.999027, 40.524857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899822, 35.677013, 40.517155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070947, 0.028405, 0.997075,
		-0.802135, -0.592545, 0.073956,
		0.592913, -0.805036, -0.019255,
		34.077698, 35.435501, 40.511379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480400, 35.600060, 41.085091>,  <33.662659, 35.999027, 40.524857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480400, 35.600060, 41.085091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842793, 35.454529, 40.998539>,  <34.060230, 35.367210, 40.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842793, 35.454529, 40.998539>,  <33.480400, 35.600060, 41.085091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842793, 35.454529, 40.998539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200780, -0.080671, 0.976309,
		-0.372662, -0.927967, -0.000037,
		0.905985, -0.363826, -0.216381,
		34.114590, 35.345383, 40.933624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642567, 34.881035, 41.530910>,  <33.480400, 35.600060, 41.085091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642567, 34.881035, 41.530910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981026, 35.068569, 41.429539>,  <34.184101, 35.181087, 41.368713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981026, 35.068569, 41.429539>,  <33.642567, 34.881035, 41.530910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981026, 35.068569, 41.429539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253466, 0.064297, 0.965205,
		0.468815, -0.880943, -0.064429,
		0.846148, 0.468834, -0.253432,
		34.234871, 35.209221, 41.353508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178051, 34.654694, 42.048916>,  <33.642567, 34.881035, 41.530910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178051, 34.654694, 42.048916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338493, 34.975742, 41.872318>,  <34.434757, 35.168373, 41.766361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338493, 34.975742, 41.872318>,  <34.178051, 34.654694, 42.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338493, 34.975742, 41.872318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344629, 0.314328, 0.884550,
		0.848731, -0.506949, -0.150527,
		0.401107, 0.802621, -0.441490,
		34.458824, 35.216530, 41.739872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888035, 34.631165, 42.381062>,  <34.178051, 34.654694, 42.048916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888035, 34.631165, 42.381062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801273, 34.999359, 42.251045>,  <34.749218, 35.220276, 42.173035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801273, 34.999359, 42.251045>,  <34.888035, 34.631165, 42.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801273, 34.999359, 42.251045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470882, 0.390325, 0.791148,
		0.855116, 0.018544, -0.518104,
		-0.216900, 0.920490, -0.325042,
		34.736202, 35.275505, 42.153534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502853, 34.907360, 42.244965>,  <34.888035, 34.631165, 42.381062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502853, 34.907360, 42.244965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243385, 35.207386, 42.296558>,  <35.087704, 35.387402, 42.327515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243385, 35.207386, 42.296558>,  <35.502853, 34.907360, 42.244965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243385, 35.207386, 42.296558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542943, 0.337301, 0.769052,
		0.533330, 0.568890, -0.626037,
		-0.648669, 0.750061, 0.128982,
		35.048786, 35.432404, 42.335255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964130, 35.465214, 42.440479>,  <35.502853, 34.907360, 42.244965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964130, 35.465214, 42.440479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600590, 35.592972, 42.547791>,  <35.382465, 35.669624, 42.612179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600590, 35.592972, 42.547791>,  <35.964130, 35.465214, 42.440479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600590, 35.592972, 42.547791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363851, 0.292577, 0.884314,
		0.203952, 0.901325, -0.382122,
		-0.908854, 0.319393, 0.268277,
		35.327934, 35.688789, 42.628273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994907, 36.139904, 42.749245>,  <35.964130, 35.465214, 42.440479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994907, 36.139904, 42.749245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656387, 35.972679, 42.881302>,  <35.453274, 35.872345, 42.960537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656387, 35.972679, 42.881302>,  <35.994907, 36.139904, 42.749245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656387, 35.972679, 42.881302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279982, 0.178164, 0.943328,
		-0.453191, 0.890775, -0.033730,
		-0.846302, -0.418064, 0.330144,
		35.402496, 35.847260, 42.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682064, 36.619717, 43.127186>,  <35.994907, 36.139904, 42.749245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682064, 36.619717, 43.127186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533463, 36.276226, 43.268368>,  <35.444302, 36.070133, 43.353077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533463, 36.276226, 43.268368>,  <35.682064, 36.619717, 43.127186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533463, 36.276226, 43.268368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391455, 0.199841, 0.898235,
		-0.841873, 0.471861, 0.261912,
		-0.371501, -0.858727, 0.352953,
		35.422012, 36.018608, 43.374252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404274, 36.865112, 43.722809>,  <35.682064, 36.619717, 43.127186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404274, 36.865112, 43.722809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435268, 36.471905, 43.789356>,  <35.453865, 36.235981, 43.829285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435268, 36.471905, 43.789356>,  <35.404274, 36.865112, 43.722809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435268, 36.471905, 43.789356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373517, 0.183338, 0.909326,
		-0.924382, -0.008319, 0.381378,
		0.077486, -0.983015, 0.166367,
		35.458515, 36.177002, 43.839268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007504, 36.726891, 44.278008>,  <35.404274, 36.865112, 43.722809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007504, 36.726891, 44.278008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251060, 36.409634, 44.272675>,  <35.397194, 36.219280, 44.269474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251060, 36.409634, 44.272675>,  <35.007504, 36.726891, 44.278008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251060, 36.409634, 44.272675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322061, 0.231808, 0.917900,
		-0.724936, -0.563194, 0.396586,
		0.608888, -0.793144, -0.013337,
		35.433727, 36.171692, 44.268673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731129, 36.323616, 44.817356>,  <35.007504, 36.726891, 44.278008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731129, 36.323616, 44.817356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106426, 36.197243, 44.760948>,  <35.331604, 36.121418, 44.727104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106426, 36.197243, 44.760948>,  <34.731129, 36.323616, 44.817356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106426, 36.197243, 44.760948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234012, 0.279300, 0.931252,
		-0.254827, -0.906740, 0.335984,
		0.938244, -0.315933, -0.141015,
		35.387901, 36.102463, 44.718643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890350, 35.978046, 45.351952>,  <34.731129, 36.323616, 44.817356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890350, 35.978046, 45.351952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254547, 36.062149, 45.209515>,  <35.473064, 36.112610, 45.124054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254547, 36.062149, 45.209515>,  <34.890350, 35.978046, 45.351952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254547, 36.062149, 45.209515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316641, 0.199396, 0.927351,
		0.265986, -0.957096, 0.114972,
		0.910489, 0.210257, -0.356092,
		35.527695, 36.125225, 45.102688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402355, 35.669140, 45.858765>,  <34.890350, 35.978046, 45.351952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402355, 35.669140, 45.858765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608067, 35.938957, 45.646912>,  <35.731495, 36.100845, 45.519798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608067, 35.938957, 45.646912>,  <35.402355, 35.669140, 45.858765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608067, 35.938957, 45.646912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501933, 0.264016, 0.823625,
		0.695401, -0.689414, -0.202797,
		0.514277, 0.674540, -0.529636,
		35.762348, 36.141319, 45.488022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986446, 35.590870, 46.113342>,  <35.402355, 35.669140, 45.858765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986446, 35.590870, 46.113342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992264, 35.951351, 45.940083>,  <35.995754, 36.167641, 45.836128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992264, 35.951351, 45.940083>,  <35.986446, 35.590870, 46.113342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992264, 35.951351, 45.940083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372395, 0.397146, 0.838807,
		0.927961, -0.173499, -0.329829,
		0.014542, 0.901207, -0.433146,
		35.996628, 36.221714, 45.810139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611485, 35.773846, 46.307838>,  <35.986446, 35.590870, 46.113342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611485, 35.773846, 46.307838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417294, 36.098167, 46.177048>,  <36.300777, 36.292759, 46.098572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417294, 36.098167, 46.177048>,  <36.611485, 35.773846, 46.307838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417294, 36.098167, 46.177048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313419, 0.510564, 0.800683,
		0.816138, 0.286231, -0.501987,
		-0.485476, 0.810800, -0.326980,
		36.271652, 36.341408, 46.078953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989380, 36.250175, 46.381340>,  <36.611485, 35.773846, 46.307838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989380, 36.250175, 46.381340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656090, 36.468948, 46.413857>,  <36.456116, 36.600212, 46.433365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656090, 36.468948, 46.413857>,  <36.989380, 36.250175, 46.381340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656090, 36.468948, 46.413857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327808, 0.370208, 0.869188,
		0.445290, 0.750875, -0.487754,
		-0.833222, 0.546930, 0.081293,
		36.406124, 36.633026, 46.438244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125103, 37.087448, 46.557629>,  <36.989380, 36.250175, 46.381340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125103, 37.087448, 46.557629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748970, 36.999943, 46.661869>,  <36.523289, 36.947437, 46.724415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748970, 36.999943, 46.661869>,  <37.125103, 37.087448, 46.557629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748970, 36.999943, 46.661869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183218, 0.319824, 0.929593,
		-0.286711, 0.921875, -0.260660,
		-0.940334, -0.218767, 0.260602,
		36.466869, 36.934311, 46.740051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675735, 37.556061, 46.499054>,  <37.125103, 37.087448, 46.557629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675735, 37.556061, 46.499054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020397, 37.408443, 46.638405>,  <38.227192, 37.319874, 46.722015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020397, 37.408443, 46.638405>,  <37.675735, 37.556061, 46.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020397, 37.408443, 46.638405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294055, -0.196449, -0.935382,
		0.413632, 0.908415, -0.060753,
		0.861650, -0.369039, 0.348382,
		38.278893, 37.297733, 46.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183155, 37.690437, 46.002281>,  <37.675735, 37.556061, 46.499054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183155, 37.690437, 46.002281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363281, 37.394470, 46.202171>,  <38.471359, 37.216888, 46.322105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363281, 37.394470, 46.202171>,  <38.183155, 37.690437, 46.002281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363281, 37.394470, 46.202171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308458, -0.396307, -0.864751,
		0.837893, 0.543560, 0.049770,
		0.450320, -0.739921, 0.499728,
		38.498379, 37.172493, 46.352089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663723, 37.461052, 45.503513>,  <38.183155, 37.690437, 46.002281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663723, 37.461052, 45.503513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672523, 37.157585, 45.763954>,  <38.677803, 36.975506, 45.920219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672523, 37.157585, 45.763954>,  <38.663723, 37.461052, 45.503513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672523, 37.157585, 45.763954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116057, -0.644922, -0.755385,
		0.992999, 0.092187, 0.073857,
		0.022005, -0.758668, 0.651106,
		38.679123, 36.929985, 45.959286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301159, 37.214565, 45.419277>,  <38.663723, 37.461052, 45.503513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301159, 37.214565, 45.419277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078094, 36.916122, 45.564789>,  <38.944256, 36.737057, 45.652096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078094, 36.916122, 45.564789>,  <39.301159, 37.214565, 45.419277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078094, 36.916122, 45.564789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228146, -0.559148, -0.797059,
		0.798101, -0.361492, 0.482036,
		-0.557660, -0.746108, 0.363783,
		38.910797, 36.692291, 45.673923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736797, 36.670197, 45.239849>,  <39.301159, 37.214565, 45.419277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736797, 36.670197, 45.239849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371506, 36.526634, 45.316994>,  <39.152328, 36.440498, 45.363281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371506, 36.526634, 45.316994>,  <39.736797, 36.670197, 45.239849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371506, 36.526634, 45.316994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086690, -0.633674, -0.768728,
		0.398110, -0.685308, 0.609805,
		-0.913232, -0.358902, 0.192863,
		39.097534, 36.418964, 45.374851>
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
