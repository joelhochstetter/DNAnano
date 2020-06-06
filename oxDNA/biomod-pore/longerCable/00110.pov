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
	<24.184866, 34.834133, 34.581470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339842, 34.959866, 34.928131>,  <24.432827, 35.035305, 35.136127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339842, 34.959866, 34.928131>,  <24.184866, 34.834133, 34.581470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339842, 34.959866, 34.928131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075193, -0.947718, 0.310123,
		0.918824, -0.054988, -0.390818,
		0.387438, 0.314335, 0.866652,
		24.456074, 35.054165, 35.188126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845503, 34.297440, 34.535561>,  <24.184866, 34.834133, 34.581470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845503, 34.297440, 34.535561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100996, 34.378498, 34.238655>,  <25.254292, 34.427132, 34.060513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100996, 34.378498, 34.238655>,  <24.845503, 34.297440, 34.535561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100996, 34.378498, 34.238655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752627, 0.365054, -0.547985,
		0.159920, 0.908664, 0.385689,
		0.638732, 0.202646, -0.742264,
		25.292616, 34.439293, 34.015976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504171, 34.080666, 34.810738>,  <24.845503, 34.297440, 34.535561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504171, 34.080666, 34.810738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574680, 34.377586, 35.069324>,  <25.616985, 34.555737, 35.224476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574680, 34.377586, 35.069324>,  <25.504171, 34.080666, 34.810738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574680, 34.377586, 35.069324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031290, -0.652194, 0.757406,
		0.983844, -0.153738, -0.091738,
		0.176273, 0.742299, 0.646467,
		25.627562, 34.600277, 35.263264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400530, 34.169712, 35.484085>,  <25.504171, 34.080666, 34.810738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400530, 34.169712, 35.484085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770884, 34.253830, 35.609631>,  <25.993095, 34.304302, 35.684959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770884, 34.253830, 35.609631>,  <25.400530, 34.169712, 35.484085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770884, 34.253830, 35.609631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329384, 0.856226, 0.397975,
		-0.185049, -0.471862, 0.862034,
		0.925885, 0.210295, 0.313867,
		26.048649, 34.316917, 35.703793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464058, 34.237553, 36.317848>,  <25.400530, 34.169712, 35.484085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464058, 34.237553, 36.317848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696594, 34.479179, 36.099804>,  <25.836117, 34.624157, 35.968979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696594, 34.479179, 36.099804>,  <25.464058, 34.237553, 36.317848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696594, 34.479179, 36.099804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434221, 0.796897, 0.420009,
		0.688107, -0.007473, 0.725570,
		0.581344, 0.604069, -0.545105,
		25.870996, 34.660400, 35.936272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926317, 34.026646, 36.941437>,  <25.464058, 34.237553, 36.317848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926317, 34.026646, 36.941437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244745, 34.041950, 37.183033>,  <26.435802, 34.051132, 37.327991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244745, 34.041950, 37.183033>,  <25.926317, 34.026646, 36.941437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244745, 34.041950, 37.183033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582461, -0.319462, -0.747451,
		0.164354, 0.946826, -0.276600,
		0.796069, 0.038262, 0.603995,
		26.483566, 34.053429, 37.364231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282656, 33.668621, 37.365875>,  <25.926317, 34.026646, 36.941437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282656, 33.668621, 37.365875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655107, 33.556725, 37.459465>,  <25.878578, 33.489586, 37.515617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655107, 33.556725, 37.459465>,  <25.282656, 33.668621, 37.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655107, 33.556725, 37.459465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286608, -0.164588, 0.943804,
		-0.225516, -0.945861, -0.233429,
		0.931128, -0.279745, 0.233974,
		25.934446, 33.472801, 37.529655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221458, 33.269169, 38.009480>,  <25.282656, 33.668621, 37.365875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221458, 33.269169, 38.009480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615341, 33.305759, 37.950176>,  <25.851671, 33.327713, 37.914593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615341, 33.305759, 37.950176>,  <25.221458, 33.269169, 38.009480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615341, 33.305759, 37.950176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172777, -0.403821, 0.898374,
		0.022313, -0.910253, -0.413452,
		0.984708, 0.091480, -0.148261,
		25.910753, 33.333202, 37.905697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596510, 32.594856, 38.190384>,  <25.221458, 33.269169, 38.009480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596510, 32.594856, 38.190384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833185, 32.913647, 38.238949>,  <25.975189, 33.104919, 38.268089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833185, 32.913647, 38.238949>,  <25.596510, 32.594856, 38.190384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833185, 32.913647, 38.238949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189588, -0.283947, 0.939910,
		0.783558, -0.533113, -0.319104,
		0.591686, 0.796972, 0.121417,
		26.010691, 33.152737, 38.275375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093380, 32.385334, 38.593399>,  <25.596510, 32.594856, 38.190384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093380, 32.385334, 38.593399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.155951, 32.778549, 38.631691>,  <26.193493, 33.014481, 38.654667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.155951, 32.778549, 38.631691>,  <26.093380, 32.385334, 38.593399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155951, 32.778549, 38.631691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315128, -0.141532, 0.938436,
		0.936069, -0.116627, -0.331923,
		0.156425, 0.983040, 0.095731,
		26.202877, 33.073460, 38.660412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718548, 32.308346, 38.861603>,  <26.093380, 32.385334, 38.593399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718548, 32.308346, 38.861603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566582, 32.665836, 38.957027>,  <26.475403, 32.880333, 39.014282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566582, 32.665836, 38.957027>,  <26.718548, 32.308346, 38.861603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566582, 32.665836, 38.957027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154556, -0.192946, 0.968960,
		0.912019, 0.404993, -0.064829,
		-0.379913, 0.893730, 0.238565,
		26.452608, 32.933956, 39.028595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222006, 32.647991, 39.408489>,  <26.718548, 32.308346, 38.861603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222006, 32.647991, 39.408489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848484, 32.783306, 39.455090>,  <26.624371, 32.864494, 39.483047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848484, 32.783306, 39.455090>,  <27.222006, 32.647991, 39.408489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848484, 32.783306, 39.455090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134460, 0.030074, 0.990463,
		0.331556, 0.940563, -0.073569,
		-0.933805, 0.338286, 0.116497,
		26.568342, 32.884792, 39.490040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522816, 32.645664, 40.110367>,  <27.222006, 32.647991, 39.408489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522816, 32.645664, 40.110367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302488, 32.887459, 40.340565>,  <27.170292, 33.032536, 40.478683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302488, 32.887459, 40.340565>,  <27.522816, 32.645664, 40.110367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302488, 32.887459, 40.340565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602133, 0.189664, -0.775540,
		-0.577955, -0.773706, 0.259512,
		-0.550820, 0.604489, 0.575491,
		27.137241, 33.068806, 40.513214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720236, 32.537861, 40.007816>,  <27.522816, 32.645664, 40.110367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720236, 32.537861, 40.007816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775570, 32.917576, 40.120750>,  <26.808771, 33.145405, 40.188511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775570, 32.917576, 40.120750>,  <26.720236, 32.537861, 40.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775570, 32.917576, 40.120750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622652, 0.305052, -0.720589,
		-0.770174, -0.076113, 0.633276,
		0.138336, 0.949290, 0.282335,
		26.817070, 33.202362, 40.205452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049164, 32.862656, 39.955982>,  <26.720236, 32.537861, 40.007816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049164, 32.862656, 39.955982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342112, 33.132111, 39.916294>,  <26.517879, 33.293785, 39.892479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342112, 33.132111, 39.916294>,  <26.049164, 32.862656, 39.955982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342112, 33.132111, 39.916294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486012, 0.415101, -0.769080,
		-0.476896, 0.611473, 0.631404,
		0.732368, 0.673641, -0.099222,
		26.561823, 33.334202, 39.886528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696781, 33.611145, 39.819416>,  <26.049164, 32.862656, 39.955982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696781, 33.611145, 39.819416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054531, 33.476799, 39.701241>,  <26.269182, 33.396191, 39.630337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054531, 33.476799, 39.701241>,  <25.696781, 33.611145, 39.819416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054531, 33.476799, 39.701241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233564, 0.212638, -0.948806,
		0.381494, 0.917594, 0.111732,
		0.894377, -0.335867, -0.295437,
		26.322844, 33.376038, 39.612610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891474, 34.090683, 39.288696>,  <25.696781, 33.611145, 39.819416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891474, 34.090683, 39.288696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058411, 33.731525, 39.232674>,  <26.158573, 33.516033, 39.199059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058411, 33.731525, 39.232674>,  <25.891474, 34.090683, 39.288696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058411, 33.731525, 39.232674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114116, 0.101118, -0.988308,
		0.901556, 0.428445, -0.060263,
		0.417342, -0.897892, -0.140056,
		26.183613, 33.462158, 39.190659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221611, 34.371799, 38.814404>,  <25.891474, 34.090683, 39.288696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221611, 34.371799, 38.814404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239223, 33.974159, 38.774742>,  <26.249790, 33.735577, 38.750946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239223, 33.974159, 38.774742>,  <26.221611, 34.371799, 38.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239223, 33.974159, 38.774742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082371, 0.102523, -0.991314,
		0.995629, 0.035479, 0.086398,
		0.044029, -0.994098, -0.099153,
		26.252432, 33.675930, 38.744995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712292, 34.240856, 38.366440>,  <26.221611, 34.371799, 38.814404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712292, 34.240856, 38.366440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502474, 33.900978, 38.345013>,  <26.376583, 33.697052, 38.332157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502474, 33.900978, 38.345013>,  <26.712292, 34.240856, 38.366440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502474, 33.900978, 38.345013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035051, 0.084414, -0.995814,
		0.850660, -0.520474, -0.074062,
		-0.524547, -0.849695, -0.053564,
		26.345110, 33.646069, 38.328945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095921, 33.817436, 38.027073>,  <26.712292, 34.240856, 38.366440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095921, 33.817436, 38.027073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715038, 33.697937, 38.001617>,  <26.486509, 33.626236, 37.986343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715038, 33.697937, 38.001617>,  <27.095921, 33.817436, 38.027073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715038, 33.697937, 38.001617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044676, 0.069882, -0.996554,
		0.302170, -0.951769, -0.053195,
		-0.952207, -0.298753, -0.063637,
		26.429377, 33.608311, 37.982525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649557, 33.325222, 37.723923>,  <27.095921, 33.817436, 38.027073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649557, 33.325222, 37.723923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846443, 33.033314, 37.913727>,  <27.964575, 32.858170, 38.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846443, 33.033314, 37.913727>,  <27.649557, 33.325222, 37.723923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846443, 33.033314, 37.913727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562681, -0.149173, -0.813104,
		0.664164, 0.667219, 0.337203,
		0.492216, -0.729772, 0.474507,
		27.994108, 32.814381, 38.056080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436443, 33.306465, 37.797199>,  <27.649557, 33.325222, 37.723923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436443, 33.306465, 37.797199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303217, 32.929703, 37.814560>,  <28.223282, 32.703644, 37.824974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303217, 32.929703, 37.814560>,  <28.436443, 33.306465, 37.797199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303217, 32.929703, 37.814560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588174, -0.243517, -0.771201,
		0.736966, -0.231332, 0.635111,
		-0.333064, -0.941905, 0.043400,
		28.203299, 32.647133, 37.827579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074919, 32.924095, 37.953552>,  <28.436443, 33.306465, 37.797199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074919, 32.924095, 37.953552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773245, 32.749763, 37.757080>,  <28.592239, 32.645164, 37.639198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773245, 32.749763, 37.757080>,  <29.074919, 32.924095, 37.953552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773245, 32.749763, 37.757080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577703, -0.084753, -0.811835,
		0.312190, -0.896032, 0.315698,
		-0.754186, -0.435826, -0.491182,
		28.546989, 32.619015, 37.609726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457193, 33.615940, 38.152882>,  <29.074919, 32.924095, 37.953552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457193, 33.615940, 38.152882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692564, 33.878906, 38.341164>,  <29.833786, 34.036686, 38.454132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692564, 33.878906, 38.341164>,  <29.457193, 33.615940, 38.152882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692564, 33.878906, 38.341164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257569, -0.704241, 0.661592,
		0.766428, -0.268059, -0.583723,
		0.588427, 0.657411, 0.470706,
		29.869093, 34.076130, 38.482376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980043, 33.135437, 38.303490>,  <29.457193, 33.615940, 38.152882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980043, 33.135437, 38.303490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018406, 33.440681, 38.559135>,  <30.041424, 33.623829, 38.712524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018406, 33.440681, 38.559135>,  <29.980043, 33.135437, 38.303490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018406, 33.440681, 38.559135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216611, -0.642686, 0.734870,
		0.971536, 0.067960, -0.226935,
		0.095907, 0.763110, 0.639113,
		30.047178, 33.669613, 38.750870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723074, 33.077816, 38.520962>,  <29.980043, 33.135437, 38.303490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723074, 33.077816, 38.520962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500053, 33.257641, 38.800110>,  <30.366241, 33.365536, 38.967598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500053, 33.257641, 38.800110>,  <30.723074, 33.077816, 38.520962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500053, 33.257641, 38.800110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356353, -0.629657, 0.690322,
		0.749766, 0.633579, 0.190862,
		-0.557551, 0.449566, 0.697873,
		30.332788, 33.392509, 39.009472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102829, 33.079090, 39.058723>,  <30.723074, 33.077816, 38.520962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102829, 33.079090, 39.058723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755920, 33.084599, 39.257782>,  <30.547775, 33.087906, 39.377216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755920, 33.084599, 39.257782>,  <31.102829, 33.079090, 39.058723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755920, 33.084599, 39.257782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357006, -0.679481, 0.640978,
		0.346971, 0.733564, 0.584376,
		-0.867271, 0.013775, 0.497646,
		30.495739, 33.088730, 39.407074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237354, 33.325500, 39.772869>,  <31.102829, 33.079090, 39.058723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237354, 33.325500, 39.772869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911369, 33.093887, 39.782318>,  <30.715778, 32.954922, 39.787987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911369, 33.093887, 39.782318>,  <31.237354, 33.325500, 39.772869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911369, 33.093887, 39.782318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380765, -0.504290, 0.775055,
		-0.436867, 0.640637, 0.631452,
		-0.814963, -0.579031, 0.023625,
		30.666880, 32.920177, 39.789406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942974, 33.297073, 40.474106>,  <31.237354, 33.325500, 39.772869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942974, 33.297073, 40.474106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841789, 32.970295, 40.266796>,  <30.781078, 32.774227, 40.142410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841789, 32.970295, 40.266796>,  <30.942974, 33.297073, 40.474106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841789, 32.970295, 40.266796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363186, -0.576704, 0.731785,
		-0.896719, -0.003114, 0.442589,
		-0.252963, -0.816948, -0.518272,
		30.765900, 32.725212, 40.111313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530636, 32.864986, 40.900772>,  <30.942974, 33.297073, 40.474106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530636, 32.864986, 40.900772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740501, 32.650345, 40.636414>,  <30.866421, 32.521561, 40.477798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740501, 32.650345, 40.636414>,  <30.530636, 32.864986, 40.900772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740501, 32.650345, 40.636414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477674, -0.457036, 0.750297,
		-0.704666, -0.709347, 0.016532,
		0.524665, -0.536606, -0.660894,
		30.897902, 32.489365, 40.438145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599134, 32.232777, 41.155895>,  <30.530636, 32.864986, 40.900772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599134, 32.232777, 41.155895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903000, 32.263084, 40.897541>,  <31.085320, 32.281269, 40.742527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903000, 32.263084, 40.897541>,  <30.599134, 32.232777, 41.155895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903000, 32.263084, 40.897541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616599, -0.399574, 0.678341,
		-0.206680, -0.913564, -0.350263,
		0.759664, 0.075772, -0.645887,
		31.130899, 32.285816, 40.703773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944069, 31.507696, 40.964325>,  <30.599134, 32.232777, 41.155895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944069, 31.507696, 40.964325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184177, 31.825985, 40.932068>,  <31.328241, 32.016960, 40.912716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184177, 31.825985, 40.932068>,  <30.944069, 31.507696, 40.964325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184177, 31.825985, 40.932068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674327, -0.449306, 0.586010,
		0.430071, -0.406140, -0.806281,
		0.600269, 0.795723, -0.080638,
		31.364258, 32.064701, 40.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516634, 31.243393, 40.846760>,  <30.944069, 31.507696, 40.964325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516634, 31.243393, 40.846760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619091, 31.614157, 40.956470>,  <31.680565, 31.836615, 41.022297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619091, 31.614157, 40.956470>,  <31.516634, 31.243393, 40.846760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619091, 31.614157, 40.956470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792457, -0.363838, 0.489524,
		0.553538, 0.091965, -0.827731,
		0.256141, 0.926911, 0.274276,
		31.695934, 31.892231, 41.038754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128868, 31.294027, 40.550465>,  <31.516634, 31.243393, 40.846760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128868, 31.294027, 40.550465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118679, 31.544481, 40.862183>,  <32.112564, 31.694754, 41.049213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118679, 31.544481, 40.862183>,  <32.128868, 31.294027, 40.550465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118679, 31.544481, 40.862183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775898, -0.479161, 0.410350,
		0.630344, 0.615109, -0.473611,
		-0.025474, 0.626136, 0.779298,
		32.111038, 31.732323, 41.095970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738007, 31.381048, 40.853970>,  <32.128868, 31.294027, 40.550465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738007, 31.381048, 40.853970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526577, 31.528105, 41.160030>,  <32.399719, 31.616339, 41.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526577, 31.528105, 41.160030>,  <32.738007, 31.381048, 40.853970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526577, 31.528105, 41.160030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742259, -0.237197, 0.626729,
		0.411903, 0.899209, -0.147511,
		-0.528571, 0.367643, 0.765148,
		32.368004, 31.638397, 41.389576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388432, 31.241867, 41.360077>,  <32.738007, 31.381048, 40.853970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388432, 31.241867, 41.360077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477371, 31.430199, 41.701576>,  <33.530735, 31.543198, 41.906475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477371, 31.430199, 41.701576>,  <33.388432, 31.241867, 41.360077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477371, 31.430199, 41.701576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835749, 0.542986, -0.081790,
		-0.502081, -0.695331, 0.514227,
		0.222347, 0.470830, 0.853745,
		33.544075, 31.571447, 41.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776402, 31.050533, 41.890068>,  <33.388432, 31.241867, 41.360077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776402, 31.050533, 41.890068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968285, 31.399881, 41.923786>,  <33.083416, 31.609489, 41.944016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968285, 31.399881, 41.923786>,  <32.776402, 31.050533, 41.890068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968285, 31.399881, 41.923786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859085, 0.487048, -0.157343,
		-0.178475, 0.003061, 0.983940,
		0.479707, 0.873370, 0.084297,
		33.112198, 31.661892, 41.949074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336624, 31.459003, 42.286644>,  <32.776402, 31.050533, 41.890068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336624, 31.459003, 42.286644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560516, 31.699924, 42.058983>,  <32.694851, 31.844477, 41.922386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560516, 31.699924, 42.058983>,  <32.336624, 31.459003, 42.286644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560516, 31.699924, 42.058983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814558, 0.526135, -0.244287,
		0.152317, 0.600343, 0.785103,
		0.559727, 0.602304, -0.569154,
		32.728436, 31.880615, 41.888237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922350, 32.016472, 42.263229>,  <32.336624, 31.459003, 42.286644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922350, 32.016472, 42.263229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191986, 32.055275, 41.970329>,  <32.353767, 32.078556, 41.794590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191986, 32.055275, 41.970329>,  <31.922350, 32.016472, 42.263229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191986, 32.055275, 41.970329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692566, 0.427683, -0.580895,
		0.256821, 0.898709, 0.355480,
		0.674088, 0.097008, -0.732253,
		32.394211, 32.084377, 41.750652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982225, 32.774216, 42.052475>,  <31.922350, 32.016472, 42.263229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982225, 32.774216, 42.052475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035137, 32.507481, 41.759129>,  <32.066883, 32.347439, 41.583118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035137, 32.507481, 41.759129>,  <31.982225, 32.774216, 42.052475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035137, 32.507481, 41.759129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683572, 0.474413, -0.554672,
		0.717796, 0.574684, -0.393074,
		0.132282, -0.666836, -0.733370,
		32.074821, 32.307430, 41.539116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966387, 33.138573, 41.425037>,  <31.982225, 32.774216, 42.052475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966387, 33.138573, 41.425037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898279, 32.764332, 41.301327>,  <31.857414, 32.539787, 41.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898279, 32.764332, 41.301327>,  <31.966387, 33.138573, 41.425037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898279, 32.764332, 41.301327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580001, 0.348888, -0.736122,
		0.796622, 0.054043, -0.602057,
		-0.170268, -0.935605, -0.309277,
		31.847198, 32.483650, 41.208542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079975, 33.190273, 40.705338>,  <31.966387, 33.138573, 41.425037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079975, 33.190273, 40.705338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858034, 32.866261, 40.781216>,  <31.724869, 32.671852, 40.826740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858034, 32.866261, 40.781216>,  <32.079975, 33.190273, 40.705338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858034, 32.866261, 40.781216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629232, 0.259443, -0.732637,
		0.544246, -0.525867, -0.653652,
		-0.554855, -0.810033, 0.189692,
		31.691578, 32.623249, 40.838123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057655, 32.741840, 40.102005>,  <32.079975, 33.190273, 40.705338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057655, 32.741840, 40.102005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709669, 32.704868, 40.295757>,  <31.500877, 32.682686, 40.412006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709669, 32.704868, 40.295757>,  <32.057655, 32.741840, 40.102005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709669, 32.704868, 40.295757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486007, 0.326920, -0.810506,
		-0.083435, -0.940521, -0.329331,
		-0.869963, -0.092432, 0.484377,
		31.448681, 32.677139, 40.441071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894707, 32.747742, 40.217091>,  <32.057655, 32.741840, 40.102005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894707, 32.747742, 40.217091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906578, 32.394981, 40.028893>,  <32.913700, 32.183323, 39.915974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906578, 32.394981, 40.028893>,  <32.894707, 32.747742, 40.217091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906578, 32.394981, 40.028893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516826, 0.389359, -0.762424,
		0.855576, 0.265790, -0.444236,
		0.029677, -0.881904, -0.470494,
		32.915482, 32.130409, 39.887745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300709, 32.764904, 39.591282>,  <32.894707, 32.747742, 40.217091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300709, 32.764904, 39.591282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007568, 32.493176, 39.576031>,  <32.831684, 32.330139, 39.566879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007568, 32.493176, 39.576031>,  <33.300709, 32.764904, 39.591282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007568, 32.493176, 39.576031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360499, 0.435217, -0.825001,
		0.577035, -0.590856, -0.563843,
		-0.732851, -0.679320, -0.038132,
		32.787712, 32.289379, 39.564590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660561, 32.456497, 39.029408>,  <33.300709, 32.764904, 39.591282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660561, 32.456497, 39.029408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903278, 32.259224, 38.780067>,  <34.048908, 32.140862, 38.630463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903278, 32.259224, 38.780067>,  <33.660561, 32.456497, 39.029408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903278, 32.259224, 38.780067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573553, -0.271278, 0.772946,
		-0.550304, -0.826548, 0.118255,
		0.606797, -0.493181, -0.623354,
		34.085316, 32.111271, 38.593060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660267, 31.709812, 39.119267>,  <33.660561, 32.456497, 39.029408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660267, 31.709812, 39.119267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015991, 31.760927, 38.943630>,  <34.229427, 31.791595, 38.838249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015991, 31.760927, 38.943630>,  <33.660267, 31.709812, 39.119267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015991, 31.760927, 38.943630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438127, -0.513226, 0.738000,
		-0.131044, -0.848687, -0.512404,
		0.889310, 0.127787, -0.439088,
		34.282784, 31.799263, 38.811905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037407, 31.029360, 39.020767>,  <33.660267, 31.709812, 39.119267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037407, 31.029360, 39.020767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320335, 31.311508, 39.039326>,  <34.490093, 31.480797, 39.050461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320335, 31.311508, 39.039326>,  <34.037407, 31.029360, 39.020767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320335, 31.311508, 39.039326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515278, -0.559402, 0.649275,
		0.483933, -0.435338, -0.759138,
		0.707317, 0.705372, 0.046392,
		34.532532, 31.523119, 39.053242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411335, 30.547274, 38.562698>,  <34.037407, 31.029360, 39.020767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411335, 30.547274, 38.562698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666805, 30.852575, 38.601772>,  <34.820087, 31.035757, 38.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666805, 30.852575, 38.601772>,  <34.411335, 30.547274, 38.562698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666805, 30.852575, 38.601772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428783, -0.458422, 0.778456,
		0.638939, -0.455294, -0.620052,
		0.638672, 0.763253, 0.097681,
		34.858406, 31.081551, 38.631077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112686, 30.344088, 38.542747>,  <34.411335, 30.547274, 38.562698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112686, 30.344088, 38.542747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122772, 30.694561, 38.735275>,  <35.128826, 30.904844, 38.850792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122772, 30.694561, 38.735275>,  <35.112686, 30.344088, 38.542747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122772, 30.694561, 38.735275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461916, -0.437206, 0.771676,
		0.886565, 0.202868, -0.415749,
		0.025219, 0.876182, 0.481319,
		35.130337, 30.957417, 38.879669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777004, 30.484863, 38.665382>,  <35.112686, 30.344088, 38.542747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777004, 30.484863, 38.665382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634068, 30.746899, 38.931664>,  <35.548306, 30.904119, 39.091434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634068, 30.746899, 38.931664>,  <35.777004, 30.484863, 38.665382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634068, 30.746899, 38.931664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634175, -0.353077, 0.687865,
		0.685657, 0.667980, -0.289269,
		-0.357347, 0.655087, 0.665706,
		35.526863, 30.943424, 39.131374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358364, 30.861303, 38.951397>,  <35.777004, 30.484863, 38.665382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358364, 30.861303, 38.951397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056915, 30.857487, 39.214291>,  <35.876045, 30.855198, 39.372028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056915, 30.857487, 39.214291>,  <36.358364, 30.861303, 38.951397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056915, 30.857487, 39.214291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620886, -0.338546, 0.707027,
		0.215761, 0.940901, 0.261059,
		-0.753623, -0.009539, 0.657237,
		35.830830, 30.854626, 39.411461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583878, 31.156214, 39.542114>,  <36.358364, 30.861303, 38.951397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583878, 31.156214, 39.542114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284969, 30.902784, 39.622292>,  <36.105625, 30.750727, 39.670399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284969, 30.902784, 39.622292>,  <36.583878, 31.156214, 39.542114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284969, 30.902784, 39.622292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450494, -0.261253, 0.853699,
		-0.488516, 0.728238, 0.480647,
		-0.747267, -0.633574, 0.200440,
		36.060791, 30.712711, 39.682423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029209, 31.814722, 39.168182>,  <36.583878, 31.156214, 39.542114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029209, 31.814722, 39.168182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848114, 31.619852, 39.466896>,  <35.739456, 31.502930, 39.646126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848114, 31.619852, 39.466896>,  <36.029209, 31.814722, 39.168182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848114, 31.619852, 39.466896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888665, -0.314924, 0.333312,
		0.072798, 0.814544, 0.575515,
		-0.452741, -0.487176, 0.746783,
		35.712292, 31.473700, 39.690929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346035, 32.034779, 39.803741>,  <36.029209, 31.814722, 39.168182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346035, 32.034779, 39.803741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195930, 31.666994, 39.850670>,  <36.105865, 31.446323, 39.878826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195930, 31.666994, 39.850670>,  <36.346035, 32.034779, 39.803741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195930, 31.666994, 39.850670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853763, -0.293584, 0.429998,
		-0.360925, 0.261523, 0.895175,
		-0.375263, -0.919464, 0.117317,
		36.083351, 31.391155, 39.885864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262955, 31.937162, 40.422333>,  <36.346035, 32.034779, 39.803741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262955, 31.937162, 40.422333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334980, 31.576342, 40.265423>,  <36.378193, 31.359848, 40.171276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334980, 31.576342, 40.265423>,  <36.262955, 31.937162, 40.422333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334980, 31.576342, 40.265423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786328, -0.107600, 0.608367,
		-0.590988, -0.417998, 0.689936,
		0.180059, -0.902053, -0.392274,
		36.388996, 31.305725, 40.147739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452545, 31.579889, 40.991390>,  <36.262955, 31.937162, 40.422333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452545, 31.579889, 40.991390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600594, 31.383265, 40.676079>,  <36.689423, 31.265289, 40.486893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600594, 31.383265, 40.676079>,  <36.452545, 31.579889, 40.991390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600594, 31.383265, 40.676079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839693, -0.185971, 0.510226,
		-0.397404, -0.850755, 0.343928,
		0.370117, -0.491560, -0.788278,
		36.711628, 31.235796, 40.439594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177811, 31.419333, 40.910667>,  <36.452545, 31.579889, 40.991390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177811, 31.419333, 40.910667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007076, 31.075123, 41.021881>,  <36.904636, 30.868597, 41.088608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007076, 31.075123, 41.021881>,  <37.177811, 31.419333, 40.910667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007076, 31.075123, 41.021881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363279, -0.118386, -0.924128,
		0.828152, -0.495458, -0.262080,
		-0.426840, -0.860526, 0.278031,
		36.879025, 30.816965, 41.105289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209511, 30.916374, 40.413162>,  <37.177811, 31.419333, 40.910667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209511, 30.916374, 40.413162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883720, 30.824738, 40.626385>,  <36.688248, 30.769756, 40.754318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883720, 30.824738, 40.626385>,  <37.209511, 30.916374, 40.413162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883720, 30.824738, 40.626385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539257, -0.040109, -0.841186,
		0.214087, -0.972579, -0.090870,
		-0.814475, -0.229089, 0.533057,
		36.639378, 30.756010, 40.786301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864254, 30.175224, 40.201057>,  <37.209511, 30.916374, 40.413162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864254, 30.175224, 40.201057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623184, 30.447979, 40.366856>,  <36.478542, 30.611631, 40.466335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623184, 30.447979, 40.366856>,  <36.864254, 30.175224, 40.201057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623184, 30.447979, 40.366856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539125, 0.035021, -0.841498,
		-0.588324, -0.730617, 0.346517,
		-0.602677, 0.681889, 0.414497,
		36.442383, 30.652546, 40.491203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130089, 30.011303, 39.975040>,  <36.864254, 30.175224, 40.201057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130089, 30.011303, 39.975040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157314, 30.384972, 40.115147>,  <36.173649, 30.609173, 40.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157314, 30.384972, 40.115147>,  <36.130089, 30.011303, 39.975040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157314, 30.384972, 40.115147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634532, 0.311461, -0.707362,
		-0.769893, -0.174108, 0.613963,
		0.068068, 0.934172, 0.350269,
		36.177734, 30.665224, 40.220226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515064, 30.284910, 40.213940>,  <36.130089, 30.011303, 39.975040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515064, 30.284910, 40.213940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721699, 30.603985, 40.089470>,  <35.845680, 30.795429, 40.014790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721699, 30.603985, 40.089470>,  <35.515064, 30.284910, 40.213940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721699, 30.603985, 40.089470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768324, 0.271454, -0.579648,
		-0.377909, 0.538522, 0.753113,
		0.516588, 0.797689, -0.311174,
		35.876675, 30.843292, 39.996117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119507, 30.980885, 40.350945>,  <35.515064, 30.284910, 40.213940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119507, 30.980885, 40.350945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358383, 31.034182, 40.034561>,  <35.501709, 31.066160, 39.844730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358383, 31.034182, 40.034561>,  <35.119507, 30.980885, 40.350945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358383, 31.034182, 40.034561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749590, 0.443636, -0.491224,
		0.285445, 0.886247, 0.364812,
		0.597190, 0.133242, -0.790956,
		35.537540, 31.074154, 39.797276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070168, 31.707808, 40.063828>,  <35.119507, 30.980885, 40.350945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070168, 31.707808, 40.063828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217449, 31.482561, 39.767902>,  <35.305817, 31.347414, 39.590347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217449, 31.482561, 39.767902>,  <35.070168, 31.707808, 40.063828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217449, 31.482561, 39.767902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600352, 0.463592, -0.651659,
		0.709931, 0.684094, -0.167370,
		0.368205, -0.563114, -0.739816,
		35.327911, 31.313627, 39.545956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940552, 32.113590, 39.506256>,  <35.070168, 31.707808, 40.063828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940552, 32.113590, 39.506256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023117, 31.764481, 39.329323>,  <35.072655, 31.555016, 39.223164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023117, 31.764481, 39.329323>,  <34.940552, 32.113590, 39.506256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023117, 31.764481, 39.329323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286425, 0.378372, -0.880225,
		0.935604, 0.308383, -0.171884,
		0.206411, -0.872774, -0.442335,
		35.085041, 31.502647, 39.196621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374481, 32.286438, 38.837994>,  <34.940552, 32.113590, 39.506256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374481, 32.286438, 38.837994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155968, 31.951647, 38.825085>,  <35.024860, 31.750772, 38.817337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155968, 31.951647, 38.825085>,  <35.374481, 32.286438, 38.837994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155968, 31.951647, 38.825085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551780, 0.388596, -0.737924,
		0.630168, -0.385308, -0.674111,
		-0.546284, -0.836978, -0.032276,
		34.992081, 31.700554, 38.815403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343395, 32.004032, 38.164047>,  <35.374481, 32.286438, 38.837994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343395, 32.004032, 38.164047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006039, 31.919168, 38.361504>,  <34.803627, 31.868250, 38.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006039, 31.919168, 38.361504>,  <35.343395, 32.004032, 38.164047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006039, 31.919168, 38.361504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536439, 0.384608, -0.751205,
		-0.030482, -0.898368, -0.438185,
		-0.843388, -0.212162, 0.493643,
		34.753021, 31.855520, 38.509598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006458, 31.705803, 37.703335>,  <35.343395, 32.004032, 38.164047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006458, 31.705803, 37.703335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727798, 31.819380, 37.966866>,  <34.560604, 31.887526, 38.124985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727798, 31.819380, 37.966866>,  <35.006458, 31.705803, 37.703335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727798, 31.819380, 37.966866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488074, 0.485480, -0.725323,
		-0.525798, -0.826853, -0.199624,
		-0.696649, 0.283942, 0.658830,
		34.518803, 31.904562, 38.164513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298725, 31.505541, 37.423340>,  <35.006458, 31.705803, 37.703335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298725, 31.505541, 37.423340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256290, 31.822536, 37.663574>,  <34.230831, 32.012733, 37.807716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256290, 31.822536, 37.663574>,  <34.298725, 31.505541, 37.423340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256290, 31.822536, 37.663574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497144, 0.480820, -0.722261,
		-0.861159, -0.375200, 0.342974,
		-0.106083, 0.792488, 0.600590,
		34.224464, 32.060284, 37.843750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685711, 31.762894, 37.257595>,  <34.298725, 31.505541, 37.423340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685711, 31.762894, 37.257595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833828, 32.059216, 37.481773>,  <33.922699, 32.237007, 37.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833828, 32.059216, 37.481773>,  <33.685711, 31.762894, 37.257595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833828, 32.059216, 37.481773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371130, 0.671066, -0.641821,
		-0.851556, 0.029663, 0.523423,
		0.370290, 0.740804, 0.560441,
		33.944916, 32.281456, 37.649906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108395, 32.276199, 37.332870>,  <33.685711, 31.762894, 37.257595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108395, 32.276199, 37.332870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467327, 32.448849, 37.369747>,  <33.682686, 32.552437, 37.391872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467327, 32.448849, 37.369747>,  <33.108395, 32.276199, 37.332870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467327, 32.448849, 37.369747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292399, 0.737830, -0.608367,
		-0.330604, 0.518951, 0.788284,
		0.897332, 0.431622, 0.092189,
		33.736526, 32.578335, 37.397404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945522, 32.885483, 37.334446>,  <33.108395, 32.276199, 37.332870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945522, 32.885483, 37.334446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332699, 32.888802, 37.234035>,  <33.565006, 32.890793, 37.173790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332699, 32.888802, 37.234035>,  <32.945522, 32.885483, 37.334446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332699, 32.888802, 37.234035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208940, 0.581212, -0.786471,
		0.139376, 0.813710, 0.564315,
		0.967946, 0.008293, -0.251023,
		33.623081, 32.891289, 37.158730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045746, 33.557373, 37.045910>,  <32.945522, 32.885483, 37.334446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045746, 33.557373, 37.045910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366295, 33.352276, 36.922684>,  <33.558624, 33.229218, 36.848747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366295, 33.352276, 36.922684>,  <33.045746, 33.557373, 37.045910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366295, 33.352276, 36.922684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126742, 0.357774, -0.925167,
		0.584586, 0.780447, 0.221724,
		0.801371, -0.512738, -0.308065,
		33.606705, 33.198456, 36.830265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429134, 33.984821, 36.565590>,  <33.045746, 33.557373, 37.045910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429134, 33.984821, 36.565590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555019, 33.614494, 36.481857>,  <33.630550, 33.392300, 36.431618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555019, 33.614494, 36.481857>,  <33.429134, 33.984821, 36.565590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555019, 33.614494, 36.481857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195440, 0.279016, -0.940188,
		0.928849, 0.254975, 0.268751,
		0.314710, -0.925817, -0.209332,
		33.649433, 33.336750, 36.419056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048069, 34.096859, 36.204147>,  <33.429134, 33.984821, 36.565590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048069, 34.096859, 36.204147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946243, 33.718945, 36.121605>,  <33.885147, 33.492195, 36.072079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946243, 33.718945, 36.121605>,  <34.048069, 34.096859, 36.204147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946243, 33.718945, 36.121605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115761, 0.182081, -0.976445,
		0.960102, -0.272459, 0.063017,
		-0.254567, -0.944782, -0.206356,
		33.869873, 33.435509, 36.059696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509373, 33.903538, 35.684853>,  <34.048069, 34.096859, 36.204147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509373, 33.903538, 35.684853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179611, 33.678223, 35.662716>,  <33.981754, 33.543034, 35.649433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179611, 33.678223, 35.662716>,  <34.509373, 33.903538, 35.684853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179611, 33.678223, 35.662716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077493, 0.209184, -0.974801,
		0.560672, -0.799341, -0.216103,
		-0.824404, -0.563290, -0.055340,
		33.932289, 33.509235, 35.646114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585155, 33.433979, 35.113930>,  <34.509373, 33.903538, 35.684853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585155, 33.433979, 35.113930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192253, 33.438801, 35.188797>,  <33.956512, 33.441692, 35.233715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192253, 33.438801, 35.188797>,  <34.585155, 33.433979, 35.113930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192253, 33.438801, 35.188797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177056, 0.269575, -0.946562,
		-0.061867, -0.962904, -0.262657,
		-0.982255, 0.012056, 0.187165,
		33.897575, 33.442417, 35.244946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324688, 33.182621, 34.454330>,  <34.585155, 33.433979, 35.113930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324688, 33.182621, 34.454330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022518, 33.359425, 34.647812>,  <33.841217, 33.465508, 34.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022518, 33.359425, 34.647812>,  <34.324688, 33.182621, 34.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022518, 33.359425, 34.647812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299502, 0.423652, -0.854879,
		-0.582782, -0.790665, -0.187655,
		-0.755423, 0.442005, 0.483703,
		33.795891, 33.492027, 34.792923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787571, 33.032860, 34.017666>,  <34.324688, 33.182621, 34.454330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787571, 33.032860, 34.017666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641861, 33.321636, 34.252987>,  <33.554436, 33.494904, 34.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641861, 33.321636, 34.252987>,  <33.787571, 33.032860, 34.017666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641861, 33.321636, 34.252987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319407, 0.496542, -0.807109,
		-0.874805, -0.481917, 0.049717,
		-0.364273, 0.721944, 0.588305,
		33.532578, 33.538219, 34.429478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046009, 33.116291, 33.879093>,  <33.787571, 33.032860, 34.017666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046009, 33.116291, 33.879093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153954, 33.453423, 34.065346>,  <33.218719, 33.655701, 34.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153954, 33.453423, 34.065346>,  <33.046009, 33.116291, 33.879093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153954, 33.453423, 34.065346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253300, 0.528676, -0.810149,
		-0.928985, 0.100686, 0.356159,
		0.269863, 0.842831, 0.465629,
		33.234913, 33.706272, 34.205036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403664, 33.585114, 33.858562>,  <33.046009, 33.116291, 33.879093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403664, 33.585114, 33.858562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727226, 33.811172, 33.923412>,  <32.921364, 33.946808, 33.962322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727226, 33.811172, 33.923412>,  <32.403664, 33.585114, 33.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727226, 33.811172, 33.923412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273263, 0.605535, -0.747432,
		-0.520580, 0.560298, 0.644253,
		0.808903, 0.565149, 0.162121,
		32.969898, 33.980717, 33.972050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259838, 34.203007, 34.190704>,  <32.403664, 33.585114, 33.858562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259838, 34.203007, 34.190704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601311, 34.273685, 33.994743>,  <32.806194, 34.316093, 33.877167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601311, 34.273685, 33.994743>,  <32.259838, 34.203007, 34.190704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601311, 34.273685, 33.994743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505033, 0.510523, -0.695922,
		0.127140, 0.841513, 0.525063,
		0.853684, 0.176695, -0.489900,
		32.857414, 34.326694, 33.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192959, 34.929356, 33.994041>,  <32.259838, 34.203007, 34.190704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192959, 34.929356, 33.994041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497154, 34.788403, 33.775871>,  <32.679672, 34.703831, 33.644970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497154, 34.788403, 33.775871>,  <32.192959, 34.929356, 33.994041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497154, 34.788403, 33.775871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293135, 0.563197, -0.772581,
		0.579424, 0.747421, 0.325008,
		0.760486, -0.352381, -0.545425,
		32.725300, 34.682690, 33.612244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641644, 35.464714, 33.831902>,  <32.192959, 34.929356, 33.994041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641644, 35.464714, 33.831902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699577, 35.189915, 33.547073>,  <32.734337, 35.025036, 33.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699577, 35.189915, 33.547073>,  <32.641644, 35.464714, 33.831902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699577, 35.189915, 33.547073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325932, 0.646371, -0.689908,
		0.934232, 0.332013, -0.130297,
		0.144839, -0.687002, -0.712075,
		32.743031, 34.983814, 33.333450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717609, 35.907513, 33.243534>,  <32.641644, 35.464714, 33.831902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717609, 35.907513, 33.243534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658710, 35.540958, 33.094639>,  <32.623371, 35.321026, 33.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658710, 35.540958, 33.094639>,  <32.717609, 35.907513, 33.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658710, 35.540958, 33.094639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466254, 0.396213, -0.790963,
		0.872310, 0.057087, -0.485609,
		-0.147251, -0.916382, -0.372237,
		32.614536, 35.266045, 32.982967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930229, 35.981617, 32.430847>,  <32.717609, 35.907513, 33.243534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930229, 35.981617, 32.430847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700199, 35.660458, 32.493637>,  <32.562183, 35.467762, 32.531311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700199, 35.660458, 32.493637>,  <32.930229, 35.981617, 32.430847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700199, 35.660458, 32.493637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554210, 0.241193, -0.796667,
		0.601785, -0.545136, -0.583679,
		-0.575071, -0.802903, 0.156974,
		32.527679, 35.419586, 32.540730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853466, 35.632778, 31.747244>,  <32.930229, 35.981617, 32.430847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853466, 35.632778, 31.747244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539207, 35.503826, 31.958460>,  <32.350651, 35.426456, 32.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539207, 35.503826, 31.958460>,  <32.853466, 35.632778, 31.747244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539207, 35.503826, 31.958460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606421, 0.232269, -0.760463,
		0.122508, -0.917673, -0.377979,
		-0.785650, -0.322377, 0.528042,
		32.303513, 35.407112, 32.116871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434929, 35.151272, 31.253668>,  <32.853466, 35.632778, 31.747244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434929, 35.151272, 31.253668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190666, 35.292709, 31.537094>,  <32.044109, 35.377571, 31.707150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190666, 35.292709, 31.537094>,  <32.434929, 35.151272, 31.253668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190666, 35.292709, 31.537094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587700, 0.397349, -0.704786,
		-0.530756, -0.846808, -0.034837,
		-0.610661, 0.353595, 0.708564,
		32.007469, 35.398788, 31.749664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780382, 34.858189, 31.258028>,  <32.434929, 35.151272, 31.253668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780382, 34.858189, 31.258028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716291, 35.211567, 31.434145>,  <31.677837, 35.423592, 31.539814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716291, 35.211567, 31.434145>,  <31.780382, 34.858189, 31.258028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716291, 35.211567, 31.434145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699601, 0.213029, -0.682039,
		-0.696337, -0.417310, 0.583924,
		-0.160229, 0.883443, 0.440291,
		31.668222, 35.476601, 31.566233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101492, 34.977551, 31.074871>,  <31.780382, 34.858189, 31.258028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101492, 34.977551, 31.074871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193176, 35.334381, 31.230644>,  <31.248188, 35.548481, 31.324108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193176, 35.334381, 31.230644>,  <31.101492, 34.977551, 31.074871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193176, 35.334381, 31.230644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725771, 0.423236, -0.542335,
		-0.648627, -0.158330, 0.744455,
		0.229212, 0.892078, 0.389434,
		31.261940, 35.602005, 31.347475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489597, 35.274555, 31.219553>,  <31.101492, 34.977551, 31.074871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489597, 35.274555, 31.219553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748837, 35.579124, 31.213793>,  <30.904381, 35.761864, 31.210337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748837, 35.579124, 31.213793>,  <30.489597, 35.274555, 31.219553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748837, 35.579124, 31.213793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711981, 0.599090, -0.366297,
		-0.270279, 0.247649, 0.930386,
		0.648098, 0.761420, -0.014400,
		30.943266, 35.807552, 31.209473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144966, 35.871849, 31.563723>,  <30.489597, 35.274555, 31.219553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144966, 35.871849, 31.563723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436060, 36.032761, 31.341526>,  <30.610716, 36.129307, 31.208208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436060, 36.032761, 31.341526>,  <30.144966, 35.871849, 31.563723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436060, 36.032761, 31.341526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618463, 0.735019, -0.277941,
		0.296486, 0.545818, 0.783695,
		0.727736, 0.402281, -0.555491,
		30.654381, 36.153446, 31.174879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125017, 36.623150, 31.704441>,  <30.144966, 35.871849, 31.563723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125017, 36.623150, 31.704441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320539, 36.574795, 31.358850>,  <30.437853, 36.545780, 31.151497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320539, 36.574795, 31.358850>,  <30.125017, 36.623150, 31.704441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320539, 36.574795, 31.358850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525603, 0.749621, -0.402257,
		0.696282, 0.650734, 0.302880,
		0.488807, -0.120890, -0.863975,
		30.467182, 36.538528, 31.099657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563890, 37.226933, 31.483881>,  <30.125017, 36.623150, 31.704441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563890, 37.226933, 31.483881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512251, 37.032906, 31.137924>,  <30.481266, 36.916489, 30.930349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512251, 37.032906, 31.137924>,  <30.563890, 37.226933, 31.483881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512251, 37.032906, 31.137924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206526, 0.866219, -0.454986,
		0.969887, 0.119883, -0.212009,
		-0.129101, -0.485070, -0.864893,
		30.473520, 36.887386, 30.878456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034420, 37.533039, 30.998518>,  <30.563890, 37.226933, 31.483881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034420, 37.533039, 30.998518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765697, 37.349579, 30.765858>,  <30.604464, 37.239502, 30.626263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765697, 37.349579, 30.765858>,  <31.034420, 37.533039, 30.998518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765697, 37.349579, 30.765858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146778, 0.852096, -0.502384,
		0.726039, -0.252132, -0.639763,
		-0.671806, -0.458653, -0.581648,
		30.564156, 37.211983, 30.591364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138147, 37.791550, 30.349037>,  <31.034420, 37.533039, 30.998518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138147, 37.791550, 30.349037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766058, 37.654949, 30.295286>,  <30.542805, 37.572987, 30.263035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766058, 37.654949, 30.295286>,  <31.138147, 37.791550, 30.349037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766058, 37.654949, 30.295286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199130, 0.777262, -0.596834,
		0.308269, -0.528431, -0.791032,
		-0.930224, -0.341504, -0.134379,
		30.486990, 37.552498, 30.254972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035450, 37.874920, 29.581255>,  <31.138147, 37.791550, 30.349037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035450, 37.874920, 29.581255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670353, 37.835201, 29.739769>,  <30.451296, 37.811371, 29.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670353, 37.835201, 29.739769>,  <31.035450, 37.874920, 29.581255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670353, 37.835201, 29.739769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377631, 0.575178, -0.725648,
		-0.155878, -0.811979, -0.562488,
		-0.912741, -0.099301, 0.396286,
		30.396530, 37.805412, 29.858654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644365, 37.875324, 29.109255>,  <31.035450, 37.874920, 29.581255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644365, 37.875324, 29.109255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394554, 37.962421, 29.409267>,  <30.244667, 38.014679, 29.589275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394554, 37.962421, 29.409267>,  <30.644365, 37.875324, 29.109255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394554, 37.962421, 29.409267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359243, 0.772631, -0.523437,
		-0.693474, -0.596346, -0.404308,
		-0.624530, 0.217745, 0.750033,
		30.207195, 38.027744, 29.634277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927870, 37.963902, 28.850124>,  <30.644365, 37.875324, 29.109255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927870, 37.963902, 28.850124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939653, 38.171108, 29.192068>,  <29.946724, 38.295433, 29.397234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939653, 38.171108, 29.192068>,  <29.927870, 37.963902, 28.850124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939653, 38.171108, 29.192068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518987, 0.738846, -0.429835,
		-0.854274, -0.430999, 0.290612,
		0.029459, 0.518021, 0.854861,
		29.948490, 38.326515, 29.448526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294895, 38.333549, 28.912479>,  <29.927870, 37.963902, 28.850124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294895, 38.333549, 28.912479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528618, 38.509819, 29.185064>,  <29.668852, 38.615582, 29.348616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528618, 38.509819, 29.185064>,  <29.294895, 38.333549, 28.912479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528618, 38.509819, 29.185064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237748, 0.895835, -0.375440,
		-0.775925, 0.057356, 0.628213,
		0.584309, 0.440670, 0.681464,
		29.703911, 38.642021, 29.389503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889282, 38.884876, 29.104731>,  <29.294895, 38.333549, 28.912479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889282, 38.884876, 29.104731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259068, 38.977859, 29.225615>,  <29.480938, 39.033649, 29.298145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259068, 38.977859, 29.225615>,  <28.889282, 38.884876, 29.104731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259068, 38.977859, 29.225615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188350, 0.967607, -0.168109,
		-0.331501, 0.098489, 0.938300,
		0.924463, 0.232457, 0.302212,
		29.536406, 39.047596, 29.316278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719500, 39.403782, 29.525747>,  <28.889282, 38.884876, 29.104731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719500, 39.403782, 29.525747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108467, 39.455990, 29.448425>,  <29.341848, 39.487312, 29.402033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108467, 39.455990, 29.448425>,  <28.719500, 39.403782, 29.525747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108467, 39.455990, 29.448425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155583, 0.980422, -0.120689,
		0.173769, 0.147435, 0.973687,
		0.972419, 0.130517, -0.193305,
		29.400192, 39.495144, 29.390434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886768, 39.870411, 30.037430>,  <28.719500, 39.403782, 29.525747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886768, 39.870411, 30.037430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148579, 39.892197, 29.735800>,  <29.305664, 39.905270, 29.554821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148579, 39.892197, 29.735800>,  <28.886768, 39.870411, 30.037430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148579, 39.892197, 29.735800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115139, 0.992949, -0.028219,
		0.747222, 0.105293, 0.656180,
		0.654524, 0.054466, -0.754077,
		29.344936, 39.908535, 29.509577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263727, 40.449070, 30.185953>,  <28.886768, 39.870411, 30.037430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263727, 40.449070, 30.185953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337744, 40.384510, 29.798199>,  <29.382154, 40.345776, 29.565546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337744, 40.384510, 29.798199>,  <29.263727, 40.449070, 30.185953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337744, 40.384510, 29.798199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097670, 0.978517, -0.181564,
		0.977865, 0.128277, 0.165301,
		0.185041, -0.161400, -0.969386,
		29.393255, 40.336090, 29.507383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756271, 40.977169, 29.930727>,  <29.263727, 40.449070, 30.185953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756271, 40.977169, 29.930727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578609, 40.855541, 29.593618>,  <29.472012, 40.782562, 29.391354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578609, 40.855541, 29.593618>,  <29.756271, 40.977169, 29.930727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578609, 40.855541, 29.593618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169262, 0.952187, -0.254344,
		0.879815, 0.029681, -0.474388,
		-0.444157, -0.304072, -0.842772,
		29.445362, 40.764320, 29.340786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004679, 41.403824, 29.451847>,  <29.756271, 40.977169, 29.930727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004679, 41.403824, 29.451847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695333, 41.250240, 29.250061>,  <29.509727, 41.158089, 29.128990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695333, 41.250240, 29.250061>,  <30.004679, 41.403824, 29.451847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695333, 41.250240, 29.250061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140030, 0.879533, -0.454768,
		0.618306, -0.281061, -0.733964,
		-0.773362, -0.383962, -0.504463,
		29.463326, 41.135052, 29.098722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949293, 41.810825, 28.830877>,  <30.004679, 41.403824, 29.451847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949293, 41.810825, 28.830877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597221, 41.621773, 28.848312>,  <29.385979, 41.508343, 28.858774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597221, 41.621773, 28.848312>,  <29.949293, 41.810825, 28.830877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597221, 41.621773, 28.848312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460037, 0.826896, -0.323434,
		0.116823, -0.304732, -0.945246,
		-0.880181, -0.472633, 0.043588,
		29.333168, 41.479984, 28.861389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594255, 41.804775, 28.132492>,  <29.949293, 41.810825, 28.830877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594255, 41.804775, 28.132492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308222, 41.770607, 28.410011>,  <29.136602, 41.750107, 28.576523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308222, 41.770607, 28.410011>,  <29.594255, 41.804775, 28.132492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308222, 41.770607, 28.410011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530417, 0.712769, -0.458932,
		-0.455317, -0.696178, -0.554998,
		-0.715083, -0.085421, 0.693800,
		29.093697, 41.744980, 28.618151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090740, 41.841728, 27.700731>,  <29.594255, 41.804775, 28.132492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090740, 41.841728, 27.700731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923870, 41.936340, 28.051735>,  <28.823748, 41.993107, 28.262337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923870, 41.936340, 28.051735>,  <29.090740, 41.841728, 27.700731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923870, 41.936340, 28.051735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535692, 0.715985, -0.447661,
		-0.734166, -0.656826, -0.171984,
		-0.417174, 0.236527, 0.877508,
		28.798717, 42.007298, 28.314987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405558, 41.907887, 27.622129>,  <29.090740, 41.841728, 27.700731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405558, 41.907887, 27.622129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502802, 42.133114, 27.938066>,  <28.561148, 42.268250, 28.127628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502802, 42.133114, 27.938066>,  <28.405558, 41.907887, 27.622129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502802, 42.133114, 27.938066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483955, 0.776096, -0.404305,
		-0.840646, -0.283958, 0.461175,
		0.243111, 0.563065, 0.789845,
		28.575735, 42.302032, 28.175020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863895, 42.250214, 27.708874>,  <28.405558, 41.907887, 27.622129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863895, 42.250214, 27.708874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122234, 42.473618, 27.917086>,  <28.277239, 42.607658, 28.042013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122234, 42.473618, 27.917086>,  <27.863895, 42.250214, 27.708874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122234, 42.473618, 27.917086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468219, 0.828281, -0.307769,
		-0.603035, -0.044949, 0.796448,
		0.645849, 0.558507, 0.520528,
		28.315989, 42.641171, 28.073244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534666, 42.578564, 28.382998>,  <27.863895, 42.250214, 27.708874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534666, 42.578564, 28.382998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832146, 42.775787, 28.202421>,  <28.010633, 42.894123, 28.094076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832146, 42.775787, 28.202421>,  <27.534666, 42.578564, 28.382998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832146, 42.775787, 28.202421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612080, 0.773766, -0.163231,
		0.268826, 0.397712, 0.877244,
		0.743701, 0.493063, -0.451440,
		28.055256, 42.923706, 28.066990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671511, 43.336292, 28.463179>,  <27.534666, 42.578564, 28.382998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671511, 43.336292, 28.463179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990145, 43.394367, 28.228447>,  <28.181326, 43.429214, 28.087608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990145, 43.394367, 28.228447>,  <27.671511, 43.336292, 28.463179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990145, 43.394367, 28.228447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494969, -0.400662, -0.771023,
		-0.347065, 0.904649, -0.247297,
		0.796587, 0.145191, -0.586829,
		28.229120, 43.437923, 28.052399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431337, 43.683590, 27.759401>,  <27.671511, 43.336292, 28.463179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431337, 43.683590, 27.759401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766930, 43.471905, 27.708740>,  <27.968285, 43.344894, 27.678345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766930, 43.471905, 27.708740>,  <27.431337, 43.683590, 27.759401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766930, 43.471905, 27.708740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347116, -0.341242, -0.873536,
		0.419068, 0.776844, -0.469994,
		0.838983, -0.529214, -0.126652,
		28.018625, 43.313141, 27.670744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110878, 44.003632, 27.574766>,  <27.431337, 43.683590, 27.759401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110878, 44.003632, 27.574766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358715, 44.235416, 27.786552>,  <28.507418, 44.374485, 27.913624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358715, 44.235416, 27.786552>,  <28.110878, 44.003632, 27.574766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358715, 44.235416, 27.786552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706745, -0.118382, -0.697493,
		-0.341489, 0.806358, -0.482878,
		0.619594, 0.579458, 0.529463,
		28.544594, 44.409252, 27.945391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120335, 44.689270, 27.886061>,  <28.110878, 44.003632, 27.574766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120335, 44.689270, 27.886061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783012, 44.631512, 28.093128>,  <27.580618, 44.596855, 28.217369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783012, 44.631512, 28.093128>,  <28.120335, 44.689270, 27.886061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783012, 44.631512, 28.093128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346609, -0.882267, 0.318539,
		0.410727, 0.448055, 0.794072,
		-0.843307, -0.144400, 0.517670,
		27.530020, 44.588192, 28.248430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247040, 44.507393, 28.605619>,  <28.120335, 44.689270, 27.886061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247040, 44.507393, 28.605619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892191, 44.350510, 28.508310>,  <27.679281, 44.256378, 28.449924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892191, 44.350510, 28.508310>,  <28.247040, 44.507393, 28.605619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892191, 44.350510, 28.508310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295282, -0.887425, 0.353957,
		-0.354713, 0.242169, 0.903069,
		-0.887123, -0.392213, -0.243273,
		27.626055, 44.232845, 28.435328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234325, 44.840130, 29.380316>,  <28.247040, 44.507393, 28.605619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234325, 44.840130, 29.380316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933586, 44.586246, 29.451727>,  <27.753143, 44.433918, 29.494574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933586, 44.586246, 29.451727>,  <28.234325, 44.840130, 29.380316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933586, 44.586246, 29.451727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270324, -0.049772, 0.961482,
		-0.601375, 0.771147, 0.208997,
		-0.751846, -0.634708, 0.178528,
		27.708033, 44.395836, 29.505285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377718, 44.656693, 29.991858>,  <28.234325, 44.840130, 29.380316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377718, 44.656693, 29.991858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040146, 44.448753, 29.938879>,  <27.837603, 44.323990, 29.907093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040146, 44.448753, 29.938879>,  <28.377718, 44.656693, 29.991858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040146, 44.448753, 29.938879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026896, -0.287578, 0.957380,
		-0.535782, 0.804397, 0.256677,
		-0.843928, -0.519850, -0.132444,
		27.786968, 44.292797, 29.899145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898930, 44.806641, 30.618202>,  <28.377718, 44.656693, 29.991858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898930, 44.806641, 30.618202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879059, 44.455486, 30.427687>,  <27.867136, 44.244793, 30.313377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879059, 44.455486, 30.427687>,  <27.898930, 44.806641, 30.618202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879059, 44.455486, 30.427687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182561, -0.476824, 0.859832,
		-0.981939, -0.044238, 0.183955,
		-0.049677, -0.877885, -0.476288,
		27.864157, 44.192120, 30.284800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483906, 44.292339, 31.016220>,  <27.898930, 44.806641, 30.618202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483906, 44.292339, 31.016220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761992, 44.120453, 30.785734>,  <27.928843, 44.017323, 30.647442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761992, 44.120453, 30.785734>,  <27.483906, 44.292339, 31.016220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761992, 44.120453, 30.785734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444479, -0.373001, 0.814438,
		-0.564903, -0.822325, -0.068318,
		0.695215, -0.429712, -0.576215,
		27.970556, 43.991539, 30.612869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509912, 43.690163, 31.359898>,  <27.483906, 44.292339, 31.016220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509912, 43.690163, 31.359898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820240, 43.682224, 31.107639>,  <28.006435, 43.677460, 30.956284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820240, 43.682224, 31.107639>,  <27.509912, 43.690163, 31.359898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820240, 43.682224, 31.107639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454608, -0.675523, 0.580517,
		-0.437538, -0.737072, -0.515059,
		0.775817, -0.019849, -0.630645,
		28.052984, 43.676270, 30.918446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629374, 42.893692, 31.045622>,  <27.509912, 43.690163, 31.359898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629374, 42.893692, 31.045622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973473, 43.095840, 31.072685>,  <28.179932, 43.217129, 31.088924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973473, 43.095840, 31.072685>,  <27.629374, 42.893692, 31.045622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973473, 43.095840, 31.072685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395103, -0.744588, 0.538035,
		0.322284, -0.436111, -0.840203,
		0.860248, 0.505367, 0.067660,
		28.231546, 43.247452, 31.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149586, 42.342251, 30.985783>,  <27.629374, 42.893692, 31.045622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149586, 42.342251, 30.985783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341511, 42.655502, 31.144016>,  <28.456665, 42.843452, 31.238956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341511, 42.655502, 31.144016>,  <28.149586, 42.342251, 30.985783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341511, 42.655502, 31.144016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416252, -0.600089, 0.683101,
		0.772344, -0.163097, -0.613909,
		0.479812, 0.783130, 0.395586,
		28.485455, 42.890442, 31.262691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875074, 42.114109, 31.071375>,  <28.149586, 42.342251, 30.985783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875074, 42.114109, 31.071375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857811, 42.432659, 31.312681>,  <28.847452, 42.623787, 31.457464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857811, 42.432659, 31.312681>,  <28.875074, 42.114109, 31.071375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857811, 42.432659, 31.312681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645138, -0.438842, 0.625472,
		0.762846, 0.416184, -0.494830,
		-0.043159, 0.796372, 0.603265,
		28.844864, 42.671570, 31.493660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585329, 42.282784, 31.179766>,  <28.875074, 42.114109, 31.071375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585329, 42.282784, 31.179766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357590, 42.436981, 31.470209>,  <29.220945, 42.529499, 31.644476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357590, 42.436981, 31.470209>,  <29.585329, 42.282784, 31.179766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357590, 42.436981, 31.470209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548340, -0.479989, 0.684787,
		0.612508, 0.788037, 0.061897,
		-0.569348, 0.385497, 0.726109,
		29.186785, 42.552631, 31.688042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034836, 42.518734, 31.601330>,  <29.585329, 42.282784, 31.179766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034836, 42.518734, 31.601330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696831, 42.460987, 31.807285>,  <29.494028, 42.426338, 31.930859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696831, 42.460987, 31.807285>,  <30.034836, 42.518734, 31.601330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696831, 42.460987, 31.807285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514078, -0.484410, 0.707863,
		0.147224, 0.862847, 0.483550,
		-0.845014, -0.144368, 0.514888,
		29.443327, 42.417675, 31.961752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247845, 42.645287, 32.174133>,  <30.034836, 42.518734, 31.601330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247845, 42.645287, 32.174133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910507, 42.450298, 32.264595>,  <29.708105, 42.333305, 32.318871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910507, 42.450298, 32.264595>,  <30.247845, 42.645287, 32.174133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910507, 42.450298, 32.264595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498419, -0.552249, 0.668281,
		-0.200874, 0.676310, 0.708700,
		-0.843343, -0.487469, 0.226153,
		29.657505, 42.304058, 32.332439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196274, 42.808182, 32.834545>,  <30.247845, 42.645287, 32.174133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196274, 42.808182, 32.834545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980545, 42.480221, 32.757713>,  <29.851107, 42.283443, 32.711613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980545, 42.480221, 32.757713>,  <30.196274, 42.808182, 32.834545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980545, 42.480221, 32.757713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554312, -0.517362, 0.651977,
		-0.633930, 0.245155, 0.733506,
		-0.539324, -0.819900, -0.192079,
		29.818748, 42.234249, 32.700089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058462, 42.485981, 33.580441>,  <30.196274, 42.808182, 32.834545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058462, 42.485981, 33.580441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019163, 42.182014, 33.323418>,  <29.995584, 41.999634, 33.169205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019163, 42.182014, 33.323418>,  <30.058462, 42.485981, 33.580441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019163, 42.182014, 33.323418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545615, -0.581117, 0.603828,
		-0.832257, -0.291264, 0.471713,
		-0.098247, -0.759913, -0.642557,
		29.989689, 41.954041, 33.130650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852369, 41.921013, 34.021023>,  <30.058462, 42.485981, 33.580441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852369, 41.921013, 34.021023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983656, 41.753784, 33.682205>,  <30.062428, 41.653446, 33.478912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983656, 41.753784, 33.682205>,  <29.852369, 41.921013, 34.021023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983656, 41.753784, 33.682205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600539, -0.599816, 0.528748,
		-0.729128, -0.682228, 0.054202,
		0.328215, -0.418075, -0.847046,
		30.082121, 41.628361, 33.428093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663294, 41.161320, 33.958035>,  <29.852369, 41.921013, 34.021023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663294, 41.161320, 33.958035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980356, 41.207748, 33.718628>,  <30.170593, 41.235603, 33.574982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980356, 41.207748, 33.718628>,  <29.663294, 41.161320, 33.958035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980356, 41.207748, 33.718628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527220, -0.623495, 0.577315,
		-0.306166, -0.773163, -0.555410,
		0.792655, 0.116069, -0.598520,
		30.218153, 41.242569, 33.539070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983936, 40.544971, 34.092995>,  <29.663294, 41.161320, 33.958035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983936, 40.544971, 34.092995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263140, 40.741993, 33.885078>,  <30.430662, 40.860207, 33.760330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263140, 40.741993, 33.885078>,  <29.983936, 40.544971, 34.092995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263140, 40.741993, 33.885078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703206, -0.608553, 0.367647,
		-0.135233, -0.622137, -0.771141,
		0.698007, 0.492553, -0.519787,
		30.472542, 40.889759, 33.729141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332390, 40.069355, 33.568699>,  <29.983936, 40.544971, 34.092995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332390, 40.069355, 33.568699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578890, 40.364784, 33.678055>,  <30.726789, 40.542042, 33.743668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578890, 40.364784, 33.678055>,  <30.332390, 40.069355, 33.568699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578890, 40.364784, 33.678055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698913, -0.672881, 0.242389,
		0.362984, 0.041707, -0.930861,
		0.616249, 0.738575, 0.273394,
		30.763765, 40.586357, 33.760075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859550, 39.935810, 33.193954>,  <30.332390, 40.069355, 33.568699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859550, 39.935810, 33.193954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972368, 40.150845, 33.511810>,  <31.040058, 40.279865, 33.702522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972368, 40.150845, 33.511810>,  <30.859550, 39.935810, 33.193954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972368, 40.150845, 33.511810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603232, -0.743429, 0.288833,
		0.746031, 0.397888, -0.533969,
		0.282045, 0.537585, 0.794640,
		31.056982, 40.312119, 33.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517908, 39.778687, 33.222527>,  <30.859550, 39.935810, 33.193954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517908, 39.778687, 33.222527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412073, 39.915150, 33.583328>,  <31.348572, 39.997028, 33.799809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412073, 39.915150, 33.583328>,  <31.517908, 39.778687, 33.222527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412073, 39.915150, 33.583328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658350, -0.619564, 0.427452,
		0.704676, 0.706931, -0.060672,
		-0.264589, 0.341158, 0.902000,
		31.332697, 40.017498, 33.853928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099770, 40.099941, 33.606941>,  <31.517908, 39.778687, 33.222527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099770, 40.099941, 33.606941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846058, 39.956940, 33.881134>,  <31.693830, 39.871140, 34.045650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846058, 39.956940, 33.881134>,  <32.099770, 40.099941, 33.606941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846058, 39.956940, 33.881134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770388, -0.366549, 0.521674,
		0.064759, 0.858971, 0.507912,
		-0.634278, -0.357506, 0.685479,
		31.655775, 39.849689, 34.086777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576824, 39.980419, 34.174030>,  <32.099770, 40.099941, 33.606941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576824, 39.980419, 34.174030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231327, 39.842041, 34.320602>,  <32.024029, 39.759014, 34.408546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231327, 39.842041, 34.320602>,  <32.576824, 39.980419, 34.174030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231327, 39.842041, 34.320602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492080, -0.422237, 0.761297,
		-0.108650, 0.837876, 0.534938,
		-0.863743, -0.345947, 0.366426,
		31.972204, 39.738258, 34.430531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742245, 39.951672, 35.000248>,  <32.576824, 39.980419, 34.174030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742245, 39.951672, 35.000248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419994, 39.724972, 34.931244>,  <32.226643, 39.588951, 34.889839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419994, 39.724972, 34.931244>,  <32.742245, 39.951672, 35.000248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419994, 39.724972, 34.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280735, -0.621646, 0.731262,
		-0.521686, 0.540692, 0.659921,
		-0.805625, -0.566752, -0.172513,
		32.178307, 39.554947, 34.879490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300385, 39.825676, 35.698868>,  <32.742245, 39.951672, 35.000248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300385, 39.825676, 35.698868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259377, 39.531582, 35.430862>,  <32.234772, 39.355125, 35.270061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259377, 39.531582, 35.430862>,  <32.300385, 39.825676, 35.698868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259377, 39.531582, 35.430862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199566, -0.675067, 0.710252,
		-0.974506, -0.060896, 0.215937,
		-0.102520, -0.735239, -0.670010,
		32.228619, 39.311008, 35.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879673, 39.392014, 36.014366>,  <32.300385, 39.825676, 35.698868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879673, 39.392014, 36.014366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015476, 39.143093, 35.732239>,  <32.096958, 38.993740, 35.562962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015476, 39.143093, 35.732239>,  <31.879673, 39.392014, 36.014366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015476, 39.143093, 35.732239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007573, -0.748028, 0.663623,
		-0.940573, -0.230645, -0.249247,
		0.339506, -0.622299, -0.705322,
		32.117329, 38.956402, 35.520641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385958, 38.808784, 36.001774>,  <31.879673, 39.392014, 36.014366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385958, 38.808784, 36.001774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732094, 38.700722, 35.832916>,  <31.939775, 38.635883, 35.731602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732094, 38.700722, 35.832916>,  <31.385958, 38.808784, 36.001774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732094, 38.700722, 35.832916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001337, -0.843523, 0.537092,
		-0.501184, -0.464202, -0.730295,
		0.865340, -0.270159, -0.422139,
		31.991695, 38.619675, 35.706276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410414, 38.137535, 36.102478>,  <31.385958, 38.808784, 36.001774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410414, 38.137535, 36.102478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790745, 38.188259, 35.989452>,  <32.018944, 38.218693, 35.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790745, 38.188259, 35.989452>,  <31.410414, 38.137535, 36.102478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790745, 38.188259, 35.989452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263341, -0.811220, 0.522087,
		-0.163016, -0.570826, -0.804725,
		0.950830, 0.126808, -0.282564,
		32.075993, 38.226303, 35.904682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804342, 37.411579, 35.916428>,  <31.410414, 38.137535, 36.102478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804342, 37.411579, 35.916428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090435, 37.677292, 36.003304>,  <32.262093, 37.836720, 36.055428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090435, 37.677292, 36.003304>,  <31.804342, 37.411579, 35.916428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090435, 37.677292, 36.003304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400115, -0.643997, 0.652056,
		0.573018, -0.379471, -0.726397,
		0.715233, 0.664282, 0.217190,
		32.305004, 37.876575, 36.068459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508373, 37.050327, 35.972912>,  <31.804342, 37.411579, 35.916428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508373, 37.050327, 35.972912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563461, 37.396790, 36.165081>,  <32.596512, 37.604668, 36.280384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563461, 37.396790, 36.165081>,  <32.508373, 37.050327, 35.972912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563461, 37.396790, 36.165081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393854, -0.492938, 0.775817,
		0.908798, 0.082375, -0.409024,
		0.137716, 0.866156, 0.480424,
		32.604774, 37.656635, 36.309208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138126, 36.938065, 36.238285>,  <32.508373, 37.050327, 35.972912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138126, 36.938065, 36.238285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997341, 37.253166, 36.440498>,  <32.912868, 37.442226, 36.561825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997341, 37.253166, 36.440498>,  <33.138126, 36.938065, 36.238285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997341, 37.253166, 36.440498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481899, -0.310506, 0.819365,
		0.802429, 0.532005, -0.270330,
		-0.351967, 0.787754, 0.505532,
		32.891750, 37.489494, 36.592159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752373, 37.221287, 36.502670>,  <33.138126, 36.938065, 36.238285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752373, 37.221287, 36.502670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453686, 37.369015, 36.723946>,  <33.274475, 37.457653, 36.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453686, 37.369015, 36.723946>,  <33.752373, 37.221287, 36.502670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453686, 37.369015, 36.723946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461104, -0.311976, 0.830695,
		0.479374, 0.875371, 0.062662,
		-0.746715, 0.369320, 0.553190,
		33.229671, 37.479809, 36.889904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986431, 37.667519, 37.075542>,  <33.752373, 37.221287, 36.502670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986431, 37.667519, 37.075542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628979, 37.556103, 37.216309>,  <33.414509, 37.489254, 37.300766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628979, 37.556103, 37.216309>,  <33.986431, 37.667519, 37.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628979, 37.556103, 37.216309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424950, -0.272904, 0.863100,
		-0.144366, 0.920837, 0.362239,
		-0.893631, -0.278536, 0.351912,
		33.360889, 37.472542, 37.321880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011925, 37.844402, 37.813354>,  <33.986431, 37.667519, 37.075542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011925, 37.844402, 37.813354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705120, 37.590809, 37.773849>,  <33.521038, 37.438652, 37.750149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705120, 37.590809, 37.773849>,  <34.011925, 37.844402, 37.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705120, 37.590809, 37.773849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301624, -0.492121, 0.816603,
		-0.566316, 0.596557, 0.568689,
		-0.767013, -0.633985, -0.098760,
		33.475018, 37.400612, 37.744221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585922, 37.863235, 38.429996>,  <34.011925, 37.844402, 37.813354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585922, 37.863235, 38.429996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557457, 37.503441, 38.257549>,  <33.540379, 37.287563, 38.154079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557457, 37.503441, 38.257549>,  <33.585922, 37.863235, 38.429996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557457, 37.503441, 38.257549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274707, -0.433173, 0.858427,
		-0.958891, -0.057344, 0.277920,
		-0.071162, -0.899485, -0.431118,
		33.536110, 37.233597, 38.128212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542500, 37.262596, 39.008301>,  <33.585922, 37.863235, 38.429996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542500, 37.262596, 39.008301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549969, 37.011395, 38.697105>,  <33.554451, 36.860672, 38.510387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549969, 37.011395, 38.697105>,  <33.542500, 37.262596, 39.008301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549969, 37.011395, 38.697105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110614, -0.772046, 0.625867,
		-0.993688, -0.097740, 0.055053,
		0.018669, -0.628006, -0.777985,
		33.555569, 36.822994, 38.463711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066708, 36.715199, 39.177994>,  <33.542500, 37.262596, 39.008301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066708, 36.715199, 39.177994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327900, 36.589397, 38.902397>,  <33.484615, 36.513916, 38.737041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327900, 36.589397, 38.902397>,  <33.066708, 36.715199, 39.177994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327900, 36.589397, 38.902397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249308, -0.769751, 0.587647,
		-0.715163, -0.555493, -0.424227,
		0.652983, -0.314500, -0.688987,
		33.523796, 36.495049, 38.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937096, 36.024693, 39.013374>,  <33.066708, 36.715199, 39.177994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937096, 36.024693, 39.013374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311825, 36.070972, 38.881325>,  <33.536663, 36.098740, 38.802094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311825, 36.070972, 38.881325>,  <32.937096, 36.024693, 39.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311825, 36.070972, 38.881325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259156, -0.863426, 0.432820,
		-0.234960, -0.491028, -0.838860,
		0.936820, 0.115700, -0.330123,
		33.592873, 36.105682, 38.782288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090088, 35.306377, 38.800602>,  <32.937096, 36.024693, 39.013374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090088, 35.306377, 38.800602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433342, 35.508827, 38.835110>,  <33.639294, 35.630299, 38.855816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433342, 35.508827, 38.835110>,  <33.090088, 35.306377, 38.800602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433342, 35.508827, 38.835110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467117, -0.839369, 0.277959,
		0.213094, -0.198228, -0.956711,
		0.858133, 0.506127, 0.086269,
		33.690781, 35.660664, 38.860989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591362, 34.938732, 38.555725>,  <33.090088, 35.306377, 38.800602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591362, 34.938732, 38.555725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836517, 35.183331, 38.755901>,  <33.983612, 35.330090, 38.876007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836517, 35.183331, 38.755901>,  <33.591362, 34.938732, 38.555725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836517, 35.183331, 38.755901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433307, -0.789706, 0.434293,
		0.660767, -0.049331, -0.748968,
		0.612888, 0.611499, 0.500436,
		34.020386, 35.366779, 38.906033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338657, 34.722118, 38.486576>,  <33.591362, 34.938732, 38.555725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338657, 34.722118, 38.486576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340389, 34.937592, 38.823574>,  <34.341427, 35.066875, 39.025772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340389, 34.937592, 38.823574>,  <34.338657, 34.722118, 38.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340389, 34.937592, 38.823574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371825, -0.782967, 0.498707,
		0.928293, 0.311103, -0.203685,
		0.004330, 0.538681, 0.842499,
		34.341690, 35.099197, 39.076324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982731, 34.607235, 38.775631>,  <34.338657, 34.722118, 38.486576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982731, 34.607235, 38.775631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756641, 34.735424, 39.079689>,  <34.620987, 34.812336, 39.262123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756641, 34.735424, 39.079689>,  <34.982731, 34.607235, 38.775631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756641, 34.735424, 39.079689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446146, -0.656318, 0.608442,
		0.693883, 0.683042, 0.227991,
		-0.565226, 0.320470, 0.760144,
		34.587074, 34.831566, 39.307732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432739, 34.809883, 39.292725>,  <34.982731, 34.607235, 38.775631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432739, 34.809883, 39.292725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076107, 34.764027, 39.467972>,  <34.862129, 34.736511, 39.573120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076107, 34.764027, 39.467972>,  <35.432739, 34.809883, 39.292725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076107, 34.764027, 39.467972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406911, -0.627430, 0.663894,
		0.198779, 0.770188, 0.606051,
		-0.891578, -0.114640, 0.438118,
		34.808632, 34.729633, 39.599407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672264, 34.808857, 40.037258>,  <35.432739, 34.809883, 39.292725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672264, 34.808857, 40.037258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322636, 34.620255, 39.990475>,  <35.112858, 34.507092, 39.962406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322636, 34.620255, 39.990475>,  <35.672264, 34.808857, 40.037258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322636, 34.620255, 39.990475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300204, -0.713533, 0.633046,
		-0.381938, 0.518218, 0.765228,
		-0.874071, -0.471509, -0.116955,
		35.060413, 34.478802, 39.955387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698360, 35.517632, 39.635880>,  <35.672264, 34.808857, 40.037258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698360, 35.517632, 39.635880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954578, 35.735729, 39.852180>,  <36.108307, 35.866589, 39.981960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954578, 35.735729, 39.852180>,  <35.698360, 35.517632, 39.635880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954578, 35.735729, 39.852180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582898, 0.803656, -0.119863,
		-0.499936, -0.238428, 0.832596,
		0.640542, 0.545242, 0.540755,
		36.146740, 35.899303, 40.014408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294422, 35.951912, 40.096489>,  <35.698360, 35.517632, 39.635880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294422, 35.951912, 40.096489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651024, 36.129787, 40.061909>,  <35.864986, 36.236511, 40.041161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651024, 36.129787, 40.061909>,  <35.294422, 35.951912, 40.096489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651024, 36.129787, 40.061909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452874, 0.879590, -0.145693,
		0.011255, 0.169038, 0.985545,
		0.891504, 0.444688, -0.086453,
		35.918476, 36.263195, 40.035973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271809, 36.535603, 40.410126>,  <35.294422, 35.951912, 40.096489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271809, 36.535603, 40.410126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574238, 36.611137, 40.159462>,  <35.755695, 36.656460, 40.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574238, 36.611137, 40.159462>,  <35.271809, 36.535603, 40.410126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574238, 36.611137, 40.159462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304400, 0.949071, -0.081272,
		0.579394, 0.252202, 0.775045,
		0.756070, 0.188836, -0.626657,
		35.801060, 36.667789, 39.971466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492020, 37.138863, 40.583912>,  <35.271809, 36.535603, 40.410126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492020, 37.138863, 40.583912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645096, 37.117928, 40.214954>,  <35.736942, 37.105366, 39.993580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645096, 37.117928, 40.214954>,  <35.492020, 37.138863, 40.583912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645096, 37.117928, 40.214954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308662, 0.933784, -0.181041,
		0.870789, 0.353991, 0.341198,
		0.382692, -0.052333, -0.922392,
		35.759903, 37.102226, 39.938236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837376, 37.787838, 40.404697>,  <35.492020, 37.138863, 40.583912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837376, 37.787838, 40.404697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763180, 37.614143, 40.052101>,  <35.718662, 37.509926, 39.840542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763180, 37.614143, 40.052101>,  <35.837376, 37.787838, 40.404697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763180, 37.614143, 40.052101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072127, 0.900658, -0.428502,
		0.979995, -0.015904, -0.198386,
		-0.185493, -0.434239, -0.881493,
		35.707531, 37.483871, 39.787655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261223, 38.080879, 39.881371>,  <35.837376, 37.787838, 40.404697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261223, 38.080879, 39.881371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963650, 37.924751, 39.664406>,  <35.785107, 37.831074, 39.534225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963650, 37.924751, 39.664406>,  <36.261223, 38.080879, 39.881371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963650, 37.924751, 39.664406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124257, 0.878330, -0.461624,
		0.656597, -0.276020, -0.701921,
		-0.743936, -0.390320, -0.542411,
		35.740471, 37.807655, 39.501682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302231, 38.391830, 39.082363>,  <36.261223, 38.080879, 39.881371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302231, 38.391830, 39.082363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926422, 38.257874, 39.111046>,  <35.700935, 38.177498, 39.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926422, 38.257874, 39.111046>,  <36.302231, 38.391830, 39.082363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926422, 38.257874, 39.111046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315938, 0.766657, -0.558945,
		0.132214, -0.547796, -0.826099,
		-0.939522, -0.334897, 0.071707,
		35.644566, 38.157406, 39.132557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110508, 38.456253, 38.444374>,  <36.302231, 38.391830, 39.082363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110508, 38.456253, 38.444374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762444, 38.439495, 38.640766>,  <35.553604, 38.429440, 38.758602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762444, 38.439495, 38.640766>,  <36.110508, 38.456253, 38.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762444, 38.439495, 38.640766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397672, 0.648088, -0.649491,
		-0.290984, -0.760412, -0.580605,
		-0.870164, -0.041899, 0.490978,
		35.501396, 38.426926, 38.788059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601597, 38.495464, 37.955406>,  <36.110508, 38.456253, 38.444374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601597, 38.495464, 37.955406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412209, 38.598557, 38.292309>,  <35.298576, 38.660412, 38.494450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412209, 38.598557, 38.292309>,  <35.601597, 38.495464, 37.955406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412209, 38.598557, 38.292309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596008, 0.610323, -0.521804,
		-0.648536, -0.749052, -0.135358,
		-0.473471, 0.257734, 0.842258,
		35.270168, 38.675877, 38.544987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856724, 38.380936, 37.908333>,  <35.601597, 38.495464, 37.955406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856724, 38.380936, 37.908333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912533, 38.666714, 38.182590>,  <34.946018, 38.838181, 38.347145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912533, 38.666714, 38.182590>,  <34.856724, 38.380936, 37.908333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912533, 38.666714, 38.182590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672786, 0.576443, -0.463758,
		-0.726562, -0.396587, 0.561094,
		0.139518, 0.714445, 0.685640,
		34.954388, 38.881046, 38.388283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271675, 38.710258, 37.944138>,  <34.856724, 38.380936, 37.908333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271675, 38.710258, 37.944138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492313, 38.978954, 38.141930>,  <34.624699, 39.140171, 38.260605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492313, 38.978954, 38.141930>,  <34.271675, 38.710258, 37.944138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492313, 38.978954, 38.141930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440473, 0.738004, -0.511208,
		-0.708323, 0.064179, 0.702965,
		0.551600, 0.671737, 0.494476,
		34.657795, 39.180477, 38.290272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871891, 39.172855, 38.205799>,  <34.271675, 38.710258, 37.944138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871891, 39.172855, 38.205799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220287, 39.369137, 38.196182>,  <34.429325, 39.486908, 38.190414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220287, 39.369137, 38.196182>,  <33.871891, 39.172855, 38.205799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220287, 39.369137, 38.196182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401107, 0.681996, -0.611552,
		-0.283698, 0.542299, 0.790839,
		0.870993, 0.490707, -0.024039,
		34.481586, 39.516350, 38.188969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767448, 39.836685, 38.373005>,  <33.871891, 39.172855, 38.205799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767448, 39.836685, 38.373005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105820, 39.835247, 38.159687>,  <34.308842, 39.834385, 38.031696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105820, 39.835247, 38.159687>,  <33.767448, 39.836685, 38.373005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105820, 39.835247, 38.159687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315758, 0.802481, -0.506281,
		0.429779, 0.596667, 0.677701,
		0.845924, -0.003599, -0.533292,
		34.359596, 39.834167, 37.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210442, 40.575424, 38.312557>,  <33.767448, 39.836685, 38.373005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210442, 40.575424, 38.312557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301346, 40.343956, 37.999256>,  <34.355888, 40.205074, 37.811275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301346, 40.343956, 37.999256>,  <34.210442, 40.575424, 38.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301346, 40.343956, 37.999256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300161, 0.723520, -0.621629,
		0.926420, 0.376377, -0.009264,
		0.227264, -0.578671, -0.783257,
		34.369526, 40.170353, 37.764278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459591, 41.100796, 37.765930>,  <34.210442, 40.575424, 38.312557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459591, 41.100796, 37.765930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379539, 40.755920, 37.579781>,  <34.331509, 40.548996, 37.468090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379539, 40.755920, 37.579781>,  <34.459591, 41.100796, 37.765930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379539, 40.755920, 37.579781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245606, 0.503969, -0.828065,
		0.948486, -0.051421, -0.312619,
		-0.200130, -0.862189, -0.465379,
		34.319500, 40.497265, 37.440166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821640, 41.100399, 37.105968>,  <34.459591, 41.100796, 37.765930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821640, 41.100399, 37.105968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537170, 40.825142, 37.048428>,  <34.366489, 40.659988, 37.013901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537170, 40.825142, 37.048428>,  <34.821640, 41.100399, 37.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537170, 40.825142, 37.048428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224775, 0.416456, -0.880931,
		0.666118, -0.594157, -0.450849,
		-0.711170, -0.688144, -0.143857,
		34.323818, 40.618698, 37.005272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772190, 41.077503, 36.371811>,  <34.821640, 41.100399, 37.105968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772190, 41.077503, 36.371811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435444, 40.892006, 36.482235>,  <34.233395, 40.780708, 36.548489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435444, 40.892006, 36.482235>,  <34.772190, 41.077503, 36.371811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435444, 40.892006, 36.482235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420248, 0.242357, -0.874445,
		0.338609, -0.852179, -0.398917,
		-0.841864, -0.463739, 0.276062,
		34.182884, 40.752884, 36.565052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619141, 40.617870, 35.834518>,  <34.772190, 41.077503, 36.371811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619141, 40.617870, 35.834518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262104, 40.647686, 36.012383>,  <34.047882, 40.665573, 36.119102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262104, 40.647686, 36.012383>,  <34.619141, 40.617870, 35.834518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262104, 40.647686, 36.012383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355291, 0.490899, -0.795479,
		-0.277578, -0.868022, -0.411690,
		-0.892591, 0.074537, 0.444663,
		33.994328, 40.670048, 36.145782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150509, 40.445438, 35.306435>,  <34.619141, 40.617870, 35.834518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150509, 40.445438, 35.306435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982731, 40.685143, 35.579185>,  <33.882065, 40.828964, 35.742836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982731, 40.685143, 35.579185>,  <34.150509, 40.445438, 35.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982731, 40.685143, 35.579185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475974, 0.494428, -0.727317,
		-0.772990, -0.629624, 0.077846,
		-0.419447, 0.599261, 0.681872,
		33.856895, 40.864922, 35.783749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498138, 40.435024, 35.128201>,  <34.150509, 40.445438, 35.306435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498138, 40.435024, 35.128201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550320, 40.765678, 35.347164>,  <33.581627, 40.964069, 35.478542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550320, 40.765678, 35.347164>,  <33.498138, 40.435024, 35.128201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550320, 40.765678, 35.347164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540684, 0.522115, -0.659588,
		-0.831049, -0.209931, 0.515059,
		0.130452, 0.826635, 0.547409,
		33.589455, 41.013668, 35.511387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847900, 40.718616, 35.105503>,  <33.498138, 40.435024, 35.128201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847900, 40.718616, 35.105503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103016, 41.012901, 35.196678>,  <33.256084, 41.189472, 35.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103016, 41.012901, 35.196678>,  <32.847900, 40.718616, 35.105503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103016, 41.012901, 35.196678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412209, 0.576038, -0.705878,
		-0.650621, 0.356246, 0.670658,
		0.637790, 0.735710, 0.227934,
		33.294353, 41.233616, 35.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346626, 41.343472, 35.189751>,  <32.847900, 40.718616, 35.105503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346626, 41.343472, 35.189751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713074, 41.496319, 35.141224>,  <32.932941, 41.588028, 35.112110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713074, 41.496319, 35.141224>,  <32.346626, 41.343472, 35.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713074, 41.496319, 35.141224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328515, 0.542047, -0.773475,
		-0.229800, 0.748446, 0.622110,
		0.916117, 0.382117, -0.121314,
		32.987907, 41.610954, 35.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245808, 42.116161, 35.144142>,  <32.346626, 41.343472, 35.189751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245808, 42.116161, 35.144142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616714, 42.053905, 35.007935>,  <32.839260, 42.016552, 34.926208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616714, 42.053905, 35.007935>,  <32.245808, 42.116161, 35.144142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616714, 42.053905, 35.007935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099802, 0.773843, -0.625465,
		0.360853, 0.613958, 0.702027,
		0.927267, -0.155637, -0.340518,
		32.894894, 42.007214, 34.905781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544151, 42.826889, 35.048336>,  <32.245808, 42.116161, 35.144142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544151, 42.826889, 35.048336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721115, 42.566113, 34.802006>,  <32.827293, 42.409645, 34.654205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721115, 42.566113, 34.802006>,  <32.544151, 42.826889, 35.048336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721115, 42.566113, 34.802006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020829, 0.679032, -0.733813,
		0.896570, 0.337475, 0.286833,
		0.442412, -0.651940, -0.615829,
		32.853840, 42.370529, 34.617256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941719, 43.223423, 34.672371>,  <32.544151, 42.826889, 35.048336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941719, 43.223423, 34.672371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880474, 42.883686, 34.470314>,  <32.843727, 42.679844, 34.349079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880474, 42.883686, 34.470314>,  <32.941719, 43.223423, 34.672371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880474, 42.883686, 34.470314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110950, 0.522711, -0.845259,
		0.981960, -0.073376, -0.174269,
		-0.153114, -0.849346, -0.505141,
		32.834541, 42.628883, 34.318771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368404, 43.269363, 34.022060>,  <32.941719, 43.223423, 34.672371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368404, 43.269363, 34.022060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112175, 42.983654, 33.909290>,  <32.958439, 42.812229, 33.841629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112175, 42.983654, 33.909290>,  <33.368404, 43.269363, 34.022060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112175, 42.983654, 33.909290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006274, 0.371994, -0.928214,
		0.767873, -0.592819, -0.242770,
		-0.640572, -0.714273, -0.281924,
		32.920002, 42.769371, 33.824715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563438, 43.167336, 33.357246>,  <33.368404, 43.269363, 34.022060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563438, 43.167336, 33.357246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197227, 43.009270, 33.387325>,  <32.977501, 42.914433, 33.405373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197227, 43.009270, 33.387325>,  <33.563438, 43.167336, 33.357246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197227, 43.009270, 33.387325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176865, 0.227541, -0.957572,
		0.361286, -0.889983, -0.278211,
		-0.915527, -0.395164, 0.075199,
		32.922569, 42.890720, 33.409885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440922, 42.724911, 32.789890>,  <33.563438, 43.167336, 33.357246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440922, 42.724911, 32.789890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080894, 42.841301, 32.919636>,  <32.864880, 42.911137, 32.997482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080894, 42.841301, 32.919636>,  <33.440922, 42.724911, 32.789890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080894, 42.841301, 32.919636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277977, 0.189829, -0.941644,
		-0.335571, -0.937708, -0.089974,
		-0.900067, 0.290977, 0.324362,
		32.810875, 42.928593, 33.016945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117538, 42.750469, 32.182987>,  <33.440922, 42.724911, 32.789890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117538, 42.750469, 32.182987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835503, 42.930328, 32.402321>,  <32.666283, 43.038242, 32.533920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835503, 42.930328, 32.402321>,  <33.117538, 42.750469, 32.182987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835503, 42.930328, 32.402321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491465, 0.247568, -0.834968,
		-0.511191, -0.858212, 0.046429,
		-0.705085, 0.449647, 0.548336,
		32.623978, 43.065224, 32.566822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368832, 42.580006, 31.911083>,  <33.117538, 42.750469, 32.182987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368832, 42.580006, 31.911083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323627, 42.899487, 32.147491>,  <32.296505, 43.091175, 32.289337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323627, 42.899487, 32.147491>,  <32.368832, 42.580006, 31.911083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323627, 42.899487, 32.147491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443289, 0.491822, -0.749404,
		-0.889227, -0.346680, 0.298476,
		-0.113006, 0.798702, 0.591021,
		32.289726, 43.139095, 32.324799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646646, 42.692112, 31.955917>,  <32.368832, 42.580006, 31.911083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646646, 42.692112, 31.955917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849356, 43.031792, 32.015293>,  <31.970982, 43.235600, 32.050919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849356, 43.031792, 32.015293>,  <31.646646, 42.692112, 31.955917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849356, 43.031792, 32.015293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509230, 0.433815, -0.743296,
		-0.695604, 0.301094, 0.652286,
		0.506773, 0.849204, 0.148438,
		32.001389, 43.286552, 32.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103092, 43.234009, 31.899349>,  <31.646646, 42.692112, 31.955917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103092, 43.234009, 31.899349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439041, 43.447311, 31.858845>,  <31.640610, 43.575294, 31.834541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439041, 43.447311, 31.858845>,  <31.103092, 43.234009, 31.899349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439041, 43.447311, 31.858845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456522, 0.593074, -0.663213,
		-0.293607, 0.603241, 0.741549,
		0.839871, 0.533257, -0.101262,
		31.691002, 43.607288, 31.828466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891954, 43.876423, 31.897722>,  <31.103092, 43.234009, 31.899349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891954, 43.876423, 31.897722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239458, 43.884327, 31.699785>,  <31.447960, 43.889069, 31.581022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239458, 43.884327, 31.699785>,  <30.891954, 43.876423, 31.897722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239458, 43.884327, 31.699785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460691, 0.398894, -0.792873,
		0.181727, 0.916784, 0.355644,
		0.868757, 0.019756, -0.494844,
		31.500086, 43.890255, 31.551332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112715, 44.645477, 31.629154>,  <30.891954, 43.876423, 31.897722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112715, 44.645477, 31.629154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294640, 44.370968, 31.402113>,  <31.403795, 44.206261, 31.265888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294640, 44.370968, 31.402113>,  <31.112715, 44.645477, 31.629154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294640, 44.370968, 31.402113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258305, 0.508291, -0.821534,
		0.852305, 0.520259, 0.053909,
		0.454812, -0.686273, -0.567605,
		31.431084, 44.165085, 31.231831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439262, 45.086105, 31.159145>,  <31.112715, 44.645477, 31.629154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439262, 45.086105, 31.159145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432844, 44.723171, 30.991102>,  <31.428993, 44.505413, 30.890276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432844, 44.723171, 30.991102>,  <31.439262, 45.086105, 31.159145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432844, 44.723171, 30.991102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359396, 0.397314, -0.844379,
		0.933047, 0.137438, -0.332467,
		-0.016044, -0.907333, -0.420107,
		31.428032, 44.450970, 30.865070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634060, 45.205856, 30.507355>,  <31.439262, 45.086105, 31.159145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634060, 45.205856, 30.507355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453966, 44.849277, 30.486889>,  <31.345909, 44.635330, 30.474609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453966, 44.849277, 30.486889>,  <31.634060, 45.205856, 30.507355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453966, 44.849277, 30.486889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420183, 0.262083, -0.868768,
		0.787868, -0.369650, -0.492568,
		-0.450234, -0.891443, -0.051167,
		31.318895, 44.581844, 30.471539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809700, 45.018742, 29.883112>,  <31.634060, 45.205856, 30.507355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809700, 45.018742, 29.883112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481630, 44.808666, 29.973885>,  <31.284788, 44.682621, 30.028347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481630, 44.808666, 29.973885>,  <31.809700, 45.018742, 29.883112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481630, 44.808666, 29.973885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417177, 0.277560, -0.865404,
		0.391514, -0.804449, -0.446743,
		-0.820171, -0.525189, 0.226929,
		31.235579, 44.651112, 30.041964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413570, 45.181305, 29.812498>,  <31.809700, 45.018742, 29.883112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413570, 45.181305, 29.812498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722549, 45.097466, 29.572699>,  <32.907936, 45.047161, 29.428820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722549, 45.097466, 29.572699>,  <32.413570, 45.181305, 29.812498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722549, 45.097466, 29.572699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371982, -0.615780, 0.694583,
		-0.514741, -0.759529, -0.397689,
		0.772445, -0.209597, -0.599498,
		32.954285, 45.034588, 29.392849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609829, 44.454929, 29.874962>,  <32.413570, 45.181305, 29.812498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609829, 44.454929, 29.874962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927731, 44.668064, 29.758713>,  <33.118469, 44.795944, 29.688963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927731, 44.668064, 29.758713>,  <32.609829, 44.454929, 29.874962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927731, 44.668064, 29.758713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554582, -0.442984, 0.704417,
		0.246596, -0.721010, -0.647561,
		0.794751, 0.532833, -0.290621,
		33.166157, 44.827915, 29.671526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169724, 44.066727, 29.876184>,  <32.609829, 44.454929, 29.874962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169724, 44.066727, 29.876184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361088, 44.417171, 29.900061>,  <33.475906, 44.627438, 29.914387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361088, 44.417171, 29.900061>,  <33.169724, 44.066727, 29.876184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361088, 44.417171, 29.900061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614521, -0.382571, 0.689930,
		0.627289, -0.293386, -0.721411,
		0.478407, 0.876107, 0.059691,
		33.504608, 44.680004, 29.917969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795628, 43.874016, 30.004290>,  <33.169724, 44.066727, 29.876184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795628, 43.874016, 30.004290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776054, 44.253788, 30.128347>,  <33.764309, 44.481651, 30.202782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776054, 44.253788, 30.128347>,  <33.795628, 43.874016, 30.004290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776054, 44.253788, 30.128347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633460, -0.210575, 0.744571,
		0.772226, 0.232902, -0.591120,
		-0.048937, 0.949429, 0.310145,
		33.761372, 44.538616, 30.221392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476166, 43.963322, 30.151064>,  <33.795628, 43.874016, 30.004290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476166, 43.963322, 30.151064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357384, 44.320168, 30.287266>,  <34.286114, 44.534275, 30.368986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357384, 44.320168, 30.287266>,  <34.476166, 43.963322, 30.151064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357384, 44.320168, 30.287266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762646, 0.006997, 0.646779,
		0.574620, 0.451750, -0.682447,
		-0.296957, 0.892117, 0.340504,
		34.268295, 44.587803, 30.389418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970417, 44.460392, 30.078060>,  <34.476166, 43.963322, 30.151064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970417, 44.460392, 30.078060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737221, 44.589729, 30.376207>,  <34.597301, 44.667332, 30.555096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737221, 44.589729, 30.376207>,  <34.970417, 44.460392, 30.078060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737221, 44.589729, 30.376207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728757, -0.197496, 0.655674,
		0.359215, 0.925442, -0.120502,
		-0.582990, 0.323345, 0.745366,
		34.562325, 44.686733, 30.599817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429363, 44.838902, 30.535538>,  <34.970417, 44.460392, 30.078060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429363, 44.838902, 30.535538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099121, 44.751228, 30.743511>,  <34.900974, 44.698624, 30.868296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099121, 44.751228, 30.743511>,  <35.429363, 44.838902, 30.535538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099121, 44.751228, 30.743511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564054, -0.344650, 0.750373,
		0.014727, 0.912784, 0.408177,
		-0.825607, -0.219183, 0.519935,
		34.851440, 44.685474, 30.899492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593334, 45.068489, 31.254284>,  <35.429363, 44.838902, 30.535538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593334, 45.068489, 31.254284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298496, 44.798775, 31.272331>,  <35.121593, 44.636948, 31.283159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298496, 44.798775, 31.272331>,  <35.593334, 45.068489, 31.254284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298496, 44.798775, 31.272331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285917, -0.250663, 0.924889,
		-0.612331, 0.694627, 0.377551,
		-0.737091, -0.674286, 0.045117,
		35.077370, 44.596489, 31.285866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497547, 45.022610, 31.906607>,  <35.593334, 45.068489, 31.254284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497547, 45.022610, 31.906607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318214, 44.690891, 31.773180>,  <35.210617, 44.491859, 31.693125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318214, 44.690891, 31.773180>,  <35.497547, 45.022610, 31.906607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318214, 44.690891, 31.773180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398642, -0.519506, 0.755777,
		-0.800053, 0.205863, 0.563502,
		-0.448330, -0.829297, -0.333567,
		35.183716, 44.442101, 31.673109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326717, 44.590504, 32.573765>,  <35.497547, 45.022610, 31.906607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326717, 44.590504, 32.573765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308540, 44.324268, 32.275791>,  <35.297634, 44.164528, 32.097008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308540, 44.324268, 32.275791>,  <35.326717, 44.590504, 32.573765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308540, 44.324268, 32.275791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392431, -0.697650, 0.599402,
		-0.918658, -0.265095, 0.292903,
		-0.045446, -0.665590, -0.744933,
		35.294907, 44.124592, 32.052311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902615, 43.995007, 32.855240>,  <35.326717, 44.590504, 32.573765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902615, 43.995007, 32.855240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111824, 43.872990, 32.536896>,  <35.237350, 43.799778, 32.345890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111824, 43.872990, 32.536896>,  <34.902615, 43.995007, 32.855240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111824, 43.872990, 32.536896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315129, -0.798386, 0.513101,
		-0.791922, -0.519163, -0.321448,
		0.523023, -0.305038, -0.795863,
		35.268730, 43.781479, 32.298138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673756, 43.390591, 32.678215>,  <34.902615, 43.995007, 32.855240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673756, 43.390591, 32.678215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051769, 43.405209, 32.548244>,  <35.278576, 43.413979, 32.470261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051769, 43.405209, 32.548244>,  <34.673756, 43.390591, 32.678215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051769, 43.405209, 32.548244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199118, -0.852553, 0.483223,
		-0.259358, -0.521360, -0.812968,
		0.945032, 0.036549, -0.324929,
		35.335278, 43.416172, 32.450768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757385, 42.733768, 32.417606>,  <34.673756, 43.390591, 32.678215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757385, 42.733768, 32.417606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130920, 42.862247, 32.480587>,  <35.355042, 42.939335, 32.518375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130920, 42.862247, 32.480587>,  <34.757385, 42.733768, 32.417606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130920, 42.862247, 32.480587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223577, -0.867679, 0.444012,
		0.279229, -0.379432, -0.882079,
		0.933833, 0.321193, 0.157449,
		35.411072, 42.958607, 32.527821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239777, 42.125965, 32.296047>,  <34.757385, 42.733768, 32.417606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239777, 42.125965, 32.296047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454533, 42.372257, 32.526741>,  <35.583385, 42.520035, 32.665157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454533, 42.372257, 32.526741>,  <35.239777, 42.125965, 32.296047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454533, 42.372257, 32.526741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324385, -0.781728, 0.532612,
		0.778796, -0.098871, -0.619436,
		0.536890, 0.615732, 0.576735,
		35.615601, 42.556976, 32.699760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793316, 41.730473, 32.369633>,  <35.239777, 42.125965, 32.296047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793316, 41.730473, 32.369633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805363, 41.989731, 32.674000>,  <35.812592, 42.145287, 32.856621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805363, 41.989731, 32.674000>,  <35.793316, 41.730473, 32.369633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805363, 41.989731, 32.674000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381978, -0.710946, 0.590464,
		0.923681, 0.272872, -0.268989,
		0.030115, 0.648148, 0.760919,
		35.814396, 42.184174, 32.902275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465786, 41.610344, 32.797245>,  <35.793316, 41.730473, 32.369633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465786, 41.610344, 32.797245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242397, 41.830551, 33.045448>,  <36.108364, 41.962677, 33.194370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242397, 41.830551, 33.045448>,  <36.465786, 41.610344, 32.797245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242397, 41.830551, 33.045448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290669, -0.570735, 0.767967,
		0.776928, 0.609253, 0.158722,
		-0.558474, 0.550520, 0.620511,
		36.074856, 41.995708, 33.231602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904812, 41.694237, 33.427906>,  <36.465786, 41.610344, 32.797245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904812, 41.694237, 33.427906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526318, 41.759636, 33.539551>,  <36.299221, 41.798874, 33.606537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526318, 41.759636, 33.539551>,  <36.904812, 41.694237, 33.427906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526318, 41.759636, 33.539551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160622, -0.511481, 0.844149,
		0.280778, 0.843597, 0.457721,
		-0.946237, 0.163499, 0.279113,
		36.242447, 41.808685, 33.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954544, 41.976273, 34.133297>,  <36.904812, 41.694237, 33.427906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954544, 41.976273, 34.133297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566235, 41.890606, 34.089962>,  <36.333248, 41.839207, 34.063961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566235, 41.890606, 34.089962>,  <36.954544, 41.976273, 34.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566235, 41.890606, 34.089962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026556, -0.352780, 0.935329,
		-0.238538, 0.910866, 0.336781,
		-0.970770, -0.214168, -0.108341,
		36.275005, 41.826355, 34.057461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706230, 42.197029, 34.750710>,  <36.954544, 41.976273, 34.133297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706230, 42.197029, 34.750710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477470, 41.913979, 34.584728>,  <36.340214, 41.744148, 34.485138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477470, 41.913979, 34.584728>,  <36.706230, 42.197029, 34.750710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477470, 41.913979, 34.584728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037476, -0.527858, 0.848505,
		-0.819464, 0.469712, 0.328404,
		-0.571904, -0.707627, -0.414958,
		36.305901, 41.701691, 34.460239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189632, 42.119152, 35.117832>,  <36.706230, 42.197029, 34.750710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189632, 42.119152, 35.117832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210201, 41.765018, 34.932995>,  <36.222542, 41.552536, 34.822090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210201, 41.765018, 34.932995>,  <36.189632, 42.119152, 35.117832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210201, 41.765018, 34.932995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028062, -0.461246, 0.886829,
		-0.998283, -0.058570, 0.001126,
		0.051422, -0.885337, -0.462097,
		36.225628, 41.499416, 34.794365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748955, 41.698326, 35.475506>,  <36.189632, 42.119152, 35.117832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748955, 41.698326, 35.475506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005871, 41.456966, 35.286453>,  <36.160019, 41.312153, 35.173023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005871, 41.456966, 35.286453>,  <35.748955, 41.698326, 35.475506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005871, 41.456966, 35.286453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104418, -0.542005, 0.833863,
		-0.759319, -0.584930, -0.285117,
		0.642286, -0.603396, -0.472633,
		36.198555, 41.275948, 35.144665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556187, 41.030663, 35.656387>,  <35.748955, 41.698326, 35.475506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556187, 41.030663, 35.656387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923321, 40.965431, 35.511620>,  <36.143600, 40.926292, 35.424759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923321, 40.965431, 35.511620>,  <35.556187, 41.030663, 35.656387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923321, 40.965431, 35.511620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201906, -0.593197, 0.779327,
		-0.341780, -0.788367, -0.511531,
		0.917834, -0.163077, -0.361919,
		36.198669, 40.916508, 35.403046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556179, 40.427856, 35.799789>,  <35.556187, 41.030663, 35.656387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556179, 40.427856, 35.799789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947475, 40.504131, 35.767075>,  <36.182251, 40.549896, 35.747448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947475, 40.504131, 35.767075>,  <35.556179, 40.427856, 35.799789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947475, 40.504131, 35.767075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169814, -0.509333, 0.843648,
		0.119213, -0.839178, -0.530630,
		0.978239, 0.190682, -0.081785,
		36.240948, 40.561337, 35.742538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856468, 39.783146, 35.955658>,  <35.556179, 40.427856, 35.799789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856468, 39.783146, 35.955658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144760, 40.056530, 36.002014>,  <36.317734, 40.220562, 36.029827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144760, 40.056530, 36.002014>,  <35.856468, 39.783146, 35.955658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144760, 40.056530, 36.002014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270375, -0.431093, 0.860846,
		0.638315, -0.589102, -0.495492,
		0.720729, 0.683460, 0.115895,
		36.360977, 40.261566, 36.036781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402409, 39.361103, 36.074631>,  <35.856468, 39.783146, 35.955658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402409, 39.361103, 36.074631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498020, 39.727276, 36.204147>,  <36.555386, 39.946980, 36.281857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498020, 39.727276, 36.204147>,  <36.402409, 39.361103, 36.074631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498020, 39.727276, 36.204147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361482, -0.393384, 0.845328,
		0.901219, -0.085011, -0.424943,
		0.239028, 0.915436, 0.323795,
		36.569729, 40.001907, 36.301285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107620, 39.206512, 36.210217>,  <36.402409, 39.361103, 36.074631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107620, 39.206512, 36.210217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981285, 39.538689, 36.393787>,  <36.905483, 39.737995, 36.503929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981285, 39.538689, 36.393787>,  <37.107620, 39.206512, 36.210217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981285, 39.538689, 36.393787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405789, -0.318993, 0.856492,
		0.857659, 0.456744, -0.236231,
		-0.315842, 0.830438, 0.458929,
		36.886532, 39.787819, 36.531467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734322, 39.538532, 36.536205>,  <37.107620, 39.206512, 36.210217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734322, 39.538532, 36.536205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386005, 39.635860, 36.707092>,  <37.177013, 39.694260, 36.809624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386005, 39.635860, 36.707092>,  <37.734322, 39.538532, 36.536205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386005, 39.635860, 36.707092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363333, -0.266924, 0.892604,
		0.331225, 0.932494, 0.144028,
		-0.870792, 0.243322, 0.427217,
		37.124767, 39.708858, 36.835258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010365, 39.928131, 37.024426>,  <37.734322, 39.538532, 36.536205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010365, 39.928131, 37.024426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636089, 39.846859, 37.139801>,  <37.411522, 39.798096, 37.209026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636089, 39.846859, 37.139801>,  <38.010365, 39.928131, 37.024426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636089, 39.846859, 37.139801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348467, -0.404226, 0.845679,
		-0.055229, 0.891807, 0.449032,
		-0.935692, -0.203179, 0.288441,
		37.355381, 39.785904, 37.226334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901520, 40.215309, 37.768272>,  <38.010365, 39.928131, 37.024426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901520, 40.215309, 37.768272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623146, 39.930420, 37.731579>,  <37.456120, 39.759487, 37.709560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623146, 39.930420, 37.731579>,  <37.901520, 40.215309, 37.768272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623146, 39.930420, 37.731579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123185, -0.244259, 0.961854,
		-0.707458, 0.658089, 0.257724,
		-0.695937, -0.712219, -0.091736,
		37.414364, 39.716755, 37.704060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762375, 40.169678, 38.397442>,  <37.901520, 40.215309, 37.768272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762375, 40.169678, 38.397442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580696, 39.851688, 38.236588>,  <37.471687, 39.660892, 38.140076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580696, 39.851688, 38.236588>,  <37.762375, 40.169678, 38.397442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580696, 39.851688, 38.236588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205827, -0.532808, 0.820824,
		-0.866797, 0.290049, 0.405629,
		-0.454201, -0.794977, -0.402136,
		37.444435, 39.613197, 38.115948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319530, 39.814663, 38.985928>,  <37.762375, 40.169678, 38.397442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319530, 39.814663, 38.985928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425278, 39.548145, 38.707027>,  <37.488728, 39.388233, 38.539688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425278, 39.548145, 38.707027>,  <37.319530, 39.814663, 38.985928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425278, 39.548145, 38.707027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365043, -0.600048, 0.711819,
		-0.892667, -0.442708, 0.084594,
		0.264367, -0.666297, -0.697250,
		37.504589, 39.348255, 38.497852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318069, 39.219913, 39.359692>,  <37.319530, 39.814663, 38.985928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318069, 39.219913, 39.359692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492767, 39.072235, 39.031559>,  <37.597588, 38.983627, 38.834679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492767, 39.072235, 39.031559>,  <37.318069, 39.219913, 39.359692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492767, 39.072235, 39.031559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510781, -0.648873, 0.563974,
		-0.740511, -0.665323, -0.094812,
		0.436746, -0.369201, -0.820332,
		37.623791, 38.961475, 38.785458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275673, 38.476513, 39.318325>,  <37.318069, 39.219913, 39.359692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275673, 38.476513, 39.318325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608421, 38.567101, 39.115662>,  <37.808071, 38.621452, 38.994064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608421, 38.567101, 39.115662>,  <37.275673, 38.476513, 39.318325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608421, 38.567101, 39.115662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507841, -0.678793, 0.530413,
		-0.223794, -0.698536, -0.679679,
		0.831874, 0.226465, -0.506655,
		37.857983, 38.635040, 38.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582561, 37.860668, 39.121162>,  <37.275673, 38.476513, 39.318325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582561, 37.860668, 39.121162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879108, 38.123116, 39.064751>,  <38.057037, 38.280582, 39.030903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879108, 38.123116, 39.064751>,  <37.582561, 37.860668, 39.121162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879108, 38.123116, 39.064751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646370, -0.641580, 0.413014,
		0.180505, -0.397350, -0.899739,
		0.741366, 0.656115, -0.141026,
		38.101517, 38.319950, 39.022442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185829, 37.449196, 38.864212>,  <37.582561, 37.860668, 39.121162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185829, 37.449196, 38.864212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374962, 37.780552, 38.984348>,  <38.488441, 37.979366, 39.056431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374962, 37.780552, 38.984348>,  <38.185829, 37.449196, 38.864212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374962, 37.780552, 38.984348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777162, -0.552693, 0.300914,
		0.415271, 0.091134, -0.905121,
		0.472831, 0.828387, 0.300343,
		38.516811, 38.029068, 39.074451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949287, 37.422745, 38.619488>,  <38.185829, 37.449196, 38.864212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949287, 37.422745, 38.619488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966740, 37.694225, 38.912735>,  <38.977211, 37.857113, 39.088684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966740, 37.694225, 38.912735>,  <38.949287, 37.422745, 38.619488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966740, 37.694225, 38.912735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761131, -0.497907, 0.415653,
		0.647129, 0.539864, -0.538304,
		0.043629, 0.678701, 0.733118,
		38.979828, 37.897835, 39.132671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552563, 37.543602, 38.731052>,  <38.949287, 37.422745, 38.619488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552563, 37.543602, 38.731052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417343, 37.677731, 39.082798>,  <39.336212, 37.758209, 39.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417343, 37.677731, 39.082798>,  <39.552563, 37.543602, 38.731052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417343, 37.677731, 39.082798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771037, -0.437104, 0.463079,
		0.539655, 0.834565, -0.110786,
		-0.338044, 0.335323, 0.879366,
		39.315929, 37.778328, 39.346607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187622, 37.783672, 39.094280>,  <39.552563, 37.543602, 38.731052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187622, 37.783672, 39.094280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883244, 37.699219, 39.339680>,  <39.700615, 37.648548, 39.486919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883244, 37.699219, 39.339680>,  <40.187622, 37.783672, 39.094280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883244, 37.699219, 39.339680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606150, -0.568564, 0.556163,
		0.231390, 0.795084, 0.560625,
		-0.760948, -0.211132, 0.613500,
		39.654961, 37.635880, 39.523731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517128, 37.798206, 39.796852>,  <40.187622, 37.783672, 39.094280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517128, 37.798206, 39.796852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171074, 37.602013, 39.838726>,  <39.963440, 37.484295, 39.863850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171074, 37.602013, 39.838726>,  <40.517128, 37.798206, 39.796852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171074, 37.602013, 39.838726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492290, -0.790609, 0.364125,
		-0.095836, 0.366552, 0.925448,
		-0.865139, -0.490485, 0.104681,
		39.911533, 37.454868, 39.870129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481991, 37.635811, 40.529739>,  <40.517128, 37.798206, 39.796852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481991, 37.635811, 40.529739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234444, 37.384331, 40.341381>,  <40.085915, 37.233444, 40.228367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234444, 37.384331, 40.341381>,  <40.481991, 37.635811, 40.529739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234444, 37.384331, 40.341381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435426, -0.773528, 0.460498,
		-0.653767, 0.079945, 0.752461,
		-0.618864, -0.628699, -0.470897,
		40.048786, 37.195721, 40.200111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340588, 37.133591, 41.014305>,  <40.481991, 37.635811, 40.529739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340588, 37.133591, 41.014305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209747, 36.944206, 40.687176>,  <40.131245, 36.830574, 40.490898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209747, 36.944206, 40.687176>,  <40.340588, 37.133591, 41.014305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209747, 36.944206, 40.687176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254086, -0.877627, 0.406461,
		-0.910190, -0.074844, 0.407372,
		-0.327099, -0.473464, -0.817825,
		40.111618, 36.802166, 40.441830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893627, 36.525555, 41.239590>,  <40.340588, 37.133591, 41.014305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893627, 36.525555, 41.239590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030350, 36.472771, 40.867405>,  <40.112381, 36.441101, 40.644093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030350, 36.472771, 40.867405>,  <39.893627, 36.525555, 41.239590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030350, 36.472771, 40.867405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212125, -0.953707, 0.213183,
		-0.915518, -0.270241, -0.297988,
		0.341804, -0.131962, -0.930460,
		40.132889, 36.433182, 40.588268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608490, 35.966728, 41.087883>,  <39.893627, 36.525555, 41.239590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608490, 35.966728, 41.087883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936237, 35.996422, 40.860508>,  <40.132885, 36.014240, 40.724083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936237, 35.996422, 40.860508>,  <39.608490, 35.966728, 41.087883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936237, 35.996422, 40.860508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291869, -0.907462, 0.302201,
		-0.493398, -0.413524, -0.765217,
		0.819372, 0.074238, -0.568435,
		40.182049, 36.018692, 40.689976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649628, 35.380482, 40.885517>,  <39.608490, 35.966728, 41.087883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649628, 35.380482, 40.885517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014198, 35.529602, 40.815876>,  <40.232941, 35.619076, 40.774094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014198, 35.529602, 40.815876>,  <39.649628, 35.380482, 40.885517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014198, 35.529602, 40.815876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410925, -0.803347, 0.431014,
		0.020820, -0.464382, -0.885390,
		0.911431, 0.372803, -0.174100,
		40.287628, 35.641441, 40.763645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099831, 34.978504, 40.407627>,  <39.649628, 35.380482, 40.885517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099831, 34.978504, 40.407627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348507, 35.146194, 40.672279>,  <40.497711, 35.246807, 40.831070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348507, 35.146194, 40.672279>,  <40.099831, 34.978504, 40.407627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348507, 35.146194, 40.672279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370229, -0.901668, 0.223439,
		0.690240, 0.106044, -0.715768,
		0.621691, 0.419224, 0.661628,
		40.535015, 35.271961, 40.870770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533859, 34.458347, 40.629185>,  <40.099831, 34.978504, 40.407627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533859, 34.458347, 40.629185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683102, 34.753128, 40.854641>,  <40.772648, 34.929996, 40.989914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683102, 34.753128, 40.854641>,  <40.533859, 34.458347, 40.629185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683102, 34.753128, 40.854641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625917, -0.648372, 0.433406,
		0.684848, 0.191083, -0.703186,
		0.373110, 0.736954, 0.563638,
		40.795036, 34.974213, 41.023731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284725, 34.513271, 40.669926>,  <40.533859, 34.458347, 40.629185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284725, 34.513271, 40.669926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180283, 34.687874, 41.014317>,  <41.117619, 34.792637, 41.220951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180283, 34.687874, 41.014317>,  <41.284725, 34.513271, 40.669926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180283, 34.687874, 41.014317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671583, -0.558539, 0.486837,
		0.693398, 0.705335, -0.147313,
		-0.261104, 0.436505, 0.860981,
		41.101952, 34.818825, 41.272610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881767, 34.349209, 41.099304>,  <41.284725, 34.513271, 40.669926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881767, 34.349209, 41.099304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628670, 34.503609, 41.367825>,  <41.476810, 34.596249, 41.528934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628670, 34.503609, 41.367825>,  <41.881767, 34.349209, 41.099304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628670, 34.503609, 41.367825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400889, -0.578404, 0.710448,
		0.662514, 0.718647, 0.211238,
		-0.632742, 0.385999, 0.671299,
		41.438847, 34.619408, 41.569214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278069, 34.776745, 41.614250>,  <41.881767, 34.349209, 41.099304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278069, 34.776745, 41.614250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935307, 34.634369, 41.763390>,  <41.729649, 34.548943, 41.852875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935307, 34.634369, 41.763390>,  <42.278069, 34.776745, 41.614250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935307, 34.634369, 41.763390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508107, -0.461401, 0.727280,
		-0.086833, 0.812660, 0.576233,
		-0.856906, -0.355940, 0.372853,
		41.678234, 34.527588, 41.875244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293446, 34.895145, 42.305439>,  <42.278069, 34.776745, 41.614250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293446, 34.895145, 42.305439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084595, 34.574612, 42.188648>,  <41.959286, 34.382290, 42.118572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084595, 34.574612, 42.188648>,  <42.293446, 34.895145, 42.305439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084595, 34.574612, 42.188648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501576, -0.565396, 0.654789,
		-0.689789, 0.195430, 0.697136,
		-0.522123, -0.801333, -0.291981,
		41.927959, 34.334213, 42.101055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965500, 34.619598, 42.803082>,  <42.293446, 34.895145, 42.305439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965500, 34.619598, 42.803082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058090, 34.350376, 42.522110>,  <42.113644, 34.188843, 42.353527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058090, 34.350376, 42.522110>,  <41.965500, 34.619598, 42.803082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058090, 34.350376, 42.522110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604710, -0.466062, 0.645843,
		-0.762068, -0.574262, 0.299126,
		0.231471, -0.673060, -0.702432,
		42.127533, 34.148457, 42.311378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212547, 34.391052, 43.165012>,  <41.965500, 34.619598, 42.803082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212547, 34.391052, 43.165012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346436, 34.154564, 42.871502>,  <41.426769, 34.012672, 42.695396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346436, 34.154564, 42.871502>,  <41.212547, 34.391052, 43.165012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346436, 34.154564, 42.871502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002226, -0.778192, 0.628022,
		-0.942315, -0.211845, -0.259160,
		0.334719, -0.591218, -0.733774,
		41.446850, 33.977200, 42.651371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857723, 33.758331, 43.306732>,  <41.212547, 34.391052, 43.165012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857723, 33.758331, 43.306732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182175, 33.660099, 43.094410>,  <41.376846, 33.601158, 42.967014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182175, 33.660099, 43.094410>,  <40.857723, 33.758331, 43.306732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182175, 33.660099, 43.094410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140492, -0.799188, 0.584431,
		-0.567742, -0.548624, -0.613743,
		0.811130, -0.245580, -0.530810,
		41.425514, 33.586426, 42.935165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862873, 33.093739, 43.234997>,  <40.857723, 33.758331, 43.306732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862873, 33.093739, 43.234997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239414, 33.208717, 43.164310>,  <41.465340, 33.277706, 43.121899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239414, 33.208717, 43.164310>,  <40.862873, 33.093739, 43.234997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239414, 33.208717, 43.164310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337072, -0.777121, 0.531475,
		0.015441, -0.559872, -0.828436,
		0.941352, 0.287449, -0.176717,
		41.521820, 33.294952, 43.111294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180435, 32.474628, 43.172752>,  <40.862873, 33.093739, 43.234997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180435, 32.474628, 43.172752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447544, 32.753487, 43.277115>,  <41.607811, 32.920799, 43.339733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447544, 32.753487, 43.277115>,  <41.180435, 32.474628, 43.172752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447544, 32.753487, 43.277115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432251, -0.648531, 0.626551,
		0.606003, -0.305614, -0.734411,
		0.667771, 0.697142, 0.260910,
		41.647877, 32.962631, 43.355389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918121, 32.424114, 42.811176>,  <41.180435, 32.474628, 43.172752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918121, 32.424114, 42.811176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894279, 32.576008, 43.180447>,  <41.879974, 32.667145, 43.402008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894279, 32.576008, 43.180447>,  <41.918121, 32.424114, 42.811176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894279, 32.576008, 43.180447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355552, -0.856088, 0.375096,
		0.932754, 0.350593, -0.083991,
		-0.059602, 0.379735, 0.923173,
		41.876400, 32.689930, 43.457397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497074, 32.104794, 43.119492>,  <41.918121, 32.424114, 42.811176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497074, 32.104794, 43.119492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250252, 32.244411, 43.401600>,  <42.102158, 32.328182, 43.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250252, 32.244411, 43.401600>,  <42.497074, 32.104794, 43.119492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250252, 32.244411, 43.401600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278540, -0.741342, 0.610596,
		0.735978, 0.573216, 0.360222,
		-0.617051, 0.349049, 0.705275,
		42.065136, 32.349125, 43.613182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839428, 32.291416, 43.784115>,  <42.497074, 32.104794, 43.119492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839428, 32.291416, 43.784115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465393, 32.164246, 43.846760>,  <42.240971, 32.087944, 43.884346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465393, 32.164246, 43.846760>,  <42.839428, 32.291416, 43.784115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465393, 32.164246, 43.846760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349560, -0.754549, 0.555395,
		-0.058402, 0.574091, 0.816706,
		-0.935092, -0.317924, 0.156612,
		42.184864, 32.068867, 43.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839451, 32.059689, 44.469784>,  <42.839428, 32.291416, 43.784115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839451, 32.059689, 44.469784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512341, 31.884457, 44.320473>,  <42.316074, 31.779318, 44.230888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512341, 31.884457, 44.320473>,  <42.839451, 32.059689, 44.469784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512341, 31.884457, 44.320473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251297, -0.855256, 0.453196,
		-0.517781, 0.276809, 0.809493,
		-0.817773, -0.438080, -0.373274,
		42.267010, 31.753033, 44.208492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649357, 31.702711, 45.014160>,  <42.839451, 32.059689, 44.469784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649357, 31.702711, 45.014160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463100, 31.536509, 44.701614>,  <42.351349, 31.436787, 44.514088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463100, 31.536509, 44.701614>,  <42.649357, 31.702711, 45.014160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463100, 31.536509, 44.701614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103331, -0.902413, 0.418299,
		-0.878921, 0.114037, 0.463134,
		-0.465639, -0.415507, -0.781367,
		42.323410, 31.411856, 44.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119083, 31.179213, 45.256386>,  <42.649357, 31.702711, 45.014160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119083, 31.179213, 45.256386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171635, 31.065598, 44.876476>,  <42.203167, 30.997429, 44.648533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171635, 31.065598, 44.876476>,  <42.119083, 31.179213, 45.256386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171635, 31.065598, 44.876476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125372, -0.945621, 0.300139,
		-0.983372, -0.158507, -0.088627,
		0.131381, -0.284037, -0.949769,
		42.211048, 30.980387, 44.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612022, 30.694164, 45.102642>,  <42.119083, 31.179213, 45.256386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612022, 30.694164, 45.102642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925392, 30.583441, 44.880070>,  <42.113415, 30.517006, 44.746525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925392, 30.583441, 44.880070>,  <41.612022, 30.694164, 45.102642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925392, 30.583441, 44.880070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137549, -0.950356, 0.279114,
		-0.606073, -0.142128, -0.782609,
		0.783426, -0.276810, -0.556435,
		42.160419, 30.500397, 44.713139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520657, 29.980537, 44.681061>,  <41.612022, 30.694164, 45.102642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520657, 29.980537, 44.681061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205040, 29.832081, 44.485237>,  <41.015671, 29.743008, 44.367741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205040, 29.832081, 44.485237>,  <41.520657, 29.980537, 44.681061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205040, 29.832081, 44.485237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581277, 0.708939, 0.399402,
		0.198836, 0.599716, -0.775116,
		-0.789038, -0.371142, -0.489564,
		40.968330, 29.720737, 44.338367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759399, 29.249355, 44.600975>,  <41.520657, 29.980537, 44.681061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759399, 29.249355, 44.600975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382942, 29.121967, 44.555683>,  <41.157066, 29.045534, 44.528507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382942, 29.121967, 44.555683>,  <41.759399, 29.249355, 44.600975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382942, 29.121967, 44.555683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272270, -0.515805, -0.812289,
		0.200285, -0.795312, 0.572158,
		-0.941146, -0.318471, -0.113232,
		41.100597, 29.026426, 44.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735077, 29.721743, 44.018677>,  <41.759399, 29.249355, 44.600975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735077, 29.721743, 44.018677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049622, 29.549070, 44.195442>,  <42.238350, 29.445467, 44.301502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049622, 29.549070, 44.195442>,  <41.735077, 29.721743, 44.018677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049622, 29.549070, 44.195442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590089, 0.313175, -0.744121,
		0.182828, 0.845916, 0.500999,
		0.786364, -0.431680, 0.441909,
		42.285530, 29.419567, 44.328014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138840, 30.253954, 44.074078>,  <41.735077, 29.721743, 44.018677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138840, 30.253954, 44.074078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336769, 29.906357, 44.074318>,  <42.455528, 29.697800, 44.074463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336769, 29.906357, 44.074318>,  <42.138840, 30.253954, 44.074078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336769, 29.906357, 44.074318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685373, 0.389848, -0.615047,
		0.534237, 0.304752, 0.788490,
		0.494828, -0.868991, 0.000597,
		42.485218, 29.645660, 44.074497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379539, 30.674171, 43.408821>,  <42.138840, 30.253954, 44.074078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379539, 30.674171, 43.408821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270775, 30.746376, 43.786919>,  <42.205517, 30.789698, 44.013775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270775, 30.746376, 43.786919>,  <42.379539, 30.674171, 43.408821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270775, 30.746376, 43.786919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198850, 0.950512, -0.238718,
		-0.941554, -0.252871, -0.222558,
		-0.271909, 0.180510, 0.945242,
		42.189201, 30.800529, 44.070492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689346, 30.879784, 43.482155>,  <42.379539, 30.674171, 43.408821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689346, 30.879784, 43.482155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889420, 31.054998, 43.780933>,  <42.009464, 31.160128, 43.960201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889420, 31.054998, 43.780933>,  <41.689346, 30.879784, 43.482155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889420, 31.054998, 43.780933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423813, 0.876072, -0.229959,
		-0.755113, -0.201545, 0.623846,
		0.500187, 0.438039, 0.746951,
		42.039474, 31.186411, 44.005020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164032, 31.210682, 43.869324>,  <41.689346, 30.879784, 43.482155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164032, 31.210682, 43.869324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520256, 31.376915, 43.943298>,  <41.733990, 31.476654, 43.987682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520256, 31.376915, 43.943298>,  <41.164032, 31.210682, 43.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520256, 31.376915, 43.943298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413072, 0.909109, -0.053775,
		-0.190475, -0.028502, 0.981278,
		0.890556, 0.415582, 0.184936,
		41.787422, 31.501589, 43.998779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081425, 31.788126, 44.411358>,  <41.164032, 31.210682, 43.869324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081425, 31.788126, 44.411358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408333, 31.857513, 44.191551>,  <41.604477, 31.899145, 44.059666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408333, 31.857513, 44.191551>,  <41.081425, 31.788126, 44.411358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408333, 31.857513, 44.191551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314321, 0.933456, -0.172809,
		0.482975, 0.313957, 0.817414,
		0.817274, 0.173468, -0.549519,
		41.653515, 31.909554, 44.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398746, 32.396469, 44.597157>,  <41.081425, 31.788126, 44.411358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398746, 32.396469, 44.597157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510834, 32.334259, 44.218254>,  <41.578087, 32.296932, 43.990913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510834, 32.334259, 44.218254>,  <41.398746, 32.396469, 44.597157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510834, 32.334259, 44.218254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330689, 0.910748, -0.247353,
		0.901179, 0.382559, 0.203778,
		0.280217, -0.155522, -0.947255,
		41.594898, 32.287601, 43.934078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776028, 33.030903, 44.302788>,  <41.398746, 32.396469, 44.597157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776028, 33.030903, 44.302788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597164, 32.804806, 44.025501>,  <41.489845, 32.669147, 43.859131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597164, 32.804806, 44.025501>,  <41.776028, 33.030903, 44.302788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597164, 32.804806, 44.025501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468061, 0.808306, -0.357156,
		0.762209, 0.164759, -0.626013,
		-0.447165, -0.565240, -0.693215,
		41.463017, 32.635235, 43.817535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976353, 33.696842, 44.239704>,  <41.776028, 33.030903, 44.302788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976353, 33.696842, 44.239704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064476, 33.406723, 43.978813>,  <42.117352, 33.232651, 43.822277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064476, 33.406723, 43.978813>,  <41.976353, 33.696842, 44.239704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064476, 33.406723, 43.978813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056547, 0.658038, -0.750859,
		0.973789, 0.202304, 0.103960,
		0.220311, -0.725300, -0.652230,
		42.130569, 33.189133, 43.783146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518322, 33.849522, 43.725056>,  <41.976353, 33.696842, 44.239704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518322, 33.849522, 43.725056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269588, 33.571510, 43.580692>,  <42.120350, 33.404701, 43.494076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269588, 33.571510, 43.580692>,  <42.518322, 33.849522, 43.725056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269588, 33.571510, 43.580692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197856, 0.585316, -0.786294,
		0.757744, -0.417536, -0.501485,
		-0.621833, -0.695032, -0.360907,
		42.083038, 33.362999, 43.472420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705410, 33.760826, 42.975727>,  <42.518322, 33.849522, 43.725056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705410, 33.760826, 42.975727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338673, 33.608059, 43.022274>,  <42.118629, 33.516399, 43.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338673, 33.608059, 43.022274>,  <42.705410, 33.760826, 42.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338673, 33.608059, 43.022274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322690, 0.537219, -0.779273,
		0.235099, -0.752022, -0.615785,
		-0.916842, -0.381914, 0.116370,
		42.063622, 33.493484, 43.057186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526741, 33.471104, 42.317997>,  <42.705410, 33.760826, 42.975727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526741, 33.471104, 42.317997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181072, 33.536018, 42.508522>,  <41.973671, 33.574966, 42.622837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181072, 33.536018, 42.508522>,  <42.526741, 33.471104, 42.317997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181072, 33.536018, 42.508522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346088, 0.495455, -0.796710,
		-0.365290, -0.853339, -0.371990,
		-0.864168, 0.162289, 0.476315,
		41.921822, 33.584705, 42.651417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021748, 33.172096, 41.842537>,  <42.526741, 33.471104, 42.317997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021748, 33.172096, 41.842537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878735, 33.461971, 42.078163>,  <41.792927, 33.635895, 42.219540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878735, 33.461971, 42.078163>,  <42.021748, 33.172096, 41.842537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878735, 33.461971, 42.078163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275846, 0.520664, -0.807972,
		-0.892231, -0.451370, 0.013746,
		-0.357537, 0.724690, 0.589061,
		41.771473, 33.679379, 42.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315701, 33.274868, 41.717167>,  <42.021748, 33.172096, 41.842537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315701, 33.274868, 41.717167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498280, 33.604954, 41.850239>,  <41.607826, 33.803005, 41.930084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498280, 33.604954, 41.850239>,  <41.315701, 33.274868, 41.717167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498280, 33.604954, 41.850239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325233, 0.502777, -0.800899,
		-0.828177, 0.257370, 0.497878,
		0.456449, 0.825213, 0.332683,
		41.635216, 33.852516, 41.950043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765167, 33.724041, 41.885914>,  <41.315701, 33.274868, 41.717167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765167, 33.724041, 41.885914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052189, 33.919842, 42.084110>,  <41.224403, 34.037323, 42.203026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052189, 33.919842, 42.084110>,  <40.765167, 33.724041, 41.885914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052189, 33.919842, 42.084110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146581, 0.801591, -0.579626,
		-0.680904, 0.343283, 0.646936,
		0.717554, 0.489499, 0.495488,
		41.267456, 34.066692, 42.232758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520348, 34.302853, 42.348511>,  <40.765167, 33.724041, 41.885914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520348, 34.302853, 42.348511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889618, 34.372128, 42.211250>,  <41.111179, 34.413692, 42.128895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889618, 34.372128, 42.211250>,  <40.520348, 34.302853, 42.348511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889618, 34.372128, 42.211250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338097, 0.790572, -0.510575,
		0.182856, 0.587368, 0.788392,
		0.923176, 0.173191, -0.343148,
		41.166573, 34.424084, 42.108307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659664, 35.074009, 42.510490>,  <40.520348, 34.302853, 42.348511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659664, 35.074009, 42.510490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910076, 34.937328, 42.230110>,  <41.060322, 34.855320, 42.061882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910076, 34.937328, 42.230110>,  <40.659664, 35.074009, 42.510490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910076, 34.937328, 42.230110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282972, 0.738068, -0.612522,
		0.726645, 0.581806, 0.365361,
		0.626030, -0.341699, -0.700948,
		41.097885, 34.834820, 42.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856377, 35.633247, 42.190819>,  <40.659664, 35.074009, 42.510490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856377, 35.633247, 42.190819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921669, 35.349049, 41.917015>,  <40.960846, 35.178532, 41.752731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921669, 35.349049, 41.917015>,  <40.856377, 35.633247, 42.190819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921669, 35.349049, 41.917015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324265, 0.616631, -0.717369,
		0.931776, 0.339061, -0.129734,
		0.163234, -0.710495, -0.684508,
		40.970638, 35.135899, 41.711662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212685, 35.989780, 41.737000>,  <40.856377, 35.633247, 42.190819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212685, 35.989780, 41.737000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124115, 35.680286, 41.499577>,  <41.070972, 35.494591, 41.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124115, 35.680286, 41.499577>,  <41.212685, 35.989780, 41.737000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124115, 35.680286, 41.499577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103308, 0.623847, -0.774689,
		0.969691, -0.110213, -0.218066,
		-0.221421, -0.773736, -0.593553,
		41.057690, 35.448166, 41.321510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320484, 36.252937, 41.141960>,  <41.212685, 35.989780, 41.737000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320484, 36.252937, 41.141960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098289, 35.932953, 41.051193>,  <40.964973, 35.740963, 40.996731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098289, 35.932953, 41.051193>,  <41.320484, 36.252937, 41.141960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098289, 35.932953, 41.051193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272454, 0.432933, -0.859266,
		0.785623, -0.415485, -0.458442,
		-0.555486, -0.799964, -0.226921,
		40.931644, 35.692963, 40.983116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477413, 36.167103, 40.491508>,  <41.320484, 36.252937, 41.141960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477413, 36.167103, 40.491508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119614, 36.006184, 40.569523>,  <40.904934, 35.909634, 40.616333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119614, 36.006184, 40.569523>,  <41.477413, 36.167103, 40.491508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119614, 36.006184, 40.569523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434150, 0.677468, -0.593760,
		0.106736, -0.615790, -0.780647,
		-0.894494, -0.402294, 0.195035,
		40.851265, 35.885494, 40.628033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128681, 36.111710, 39.858212>,  <41.477413, 36.167103, 40.491508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128681, 36.111710, 39.858212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840244, 36.106014, 40.135288>,  <40.667183, 36.102596, 40.301537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840244, 36.106014, 40.135288>,  <41.128681, 36.111710, 39.858212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840244, 36.106014, 40.135288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530429, 0.654547, -0.538714,
		-0.445728, -0.755887, -0.479542,
		-0.721090, -0.014243, 0.692695,
		40.623917, 36.101742, 40.343098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505268, 36.020634, 39.421131>,  <41.128681, 36.111710, 39.858212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505268, 36.020634, 39.421131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391212, 36.161011, 39.777901>,  <40.322777, 36.245239, 39.991962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391212, 36.161011, 39.777901>,  <40.505268, 36.020634, 39.421131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391212, 36.161011, 39.777901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476534, 0.755491, -0.449608,
		-0.831630, -0.553236, -0.048186,
		-0.285143, 0.350946, 0.891925,
		40.305668, 36.266293, 40.045479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764263, 35.749050, 38.713921>,  <40.505268, 36.020634, 39.421131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764263, 35.749050, 38.713921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745266, 35.655037, 38.325592>,  <40.733868, 35.598629, 38.092594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745266, 35.655037, 38.325592>,  <40.764263, 35.749050, 38.713921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745266, 35.655037, 38.325592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955461, 0.272723, -0.112765,
		0.291270, -0.932941, 0.211617,
		-0.047490, -0.235037, -0.970825,
		40.731018, 35.584526, 38.034344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255627, 35.231129, 38.355705>,  <40.764263, 35.749050, 38.713921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255627, 35.231129, 38.355705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145649, 35.509514, 38.090363>,  <41.079662, 35.676544, 37.931156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145649, 35.509514, 38.090363>,  <41.255627, 35.231129, 38.355705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145649, 35.509514, 38.090363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920625, 0.389509, 0.027075,
		0.277227, -0.603259, -0.747813,
		-0.274946, 0.695961, -0.663357,
		41.063164, 35.718304, 37.891354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906521, 35.456223, 38.335217>,  <41.255627, 35.231129, 38.355705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906521, 35.456223, 38.335217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675640, 35.716148, 38.137398>,  <41.537113, 35.872105, 38.018707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675640, 35.716148, 38.137398>,  <41.906521, 35.456223, 38.335217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675640, 35.716148, 38.137398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758292, 0.651255, -0.029303,
		0.303035, -0.391925, -0.868657,
		-0.577202, 0.649816, -0.494547,
		41.502480, 35.911095, 37.989033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263588, 34.846390, 38.156811>,  <41.906521, 35.456223, 38.335217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263588, 34.846390, 38.156811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310825, 35.100372, 37.851425>,  <42.339169, 35.252762, 37.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310825, 35.100372, 37.851425>,  <42.263588, 34.846390, 38.156811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310825, 35.100372, 37.851425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504301, -0.700669, -0.504721,
		-0.855414, -0.325412, -0.402957,
		0.118097, 0.634957, -0.763468,
		42.346256, 35.290859, 37.622383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307720, 34.470055, 37.457829>,  <42.263588, 34.846390, 38.156811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307720, 34.470055, 37.457829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520794, 34.804462, 37.405201>,  <42.648640, 35.005108, 37.373627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520794, 34.804462, 37.405201>,  <42.307720, 34.470055, 37.457829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520794, 34.804462, 37.405201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562449, -0.465872, -0.683092,
		-0.632374, 0.289875, -0.718384,
		0.532686, 0.836024, -0.131565,
		42.680599, 35.055271, 37.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364033, 34.817947, 36.718327>,  <42.307720, 34.470055, 37.457829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364033, 34.817947, 36.718327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710361, 34.879147, 36.908878>,  <42.918159, 34.915867, 37.023209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710361, 34.879147, 36.908878>,  <42.364033, 34.817947, 36.718327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710361, 34.879147, 36.908878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495908, -0.388967, -0.776389,
		0.066510, 0.908458, -0.412651,
		0.865824, 0.153000, 0.476382,
		42.970108, 34.925045, 37.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867043, 35.448650, 36.462978>,  <42.364033, 34.817947, 36.718327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867043, 35.448650, 36.462978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071476, 35.137348, 36.608913>,  <43.194138, 34.950565, 36.696476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071476, 35.137348, 36.608913>,  <42.867043, 35.448650, 36.462978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071476, 35.137348, 36.608913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445348, -0.123278, -0.886830,
		0.735159, 0.615726, 0.283590,
		0.511084, -0.778257, 0.364841,
		43.224800, 34.903870, 36.718365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566074, 35.722126, 36.383408>,  <42.867043, 35.448650, 36.462978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566074, 35.722126, 36.383408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448605, 35.341934, 36.342743>,  <43.378120, 35.113819, 36.318344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448605, 35.341934, 36.342743>,  <43.566074, 35.722126, 36.383408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448605, 35.341934, 36.342743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476556, -0.053385, -0.877522,
		0.828642, -0.306157, 0.468636,
		-0.293677, -0.950483, -0.101663,
		43.360500, 35.056789, 36.312244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120705, 35.265858, 36.275360>,  <43.566074, 35.722126, 36.383408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120705, 35.265858, 36.275360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857487, 35.034149, 36.082935>,  <43.699558, 34.895123, 35.967480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857487, 35.034149, 36.082935>,  <44.120705, 35.265858, 36.275360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857487, 35.034149, 36.082935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638447, -0.090514, -0.764325,
		0.399210, -0.810092, 0.429397,
		-0.658041, -0.579273, -0.481066,
		43.660076, 34.860367, 35.938614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442799, 34.649384, 36.014263>,  <44.120705, 35.265858, 36.275360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442799, 34.649384, 36.014263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131893, 34.762348, 35.789368>,  <43.945351, 34.830128, 35.654430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131893, 34.762348, 35.789368>,  <44.442799, 34.649384, 36.014263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131893, 34.762348, 35.789368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587929, 0.007765, -0.808876,
		-0.224068, -0.959263, -0.172071,
		-0.777260, 0.282409, -0.562238,
		43.898716, 34.847069, 35.620697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408188, 34.217293, 35.441944>,  <44.442799, 34.649384, 36.014263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408188, 34.217293, 35.441944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234051, 34.560860, 35.334064>,  <44.129570, 34.766998, 35.269337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234051, 34.560860, 35.334064>,  <44.408188, 34.217293, 35.441944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234051, 34.560860, 35.334064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556670, 0.021381, -0.830459,
		-0.707529, -0.511667, -0.487441,
		-0.435341, 0.858918, -0.269702,
		44.103447, 34.818535, 35.253155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604912, 34.194855, 34.812778>,  <44.408188, 34.217293, 35.441944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604912, 34.194855, 34.812778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460735, 34.566929, 34.840614>,  <44.374229, 34.790173, 34.857315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460735, 34.566929, 34.840614>,  <44.604912, 34.194855, 34.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460735, 34.566929, 34.840614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420344, 0.228572, -0.878103,
		-0.832702, -0.287254, -0.473384,
		-0.360441, 0.930183, 0.069587,
		44.352604, 34.845985, 34.861492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292774, 34.418961, 34.128563>,  <44.604912, 34.194855, 34.812778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292774, 34.418961, 34.128563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451221, 34.714535, 34.346573>,  <44.546291, 34.891880, 34.477379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451221, 34.714535, 34.346573>,  <44.292774, 34.418961, 34.128563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451221, 34.714535, 34.346573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671846, 0.171345, -0.720600,
		-0.625868, 0.651620, -0.428580,
		0.396122, 0.738940, 0.545027,
		44.570057, 34.936218, 34.510082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610737, 34.838535, 33.597057>,  <44.292774, 34.418961, 34.128563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610737, 34.838535, 33.597057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750172, 34.988300, 33.940758>,  <44.833832, 35.078159, 34.146976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750172, 34.988300, 33.940758>,  <44.610737, 34.838535, 33.597057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750172, 34.988300, 33.940758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746274, 0.443772, -0.496126,
		-0.567063, 0.814178, -0.124718,
		0.348589, 0.374408, 0.859247,
		44.854748, 35.100624, 34.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960861, 35.515827, 33.506409>,  <44.610737, 34.838535, 33.597057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960861, 35.515827, 33.506409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124043, 35.418003, 33.858265>,  <45.221951, 35.359310, 34.069378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124043, 35.418003, 33.858265>,  <44.960861, 35.515827, 33.506409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124043, 35.418003, 33.858265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888849, 0.326534, -0.321439,
		-0.208622, 0.912999, 0.350586,
		0.407952, -0.244559, 0.879640,
		45.246429, 35.344635, 34.122158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444286, 35.507030, 32.944283>,  <44.960861, 35.515827, 33.506409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444286, 35.507030, 32.944283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557175, 35.509739, 33.328014>,  <45.624908, 35.511364, 33.558254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557175, 35.509739, 33.328014>,  <45.444286, 35.507030, 32.944283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557175, 35.509739, 33.328014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952677, -0.119719, -0.279418,
		0.112959, 0.992785, -0.040234,
		0.282219, 0.006767, 0.959326,
		45.641842, 35.511768, 33.615810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853539, 36.028290, 33.127769>,  <45.444286, 35.507030, 32.944283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853539, 36.028290, 33.127769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938995, 35.706043, 33.348797>,  <45.990269, 35.512695, 33.481415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938995, 35.706043, 33.348797>,  <45.853539, 36.028290, 33.127769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938995, 35.706043, 33.348797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958177, 0.062556, -0.279255,
		0.190406, 0.589123, 0.785289,
		0.213640, -0.805618, 0.552573,
		46.003086, 35.464359, 33.514568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422440, 36.264572, 33.526875>,  <45.853539, 36.028290, 33.127769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422440, 36.264572, 33.526875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378769, 35.874905, 33.447811>,  <46.352566, 35.641102, 33.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378769, 35.874905, 33.447811>,  <46.422440, 36.264572, 33.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378769, 35.874905, 33.447811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940927, -0.037158, -0.336564,
		0.320526, -0.222729, 0.920682,
		-0.109174, -0.974172, -0.197662,
		46.346016, 35.582653, 33.388512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939999, 35.913986, 33.820271>,  <46.422440, 36.264572, 33.526875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939999, 35.913986, 33.820271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840717, 35.666920, 33.521774>,  <46.781147, 35.518681, 33.342674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840717, 35.666920, 33.521774>,  <46.939999, 35.913986, 33.820271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840717, 35.666920, 33.521774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959758, -0.052322, -0.275912,
		0.131377, -0.784697, 0.605798,
		-0.248204, -0.617668, -0.746245,
		46.766254, 35.481621, 33.297901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330853, 35.345409, 33.875599>,  <46.939999, 35.913986, 33.820271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330853, 35.345409, 33.875599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228809, 35.472351, 33.510258>,  <47.167583, 35.548515, 33.291054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228809, 35.472351, 33.510258>,  <47.330853, 35.345409, 33.875599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228809, 35.472351, 33.510258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965729, 0.130352, -0.224445,
		0.047830, -0.939307, -0.339728,
		-0.255107, 0.317350, -0.913351,
		47.152279, 35.567554, 33.236252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.741177, 34.982506, 34.370903>,  <47.330853, 35.345409, 33.875599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.741177, 34.982506, 34.370903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574127, 35.011070, 34.733227>,  <47.473900, 35.028210, 34.950623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574127, 35.011070, 34.733227>,  <47.741177, 34.982506, 34.370903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.574127, 35.011070, 34.733227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782109, -0.535679, -0.318360,
		0.462491, -0.841397, 0.279560,
		-0.417621, 0.071408, 0.905811,
		47.448841, 35.032494, 35.004971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.909775, 37.786514, 30.957949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561436, 37.596012, 30.909269>,  <34.352432, 37.481712, 30.880062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561436, 37.596012, 30.909269>,  <34.909775, 37.786514, 30.957949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561436, 37.596012, 30.909269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346964, -0.770926, 0.534125,
		-0.348198, 0.422916, 0.836600,
		-0.870847, -0.476251, -0.121699,
		34.300182, 37.453136, 30.872759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641750, 37.681282, 31.581446>,  <34.909775, 37.786514, 30.957949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641750, 37.681282, 31.581446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461262, 37.397266, 31.365208>,  <34.352970, 37.226856, 31.235464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461262, 37.397266, 31.365208>,  <34.641750, 37.681282, 31.581446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461262, 37.397266, 31.365208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277945, -0.687453, 0.670936,
		-0.848026, 0.152484, 0.507544,
		-0.451219, -0.710040, -0.540596,
		34.325897, 37.184254, 31.203030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282230, 37.413433, 32.027966>,  <34.641750, 37.681282, 31.581446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282230, 37.413433, 32.027966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.312138, 37.120079, 31.757689>,  <34.330082, 36.944069, 31.595522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.312138, 37.120079, 31.757689>,  <34.282230, 37.413433, 32.027966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312138, 37.120079, 31.757689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132362, -0.664296, 0.735658,
		-0.988378, -0.144440, 0.047404,
		0.074768, -0.733382, -0.675693,
		34.334568, 36.900066, 31.554981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860653, 36.897808, 32.306515>,  <34.282230, 37.413433, 32.027966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860653, 36.897808, 32.306515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082787, 36.716938, 32.027332>,  <34.216064, 36.608414, 31.859823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082787, 36.716938, 32.027332>,  <33.860653, 36.897808, 32.306515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082787, 36.716938, 32.027332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124733, -0.784482, 0.607478,
		-0.822220, -0.424411, -0.379248,
		0.555334, -0.452176, -0.697955,
		34.249386, 36.581284, 31.817945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690125, 36.165173, 32.419910>,  <33.860653, 36.897808, 32.306515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690125, 36.165173, 32.419910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029842, 36.189117, 32.210102>,  <34.233673, 36.203484, 32.084217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029842, 36.189117, 32.210102>,  <33.690125, 36.165173, 32.419910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029842, 36.189117, 32.210102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343114, -0.817683, 0.462241,
		-0.401218, -0.572548, -0.714992,
		0.849292, 0.059864, -0.524518,
		34.284630, 36.207077, 32.052746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809063, 35.441265, 32.284382>,  <33.690125, 36.165173, 32.419910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809063, 35.441265, 32.284382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.161945, 35.627041, 32.253357>,  <34.373672, 35.738506, 32.234741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.161945, 35.627041, 32.253357>,  <33.809063, 35.441265, 32.284382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161945, 35.627041, 32.253357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394804, -0.639821, 0.659363,
		0.256606, -0.612314, -0.747814,
		0.882204, 0.464436, -0.077561,
		34.426605, 35.766373, 32.230087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269196, 34.908653, 32.235214>,  <33.809063, 35.441265, 32.284382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269196, 34.908653, 32.235214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485619, 35.227734, 32.341747>,  <34.615471, 35.419182, 32.405666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485619, 35.227734, 32.341747>,  <34.269196, 34.908653, 32.235214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485619, 35.227734, 32.341747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566861, -0.579859, 0.585176,
		0.621230, -0.165640, -0.765922,
		0.541055, 0.797701, 0.266331,
		34.647934, 35.467045, 32.421646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945465, 34.680859, 32.251373>,  <34.269196, 34.908653, 32.235214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945465, 34.680859, 32.251373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.953403, 35.014435, 32.471970>,  <34.958164, 35.214581, 32.604328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.953403, 35.014435, 32.471970>,  <34.945465, 34.680859, 32.251373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953403, 35.014435, 32.471970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466784, -0.495519, 0.732512,
		0.884149, 0.242893, -0.399104,
		0.019842, 0.833945, 0.551491,
		34.959354, 35.264618, 32.637417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561184, 34.555763, 32.526585>,  <34.945465, 34.680859, 32.251373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561184, 34.555763, 32.526585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431999, 34.863342, 32.747280>,  <35.354488, 35.047890, 32.879696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431999, 34.863342, 32.747280>,  <35.561184, 34.555763, 32.526585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431999, 34.863342, 32.747280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512262, -0.348169, 0.785090,
		0.795792, 0.536186, -0.281459,
		-0.322959, 0.768949, 0.551738,
		35.335110, 35.094028, 32.912800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178825, 34.846275, 32.863705>,  <35.561184, 34.555763, 32.526585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178825, 34.846275, 32.863705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840328, 34.942162, 33.054035>,  <35.637230, 34.999695, 33.168236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840328, 34.942162, 33.054035>,  <36.178825, 34.846275, 32.863705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840328, 34.942162, 33.054035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388271, -0.334115, 0.858844,
		0.364863, 0.911538, 0.189665,
		-0.846239, 0.239719, 0.475830,
		35.586456, 35.014076, 33.196785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303680, 35.225029, 33.518158>,  <36.178825, 34.846275, 32.863705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303680, 35.225029, 33.518158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.936573, 35.075970, 33.573055>,  <35.716309, 34.986534, 33.605991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.936573, 35.075970, 33.573055>,  <36.303680, 35.225029, 33.518158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936573, 35.075970, 33.573055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246886, -0.264736, 0.932181,
		-0.311039, 0.889411, 0.334967,
		-0.917770, -0.372644, 0.137239,
		35.661243, 34.964176, 33.614227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174046, 35.466595, 34.195511>,  <36.303680, 35.225029, 33.518158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174046, 35.466595, 34.195511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941135, 35.154377, 34.104549>,  <35.801392, 34.967045, 34.049973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941135, 35.154377, 34.104549>,  <36.174046, 35.466595, 34.195511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941135, 35.154377, 34.104549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211552, -0.415540, 0.884631,
		-0.784988, 0.466988, 0.407082,
		-0.582271, -0.780544, -0.227402,
		35.766453, 34.920216, 34.036327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862614, 35.367512, 34.740566>,  <36.174046, 35.466595, 34.195511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862614, 35.367512, 34.740566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777290, 35.016140, 34.569519>,  <35.726097, 34.805317, 34.466888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777290, 35.016140, 34.569519>,  <35.862614, 35.367512, 34.740566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777290, 35.016140, 34.569519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274954, -0.473977, 0.836508,
		-0.937498, 0.060854, 0.342630,
		-0.213304, -0.878432, -0.427620,
		35.713299, 34.752609, 34.441235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395393, 34.986927, 35.185696>,  <35.862614, 35.367512, 34.740566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395393, 34.986927, 35.185696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603207, 34.733013, 34.956913>,  <35.727894, 34.580666, 34.819645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603207, 34.733013, 34.956913>,  <35.395393, 34.986927, 35.185696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603207, 34.733013, 34.956913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329023, -0.469139, 0.819545,
		-0.788561, -0.613966, -0.034873,
		0.519533, -0.634787, -0.571954,
		35.759068, 34.542576, 34.785328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396175, 34.366493, 35.646420>,  <35.395393, 34.986927, 35.185696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396175, 34.366493, 35.646420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656250, 34.292362, 35.351692>,  <35.812294, 34.247883, 35.174854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656250, 34.292362, 35.351692>,  <35.396175, 34.366493, 35.646420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656250, 34.292362, 35.351692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572797, -0.517570, 0.635630,
		-0.499154, -0.835330, -0.230367,
		0.650191, -0.185324, -0.736822,
		35.851307, 34.236763, 35.130646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554653, 33.568607, 35.685577>,  <35.396175, 34.366493, 35.646420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554653, 33.568607, 35.685577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856174, 33.765179, 35.511093>,  <36.037086, 33.883121, 35.406403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856174, 33.765179, 35.511093>,  <35.554653, 33.568607, 35.685577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856174, 33.765179, 35.511093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654216, -0.499169, 0.568183,
		0.061479, -0.713673, -0.697776,
		0.753805, 0.491428, -0.436208,
		36.082317, 33.912605, 35.380230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075512, 33.082409, 35.700802>,  <35.554653, 33.568607, 35.685577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075512, 33.082409, 35.700802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.274734, 33.417587, 35.611546>,  <36.394268, 33.618694, 35.557991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.274734, 33.417587, 35.611546>,  <36.075512, 33.082409, 35.700802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274734, 33.417587, 35.611546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715356, -0.251593, 0.651895,
		0.490113, -0.484301, -0.724736,
		0.498052, 0.837946, -0.223138,
		36.424149, 33.668972, 35.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741497, 32.917793, 35.535290>,  <36.075512, 33.082409, 35.700802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741497, 32.917793, 35.535290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755936, 33.300179, 35.651794>,  <36.764599, 33.529610, 35.721699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755936, 33.300179, 35.651794>,  <36.741497, 32.917793, 35.535290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755936, 33.300179, 35.651794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655706, -0.242596, 0.714981,
		0.754154, 0.165177, -0.635586,
		0.036092, 0.955962, 0.291262,
		36.766762, 33.586967, 35.739174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429749, 33.005814, 35.716454>,  <36.741497, 32.917793, 35.535290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429749, 33.005814, 35.716454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244144, 33.317547, 35.884895>,  <37.132782, 33.504589, 35.985962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244144, 33.317547, 35.884895>,  <37.429749, 33.005814, 35.716454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244144, 33.317547, 35.884895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606874, -0.066620, 0.792001,
		0.645288, 0.623056, -0.442046,
		-0.464012, 0.779335, 0.421105,
		37.104942, 33.551346, 36.011227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005539, 33.296661, 36.217720>,  <37.429749, 33.005814, 35.716454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005539, 33.296661, 36.217720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.665386, 33.464333, 36.344929>,  <37.461296, 33.564934, 36.421253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.665386, 33.464333, 36.344929>,  <38.005539, 33.296661, 36.217720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665386, 33.464333, 36.344929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358053, 0.018123, 0.933525,
		0.385548, 0.907724, -0.165499,
		-0.850383, 0.419176, 0.318026,
		37.410271, 33.590084, 36.440338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121605, 34.003418, 36.633430>,  <38.005539, 33.296661, 36.217720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121605, 34.003418, 36.633430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.795517, 33.822495, 36.778114>,  <37.599865, 33.713940, 36.864925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.795517, 33.822495, 36.778114>,  <38.121605, 34.003418, 36.633430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795517, 33.822495, 36.778114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435447, -0.066931, 0.897723,
		-0.381840, 0.889345, 0.251521,
		-0.815220, -0.452311, 0.361706,
		37.550949, 33.686802, 36.886627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080143, 34.342186, 37.226086>,  <38.121605, 34.003418, 36.633430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080143, 34.342186, 37.226086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887039, 33.992516, 37.247112>,  <37.771179, 33.782715, 37.259727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887039, 33.992516, 37.247112>,  <38.080143, 34.342186, 37.226086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887039, 33.992516, 37.247112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376568, -0.153020, 0.913664,
		-0.790660, 0.460869, 0.403058,
		-0.482756, -0.874176, 0.052562,
		37.742214, 33.730263, 37.262882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763268, 34.436398, 37.949749>,  <38.080143, 34.342186, 37.226086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763268, 34.436398, 37.949749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126171, 34.559483, 38.064419>,  <38.343914, 34.633335, 38.133221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126171, 34.559483, 38.064419>,  <37.763268, 34.436398, 37.949749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126171, 34.559483, 38.064419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067258, 0.779039, -0.623357,
		-0.415151, 0.546267, 0.727490,
		0.907263, 0.307717, 0.286678,
		38.398350, 34.651798, 38.150421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697105, 35.159233, 38.180340>,  <37.763268, 34.436398, 37.949749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697105, 35.159233, 38.180340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092205, 35.133583, 38.123428>,  <38.329266, 35.118195, 38.089283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092205, 35.133583, 38.123428>,  <37.697105, 35.159233, 38.180340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092205, 35.133583, 38.123428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027208, 0.826960, -0.561602,
		0.153671, 0.558592, 0.815083,
		0.987747, -0.064125, -0.142278,
		38.388531, 35.114346, 38.080746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963615, 35.773590, 38.485741>,  <37.697105, 35.159233, 38.180340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963615, 35.773590, 38.485741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217922, 35.626221, 38.214432>,  <38.370506, 35.537800, 38.051647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217922, 35.626221, 38.214432>,  <37.963615, 35.773590, 38.485741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217922, 35.626221, 38.214432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020125, 0.870523, -0.491716,
		0.771615, 0.326269, 0.546039,
		0.635771, -0.368427, -0.678275,
		38.408653, 35.515694, 38.010948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297066, 36.342487, 38.258667>,  <37.963615, 35.773590, 38.485741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297066, 36.342487, 38.258667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383411, 36.071369, 37.977528>,  <38.435219, 35.908699, 37.808846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383411, 36.071369, 37.977528>,  <38.297066, 36.342487, 38.258667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383411, 36.071369, 37.977528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004374, 0.719140, -0.694852,
		0.976413, 0.153070, 0.152274,
		0.215867, -0.677796, -0.702847,
		38.448174, 35.868031, 37.766674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859138, 36.604568, 38.070461>,  <38.297066, 36.342487, 38.258667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859138, 36.604568, 38.070461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684093, 36.381744, 37.788132>,  <38.579067, 36.248051, 37.618732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684093, 36.381744, 37.788132>,  <38.859138, 36.604568, 38.070461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684093, 36.381744, 37.788132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110135, 0.745857, -0.656938,
		0.892395, -0.365217, -0.265042,
		-0.437608, -0.557058, -0.705823,
		38.552811, 36.214626, 37.576385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310097, 36.636543, 37.487167>,  <38.859138, 36.604568, 38.070461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310097, 36.636543, 37.487167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964134, 36.499355, 37.340572>,  <38.756557, 36.417042, 37.252617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964134, 36.499355, 37.340572>,  <39.310097, 36.636543, 37.487167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964134, 36.499355, 37.340572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106772, 0.587719, -0.801989,
		0.490446, -0.732775, -0.471702,
		-0.864906, -0.342968, -0.366484,
		38.704662, 36.396465, 37.230625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520088, 36.538548, 36.762695>,  <39.310097, 36.636543, 37.487167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520088, 36.538548, 36.762695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122890, 36.579628, 36.786053>,  <38.884571, 36.604275, 36.800068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122890, 36.579628, 36.786053>,  <39.520088, 36.538548, 36.762695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122890, 36.579628, 36.786053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034018, 0.721913, -0.691148,
		-0.113134, -0.684321, -0.720351,
		-0.992997, 0.102697, 0.058394,
		38.824993, 36.610435, 36.803570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419418, 36.753704, 36.162052>,  <39.520088, 36.538548, 36.762695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419418, 36.753704, 36.162052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051441, 36.815109, 36.306347>,  <38.830654, 36.851952, 36.392925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051441, 36.815109, 36.306347>,  <39.419418, 36.753704, 36.162052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051441, 36.815109, 36.306347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176120, 0.660243, -0.730110,
		-0.350261, -0.735195, -0.580350,
		-0.919945, 0.153517, 0.360740,
		38.775459, 36.861164, 36.414570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856724, 36.672886, 35.649910>,  <39.419418, 36.753704, 36.162052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856724, 36.672886, 35.649910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673279, 36.907505, 35.916935>,  <38.563210, 37.048275, 36.077148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673279, 36.907505, 35.916935>,  <38.856724, 36.672886, 35.649910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673279, 36.907505, 35.916935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550948, 0.401736, -0.731481,
		-0.697229, -0.703260, 0.138913,
		-0.458616, 0.586544, 0.667561,
		38.535694, 37.083469, 36.117203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156048, 36.485893, 35.652122>,  <38.856724, 36.672886, 35.649910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156048, 36.485893, 35.652122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176094, 36.866760, 35.772694>,  <38.188122, 37.095280, 35.845036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176094, 36.866760, 35.772694>,  <38.156048, 36.485893, 35.652122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176094, 36.866760, 35.772694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436973, 0.292290, -0.850659,
		-0.898078, -0.089084, 0.430721,
		0.050115, 0.952172, 0.301427,
		38.191128, 37.152412, 35.863121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528023, 36.687881, 35.392365>,  <38.156048, 36.485893, 35.652122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528023, 36.687881, 35.392365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702393, 37.034176, 35.490730>,  <37.807014, 37.241951, 35.549751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702393, 37.034176, 35.490730>,  <37.528023, 36.687881, 35.392365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702393, 37.034176, 35.490730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493767, 0.458513, -0.738891,
		-0.752439, 0.200674, 0.627348,
		0.435923, 0.865734, 0.245917,
		37.833168, 37.293896, 35.564507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012257, 37.170586, 35.409096>,  <37.528023, 36.687881, 35.392365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012257, 37.170586, 35.409096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349583, 37.381752, 35.368843>,  <37.551979, 37.508453, 35.344692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349583, 37.381752, 35.368843>,  <37.012257, 37.170586, 35.409096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349583, 37.381752, 35.368843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391367, 0.474930, -0.788208,
		-0.368318, 0.704089, 0.607125,
		0.843311, 0.527920, -0.100632,
		37.602577, 37.540127, 35.338654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953785, 37.854847, 35.513054>,  <37.012257, 37.170586, 35.409096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953785, 37.854847, 35.513054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266415, 37.832973, 35.264488>,  <37.453991, 37.819851, 35.115349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266415, 37.832973, 35.264488>,  <36.953785, 37.854847, 35.513054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266415, 37.832973, 35.264488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494591, 0.552751, -0.670706,
		0.380164, 0.831551, 0.404968,
		0.781573, -0.054684, -0.621413,
		37.500885, 37.816566, 35.078064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164307, 38.510529, 35.317741>,  <36.953785, 37.854847, 35.513054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164307, 38.510529, 35.317741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302513, 38.279972, 35.021530>,  <37.385437, 38.141640, 34.843803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302513, 38.279972, 35.021530>,  <37.164307, 38.510529, 35.317741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302513, 38.279972, 35.021530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377880, 0.636867, -0.672017,
		0.858966, 0.512028, 0.002244,
		0.345520, -0.576391, -0.740533,
		37.406170, 38.107056, 34.799370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459106, 39.032574, 34.818226>,  <37.164307, 38.510529, 35.317741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459106, 39.032574, 34.818226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356201, 38.704903, 34.613186>,  <37.294456, 38.508301, 34.490162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356201, 38.704903, 34.613186>,  <37.459106, 39.032574, 34.818226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356201, 38.704903, 34.613186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251475, 0.568931, -0.782993,
		0.933047, -0.072529, -0.352368,
		-0.257262, -0.819181, -0.512600,
		37.279022, 38.459148, 34.459408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766087, 39.177811, 34.160133>,  <37.459106, 39.032574, 34.818226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766087, 39.177811, 34.160133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513035, 38.878761, 34.079296>,  <37.361202, 38.699333, 34.030796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513035, 38.878761, 34.079296>,  <37.766087, 39.177811, 34.160133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513035, 38.878761, 34.079296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330465, 0.496592, -0.802614,
		0.700409, -0.440974, -0.561222,
		-0.632630, -0.747622, -0.202090,
		37.323246, 38.654476, 34.018669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848991, 39.034973, 33.446255>,  <37.766087, 39.177811, 34.160133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848991, 39.034973, 33.446255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489456, 38.892925, 33.549000>,  <37.273735, 38.807697, 33.610649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489456, 38.892925, 33.549000>,  <37.848991, 39.034973, 33.446255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489456, 38.892925, 33.549000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422304, 0.544966, -0.724342,
		0.117243, -0.759543, -0.639804,
		-0.898840, -0.355116, 0.256865,
		37.219803, 38.786392, 33.626060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622486, 38.826145, 32.875069>,  <37.848991, 39.034973, 33.446255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622486, 38.826145, 32.875069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290092, 38.853909, 33.095844>,  <37.090656, 38.870567, 33.228310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290092, 38.853909, 33.095844>,  <37.622486, 38.826145, 32.875069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290092, 38.853909, 33.095844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491459, 0.373251, -0.786862,
		-0.260627, -0.925130, -0.276057,
		-0.830988, 0.069407, 0.551943,
		37.040794, 38.874729, 33.261429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.854088, 38.274136, 32.623566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696186, 38.569527, 32.842220>,  <36.601444, 38.746761, 32.973412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696186, 38.569527, 32.842220>,  <36.854088, 38.274136, 32.623566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696186, 38.569527, 32.842220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440853, 0.369751, -0.817883,
		-0.806111, -0.563852, 0.179600,
		-0.394757, 0.738482, 0.546636,
		36.577759, 38.791073, 33.006210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212196, 38.372570, 32.249710>,  <36.854088, 38.274136, 32.623566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212196, 38.372570, 32.249710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251572, 38.674576, 32.509022>,  <36.275196, 38.855778, 32.664608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251572, 38.674576, 32.509022>,  <36.212196, 38.372570, 32.249710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251572, 38.674576, 32.509022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642403, 0.545737, -0.538041,
		-0.760018, -0.363495, 0.538742,
		0.098436, 0.755011, 0.648281,
		36.281101, 38.901081, 32.703506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557613, 38.459721, 32.476925>,  <36.212196, 38.372570, 32.249710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557613, 38.459721, 32.476925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764236, 38.800823, 32.507839>,  <35.888210, 39.005486, 32.526390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764236, 38.800823, 32.507839>,  <35.557613, 38.459721, 32.476925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764236, 38.800823, 32.507839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659027, 0.453583, -0.599955,
		-0.546673, 0.258975, 0.796292,
		0.516558, 0.852757, 0.077290,
		35.919205, 39.056652, 32.531025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068432, 39.056133, 32.538036>,  <35.557613, 38.459721, 32.476925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068432, 39.056133, 32.538036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416260, 39.197948, 32.400539>,  <35.624954, 39.283039, 32.318043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416260, 39.197948, 32.400539>,  <35.068432, 39.056133, 32.538036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416260, 39.197948, 32.400539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487889, 0.509300, -0.708927,
		-0.076275, 0.784166, 0.615845,
		0.869567, 0.354537, -0.343739,
		35.677132, 39.304310, 32.297417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989265, 39.704041, 32.555393>,  <35.068432, 39.056133, 32.538036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989265, 39.704041, 32.555393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267208, 39.633347, 32.276554>,  <35.433971, 39.590931, 32.109249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267208, 39.633347, 32.276554>,  <34.989265, 39.704041, 32.555393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267208, 39.633347, 32.276554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514033, 0.555850, -0.653300,
		0.502939, 0.812279, 0.295389,
		0.694854, -0.176730, -0.697097,
		35.475666, 39.580326, 32.067425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048916, 40.320866, 32.303440>,  <34.989265, 39.704041, 32.555393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048916, 40.320866, 32.303440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239426, 40.091221, 32.037037>,  <35.353729, 39.953434, 31.877195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239426, 40.091221, 32.037037>,  <35.048916, 40.320866, 32.303440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239426, 40.091221, 32.037037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133973, 0.701204, -0.700260,
		0.869032, 0.422741, 0.257049,
		0.476272, -0.574111, -0.666004,
		35.382309, 39.918987, 31.837236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610123, 40.780125, 31.843441>,  <35.048916, 40.320866, 32.303440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610123, 40.780125, 31.843441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481548, 40.453770, 31.651186>,  <35.404404, 40.257957, 31.535833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481548, 40.453770, 31.651186>,  <35.610123, 40.780125, 31.843441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481548, 40.453770, 31.651186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265921, 0.564924, -0.781119,
		0.908827, -0.123266, -0.398546,
		-0.321434, -0.815883, -0.480639,
		35.385117, 40.209003, 31.506994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883865, 40.785809, 31.274271>,  <35.610123, 40.780125, 31.843441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883865, 40.785809, 31.274271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556927, 40.562027, 31.219194>,  <35.360764, 40.427757, 31.186148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556927, 40.562027, 31.219194>,  <35.883865, 40.785809, 31.274271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556927, 40.562027, 31.219194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161834, 0.452292, -0.877064,
		0.552959, -0.694577, -0.460217,
		-0.817341, -0.559459, -0.137693,
		35.311726, 40.394188, 31.177887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926716, 40.515823, 30.620008>,  <35.883865, 40.785809, 31.274271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926716, 40.515823, 30.620008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536030, 40.499931, 30.704346>,  <35.301620, 40.490398, 30.754948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536030, 40.499931, 30.704346>,  <35.926716, 40.515823, 30.620008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536030, 40.499931, 30.704346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204590, 0.468460, -0.859470,
		-0.064628, -0.882591, -0.465679,
		-0.976712, -0.039727, 0.210845,
		35.243015, 40.488014, 30.767599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552212, 40.338577, 29.996487>,  <35.926716, 40.515823, 30.620008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552212, 40.338577, 29.996487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253807, 40.486683, 30.217892>,  <35.074764, 40.575546, 30.350735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253807, 40.486683, 30.217892>,  <35.552212, 40.338577, 29.996487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253807, 40.486683, 30.217892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308565, 0.544377, -0.780026,
		-0.590132, -0.752702, -0.291862,
		-0.746010, 0.370260, 0.553512,
		35.030003, 40.597759, 30.383945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976460, 40.314697, 29.558064>,  <35.552212, 40.338577, 29.996487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976460, 40.314697, 29.558064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894939, 40.593018, 29.833548>,  <34.846027, 40.760010, 29.998838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894939, 40.593018, 29.833548>,  <34.976460, 40.314697, 29.558064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894939, 40.593018, 29.833548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432822, 0.566955, -0.700876,
		-0.878140, -0.440929, 0.185612,
		-0.203804, 0.695804, 0.688709,
		34.833797, 40.801758, 30.040161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367306, 40.592087, 29.402552>,  <34.976460, 40.314697, 29.558064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367306, 40.592087, 29.402552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476498, 40.884377, 29.652838>,  <34.542011, 41.059750, 29.803009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476498, 40.884377, 29.652838>,  <34.367306, 40.592087, 29.402552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476498, 40.884377, 29.652838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509979, 0.661426, -0.549943,
		-0.815724, -0.168981, 0.553209,
		0.272977, 0.730726, 0.625717,
		34.558392, 41.103596, 29.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828152, 40.877220, 29.627419>,  <34.367306, 40.592087, 29.402552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828152, 40.877220, 29.627419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106846, 41.162006, 29.662413>,  <34.274063, 41.332878, 29.683409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106846, 41.162006, 29.662413>,  <33.828152, 40.877220, 29.627419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106846, 41.162006, 29.662413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594616, 0.641460, -0.484727,
		-0.401230, 0.285708, 0.870279,
		0.696739, 0.711969, 0.087486,
		34.315868, 41.375599, 29.688658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488422, 41.487137, 29.857397>,  <33.828152, 40.877220, 29.627419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488422, 41.487137, 29.857397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837631, 41.628510, 29.722988>,  <34.047157, 41.713333, 29.642344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837631, 41.628510, 29.722988>,  <33.488422, 41.487137, 29.857397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837631, 41.628510, 29.722988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487235, 0.661339, -0.570292,
		0.020666, 0.661602, 0.749570,
		0.873026, 0.353431, -0.336023,
		34.099541, 41.734539, 29.622181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549202, 42.165932, 30.025167>,  <33.488422, 41.487137, 29.857397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549202, 42.165932, 30.025167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782719, 42.124008, 29.703125>,  <33.922829, 42.098854, 29.509899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782719, 42.124008, 29.703125>,  <33.549202, 42.165932, 30.025167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782719, 42.124008, 29.703125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407210, 0.820090, -0.402035,
		0.702398, 0.562554, 0.436084,
		0.583795, -0.104811, -0.805108,
		33.957855, 42.092564, 29.461594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628307, 42.820892, 29.768124>,  <33.549202, 42.165932, 30.025167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628307, 42.820892, 29.768124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755196, 42.605053, 29.456173>,  <33.831329, 42.475552, 29.269003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755196, 42.605053, 29.456173>,  <33.628307, 42.820892, 29.768124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755196, 42.605053, 29.456173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458663, 0.632479, -0.624178,
		0.830058, 0.555706, -0.046854,
		0.317225, -0.539594, -0.779876,
		33.850365, 42.443176, 29.222210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939651, 43.343590, 29.276018>,  <33.628307, 42.820892, 29.768124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939651, 43.343590, 29.276018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874832, 43.025864, 29.041822>,  <33.835941, 42.835228, 28.901304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874832, 43.025864, 29.041822>,  <33.939651, 43.343590, 29.276018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874832, 43.025864, 29.041822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343131, 0.601663, -0.721292,
		0.925204, 0.084020, -0.370051,
		-0.162044, -0.794318, -0.585491,
		33.826218, 42.787567, 28.866175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279205, 43.465973, 28.655327>,  <33.939651, 43.343590, 29.276018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279205, 43.465973, 28.655327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988029, 43.199387, 28.590919>,  <33.813324, 43.039436, 28.552275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988029, 43.199387, 28.590919>,  <34.279205, 43.465973, 28.655327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988029, 43.199387, 28.590919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323179, 0.540643, -0.776698,
		0.604697, -0.513351, -0.608944,
		-0.727940, -0.666465, -0.161021,
		33.769646, 42.999447, 28.542614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284649, 43.454239, 27.913879>,  <34.279205, 43.465973, 28.655327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284649, 43.454239, 27.913879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945717, 43.278252, 28.032843>,  <33.742355, 43.172661, 28.104221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945717, 43.278252, 28.032843>,  <34.284649, 43.454239, 27.913879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945717, 43.278252, 28.032843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462754, 0.336947, -0.819954,
		0.260544, -0.832402, -0.489104,
		-0.847334, -0.439969, 0.297408,
		33.691517, 43.146259, 28.122065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123985, 43.042530, 27.351923>,  <34.284649, 43.454239, 27.913879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123985, 43.042530, 27.351923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807232, 43.138153, 27.576700>,  <33.617180, 43.195526, 27.711567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807232, 43.138153, 27.576700>,  <34.123985, 43.042530, 27.351923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807232, 43.138153, 27.576700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450634, 0.392279, -0.801901,
		-0.412136, -0.888240, -0.202912,
		-0.791879, 0.239053, 0.561944,
		33.569668, 43.209869, 27.745283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644230, 43.091984, 26.830393>,  <34.123985, 43.042530, 27.351923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644230, 43.091984, 26.830393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427891, 43.217869, 27.142403>,  <33.298088, 43.293400, 27.329609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427891, 43.217869, 27.142403>,  <33.644230, 43.091984, 26.830393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427891, 43.217869, 27.142403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682436, 0.377928, -0.625661,
		-0.491696, -0.870705, 0.010369,
		-0.540847, 0.314711, 0.780026,
		33.265636, 43.312283, 27.376411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908195, 42.843750, 26.733370>,  <33.644230, 43.091984, 26.830393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908195, 42.843750, 26.733370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943085, 43.181545, 26.944740>,  <32.964016, 43.384224, 27.071562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943085, 43.181545, 26.944740>,  <32.908195, 42.843750, 26.733370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943085, 43.181545, 26.944740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649086, 0.450567, -0.612924,
		-0.755698, -0.289536, 0.587443,
		0.087219, 0.844487, 0.528427,
		32.969250, 43.434891, 27.103268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212914, 42.999783, 27.023548>,  <32.908195, 42.843750, 26.733370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212914, 42.999783, 27.023548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455387, 43.313831, 26.972759>,  <32.600872, 43.502262, 26.942286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455387, 43.313831, 26.972759>,  <32.212914, 42.999783, 27.023548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455387, 43.313831, 26.972759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652830, 0.400010, -0.643277,
		-0.454262, 0.472835, 0.755032,
		0.606184, 0.785124, -0.126971,
		32.637241, 43.549370, 26.934668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791201, 43.541489, 26.674654>,  <32.212914, 42.999783, 27.023548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791201, 43.541489, 26.674654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399025, 43.468765, 26.644487>,  <31.163719, 43.425133, 26.626387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399025, 43.468765, 26.644487>,  <31.791201, 43.541489, 26.674654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399025, 43.468765, 26.644487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126857, -0.876637, 0.464127,
		-0.150496, 0.445481, 0.882552,
		-0.980438, -0.181807, -0.075418,
		31.104893, 43.414223, 26.621862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508114, 43.462940, 27.352989>,  <31.791201, 43.541489, 26.674654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508114, 43.462940, 27.352989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265663, 43.267815, 27.101706>,  <31.120193, 43.150738, 26.950935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265663, 43.267815, 27.101706>,  <31.508114, 43.462940, 27.352989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265663, 43.267815, 27.101706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004964, -0.787498, 0.616297,
		-0.795352, 0.376673, 0.474902,
		-0.606127, -0.487816, -0.628209,
		31.083824, 43.121471, 26.913242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840467, 43.290855, 27.721367>,  <31.508114, 43.462940, 27.352989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840467, 43.290855, 27.721367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903412, 43.036736, 27.418941>,  <30.941177, 42.884262, 27.237486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903412, 43.036736, 27.418941>,  <30.840467, 43.290855, 27.721367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903412, 43.036736, 27.418941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016098, -0.767148, 0.641268,
		-0.987410, -0.088738, -0.130945,
		0.157359, -0.635302, -0.756062,
		30.950621, 42.846146, 27.192123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415064, 42.663513, 27.942369>,  <30.840467, 43.290855, 27.721367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415064, 42.663513, 27.942369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672930, 42.542725, 27.661451>,  <30.827650, 42.470249, 27.492901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672930, 42.542725, 27.661451>,  <30.415064, 42.663513, 27.942369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672930, 42.542725, 27.661451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161157, -0.844346, 0.510987,
		-0.747285, -0.442595, -0.495655,
		0.644665, -0.301975, -0.702295,
		30.866329, 42.452133, 27.450762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199232, 42.025269, 27.668781>,  <30.415064, 42.663513, 27.942369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199232, 42.025269, 27.668781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593233, 42.081692, 27.629036>,  <30.829634, 42.115543, 27.605188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593233, 42.081692, 27.629036>,  <30.199232, 42.025269, 27.668781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593233, 42.081692, 27.629036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171568, -0.739663, 0.650740,
		0.018294, -0.658029, -0.752770,
		0.985003, 0.141056, -0.099365,
		30.888733, 42.124008, 27.599226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441738, 41.315586, 27.584869>,  <30.199232, 42.025269, 27.668781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441738, 41.315586, 27.584869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.783121, 41.522366, 27.611311>,  <30.987951, 41.646435, 27.627176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.783121, 41.522366, 27.611311>,  <30.441738, 41.315586, 27.584869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783121, 41.522366, 27.611311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437090, -0.779080, 0.449429,
		0.283834, -0.354675, -0.890867,
		0.853458, 0.516952, 0.066105,
		31.039158, 41.677452, 27.631142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959808, 40.910122, 27.250923>,  <30.441738, 41.315586, 27.584869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959808, 40.910122, 27.250923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.133492, 41.150539, 27.519314>,  <31.237701, 41.294792, 27.680347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.133492, 41.150539, 27.519314>,  <30.959808, 40.910122, 27.250923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133492, 41.150539, 27.519314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427419, -0.793133, 0.433881,
		0.792956, 0.098393, -0.601282,
		0.434206, 0.601048, 0.670975,
		31.263754, 41.330853, 27.720606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673120, 40.778156, 27.210249>,  <30.959808, 40.910122, 27.250923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673120, 40.778156, 27.210249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636087, 40.952278, 27.568453>,  <31.613869, 41.056751, 27.783375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636087, 40.952278, 27.568453>,  <31.673120, 40.778156, 27.210249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636087, 40.952278, 27.568453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354842, -0.825900, 0.438152,
		0.930331, 0.358329, -0.078001,
		-0.092582, 0.435305, 0.895510,
		31.608313, 41.082870, 27.837107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291164, 40.704220, 27.597511>,  <31.673120, 40.778156, 27.210249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291164, 40.704220, 27.597511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.059715, 40.813126, 27.905033>,  <31.920845, 40.878468, 28.089546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.059715, 40.813126, 27.905033>,  <32.291164, 40.704220, 27.597511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059715, 40.813126, 27.905033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307847, -0.799999, 0.515006,
		0.755263, 0.534671, 0.379084,
		-0.578626, 0.272265, 0.768807,
		31.886127, 40.894806, 28.135675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707043, 40.905853, 28.191219>,  <32.291164, 40.704220, 27.597511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707043, 40.905853, 28.191219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.352581, 40.793941, 28.338974>,  <32.139904, 40.726795, 28.427628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.352581, 40.793941, 28.338974>,  <32.707043, 40.905853, 28.191219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352581, 40.793941, 28.338974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460834, -0.615571, 0.639300,
		0.048523, 0.736747, 0.674425,
		-0.886159, -0.279778, 0.369388,
		32.086735, 40.710007, 28.449791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698341, 40.889412, 28.926001>,  <32.707043, 40.905853, 28.191219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698341, 40.889412, 28.926001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370197, 40.668461, 28.866819>,  <32.173313, 40.535889, 28.831310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370197, 40.668461, 28.866819>,  <32.698341, 40.889412, 28.926001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370197, 40.668461, 28.866819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329792, -0.668364, 0.666728,
		-0.467174, 0.498162, 0.730468,
		-0.820357, -0.552381, -0.147952,
		32.124092, 40.502747, 28.822433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503471, 40.826576, 29.606014>,  <32.698341, 40.889412, 28.926001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503471, 40.826576, 29.606014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317749, 40.553833, 29.379923>,  <32.206314, 40.390186, 29.244268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317749, 40.553833, 29.379923>,  <32.503471, 40.826576, 29.606014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317749, 40.553833, 29.379923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078012, -0.667197, 0.740785,
		-0.882232, 0.299857, 0.362978,
		-0.464308, -0.681860, -0.565230,
		32.178455, 40.349274, 29.210354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084755, 40.476326, 30.037445>,  <32.503471, 40.826576, 29.606014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084755, 40.476326, 30.037445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104393, 40.222847, 29.728636>,  <32.116177, 40.070759, 29.543350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104393, 40.222847, 29.728636>,  <32.084755, 40.476326, 30.037445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104393, 40.222847, 29.728636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346997, -0.713987, 0.608125,
		-0.936580, -0.297744, 0.184840,
		0.049093, -0.633696, -0.772022,
		32.119122, 40.032738, 29.497028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910881, 39.888180, 30.355654>,  <32.084755, 40.476326, 30.037445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910881, 39.888180, 30.355654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062386, 39.756329, 30.009731>,  <32.153290, 39.677219, 29.802177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062386, 39.756329, 30.009731>,  <31.910881, 39.888180, 30.355654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062386, 39.756329, 30.009731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494083, -0.718107, 0.490107,
		-0.782575, -0.612917, -0.109127,
		0.378760, -0.329628, -0.864804,
		32.176014, 39.657440, 29.750290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739586, 39.242130, 30.315102>,  <31.910881, 39.888180, 30.355654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739586, 39.242130, 30.315102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075451, 39.280800, 30.101326>,  <32.276970, 39.304001, 29.973061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075451, 39.280800, 30.101326>,  <31.739586, 39.242130, 30.315102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075451, 39.280800, 30.101326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428358, -0.722827, 0.542246,
		-0.333886, -0.684233, -0.648340,
		0.839661, 0.096674, -0.534438,
		32.327351, 39.309803, 29.940994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071705, 38.652641, 30.409309>,  <31.739586, 39.242130, 30.315102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071705, 38.652641, 30.409309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378555, 38.822502, 30.216976>,  <32.562664, 38.924419, 30.101576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378555, 38.822502, 30.216976>,  <32.071705, 38.652641, 30.409309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378555, 38.822502, 30.216976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603238, -0.732508, 0.315494,
		-0.218240, -0.532078, -0.818086,
		0.767121, 0.424647, -0.480832,
		32.608692, 38.949898, 30.072727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503098, 38.091866, 30.113668>,  <32.071705, 38.652641, 30.409309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503098, 38.091866, 30.113668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738827, 38.414429, 30.133314>,  <32.880264, 38.607967, 30.145102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738827, 38.414429, 30.133314>,  <32.503098, 38.091866, 30.113668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738827, 38.414429, 30.133314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744922, -0.565911, 0.353322,
		0.312714, -0.171635, -0.934212,
		0.589323, 0.806403, 0.049114,
		32.915623, 38.656349, 30.148048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991978, 37.979782, 29.599379>,  <32.503098, 38.091866, 30.113668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991978, 37.979782, 29.599379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143215, 38.226707, 29.875341>,  <33.233955, 38.374863, 30.040920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143215, 38.226707, 29.875341>,  <32.991978, 37.979782, 29.599379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143215, 38.226707, 29.875341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704873, -0.675083, 0.217754,
		0.600168, 0.403968, -0.690368,
		0.378090, 0.617311, 0.689909,
		33.256641, 38.411900, 30.082314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719200, 38.015518, 29.544451>,  <32.991978, 37.979782, 29.599379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719200, 38.015518, 29.544451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621410, 38.106842, 29.921408>,  <33.562737, 38.161636, 30.147583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621410, 38.106842, 29.921408>,  <33.719200, 38.015518, 29.544451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621410, 38.106842, 29.921408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624883, -0.706061, 0.333164,
		0.741453, 0.670336, 0.029946,
		-0.244476, 0.228312, 0.942393,
		33.548069, 38.175335, 30.204126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338642, 38.084633, 29.855062>,  <33.719200, 38.015518, 29.544451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338642, 38.084633, 29.855062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084366, 38.053135, 30.162230>,  <33.931801, 38.034237, 30.346529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084366, 38.053135, 30.162230>,  <34.338642, 38.084633, 29.855062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084366, 38.053135, 30.162230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581888, -0.702561, 0.409651,
		0.507252, 0.707253, 0.492431,
		-0.635690, -0.078743, 0.767918,
		33.893658, 38.029510, 30.392605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752312, 37.935799, 30.290760>,  <34.338642, 38.084633, 29.855062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752312, 37.935799, 30.290760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401920, 37.837624, 30.456860>,  <34.191685, 37.778721, 30.556519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401920, 37.837624, 30.456860>,  <34.752312, 37.935799, 30.290760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401920, 37.837624, 30.456860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389360, -0.867934, 0.308364,
		0.284724, 0.431800, 0.855851,
		-0.875974, -0.245436, 0.415248,
		34.139130, 37.763992, 30.581434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.771271, 37.948441, 35.060345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401432, 37.835274, 35.162380>,  <38.179527, 37.767372, 35.223602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401432, 37.835274, 35.162380>,  <38.771271, 37.948441, 35.060345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401432, 37.835274, 35.162380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349906, -0.366033, 0.862314,
		-0.150592, 0.886554, 0.437429,
		-0.924601, -0.282917, 0.255089,
		38.124050, 37.750401, 35.238907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576786, 38.294949, 35.659710>,  <38.771271, 37.948441, 35.060345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576786, 38.294949, 35.659710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292381, 38.013687, 35.657421>,  <38.121738, 37.844929, 35.656048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292381, 38.013687, 35.657421>,  <38.576786, 38.294949, 35.659710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292381, 38.013687, 35.657421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367705, -0.378722, 0.849331,
		-0.599375, 0.601784, 0.527830,
		-0.711015, -0.703154, -0.005718,
		38.079079, 37.802742, 35.655704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149921, 38.328251, 36.333302>,  <38.576786, 38.294949, 35.659710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149921, 38.328251, 36.333302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.180363, 37.962971, 36.173168>,  <38.198627, 37.743801, 36.077087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.180363, 37.962971, 36.173168>,  <38.149921, 38.328251, 36.333302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180363, 37.962971, 36.173168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372041, -0.346494, 0.861120,
		-0.925091, -0.214475, 0.313379,
		0.076105, -0.913204, -0.400332,
		38.203194, 37.689011, 36.053070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071152, 37.906708, 36.917599>,  <38.149921, 38.328251, 36.333302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071152, 37.906708, 36.917599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187557, 37.626160, 36.657326>,  <38.257401, 37.457832, 36.501163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187557, 37.626160, 36.657326>,  <38.071152, 37.906708, 36.917599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187557, 37.626160, 36.657326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260022, -0.596535, 0.759298,
		-0.920705, -0.390161, 0.008770,
		0.291017, -0.701370, -0.650684,
		38.274864, 37.415749, 36.462120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693501, 37.250309, 36.923271>,  <38.071152, 37.906708, 36.917599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693501, 37.250309, 36.923271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044704, 37.150871, 36.759663>,  <38.255428, 37.091209, 36.661499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044704, 37.150871, 36.759663>,  <37.693501, 37.250309, 36.923271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044704, 37.150871, 36.759663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044349, -0.808620, 0.586658,
		-0.476582, -0.533232, -0.698952,
		0.878011, -0.248593, -0.409022,
		38.308109, 37.076294, 36.636955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478081, 36.553162, 36.652691>,  <37.693501, 37.250309, 36.923271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478081, 36.553162, 36.652691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869087, 36.589687, 36.728722>,  <38.103691, 36.611603, 36.774342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869087, 36.589687, 36.728722>,  <37.478081, 36.553162, 36.652691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869087, 36.589687, 36.728722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033908, -0.821588, 0.569072,
		0.208131, -0.562721, -0.800017,
		0.977513, 0.091314, 0.190079,
		38.162342, 36.617081, 36.785744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761021, 35.872952, 36.539921>,  <37.478081, 36.553162, 36.652691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761021, 35.872952, 36.539921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044437, 36.053703, 36.756721>,  <38.214489, 36.162155, 36.886803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044437, 36.053703, 36.756721>,  <37.761021, 35.872952, 36.539921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044437, 36.053703, 36.756721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162161, -0.851784, 0.498164,
		0.686783, -0.265078, -0.676803,
		0.708542, 0.451882, 0.542006,
		38.257000, 36.189266, 36.919323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154716, 35.315605, 36.627930>,  <37.761021, 35.872952, 36.539921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154716, 35.315605, 36.627930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278896, 35.585800, 36.895462>,  <38.353405, 35.747917, 37.055981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278896, 35.585800, 36.895462>,  <38.154716, 35.315605, 36.627930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278896, 35.585800, 36.895462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205381, -0.734645, 0.646618,
		0.928137, -0.063378, -0.366804,
		0.310452, 0.675485, 0.668834,
		38.372032, 35.788445, 37.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700779, 35.014626, 36.855320>,  <38.154716, 35.315605, 36.627930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700779, 35.014626, 36.855320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659664, 35.296925, 37.135704>,  <38.634995, 35.466305, 37.303936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659664, 35.296925, 37.135704>,  <38.700779, 35.014626, 36.855320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659664, 35.296925, 37.135704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334667, -0.639077, 0.692516,
		0.936714, 0.305770, -0.170504,
		-0.102785, 0.705751, 0.700964,
		38.628830, 35.508652, 37.345993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301880, 35.088650, 37.177906>,  <38.700779, 35.014626, 36.855320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301880, 35.088650, 37.177906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020317, 35.209049, 37.435249>,  <38.851379, 35.281288, 37.589653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020317, 35.209049, 37.435249>,  <39.301880, 35.088650, 37.177906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020317, 35.209049, 37.435249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308649, -0.686159, 0.658728,
		0.639722, 0.662257, 0.390091,
		-0.703912, 0.301001, 0.643356,
		38.809143, 35.299351, 37.628258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667683, 35.018448, 37.733215>,  <39.301880, 35.088650, 37.177906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667683, 35.018448, 37.733215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.291328, 35.058971, 37.862503>,  <39.065517, 35.083286, 37.940075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.291328, 35.058971, 37.862503>,  <39.667683, 35.018448, 37.733215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291328, 35.058971, 37.862503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210070, -0.574030, 0.791429,
		0.265717, 0.812543, 0.518814,
		-0.940885, 0.101309, 0.323221,
		39.009064, 35.089363, 37.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581219, 35.105453, 38.531582>,  <39.667683, 35.018448, 37.733215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581219, 35.105453, 38.531582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225716, 34.959526, 38.420578>,  <39.012413, 34.871971, 38.353977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225716, 34.959526, 38.420578>,  <39.581219, 35.105453, 38.531582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225716, 34.959526, 38.420578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098297, -0.743035, 0.661995,
		-0.447708, 0.561077, 0.696241,
		-0.888761, -0.364818, -0.277510,
		38.959087, 34.850082, 38.337326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274239, 34.816299, 39.156422>,  <39.581219, 35.105453, 38.531582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274239, 34.816299, 39.156422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055996, 34.655510, 38.862286>,  <38.925049, 34.559036, 38.685802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055996, 34.655510, 38.862286>,  <39.274239, 34.816299, 39.156422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055996, 34.655510, 38.862286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035845, -0.887846, 0.458742,
		-0.837275, 0.223934, 0.498823,
		-0.545606, -0.401974, -0.735344,
		38.892315, 34.534920, 38.641682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546604, 35.488491, 39.376476>,  <39.274239, 34.816299, 39.156422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546604, 35.488491, 39.376476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.903267, 35.415726, 39.210655>,  <40.117264, 35.372066, 39.111164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.903267, 35.415726, 39.210655>,  <39.546604, 35.488491, 39.376476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903267, 35.415726, 39.210655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344410, 0.866897, 0.360377,
		0.293818, -0.464110, 0.835627,
		0.891657, -0.181913, -0.414554,
		40.170765, 35.361153, 39.086288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779449, 36.249935, 39.333477>,  <39.546604, 35.488491, 39.376476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779449, 36.249935, 39.333477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890171, 36.423573, 39.676392>,  <39.956604, 36.527756, 39.882141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890171, 36.423573, 39.676392>,  <39.779449, 36.249935, 39.333477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890171, 36.423573, 39.676392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551057, 0.802584, -0.228461,
		-0.787219, -0.409176, 0.461368,
		0.276806, 0.434089, 0.857289,
		39.973213, 36.553799, 39.933578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123085, 36.444641, 39.697346>,  <39.779449, 36.249935, 39.333477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123085, 36.444641, 39.697346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413853, 36.680450, 39.838230>,  <39.588314, 36.821934, 39.922760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413853, 36.680450, 39.838230>,  <39.123085, 36.444641, 39.697346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413853, 36.680450, 39.838230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528698, 0.807747, -0.260813,
		-0.438254, 0.003375, 0.898845,
		0.726919, 0.589520, 0.352213,
		39.631927, 36.857307, 39.943893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766937, 36.849140, 40.151585>,  <39.123085, 36.444641, 39.697346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766937, 36.849140, 40.151585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107956, 37.040634, 40.067699>,  <39.312569, 37.155529, 40.017368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107956, 37.040634, 40.067699>,  <38.766937, 36.849140, 40.151585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107956, 37.040634, 40.067699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520356, 0.815054, -0.254788,
		0.048951, 0.326343, 0.943983,
		0.852545, 0.478735, -0.209712,
		39.363720, 37.184254, 40.004787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757259, 37.469292, 40.427502>,  <38.766937, 36.849140, 40.151585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757259, 37.469292, 40.427502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036800, 37.528683, 40.147629>,  <39.204525, 37.564316, 39.979706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036800, 37.528683, 40.147629>,  <38.757259, 37.469292, 40.427502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036800, 37.528683, 40.147629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510521, 0.788685, -0.342555,
		0.500970, 0.596599, 0.626975,
		0.698854, 0.148474, -0.699684,
		39.246456, 37.573223, 39.937725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772697, 38.189220, 40.433678>,  <38.757259, 37.469292, 40.427502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772697, 38.189220, 40.433678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950027, 38.064442, 40.097546>,  <39.056427, 37.989574, 39.895866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950027, 38.064442, 40.097546>,  <38.772697, 38.189220, 40.433678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950027, 38.064442, 40.097546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410533, 0.762719, -0.499723,
		0.796820, 0.566523, 0.210070,
		0.443329, -0.311949, -0.840326,
		39.083027, 37.970856, 39.845448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123791, 38.769043, 40.105190>,  <38.772697, 38.189220, 40.433678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123791, 38.769043, 40.105190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060513, 38.493599, 39.822124>,  <39.022545, 38.328331, 39.652287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060513, 38.493599, 39.822124>,  <39.123791, 38.769043, 40.105190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060513, 38.493599, 39.822124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407550, 0.698329, -0.588422,
		0.899377, 0.195325, -0.391113,
		-0.158192, -0.688611, -0.707665,
		39.013054, 38.287014, 39.609825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057713, 39.152920, 39.494263>,  <39.123791, 38.769043, 40.105190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057713, 39.152920, 39.494263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907059, 38.810963, 39.351547>,  <38.816666, 38.605789, 39.265919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907059, 38.810963, 39.351547>,  <39.057713, 39.152920, 39.494263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907059, 38.810963, 39.351547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475807, 0.508990, -0.717312,
		0.794828, -0.100406, -0.598471,
		-0.376638, -0.854896, -0.356786,
		38.794067, 38.554493, 39.244511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057945, 39.197334, 38.801697>,  <39.057713, 39.152920, 39.494263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057945, 39.197334, 38.801697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775753, 38.917370, 38.846287>,  <38.606438, 38.749390, 38.873039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775753, 38.917370, 38.846287>,  <39.057945, 39.197334, 38.801697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775753, 38.917370, 38.846287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611838, 0.522064, -0.594225,
		0.357706, -0.487418, -0.796536,
		-0.705479, -0.699909, 0.111475,
		38.564110, 38.707397, 38.879730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795822, 39.098881, 38.251984>,  <39.057945, 39.197334, 38.801697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795822, 39.098881, 38.251984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504501, 38.913956, 38.454308>,  <38.329708, 38.803001, 38.575703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504501, 38.913956, 38.454308>,  <38.795822, 39.098881, 38.251984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504501, 38.913956, 38.454308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683342, 0.434875, -0.586453,
		0.051163, -0.772755, -0.632639,
		-0.728303, -0.462313, 0.505807,
		38.286011, 38.775261, 38.606049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361530, 38.763863, 37.750080>,  <38.795822, 39.098881, 38.251984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361530, 38.763863, 37.750080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120064, 38.814964, 38.064854>,  <37.975185, 38.845627, 38.253719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120064, 38.814964, 38.064854>,  <38.361530, 38.763863, 37.750080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120064, 38.814964, 38.064854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702644, 0.381111, -0.600870,
		-0.376674, -0.915660, -0.140297,
		-0.603662, 0.127754, 0.786938,
		37.938965, 38.853291, 38.300934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716557, 38.416313, 37.624176>,  <38.361530, 38.763863, 37.750080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716557, 38.416313, 37.624176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655193, 38.709061, 37.889759>,  <37.618374, 38.884708, 38.049110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655193, 38.709061, 37.889759>,  <37.716557, 38.416313, 37.624176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655193, 38.709061, 37.889759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647083, 0.433408, -0.627249,
		-0.746826, -0.525861, 0.407089,
		-0.153410, 0.731866, 0.663956,
		37.609169, 38.928619, 38.088947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006580, 38.487404, 37.629738>,  <37.716557, 38.416313, 37.624176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006580, 38.487404, 37.629738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133186, 38.837505, 37.776024>,  <37.209148, 39.047565, 37.863796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133186, 38.837505, 37.776024>,  <37.006580, 38.487404, 37.629738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133186, 38.837505, 37.776024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560567, 0.483597, -0.672234,
		-0.765234, 0.007766, 0.643706,
		0.316515, 0.875256, 0.365711,
		37.228142, 39.100082, 37.885738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388287, 38.912560, 37.494682>,  <37.006580, 38.487404, 37.629738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388287, 38.912560, 37.494682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.692245, 39.164467, 37.559113>,  <36.874622, 39.315613, 37.597771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.692245, 39.164467, 37.559113>,  <36.388287, 38.912560, 37.494682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692245, 39.164467, 37.559113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385335, 0.635964, -0.668630,
		-0.523519, 0.446024, 0.725941,
		0.759897, 0.629771, 0.161071,
		36.920216, 39.353397, 37.607433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102402, 39.524120, 37.622211>,  <36.388287, 38.912560, 37.494682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102402, 39.524120, 37.622211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474449, 39.600983, 37.497017>,  <36.697678, 39.647099, 37.421902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474449, 39.600983, 37.497017>,  <36.102402, 39.524120, 37.622211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474449, 39.600983, 37.497017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351383, 0.713488, -0.606189,
		0.106828, 0.673804, 0.731147,
		0.930117, 0.192155, -0.312984,
		36.753483, 39.658630, 37.403122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673756, 40.002361, 38.044804>,  <36.102402, 39.524120, 37.622211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673756, 40.002361, 38.044804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.302689, 39.858555, 38.085155>,  <35.080048, 39.772270, 38.109367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.302689, 39.858555, 38.085155>,  <35.673756, 40.002361, 38.044804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302689, 39.858555, 38.085155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289420, -0.521594, 0.802606,
		-0.235934, 0.773749, 0.587918,
		-0.927670, -0.359517, 0.100877,
		35.024387, 39.750698, 38.115417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437714, 40.090462, 38.809696>,  <35.673756, 40.002361, 38.044804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437714, 40.090462, 38.809696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.229034, 39.780132, 38.667755>,  <35.103825, 39.593933, 38.582592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.229034, 39.780132, 38.667755>,  <35.437714, 40.090462, 38.809696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229034, 39.780132, 38.667755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260693, -0.541022, 0.799583,
		-0.812322, 0.324636, 0.484505,
		-0.521701, -0.775826, -0.354854,
		35.072525, 39.547386, 38.561298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107273, 39.675747, 39.444588>,  <35.437714, 40.090462, 38.809696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107273, 39.675747, 39.444588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.070023, 39.440987, 39.122875>,  <35.047672, 39.300129, 38.929848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.070023, 39.440987, 39.122875>,  <35.107273, 39.675747, 39.444588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070023, 39.440987, 39.122875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174701, -0.804894, 0.567120,
		-0.980208, -0.087698, 0.177486,
		-0.093122, -0.586902, -0.804285,
		35.042088, 39.264915, 38.881588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611847, 39.121002, 39.532520>,  <35.107273, 39.675747, 39.444588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611847, 39.121002, 39.532520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.832977, 38.974747, 39.233002>,  <34.965656, 38.886993, 39.053291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.832977, 38.974747, 39.233002>,  <34.611847, 39.121002, 39.532520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832977, 38.974747, 39.233002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106196, -0.860350, 0.498518,
		-0.826500, -0.355114, -0.436797,
		0.552829, -0.365640, -0.748791,
		34.998825, 38.865055, 39.008366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471237, 38.356068, 39.626026>,  <34.611847, 39.121002, 39.532520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471237, 38.356068, 39.626026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.768684, 38.371296, 39.359020>,  <34.947155, 38.380432, 39.198814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.768684, 38.371296, 39.359020>,  <34.471237, 38.356068, 39.626026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768684, 38.371296, 39.359020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290463, -0.917638, 0.271242,
		-0.602212, -0.395590, -0.693433,
		0.743621, 0.038072, -0.667517,
		34.991772, 38.382717, 39.158764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433636, 37.779930, 39.235218>,  <34.471237, 38.356068, 39.626026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433636, 37.779930, 39.235218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.818634, 37.878132, 39.189053>,  <35.049633, 37.937054, 39.161354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.818634, 37.878132, 39.189053>,  <34.433636, 37.779930, 39.235218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818634, 37.878132, 39.189053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262276, -0.950838, 0.164674,
		-0.069316, -0.188770, -0.979572,
		0.962500, 0.245504, -0.115418,
		35.107384, 37.951782, 39.154427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880535, 37.229160, 38.752224>,  <34.433636, 37.779930, 39.235218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880535, 37.229160, 38.752224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.118973, 37.426304, 39.005764>,  <35.262035, 37.544590, 39.157887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.118973, 37.426304, 39.005764>,  <34.880535, 37.229160, 38.752224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118973, 37.426304, 39.005764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477781, -0.852190, 0.213304,
		0.645286, 0.175690, -0.743464,
		0.596097, 0.492855, 0.633847,
		35.297802, 37.574162, 39.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511066, 36.958004, 38.657871>,  <34.880535, 37.229160, 38.752224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511066, 36.958004, 38.657871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.583164, 37.140999, 39.006176>,  <35.626423, 37.250793, 39.215157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.583164, 37.140999, 39.006176>,  <35.511066, 36.958004, 38.657871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583164, 37.140999, 39.006176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636607, -0.729102, 0.251280,
		0.749828, 0.509038, -0.422656,
		0.180249, 0.457483, 0.870758,
		35.637238, 37.278244, 39.267403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290894, 36.939831, 38.760574>,  <35.511066, 36.958004, 38.657871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290894, 36.939831, 38.760574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.143044, 36.970715, 39.130962>,  <36.054333, 36.989246, 39.353195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.143044, 36.970715, 39.130962>,  <36.290894, 36.939831, 38.760574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143044, 36.970715, 39.130962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605631, -0.735757, 0.303105,
		0.704689, 0.672830, 0.225194,
		-0.369626, 0.077210, 0.925967,
		36.032154, 36.993877, 39.408752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827263, 36.880962, 39.251232>,  <36.290894, 36.939831, 38.760574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827263, 36.880962, 39.251232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.501568, 36.796612, 39.467587>,  <36.306152, 36.746002, 39.597397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.501568, 36.796612, 39.467587>,  <36.827263, 36.880962, 39.251232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501568, 36.796612, 39.467587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479488, -0.769533, 0.421794,
		0.327283, 0.602786, 0.727692,
		-0.814234, -0.210874, 0.540884,
		36.257298, 36.733349, 39.629852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120144, 36.741585, 39.889030>,  <36.827263, 36.880962, 39.251232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120144, 36.741585, 39.889030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.747391, 36.606503, 39.942020>,  <36.523739, 36.525455, 39.973816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.747391, 36.606503, 39.942020>,  <37.120144, 36.741585, 39.889030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747391, 36.606503, 39.942020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342324, -0.697814, 0.629182,
		-0.120031, 0.631675, 0.765885,
		-0.931883, -0.337702, 0.132478,
		36.467827, 36.505192, 39.981762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955505, 36.726772, 40.636280>,  <37.120144, 36.741585, 39.889030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955505, 36.726772, 40.636280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.722599, 36.470470, 40.436119>,  <36.582855, 36.316689, 40.316021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.722599, 36.470470, 40.436119>,  <36.955505, 36.726772, 40.636280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722599, 36.470470, 40.436119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305970, -0.742959, 0.595310,
		-0.753224, 0.193522, 0.628651,
		-0.582268, -0.640751, -0.500402,
		36.547920, 36.278244, 40.285999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.013702, 42.219707, 35.645752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768467, 41.920250, 35.544834>,  <33.621326, 41.740574, 35.484283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768467, 41.920250, 35.544834>,  <34.013702, 42.219707, 35.645752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768467, 41.920250, 35.544834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263190, -0.494658, 0.828278,
		-0.744886, 0.441406, 0.500305,
		-0.613087, -0.748648, -0.252290,
		33.584541, 41.695656, 35.469147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615822, 42.068279, 36.240307>,  <34.013702, 42.219707, 35.645752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615822, 42.068279, 36.240307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601891, 41.730324, 36.026783>,  <33.593533, 41.527550, 35.898666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601891, 41.730324, 36.026783>,  <33.615822, 42.068279, 36.240307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601891, 41.730324, 36.026783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273517, -0.521801, 0.808030,
		-0.961237, -0.117868, 0.249261,
		-0.034824, -0.844885, -0.533814,
		33.591442, 41.476860, 35.866638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170914, 41.599056, 36.622105>,  <33.615822, 42.068279, 36.240307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170914, 41.599056, 36.622105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352341, 41.339691, 36.377537>,  <33.461197, 41.184071, 36.230797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352341, 41.339691, 36.377537>,  <33.170914, 41.599056, 36.622105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352341, 41.339691, 36.377537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332653, -0.513291, 0.791122,
		-0.826813, -0.562217, -0.017113,
		0.453566, -0.648417, -0.611418,
		33.488411, 41.145164, 36.194111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052322, 40.969818, 37.007339>,  <33.170914, 41.599056, 36.622105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052322, 40.969818, 37.007339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319016, 40.875050, 36.724686>,  <33.479031, 40.818188, 36.555092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319016, 40.875050, 36.724686>,  <33.052322, 40.969818, 37.007339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319016, 40.875050, 36.724686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398314, -0.688093, 0.606526,
		-0.629934, -0.685853, -0.364403,
		0.666731, -0.236924, -0.706638,
		33.519035, 40.803970, 36.512695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102451, 40.231518, 36.994366>,  <33.052322, 40.969818, 37.007339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102451, 40.231518, 36.994366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448212, 40.364300, 36.843307>,  <33.655670, 40.443970, 36.752674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448212, 40.364300, 36.843307>,  <33.102451, 40.231518, 36.994366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448212, 40.364300, 36.843307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502751, -0.580854, 0.640196,
		-0.006841, -0.743248, -0.668981,
		0.864404, 0.331951, -0.377642,
		33.707535, 40.463886, 36.730015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478333, 39.638794, 36.857964>,  <33.102451, 40.231518, 36.994366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478333, 39.638794, 36.857964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734249, 39.943272, 36.900387>,  <33.887798, 40.125957, 36.925842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734249, 39.943272, 36.900387>,  <33.478333, 39.638794, 36.857964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734249, 39.943272, 36.900387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556931, -0.554294, 0.618535,
		0.529614, -0.336666, -0.778566,
		0.639794, 0.761193, 0.106062,
		33.926186, 40.171631, 36.932205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245907, 39.373562, 36.814449>,  <33.478333, 39.638794, 36.857964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245907, 39.373562, 36.814449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271645, 39.731750, 36.990627>,  <34.287086, 39.946663, 37.096333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271645, 39.731750, 36.990627>,  <34.245907, 39.373562, 36.814449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271645, 39.731750, 36.990627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564099, -0.396719, 0.724159,
		0.823196, 0.201859, -0.530661,
		0.064346, 0.895470, 0.440446,
		34.290947, 40.000393, 37.122761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945091, 39.500217, 36.842415>,  <34.245907, 39.373562, 36.814449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945091, 39.500217, 36.842415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765713, 39.721039, 37.123592>,  <34.658085, 39.853531, 37.292297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765713, 39.721039, 37.123592>,  <34.945091, 39.500217, 36.842415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765713, 39.721039, 37.123592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657260, -0.329302, 0.677916,
		0.605730, 0.766024, -0.215172,
		-0.448443, 0.552057, 0.702945,
		34.631180, 39.886658, 37.334476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478054, 39.770885, 37.292454>,  <34.945091, 39.500217, 36.842415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478054, 39.770885, 37.292454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154400, 39.790737, 37.526661>,  <34.960205, 39.802647, 37.667187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154400, 39.790737, 37.526661>,  <35.478054, 39.770885, 37.292454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154400, 39.790737, 37.526661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517157, -0.412974, 0.749667,
		0.279008, 0.909390, 0.308488,
		-0.809137, 0.049627, 0.585521,
		34.911659, 39.805626, 37.702316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133312, 40.288776, 37.466469>,  <35.478054, 39.770885, 37.292454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133312, 40.288776, 37.466469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435406, 40.103024, 37.281441>,  <36.616661, 39.991570, 37.170425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435406, 40.103024, 37.281441>,  <36.133312, 40.288776, 37.466469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435406, 40.103024, 37.281441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107459, 0.608446, -0.786286,
		0.646588, 0.643536, 0.409616,
		0.755233, -0.464386, -0.462568,
		36.661976, 39.963707, 37.142670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450241, 40.844589, 37.190334>,  <36.133312, 40.288776, 37.466469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450241, 40.844589, 37.190334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586864, 40.527252, 36.988762>,  <36.668839, 40.336849, 36.867817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586864, 40.527252, 36.988762>,  <36.450241, 40.844589, 37.190334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586864, 40.527252, 36.988762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048478, 0.550335, -0.833536,
		0.938610, 0.260271, 0.226431,
		0.341558, -0.793342, -0.503932,
		36.689331, 40.289249, 36.837582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804245, 41.182007, 36.760674>,  <36.450241, 40.844589, 37.190334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804245, 41.182007, 36.760674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733784, 40.816807, 36.613483>,  <36.691509, 40.597687, 36.525169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733784, 40.816807, 36.613483>,  <36.804245, 41.182007, 36.760674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733784, 40.816807, 36.613483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077104, 0.385473, -0.919492,
		0.981339, -0.133596, -0.138297,
		-0.176150, -0.912996, -0.367979,
		36.680939, 40.542908, 36.503090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361092, 41.017200, 36.264503>,  <36.804245, 41.182007, 36.760674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361092, 41.017200, 36.264503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055565, 40.779064, 36.164780>,  <36.872250, 40.636185, 36.104946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055565, 40.779064, 36.164780>,  <37.361092, 41.017200, 36.264503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055565, 40.779064, 36.164780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045747, 0.435230, -0.899156,
		0.643809, -0.675385, -0.359671,
		-0.763817, -0.595339, -0.249309,
		36.826420, 40.600464, 36.089989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489918, 40.655731, 35.593151>,  <37.361092, 41.017200, 36.264503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489918, 40.655731, 35.593151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093700, 40.634491, 35.643768>,  <36.855972, 40.621746, 35.674137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093700, 40.634491, 35.643768>,  <37.489918, 40.655731, 35.593151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093700, 40.634491, 35.643768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137125, 0.346667, -0.927911,
		0.005403, -0.936484, -0.350669,
		-0.990539, -0.053098, 0.126542,
		36.796539, 40.618561, 35.681732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314453, 40.509045, 34.932087>,  <37.489918, 40.655731, 35.593151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314453, 40.509045, 34.932087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961349, 40.615131, 35.087212>,  <36.749489, 40.678783, 35.180286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961349, 40.615131, 35.087212>,  <37.314453, 40.509045, 34.932087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961349, 40.615131, 35.087212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349649, 0.180495, -0.919330,
		-0.313823, -0.947143, -0.066600,
		-0.882758, 0.265220, 0.387811,
		36.696522, 40.694698, 35.203556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893265, 40.450245, 34.331055>,  <37.314453, 40.509045, 34.932087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893265, 40.450245, 34.331055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690392, 40.680508, 34.587612>,  <36.568668, 40.818665, 34.741547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690392, 40.680508, 34.587612>,  <36.893265, 40.450245, 34.331055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690392, 40.680508, 34.587612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450616, 0.457259, -0.766720,
		-0.734650, -0.677890, 0.027486,
		-0.507183, 0.575656, 0.641393,
		36.538235, 40.853203, 34.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251057, 40.401634, 34.169044>,  <36.893265, 40.450245, 34.331055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251057, 40.401634, 34.169044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280014, 40.751801, 34.360210>,  <36.297390, 40.961899, 34.474911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280014, 40.751801, 34.360210>,  <36.251057, 40.401634, 34.169044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280014, 40.751801, 34.360210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472315, 0.452129, -0.756636,
		-0.878452, -0.170952, 0.446203,
		0.072393, 0.875417, 0.477917,
		36.301731, 41.014427, 34.503586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669960, 40.728279, 33.929848>,  <36.251057, 40.401634, 34.169044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669960, 40.728279, 33.929848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842411, 41.047104, 34.098995>,  <35.945881, 41.238400, 34.200485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842411, 41.047104, 34.098995>,  <35.669960, 40.728279, 33.929848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842411, 41.047104, 34.098995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501793, 0.601306, -0.621800,
		-0.749886, 0.055885, 0.659202,
		0.431132, 0.797062, 0.422869,
		35.971752, 41.286221, 34.225857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114716, 41.275032, 34.125046>,  <35.669960, 40.728279, 33.929848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114716, 41.275032, 34.125046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469307, 41.454254, 34.078739>,  <35.682060, 41.561787, 34.050953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469307, 41.454254, 34.078739>,  <35.114716, 41.275032, 34.125046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469307, 41.454254, 34.078739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439873, 0.738101, -0.511584,
		-0.143770, 0.504432, 0.851398,
		0.886477, 0.448057, -0.115770,
		35.735249, 41.588673, 34.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024471, 41.971619, 34.076958>,  <35.114716, 41.275032, 34.125046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024471, 41.971619, 34.076958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397110, 41.944847, 33.934048>,  <35.620693, 41.928783, 33.848301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397110, 41.944847, 33.934048>,  <35.024471, 41.971619, 34.076958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397110, 41.944847, 33.934048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202017, 0.721782, -0.661981,
		0.302182, 0.688876, 0.658890,
		0.931598, -0.066932, -0.357274,
		35.676590, 41.924767, 33.826866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219158, 42.664654, 33.930767>,  <35.024471, 41.971619, 34.076958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219158, 42.664654, 33.930767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492363, 42.457272, 33.724968>,  <35.656284, 42.332844, 33.601490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492363, 42.457272, 33.724968>,  <35.219158, 42.664654, 33.930767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492363, 42.457272, 33.724968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048418, 0.670709, -0.740139,
		0.728805, 0.530431, 0.432997,
		0.683007, -0.518452, -0.514498,
		35.697266, 42.301735, 33.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770962, 43.107338, 33.843987>,  <35.219158, 42.664654, 33.930767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770962, 43.107338, 33.843987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785297, 42.819950, 33.566135>,  <35.793900, 42.647518, 33.399426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785297, 42.819950, 33.566135>,  <35.770962, 43.107338, 33.843987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785297, 42.819950, 33.566135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109474, 0.693717, -0.711880,
		0.993343, -0.050529, 0.103518,
		0.035842, -0.718473, -0.694631,
		35.796051, 42.604408, 33.357746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286457, 43.309372, 33.523430>,  <35.770962, 43.107338, 33.843987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286457, 43.309372, 33.523430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086498, 43.070305, 33.272705>,  <35.966522, 42.926865, 33.122272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086498, 43.070305, 33.272705>,  <36.286457, 43.309372, 33.523430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086498, 43.070305, 33.272705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084502, 0.686616, -0.722093,
		0.861951, -0.413941, -0.292735,
		-0.499900, -0.597672, -0.626808,
		35.936527, 42.891003, 33.084663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.735443, 36.515980, 29.930059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.974527, 36.762054, 30.135698>,  <30.117977, 36.909698, 30.259081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.974527, 36.762054, 30.135698>,  <29.735443, 36.515980, 29.930059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974527, 36.762054, 30.135698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480463, -0.788199, 0.384575,
		0.641794, 0.017140, -0.766685,
		0.597709, 0.615182, 0.514097,
		30.153839, 36.946609, 30.289927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407631, 36.166023, 29.827681>,  <29.735443, 36.515980, 29.930059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407631, 36.166023, 29.827681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.412533, 36.402969, 30.149912>,  <30.415474, 36.545135, 30.343250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.412533, 36.402969, 30.149912>,  <30.407631, 36.166023, 29.827681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412533, 36.402969, 30.149912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583391, -0.658542, 0.475371,
		0.812099, 0.464142, -0.353649,
		0.012253, 0.592364, 0.805577,
		30.416208, 36.580677, 30.391584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141220, 36.543369, 29.976908>,  <30.407631, 36.166023, 29.827681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141220, 36.543369, 29.976908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927006, 36.501122, 30.312061>,  <30.798477, 36.475773, 30.513153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927006, 36.501122, 30.312061>,  <31.141220, 36.543369, 29.976908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927006, 36.501122, 30.312061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756270, -0.501528, 0.420149,
		0.375845, 0.858670, 0.348463,
		-0.535534, -0.105621, 0.837883,
		30.766346, 36.469437, 30.563427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619617, 36.684059, 30.478024>,  <31.141220, 36.543369, 29.976908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619617, 36.684059, 30.478024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316799, 36.507656, 30.670853>,  <31.135109, 36.401814, 30.786551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316799, 36.507656, 30.670853>,  <31.619617, 36.684059, 30.478024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316799, 36.507656, 30.670853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653358, -0.507816, 0.561468,
		-0.002808, 0.740023, 0.672576,
		-0.757043, -0.441010, 0.482074,
		31.089685, 36.375355, 30.815475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941555, 36.640293, 31.074684>,  <31.619617, 36.684059, 30.478024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941555, 36.640293, 31.074684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.605230, 36.427826, 31.116451>,  <31.403437, 36.300346, 31.141512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.605230, 36.427826, 31.116451>,  <31.941555, 36.640293, 31.074684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605230, 36.427826, 31.116451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474872, -0.631130, 0.613328,
		-0.259876, 0.565278, 0.782895,
		-0.840810, -0.531164, 0.104419,
		31.352987, 36.268478, 31.147778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596601, 36.733795, 31.772827>,  <31.941555, 36.640293, 31.074684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596601, 36.733795, 31.772827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.493120, 36.372959, 31.634665>,  <31.431032, 36.156456, 31.551767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.493120, 36.372959, 31.634665>,  <31.596601, 36.733795, 31.772827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493120, 36.372959, 31.634665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422480, -0.427235, 0.799363,
		-0.868667, 0.060870, 0.491642,
		-0.258704, -0.902089, -0.345408,
		31.415508, 36.102333, 31.531042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449039, 36.407825, 32.428730>,  <31.596601, 36.733795, 31.772827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449039, 36.407825, 32.428730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.467340, 36.110802, 32.161442>,  <31.478321, 35.932587, 32.001068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.467340, 36.110802, 32.161442>,  <31.449039, 36.407825, 32.428730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467340, 36.110802, 32.161442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528166, -0.549795, 0.647121,
		-0.847907, -0.382539, 0.367038,
		0.045753, -0.742556, -0.668219,
		31.481066, 35.888035, 31.960976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280500, 35.773491, 32.822731>,  <31.449039, 36.407825, 32.428730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280500, 35.773491, 32.822731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497364, 35.657833, 32.507145>,  <31.627481, 35.588440, 32.317795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497364, 35.657833, 32.507145>,  <31.280500, 35.773491, 32.822731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497364, 35.657833, 32.507145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577620, -0.553668, 0.599839,
		-0.610262, -0.780928, -0.133161,
		0.542158, -0.289142, -0.788962,
		31.660011, 35.571091, 32.270458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266939, 35.067562, 32.738426>,  <31.280500, 35.773491, 32.822731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266939, 35.067562, 32.738426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.600435, 35.208633, 32.568489>,  <31.800533, 35.293278, 32.466526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.600435, 35.208633, 32.568489>,  <31.266939, 35.067562, 32.738426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600435, 35.208633, 32.568489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543183, -0.385753, 0.745753,
		0.099127, -0.852533, -0.513188,
		0.833742, 0.352679, -0.424843,
		31.850557, 35.314438, 32.441036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684191, 34.415993, 32.663738>,  <31.266939, 35.067562, 32.738426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684191, 34.415993, 32.663738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.939302, 34.723690, 32.648243>,  <32.092369, 34.908310, 32.638947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.939302, 34.723690, 32.648243>,  <31.684191, 34.415993, 32.663738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939302, 34.723690, 32.648243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603425, -0.467770, 0.645809,
		0.478664, -0.435260, -0.762515,
		0.637777, 0.769246, -0.038743,
		32.130634, 34.954464, 32.636620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342487, 34.112099, 32.447823>,  <31.684191, 34.415993, 32.663738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342487, 34.112099, 32.447823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.441124, 34.469864, 32.597073>,  <32.500305, 34.684525, 32.686623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.441124, 34.469864, 32.597073>,  <32.342487, 34.112099, 32.447823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441124, 34.469864, 32.597073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735168, -0.423500, 0.529316,
		0.631445, 0.143784, -0.761974,
		0.246589, 0.894412, 0.373123,
		32.515102, 34.738186, 32.709011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046848, 34.066933, 32.498363>,  <32.342487, 34.112099, 32.447823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046848, 34.066933, 32.498363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.923996, 34.338451, 32.765167>,  <32.850285, 34.501362, 32.925251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.923996, 34.338451, 32.765167>,  <33.046848, 34.066933, 32.498363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923996, 34.338451, 32.765167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731793, -0.279623, 0.621523,
		0.608401, 0.679002, -0.410859,
		-0.307129, 0.678799, 0.667011,
		32.831856, 34.542091, 32.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668121, 34.198906, 32.891495>,  <33.046848, 34.066933, 32.498363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668121, 34.198906, 32.891495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370438, 34.356953, 33.106915>,  <33.191826, 34.451782, 33.236168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370438, 34.356953, 33.106915>,  <33.668121, 34.198906, 32.891495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370438, 34.356953, 33.106915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467587, -0.267588, 0.842472,
		0.476986, 0.878793, 0.014388,
		-0.744209, 0.395120, 0.538548,
		33.147175, 34.475487, 33.268478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932194, 34.733341, 33.314262>,  <33.668121, 34.198906, 32.891495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932194, 34.733341, 33.314262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615887, 34.542835, 33.468075>,  <33.426102, 34.428532, 33.560364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615887, 34.542835, 33.468075>,  <33.932194, 34.733341, 33.314262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615887, 34.542835, 33.468075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546338, -0.265841, 0.794256,
		-0.276049, 0.838155, 0.470418,
		-0.790766, -0.476261, 0.384531,
		33.378658, 34.399956, 33.583435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422066, 35.182995, 33.780788>,  <33.932194, 34.733341, 33.314262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422066, 35.182995, 33.780788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778671, 35.129097, 33.607792>,  <34.992634, 35.096760, 33.503994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778671, 35.129097, 33.607792>,  <34.422066, 35.182995, 33.780788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778671, 35.129097, 33.607792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183671, 0.765225, -0.617006,
		0.414093, 0.629504, 0.657458,
		0.891511, -0.134742, -0.432496,
		35.046124, 35.088673, 33.478043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642521, 35.856712, 33.718712>,  <34.422066, 35.182995, 33.780788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642521, 35.856712, 33.718712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862350, 35.625851, 33.477097>,  <34.994247, 35.487335, 33.332127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862350, 35.625851, 33.477097>,  <34.642521, 35.856712, 33.718712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862350, 35.625851, 33.477097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159923, 0.636969, -0.754119,
		0.819998, 0.511042, 0.257759,
		0.549571, -0.577154, -0.604041,
		35.027222, 35.452705, 33.295883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161026, 36.301750, 33.276825>,  <34.642521, 35.856712, 33.718712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161026, 36.301750, 33.276825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126610, 35.966366, 33.061577>,  <35.105961, 35.765133, 32.932426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126610, 35.966366, 33.061577>,  <35.161026, 36.301750, 33.276825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126610, 35.966366, 33.061577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284219, 0.538337, -0.793355,
		0.954891, 0.084686, -0.284625,
		-0.086038, -0.838464, -0.538122,
		35.100800, 35.714828, 32.900139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441601, 36.538319, 32.711834>,  <35.161026, 36.301750, 33.276825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441601, 36.538319, 32.711834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210316, 36.222473, 32.629688>,  <35.071545, 36.032967, 32.580402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210316, 36.222473, 32.629688>,  <35.441601, 36.538319, 32.711834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210316, 36.222473, 32.629688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336186, 0.459928, -0.821855,
		0.743404, -0.406166, -0.531394,
		-0.578213, -0.789617, -0.205365,
		35.036850, 35.985588, 32.568077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584213, 36.402409, 32.034466>,  <35.441601, 36.538319, 32.711834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584213, 36.402409, 32.034466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244274, 36.195007, 32.072224>,  <35.040310, 36.070568, 32.094879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244274, 36.195007, 32.072224>,  <35.584213, 36.402409, 32.034466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244274, 36.195007, 32.072224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342270, 0.406814, -0.846967,
		0.400729, -0.752119, -0.523196,
		-0.849863, -0.518478, 0.094406,
		34.989319, 36.039455, 32.100540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359707, 36.151482, 31.339445>,  <35.584213, 36.402409, 32.034466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359707, 36.151482, 31.339445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.022663, 36.131874, 31.553961>,  <34.820438, 36.120110, 31.682671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.022663, 36.131874, 31.553961>,  <35.359707, 36.151482, 31.339445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022663, 36.131874, 31.553961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501787, 0.432974, -0.748828,
		-0.195493, -0.900073, -0.389425,
		-0.842610, -0.049018, 0.536288,
		34.769878, 36.117168, 31.714848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898293, 35.922291, 30.905931>,  <35.359707, 36.151482, 31.339445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898293, 35.922291, 30.905931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701096, 36.129063, 31.185860>,  <34.582779, 36.253124, 31.353817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701096, 36.129063, 31.185860>,  <34.898293, 35.922291, 30.905931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701096, 36.129063, 31.185860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442053, 0.543978, -0.713216,
		-0.749367, -0.660965, -0.039667,
		-0.492989, 0.516926, 0.699821,
		34.553200, 36.284142, 31.395805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226986, 35.951683, 30.648869>,  <34.898293, 35.922291, 30.905931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226986, 35.951683, 30.648869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245556, 36.245243, 30.919937>,  <34.256699, 36.421379, 31.082579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245556, 36.245243, 30.919937>,  <34.226986, 35.951683, 30.648869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245556, 36.245243, 30.919937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382367, 0.639790, -0.666682,
		-0.922844, -0.228167, 0.310321,
		0.046425, 0.733900, 0.677670,
		34.259483, 36.465412, 31.123238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688457, 36.300732, 30.558628>,  <34.226986, 35.951683, 30.648869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688457, 36.300732, 30.558628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888100, 36.577919, 30.766743>,  <34.007885, 36.744232, 30.891611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888100, 36.577919, 30.766743>,  <33.688457, 36.300732, 30.558628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888100, 36.577919, 30.766743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358280, 0.711715, -0.604233,
		-0.789006, 0.115168, 0.603495,
		0.499105, 0.692964, 0.520285,
		34.037830, 36.785809, 30.922829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169964, 36.879700, 30.760572>,  <33.688457, 36.300732, 30.558628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169964, 36.879700, 30.760572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524345, 37.062641, 30.791332>,  <33.736973, 37.172405, 30.809788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524345, 37.062641, 30.791332>,  <33.169964, 36.879700, 30.760572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524345, 37.062641, 30.791332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434000, 0.876055, -0.210168,
		-0.163490, 0.152825, 0.974636,
		0.885954, 0.457353, 0.076900,
		33.790131, 37.199848, 30.814402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086407, 37.446426, 31.202503>,  <33.169964, 36.879700, 30.760572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086407, 37.446426, 31.202503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417744, 37.550220, 31.003904>,  <33.616547, 37.612495, 30.884745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417744, 37.550220, 31.003904>,  <33.086407, 37.446426, 31.202503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417744, 37.550220, 31.003904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451617, 0.833716, -0.317742,
		0.331487, 0.487426, 0.807794,
		0.828347, 0.259486, -0.496496,
		33.666248, 37.628067, 30.854956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197163, 38.001083, 31.527452>,  <33.086407, 37.446426, 31.202503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197163, 38.001083, 31.527452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.404644, 38.027649, 31.186504>,  <33.529133, 38.043587, 30.981936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.404644, 38.027649, 31.186504>,  <33.197163, 38.001083, 31.527452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404644, 38.027649, 31.186504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451027, 0.868216, -0.206822,
		0.726306, 0.491722, 0.480301,
		0.518704, 0.066413, -0.852371,
		33.560257, 38.047573, 30.930794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242016, 38.658012, 31.354801>,  <33.197163, 38.001083, 31.527452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242016, 38.658012, 31.354801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.340698, 38.497604, 31.001911>,  <33.399910, 38.401360, 30.790178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.340698, 38.497604, 31.001911>,  <33.242016, 38.658012, 31.354801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340698, 38.497604, 31.001911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375807, 0.799533, -0.468525,
		0.893254, 0.447135, 0.046547,
		0.246710, -0.401019, -0.882223,
		33.414711, 38.377300, 30.737244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687298, 39.213463, 31.046839>,  <33.242016, 38.658012, 31.354801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687298, 39.213463, 31.046839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.550014, 38.960838, 30.768749>,  <33.467644, 38.809261, 30.601896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.550014, 38.960838, 30.768749>,  <33.687298, 39.213463, 31.046839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550014, 38.960838, 30.768749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298162, 0.775155, -0.556987,
		0.890678, 0.016126, -0.454349,
		-0.343209, -0.631565, -0.695222,
		33.447052, 38.771370, 30.560183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394878, 39.487980, 31.082951>,  <33.687298, 39.213463, 31.046839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394878, 39.487980, 31.082951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673862, 39.774372, 31.095026>,  <34.841255, 39.946209, 31.102270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673862, 39.774372, 31.095026>,  <34.394878, 39.487980, 31.082951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673862, 39.774372, 31.095026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655721, -0.654619, 0.376169,
		0.289092, -0.242570, -0.926059,
		0.697464, 0.715984, 0.030187,
		34.883102, 39.989166, 31.104082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039268, 39.174660, 30.815178>,  <34.394878, 39.487980, 31.082951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039268, 39.174660, 30.815178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136292, 39.497551, 31.030416>,  <35.194504, 39.691288, 31.159559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136292, 39.497551, 31.030416>,  <35.039268, 39.174660, 30.815178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136292, 39.497551, 31.030416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587875, -0.563523, 0.580383,
		0.771732, 0.175558, -0.611236,
		0.242554, 0.807231, 0.538095,
		35.209057, 39.739719, 31.191845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834091, 39.250053, 30.866062>,  <35.039268, 39.174660, 30.815178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834091, 39.250053, 30.866062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.683548, 39.462036, 31.170034>,  <35.593220, 39.589226, 31.352419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.683548, 39.462036, 31.170034>,  <35.834091, 39.250053, 30.866062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683548, 39.462036, 31.170034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728838, -0.337025, 0.595994,
		0.571967, 0.778178, -0.259409,
		-0.376362, 0.529956, 0.759933,
		35.570641, 39.621021, 31.398014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473511, 39.573765, 31.171896>,  <35.834091, 39.250053, 30.866062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473511, 39.573765, 31.171896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174809, 39.528175, 31.434002>,  <35.995586, 39.500820, 31.591265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174809, 39.528175, 31.434002>,  <36.473511, 39.573765, 31.171896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174809, 39.528175, 31.434002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662133, -0.220367, 0.716253,
		0.062762, 0.968735, 0.240027,
		-0.746753, -0.113976, 0.655263,
		35.950783, 39.493984, 31.630581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754238, 39.840405, 31.800215>,  <36.473511, 39.573765, 31.171896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754238, 39.840405, 31.800215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.423382, 39.681805, 31.959530>,  <36.224869, 39.586647, 32.055119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.423382, 39.681805, 31.959530>,  <36.754238, 39.840405, 31.800215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423382, 39.681805, 31.959530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481608, -0.134830, 0.865953,
		-0.289648, 0.908080, 0.302480,
		-0.827138, -0.396498, 0.398286,
		36.175240, 39.562855, 32.079014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625931, 40.182850, 32.514816>,  <36.754238, 39.840405, 31.800215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625931, 40.182850, 32.514816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.417873, 39.841217, 32.514912>,  <36.293037, 39.636238, 32.514969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.417873, 39.841217, 32.514912>,  <36.625931, 40.182850, 32.514816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417873, 39.841217, 32.514912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501254, -0.305046, 0.809748,
		-0.691516, 0.421304, 0.586778,
		-0.520145, -0.854078, 0.000236,
		36.261829, 39.584995, 32.514984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365799, 40.028740, 33.278919>,  <36.625931, 40.182850, 32.514816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365799, 40.028740, 33.278919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331306, 39.680130, 33.085835>,  <36.310612, 39.470963, 32.969982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331306, 39.680130, 33.085835>,  <36.365799, 40.028740, 33.278919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331306, 39.680130, 33.085835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427040, -0.470083, 0.772437,
		-0.900112, -0.139531, 0.412710,
		-0.086229, -0.871524, -0.482712,
		36.305439, 39.418674, 32.941021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115681, 39.647255, 33.819725>,  <36.365799, 40.028740, 33.278919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115681, 39.647255, 33.819725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267490, 39.395203, 33.548756>,  <36.358578, 39.243973, 33.386173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267490, 39.395203, 33.548756>,  <36.115681, 39.647255, 33.819725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267490, 39.395203, 33.548756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423439, -0.532711, 0.732747,
		-0.822594, -0.564942, 0.064644,
		0.379523, -0.630126, -0.677423,
		36.381348, 39.206165, 33.345528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944687, 38.987362, 33.915249>,  <36.115681, 39.647255, 33.819725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944687, 38.987362, 33.915249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292839, 38.954399, 33.721073>,  <36.501728, 38.934620, 33.604568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292839, 38.954399, 33.721073>,  <35.944687, 38.987362, 33.915249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292839, 38.954399, 33.721073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325018, -0.644437, 0.692145,
		-0.369873, -0.760204, -0.534119,
		0.870377, -0.082407, -0.485440,
		36.553951, 38.929676, 33.575439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075241, 38.304592, 33.967606>,  <35.944687, 38.987362, 33.915249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075241, 38.304592, 33.967606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428894, 38.455360, 33.857166>,  <36.641087, 38.545822, 33.790901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428894, 38.455360, 33.857166>,  <36.075241, 38.304592, 33.967606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428894, 38.455360, 33.857166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463208, -0.629773, 0.623558,
		0.061154, -0.679202, -0.731399,
		0.884137, 0.376923, -0.276099,
		36.694134, 38.568436, 33.774338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453159, 37.697525, 33.902412>,  <36.075241, 38.304592, 33.967606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453159, 37.697525, 33.902412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733425, 37.981216, 33.933571>,  <36.901585, 38.151432, 33.952267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733425, 37.981216, 33.933571>,  <36.453159, 37.697525, 33.902412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733425, 37.981216, 33.933571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513482, -0.577032, 0.635114,
		0.495390, -0.405002, -0.768480,
		0.700660, 0.709230, 0.077895,
		36.943623, 38.193985, 33.956940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167416, 37.335888, 33.788574>,  <36.453159, 37.697525, 33.902412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167416, 37.335888, 33.788574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215443, 37.683102, 33.981281>,  <37.244259, 37.891430, 34.096905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215443, 37.683102, 33.981281>,  <37.167416, 37.335888, 33.788574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215443, 37.683102, 33.981281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580275, -0.455112, 0.675392,
		0.805522, 0.198466, -0.558342,
		0.120065, 0.868035, 0.481768,
		37.251461, 37.943512, 34.125813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921024, 37.362988, 33.904392>,  <37.167416, 37.335888, 33.788574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921024, 37.362988, 33.904392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774837, 37.618023, 34.175663>,  <37.687126, 37.771042, 34.338425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774837, 37.618023, 34.175663>,  <37.921024, 37.362988, 33.904392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774837, 37.618023, 34.175663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543932, -0.444952, 0.711447,
		0.755363, 0.628889, -0.184189,
		-0.365466, 0.637586, 0.678173,
		37.665199, 37.809299, 34.379116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503445, 37.691910, 34.256004>,  <37.921024, 37.362988, 33.904392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503445, 37.691910, 34.256004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.191750, 37.717178, 34.505417>,  <38.004730, 37.732338, 34.655064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.191750, 37.717178, 34.505417>,  <38.503445, 37.691910, 34.256004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191750, 37.717178, 34.505417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528240, -0.469196, 0.707685,
		0.337264, 0.880832, 0.332247,
		-0.779240, 0.063171, 0.623533,
		37.957977, 37.736130, 34.692478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.637863, 43.351696, 32.725754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261948, 43.232082, 32.659561>,  <36.036400, 43.160313, 32.619846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261948, 43.232082, 32.659561>,  <36.637863, 43.351696, 32.725754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261948, 43.232082, 32.659561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061929, 0.625178, -0.778022,
		0.336110, -0.720925, -0.606051,
		-0.939785, -0.299033, -0.165483,
		35.980011, 43.142372, 32.609917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538410, 43.327461, 31.949730>,  <36.637863, 43.351696, 32.725754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538410, 43.327461, 31.949730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.168003, 43.362370, 32.096630>,  <35.945759, 43.383312, 32.184772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.168003, 43.362370, 32.096630>,  <36.538410, 43.327461, 31.949730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168003, 43.362370, 32.096630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272055, 0.520159, -0.809581,
		-0.261679, -0.849599, -0.457935,
		-0.926018, 0.087267, 0.367252,
		35.890198, 43.388550, 32.206806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031914, 43.278069, 31.331362>,  <36.538410, 43.327461, 31.949730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031914, 43.278069, 31.331362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818462, 43.446415, 31.624788>,  <35.690392, 43.547424, 31.800844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818462, 43.446415, 31.624788>,  <36.031914, 43.278069, 31.331362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818462, 43.446415, 31.624788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488893, 0.554260, -0.673632,
		-0.690094, -0.718101, -0.090009,
		-0.533624, 0.420865, 0.733565,
		35.658375, 43.572674, 31.844858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339153, 43.443958, 31.012371>,  <36.031914, 43.278069, 31.331362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339153, 43.443958, 31.012371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331902, 43.630596, 31.366085>,  <35.327553, 43.742580, 31.578314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331902, 43.630596, 31.366085>,  <35.339153, 43.443958, 31.012371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331902, 43.630596, 31.366085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754727, 0.573710, -0.318188,
		-0.655788, -0.673162, 0.341752,
		-0.018125, 0.466594, 0.884286,
		35.326466, 43.770573, 31.631371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642361, 43.304375, 31.291920>,  <35.339153, 43.443958, 31.012371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642361, 43.304375, 31.291920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798977, 43.652302, 31.411999>,  <34.892948, 43.861057, 31.484047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798977, 43.652302, 31.411999>,  <34.642361, 43.304375, 31.291920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798977, 43.652302, 31.411999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679853, 0.493308, -0.542629,
		-0.620076, 0.008372, 0.784497,
		0.391541, 0.869815, 0.300197,
		34.916439, 43.913246, 31.502058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092983, 43.776756, 31.548138>,  <34.642361, 43.304375, 31.291920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092983, 43.776756, 31.548138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.383659, 44.035595, 31.455885>,  <34.558067, 44.190899, 31.400534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.383659, 44.035595, 31.455885>,  <34.092983, 43.776756, 31.548138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383659, 44.035595, 31.455885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657486, 0.557852, -0.506472,
		-0.199075, 0.519686, 0.830841,
		0.726692, 0.647092, -0.230632,
		34.601665, 44.229721, 31.386696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811733, 44.474594, 31.669380>,  <34.092983, 43.776756, 31.548138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811733, 44.474594, 31.669380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127644, 44.539600, 31.432793>,  <34.317192, 44.578606, 31.290840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127644, 44.539600, 31.432793>,  <33.811733, 44.474594, 31.669380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127644, 44.539600, 31.432793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564041, 0.571351, -0.596168,
		0.241049, 0.804454, 0.542908,
		0.789781, 0.162517, -0.591468,
		34.364578, 44.588356, 31.255352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602890, 45.045338, 31.443838>,  <33.811733, 44.474594, 31.669380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602890, 45.045338, 31.443838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901814, 44.939739, 31.199926>,  <34.081169, 44.876381, 31.053579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901814, 44.939739, 31.199926>,  <33.602890, 45.045338, 31.443838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901814, 44.939739, 31.199926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490955, 0.399010, -0.774438,
		0.447757, 0.878121, 0.168575,
		0.747313, -0.263997, -0.609777,
		34.126007, 44.860538, 31.016993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609406, 45.539394, 30.982830>,  <33.602890, 45.045338, 31.443838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609406, 45.539394, 30.982830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824955, 45.258503, 30.796721>,  <33.954285, 45.089966, 30.685055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824955, 45.258503, 30.796721>,  <33.609406, 45.539394, 30.982830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824955, 45.258503, 30.796721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452978, 0.224114, -0.862892,
		0.710226, 0.675753, -0.197326,
		0.538878, -0.702233, -0.465273,
		33.986618, 45.047832, 30.657139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890797, 45.834133, 30.399227>,  <33.609406, 45.539394, 30.982830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890797, 45.834133, 30.399227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.879108, 45.439236, 30.336611>,  <33.872097, 45.202297, 30.299042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.879108, 45.439236, 30.336611>,  <33.890797, 45.834133, 30.399227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879108, 45.439236, 30.336611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317588, 0.157662, -0.935030,
		0.947779, 0.022394, -0.318142,
		-0.029220, -0.987239, -0.156541,
		33.870342, 45.143063, 30.289648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937035, 45.860474, 29.751467>,  <33.890797, 45.834133, 30.399227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937035, 45.860474, 29.751467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820545, 45.482479, 29.811047>,  <33.750652, 45.255680, 29.846794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820545, 45.482479, 29.811047>,  <33.937035, 45.860474, 29.751467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820545, 45.482479, 29.811047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588680, 0.054289, -0.806541,
		0.754087, -0.322563, -0.572107,
		-0.291219, -0.944990, 0.148948,
		33.733181, 45.198982, 29.855730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123093, 45.501736, 29.140100>,  <33.937035, 45.860474, 29.751467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123093, 45.501736, 29.140100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.830307, 45.278282, 29.296127>,  <33.654636, 45.144211, 29.389744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.830307, 45.278282, 29.296127>,  <34.123093, 45.501736, 29.140100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830307, 45.278282, 29.296127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468679, -0.002711, -0.883365,
		0.494538, -0.829407, -0.259838,
		-0.731965, -0.558638, 0.390066,
		33.610718, 45.110691, 29.413147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908813, 44.920944, 28.587000>,  <34.123093, 45.501736, 29.140100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908813, 44.920944, 28.587000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629696, 45.001663, 28.861916>,  <33.462227, 45.050095, 29.026865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629696, 45.001663, 28.861916>,  <33.908813, 44.920944, 28.587000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629696, 45.001663, 28.861916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676185, 0.131022, -0.724988,
		-0.236349, -0.970624, 0.045025,
		-0.697792, 0.201796, 0.687289,
		33.420357, 45.062202, 29.068102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342365, 44.356609, 28.638489>,  <33.908813, 44.920944, 28.587000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342365, 44.356609, 28.638489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197414, 44.715988, 28.737661>,  <33.110443, 44.931618, 28.797165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197414, 44.715988, 28.737661>,  <33.342365, 44.356609, 28.638489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197414, 44.715988, 28.737661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545451, 0.011266, -0.838067,
		-0.755755, -0.438931, 0.485978,
		-0.362378, 0.898450, 0.247929,
		33.088699, 44.985523, 28.812040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073257, 44.451324, 27.937780>,  <33.342365, 44.356609, 28.638489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073257, 44.451324, 27.937780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020729, 44.146488, 27.684175>,  <32.989212, 43.963585, 27.532013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020729, 44.146488, 27.684175>,  <33.073257, 44.451324, 27.937780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020729, 44.146488, 27.684175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319746, -0.637930, 0.700578,
		-0.938359, -0.110723, 0.327448,
		-0.131319, -0.762093, -0.634010,
		32.981335, 43.917862, 27.493973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677551, 43.962967, 28.279570>,  <33.073257, 44.451324, 27.937780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677551, 43.962967, 28.279570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846813, 43.749592, 27.986616>,  <32.948372, 43.621567, 27.810844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846813, 43.749592, 27.986616>,  <32.677551, 43.962967, 28.279570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846813, 43.749592, 27.986616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168819, -0.747743, 0.642169,
		-0.890192, -0.395376, -0.226355,
		0.423153, -0.533440, -0.732382,
		32.973759, 43.589561, 27.766901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420570, 43.341560, 28.352440>,  <32.677551, 43.962967, 28.279570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420570, 43.341560, 28.352440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781036, 43.325481, 28.179798>,  <32.997318, 43.315834, 28.076214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781036, 43.325481, 28.179798>,  <32.420570, 43.341560, 28.352440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781036, 43.325481, 28.179798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308550, -0.639857, 0.703832,
		-0.304456, -0.767442, -0.564216,
		0.901168, -0.040197, -0.431602,
		33.051388, 43.313423, 28.050318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634483, 42.533714, 28.392467>,  <32.420570, 43.341560, 28.352440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634483, 42.533714, 28.392467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967014, 42.744572, 28.322021>,  <33.166534, 42.871086, 28.279755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967014, 42.744572, 28.322021>,  <32.634483, 42.533714, 28.392467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967014, 42.744572, 28.322021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486730, -0.537547, 0.688576,
		0.268308, -0.658153, -0.703453,
		0.831327, 0.527142, -0.176115,
		33.216412, 42.902714, 28.269188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974751, 42.034966, 28.286667>,  <32.634483, 42.533714, 28.392467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974751, 42.034966, 28.286667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221790, 42.338158, 28.370600>,  <33.370014, 42.520073, 28.420959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221790, 42.338158, 28.370600>,  <32.974751, 42.034966, 28.286667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221790, 42.338158, 28.370600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529337, -0.597925, 0.601904,
		0.581697, -0.260666, -0.770508,
		0.617602, 0.757984, 0.209831,
		33.407070, 42.565552, 28.433550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696419, 41.831928, 28.050537>,  <32.974751, 42.034966, 28.286667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696419, 41.831928, 28.050537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.706360, 42.119553, 28.328339>,  <33.712322, 42.292126, 28.495020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.706360, 42.119553, 28.328339>,  <33.696419, 41.831928, 28.050537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706360, 42.119553, 28.328339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545748, -0.591822, 0.593216,
		0.837581, 0.364284, -0.407131,
		0.024850, 0.719058, 0.694506,
		33.713814, 42.335270, 28.536690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400421, 41.851944, 28.220013>,  <33.696419, 41.831928, 28.050537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400421, 41.851944, 28.220013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215534, 42.034203, 28.524315>,  <34.104603, 42.143559, 28.706896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215534, 42.034203, 28.524315>,  <34.400421, 41.851944, 28.220013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215534, 42.034203, 28.524315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628862, -0.436429, 0.643476,
		0.625210, 0.775835, -0.084812,
		-0.462217, 0.455643, 0.760753,
		34.076870, 42.170895, 28.752541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925648, 42.085880, 28.579079>,  <34.400421, 41.851944, 28.220013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925648, 42.085880, 28.579079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644066, 42.102249, 28.862705>,  <34.475117, 42.112072, 29.032881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644066, 42.102249, 28.862705>,  <34.925648, 42.085880, 28.579079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644066, 42.102249, 28.862705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639280, -0.398486, 0.657670,
		0.309466, 0.916261, 0.254355,
		-0.703955, 0.040922, 0.709065,
		34.432880, 42.114525, 29.075424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233562, 42.192314, 29.194857>,  <34.925648, 42.085880, 28.579079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233562, 42.192314, 29.194857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882713, 42.059399, 29.333557>,  <34.672203, 41.979649, 29.416777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882713, 42.059399, 29.333557>,  <35.233562, 42.192314, 29.194857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882713, 42.059399, 29.333557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466810, -0.420184, 0.778161,
		-0.112875, 0.844411, 0.523669,
		-0.877125, -0.332289, 0.346751,
		34.619576, 41.959713, 29.437582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184139, 42.295937, 29.946150>,  <35.233562, 42.192314, 29.194857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184139, 42.295937, 29.946150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919460, 42.001198, 29.890709>,  <34.760654, 41.824352, 29.857445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919460, 42.001198, 29.890709>,  <35.184139, 42.295937, 29.946150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919460, 42.001198, 29.890709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394065, -0.499045, 0.771795,
		-0.637866, 0.456075, 0.620582,
		-0.661695, -0.736851, -0.138600,
		34.720951, 41.780144, 29.849129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924656, 42.071259, 30.606638>,  <35.184139, 42.295937, 29.946150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924656, 42.071259, 30.606638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810467, 41.767826, 30.372355>,  <34.741955, 41.585766, 30.231785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810467, 41.767826, 30.372355>,  <34.924656, 42.071259, 30.606638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810467, 41.767826, 30.372355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189114, -0.643711, 0.741534,
		-0.939543, 0.100923, 0.327221,
		-0.285474, -0.758585, -0.585708,
		34.724823, 41.540249, 30.196642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521339, 41.585739, 31.005713>,  <34.924656, 42.071259, 30.606638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521339, 41.585739, 31.005713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583405, 41.334305, 30.700871>,  <34.620644, 41.183445, 30.517965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583405, 41.334305, 30.700871>,  <34.521339, 41.585739, 31.005713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583405, 41.334305, 30.700871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157713, -0.745794, 0.647238,
		-0.975218, -0.220624, -0.016587,
		0.155167, -0.628582, -0.762107,
		34.629955, 41.145729, 30.472239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988846, 40.956230, 31.046192>,  <34.521339, 41.585739, 31.005713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988846, 40.956230, 31.046192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.315235, 40.849529, 30.841043>,  <34.511066, 40.785507, 30.717955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.315235, 40.849529, 30.841043>,  <33.988846, 40.956230, 31.046192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315235, 40.849529, 30.841043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110784, -0.798579, 0.591606,
		-0.567381, -0.539551, -0.622064,
		0.815969, -0.266751, -0.512872,
		34.560024, 40.769505, 30.687181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971684, 40.231346, 30.981102>,  <33.988846, 40.956230, 31.046192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971684, 40.231346, 30.981102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357018, 40.325199, 30.929043>,  <34.588219, 40.381512, 30.897806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357018, 40.325199, 30.929043>,  <33.971684, 40.231346, 30.981102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357018, 40.325199, 30.929043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268082, -0.821640, 0.503031,
		0.011091, -0.519476, -0.854413,
		0.963332, 0.234632, -0.130149,
		34.646019, 40.395588, 30.889997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720818, 39.650127, 30.439558>,  <33.971684, 40.231346, 30.981102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720818, 39.650127, 30.439558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468807, 39.350010, 30.359423>,  <33.317600, 39.169941, 30.311340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468807, 39.350010, 30.359423>,  <33.720818, 39.650127, 30.439558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468807, 39.350010, 30.359423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480693, 0.579392, -0.658209,
		0.609923, -0.318384, -0.725689,
		-0.630022, -0.750291, -0.200340,
		33.279800, 39.124924, 30.299320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644196, 39.613499, 29.760519>,  <33.720818, 39.650127, 30.439558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644196, 39.613499, 29.760519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313667, 39.412361, 29.861977>,  <33.115349, 39.291679, 29.922852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313667, 39.412361, 29.861977>,  <33.644196, 39.613499, 29.760519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313667, 39.412361, 29.861977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504040, 0.459351, -0.731396,
		0.251268, -0.732216, -0.633028,
		-0.826322, -0.502848, 0.253646,
		33.065769, 39.261505, 29.938070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329872, 39.509293, 29.100840>,  <33.644196, 39.613499, 29.760519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329872, 39.509293, 29.100840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029251, 39.431068, 29.352848>,  <32.848877, 39.384136, 29.504053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029251, 39.431068, 29.352848>,  <33.329872, 39.509293, 29.100840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029251, 39.431068, 29.352848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649448, 0.386833, -0.654658,
		-0.115690, -0.901176, -0.417730,
		-0.751553, -0.195556, 0.630020,
		32.803783, 39.372402, 29.541855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844170, 39.207916, 28.747015>,  <33.329872, 39.509293, 29.100840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844170, 39.207916, 28.747015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.623295, 39.354958, 29.046335>,  <32.490768, 39.443184, 29.225927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.623295, 39.354958, 29.046335>,  <32.844170, 39.207916, 28.747015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623295, 39.354958, 29.046335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625891, 0.410154, -0.663351,
		-0.550770, -0.834649, 0.003598,
		-0.552189, 0.367606, 0.748300,
		32.457638, 39.465240, 29.270824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252689, 39.166603, 28.504921>,  <32.844170, 39.207916, 28.747015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252689, 39.166603, 28.504921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200623, 39.438740, 28.793419>,  <32.169380, 39.602020, 28.966518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200623, 39.438740, 28.793419>,  <32.252689, 39.166603, 28.504921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200623, 39.438740, 28.793419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561150, 0.549166, -0.619296,
		-0.817414, -0.485342, 0.310287,
		-0.130171, 0.680339, 0.721245,
		32.161572, 39.642841, 29.009792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570576, 39.379566, 28.489639>,  <32.252689, 39.166603, 28.504921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570576, 39.379566, 28.489639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743090, 39.667599, 28.707067>,  <31.846598, 39.840420, 28.837524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743090, 39.667599, 28.707067>,  <31.570576, 39.379566, 28.489639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743090, 39.667599, 28.707067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572472, 0.684080, -0.452006,
		-0.697329, -0.116236, 0.707263,
		0.431286, 0.720085, 0.543571,
		31.872475, 39.883625, 28.870138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100834, 39.785179, 28.704931>,  <31.570576, 39.379566, 28.489639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100834, 39.785179, 28.704931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421516, 40.021965, 28.738014>,  <31.613926, 40.164036, 28.757864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421516, 40.021965, 28.738014>,  <31.100834, 39.785179, 28.704931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421516, 40.021965, 28.738014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507322, 0.747084, -0.429524,
		-0.316052, 0.302394, 0.899260,
		0.801708, 0.591966, 0.082706,
		31.662029, 40.199554, 28.762827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664623, 39.616051, 29.220217>,  <31.100834, 39.785179, 28.704931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664623, 39.616051, 29.220217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270624, 39.602776, 29.287956>,  <30.034225, 39.594810, 29.328600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270624, 39.602776, 29.287956>,  <30.664623, 39.616051, 29.220217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270624, 39.602776, 29.287956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114680, -0.859200, 0.498621,
		0.128954, 0.510561, 0.850116,
		-0.984997, -0.033192, 0.169348,
		29.975124, 39.592819, 29.338760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616058, 39.432064, 29.877108>,  <30.664623, 39.616051, 29.220217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616058, 39.432064, 29.877108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.265429, 39.326469, 29.716145>,  <30.055052, 39.263111, 29.619568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.265429, 39.326469, 29.716145>,  <30.616058, 39.432064, 29.877108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265429, 39.326469, 29.716145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028900, -0.863501, 0.503518,
		-0.480400, 0.429741, 0.764551,
		-0.876573, -0.263986, -0.402406,
		30.002457, 39.247272, 29.595423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217716, 39.171780, 30.400984>,  <30.616058, 39.432064, 29.877108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217716, 39.171780, 30.400984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102486, 39.008846, 30.054321>,  <30.033346, 38.911087, 29.846323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102486, 39.008846, 30.054321>,  <30.217716, 39.171780, 30.400984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102486, 39.008846, 30.054321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079492, -0.891728, 0.445536,
		-0.954302, 0.197241, 0.224508,
		-0.288078, -0.407329, -0.866657,
		30.016062, 38.886646, 29.794325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741343, 38.817020, 30.670982>,  <30.217716, 39.171780, 30.400984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741343, 38.817020, 30.670982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.828522, 38.678612, 30.305958>,  <29.880829, 38.595566, 30.086943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.828522, 38.678612, 30.305958>,  <29.741343, 38.817020, 30.670982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828522, 38.678612, 30.305958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023654, -0.936638, 0.349498,
		-0.975673, -0.054587, -0.212324,
		0.217949, -0.346018, -0.912562,
		29.893906, 38.574806, 30.032188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348940, 38.322090, 30.601381>,  <29.741343, 38.817020, 30.670982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348940, 38.322090, 30.601381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.609352, 38.241077, 30.308767>,  <29.765600, 38.192471, 30.133200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.609352, 38.241077, 30.308767>,  <29.348940, 38.322090, 30.601381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609352, 38.241077, 30.308767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015158, -0.967023, 0.254238,
		-0.758900, -0.154428, -0.632632,
		0.651031, -0.202531, -0.731533,
		29.804661, 38.180317, 30.089308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198273, 37.637104, 30.333517>,  <29.348940, 38.322090, 30.601381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198273, 37.637104, 30.333517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.564615, 37.689697, 30.181772>,  <29.784422, 37.721252, 30.090725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.564615, 37.689697, 30.181772>,  <29.198273, 37.637104, 30.333517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564615, 37.689697, 30.181772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245491, -0.931049, 0.269968,
		-0.317707, -0.340382, -0.884987,
		0.915858, 0.131486, -0.379361,
		29.839373, 37.729141, 30.067965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293144, 37.116428, 30.050856>,  <29.198273, 37.637104, 30.333517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293144, 37.116428, 30.050856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.666977, 37.243591, 30.114712>,  <29.891277, 37.319889, 30.153027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.666977, 37.243591, 30.114712>,  <29.293144, 37.116428, 30.050856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666977, 37.243591, 30.114712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271860, -0.927696, 0.255875,
		0.229444, -0.195736, -0.953438,
		0.934584, 0.317911, 0.159642,
		29.947351, 37.338966, 30.162603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.168993, 44.788593, 30.430334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407516, 44.672863, 30.130812>,  <30.550631, 44.603424, 29.951099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407516, 44.672863, 30.130812>,  <30.168993, 44.788593, 30.430334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407516, 44.672863, 30.130812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578198, -0.492277, 0.650654,
		-0.556869, -0.820947, -0.126262,
		0.596308, -0.289325, -0.748804,
		30.586409, 44.586067, 29.906170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145042, 44.064583, 30.378908>,  <30.168993, 44.788593, 30.430334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145042, 44.064583, 30.378908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492220, 44.202457, 30.235878>,  <30.700527, 44.285183, 30.150061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492220, 44.202457, 30.235878>,  <30.145042, 44.064583, 30.378908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492220, 44.202457, 30.235878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481927, -0.410442, 0.774134,
		0.120073, -0.844231, -0.522357,
		0.867945, 0.344691, -0.357575,
		30.752604, 44.305866, 30.128605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695166, 43.470531, 30.358486>,  <30.145042, 44.064583, 30.378908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695166, 43.470531, 30.358486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.924694, 43.798107, 30.355072>,  <31.062410, 43.994652, 30.353024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.924694, 43.798107, 30.355072>,  <30.695166, 43.470531, 30.358486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924694, 43.798107, 30.355072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532109, -0.364883, 0.764015,
		0.622566, -0.442950, -0.645141,
		0.573822, 0.818936, -0.008534,
		31.096840, 44.043789, 30.352512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396910, 43.264561, 30.308781>,  <30.695166, 43.470531, 30.358486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396910, 43.264561, 30.308781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.396067, 43.624786, 30.482670>,  <31.395561, 43.840919, 30.587004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.396067, 43.624786, 30.482670>,  <31.396910, 43.264561, 30.308781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396067, 43.624786, 30.482670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521320, -0.369986, 0.768984,
		0.853359, 0.228250, -0.468701,
		-0.002108, 0.900562, 0.434723,
		31.395433, 43.894955, 30.613087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117588, 43.407784, 30.515816>,  <31.396910, 43.264561, 30.308781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117588, 43.407784, 30.515816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879932, 43.648655, 30.729126>,  <31.737339, 43.793179, 30.857111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879932, 43.648655, 30.729126>,  <32.117588, 43.407784, 30.515816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879932, 43.648655, 30.729126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521796, -0.216008, 0.825269,
		0.612149, 0.768586, -0.185874,
		-0.594141, 0.602176, 0.533274,
		31.701691, 43.829308, 30.889109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617752, 43.778904, 30.917128>,  <32.117588, 43.407784, 30.515816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617752, 43.778904, 30.917128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279072, 43.811249, 31.127483>,  <32.075863, 43.830658, 31.253696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279072, 43.811249, 31.127483>,  <32.617752, 43.778904, 30.917128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279072, 43.811249, 31.127483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488662, -0.272839, 0.828715,
		0.210499, 0.958655, 0.191496,
		-0.846699, 0.080867, 0.525890,
		32.025063, 43.835510, 31.285250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835903, 44.210175, 31.540583>,  <32.617752, 43.778904, 30.917128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835903, 44.210175, 31.540583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495392, 44.020733, 31.630936>,  <32.291084, 43.907066, 31.685148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495392, 44.020733, 31.630936>,  <32.835903, 44.210175, 31.540583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495392, 44.020733, 31.630936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367202, -0.230198, 0.901205,
		-0.374819, 0.850121, 0.369872,
		-0.851277, -0.473607, 0.225884,
		32.240009, 43.878651, 31.698700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558014, 44.417267, 32.256161>,  <32.835903, 44.210175, 31.540583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558014, 44.417267, 32.256161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389587, 44.058872, 32.199703>,  <32.288532, 43.843838, 32.165829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389587, 44.058872, 32.199703>,  <32.558014, 44.417267, 32.256161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389587, 44.058872, 32.199703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175422, -0.233112, 0.956497,
		-0.889906, 0.377988, 0.255330,
		-0.421064, -0.895982, -0.141140,
		32.263268, 43.790077, 32.157360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275116, 44.261959, 32.928101>,  <32.558014, 44.417267, 32.256161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275116, 44.261959, 32.928101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.254150, 43.900993, 32.757034>,  <32.241570, 43.684414, 32.654396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.254150, 43.900993, 32.757034>,  <32.275116, 44.261959, 32.928101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254150, 43.900993, 32.757034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254619, -0.426177, 0.868068,
		-0.965620, -0.063390, 0.252112,
		-0.052417, -0.902416, -0.427665,
		32.238426, 43.630268, 32.628735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847610, 43.852688, 33.332447>,  <32.275116, 44.261959, 32.928101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847610, 43.852688, 33.332447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062279, 43.590439, 33.119976>,  <32.191078, 43.433090, 32.992493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062279, 43.590439, 33.119976>,  <31.847610, 43.852688, 33.332447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062279, 43.590439, 33.119976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252348, -0.475997, 0.842465,
		-0.805175, -0.586166, -0.090008,
		0.536669, -0.655619, -0.531179,
		32.223278, 43.393753, 32.960621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591970, 43.164772, 33.417652>,  <31.847610, 43.852688, 33.332447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591970, 43.164772, 33.417652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970171, 43.096317, 33.306847>,  <32.197090, 43.055244, 33.240364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970171, 43.096317, 33.306847>,  <31.591970, 43.164772, 33.417652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970171, 43.096317, 33.306847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154505, -0.513084, 0.844318,
		-0.286623, -0.841106, -0.458681,
		0.945503, -0.171133, -0.277016,
		32.253822, 43.044979, 33.223743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692949, 42.442986, 33.451317>,  <31.591970, 43.164772, 33.417652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692949, 42.442986, 33.451317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.059952, 42.600323, 33.474857>,  <32.280155, 42.694725, 33.488983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.059952, 42.600323, 33.474857>,  <31.692949, 42.442986, 33.451317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059952, 42.600323, 33.474857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229098, -0.643655, 0.730221,
		0.325110, -0.656499, -0.680671,
		0.917507, 0.393343, 0.058856,
		32.335205, 42.718327, 33.492516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131279, 41.901073, 33.274822>,  <31.692949, 42.442986, 33.451317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131279, 41.901073, 33.274822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.006262, 41.539085, 33.390301>,  <30.931252, 41.321892, 33.459587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.006262, 41.539085, 33.390301>,  <31.131279, 41.901073, 33.274822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006262, 41.539085, 33.390301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776294, 0.068190, -0.626672,
		0.547433, -0.419975, -0.723836,
		-0.312544, -0.904970, 0.288694,
		30.912498, 41.267593, 33.476910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159542, 41.356682, 32.686306>,  <31.131279, 41.901073, 33.274822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159542, 41.356682, 32.686306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862675, 41.304478, 32.949257>,  <30.684553, 41.273155, 33.107029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862675, 41.304478, 32.949257>,  <31.159542, 41.356682, 32.686306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862675, 41.304478, 32.949257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667613, 0.230255, -0.708008,
		-0.058961, -0.964338, -0.258021,
		-0.742170, -0.130513, 0.657381,
		30.640024, 41.265324, 33.146469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569553, 41.224751, 32.316143>,  <31.159542, 41.356682, 32.686306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569553, 41.224751, 32.316143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.395109, 41.311340, 32.665531>,  <30.290443, 41.363293, 32.875164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.395109, 41.311340, 32.665531>,  <30.569553, 41.224751, 32.316143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395109, 41.311340, 32.665531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826557, 0.287440, -0.483923,
		-0.355825, -0.933016, 0.053569,
		-0.436110, 0.216470, 0.873470,
		30.264277, 41.376282, 32.927570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810440, 41.007511, 32.273548>,  <30.569553, 41.224751, 32.316143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810440, 41.007511, 32.273548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.858538, 41.291641, 32.550961>,  <29.887396, 41.462120, 32.717407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.858538, 41.291641, 32.550961>,  <29.810440, 41.007511, 32.273548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858538, 41.291641, 32.550961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748978, 0.523436, -0.406259,
		-0.651593, -0.470586, 0.594958,
		0.120243, 0.710326, 0.693527,
		29.894611, 41.504738, 32.759018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145859, 41.116692, 32.479713>,  <29.810440, 41.007511, 32.273548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145859, 41.116692, 32.479713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339781, 41.448139, 32.591686>,  <29.456135, 41.647007, 32.658871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339781, 41.448139, 32.591686>,  <29.145859, 41.116692, 32.479713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339781, 41.448139, 32.591686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598389, 0.547667, -0.584801,
		-0.637883, 0.116008, 0.761346,
		0.484806, 0.828615, 0.279929,
		29.485222, 41.696724, 32.675667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588053, 41.582317, 32.477596>,  <29.145859, 41.116692, 32.479713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588053, 41.582317, 32.477596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919571, 41.802906, 32.439701>,  <29.118483, 41.935261, 32.416962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919571, 41.802906, 32.439701>,  <28.588053, 41.582317, 32.477596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919571, 41.802906, 32.439701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509641, 0.674070, -0.534693,
		-0.231006, 0.491435, 0.839719,
		0.828795, 0.551473, -0.094741,
		29.168209, 41.968349, 32.411278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392944, 42.271664, 32.684807>,  <28.588053, 41.582317, 32.477596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392944, 42.271664, 32.684807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718332, 42.308453, 32.455090>,  <28.913565, 42.330524, 32.317261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718332, 42.308453, 32.455090>,  <28.392944, 42.271664, 32.684807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718332, 42.308453, 32.455090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421603, 0.773440, -0.473329,
		0.400648, 0.627162, 0.667944,
		0.813469, 0.091969, -0.574290,
		28.962374, 42.336044, 32.282803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456900, 42.933037, 32.668907>,  <28.392944, 42.271664, 32.684807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456900, 42.933037, 32.668907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.690392, 42.825851, 32.362324>,  <28.830486, 42.761539, 32.178375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.690392, 42.825851, 32.362324>,  <28.456900, 42.933037, 32.668907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690392, 42.825851, 32.362324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409306, 0.718146, -0.562792,
		0.701235, 0.642234, 0.309524,
		0.583728, -0.267959, -0.766459,
		28.865509, 42.745464, 32.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720463, 43.578182, 32.402203>,  <28.456900, 42.933037, 32.668907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720463, 43.578182, 32.402203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748638, 43.301277, 32.114922>,  <28.765543, 43.135136, 31.942553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748638, 43.301277, 32.114922>,  <28.720463, 43.578182, 32.402203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748638, 43.301277, 32.114922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454929, 0.618460, -0.640740,
		0.887738, 0.371863, -0.271366,
		0.070439, -0.692261, -0.718201,
		28.769770, 43.093597, 31.899462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085865, 43.870453, 31.870394>,  <28.720463, 43.578182, 32.402203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085865, 43.870453, 31.870394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917627, 43.574371, 31.660553>,  <28.816685, 43.396725, 31.534649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917627, 43.574371, 31.660553>,  <29.085865, 43.870453, 31.870394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917627, 43.574371, 31.660553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240517, 0.648514, -0.722205,
		0.874788, -0.177578, -0.450790,
		-0.420592, -0.740199, -0.524602,
		28.791451, 43.352310, 31.503172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231386, 44.036610, 31.185270>,  <29.085865, 43.870453, 31.870394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231386, 44.036610, 31.185270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954523, 43.754528, 31.123816>,  <28.788404, 43.585281, 31.086943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954523, 43.754528, 31.123816>,  <29.231386, 44.036610, 31.185270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954523, 43.754528, 31.123816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319558, 0.490301, -0.810856,
		0.647146, -0.512146, -0.564720,
		-0.692159, -0.705203, -0.153637,
		28.746876, 43.542969, 31.077724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305012, 43.744240, 30.450378>,  <29.231386, 44.036610, 31.185270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305012, 43.744240, 30.450378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928131, 43.723476, 30.582781>,  <28.702003, 43.711018, 30.662222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928131, 43.723476, 30.582781>,  <29.305012, 43.744240, 30.450378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928131, 43.723476, 30.582781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330297, 0.309702, -0.891622,
		-0.056232, -0.949416, -0.308946,
		-0.942201, -0.051906, 0.331004,
		28.645472, 43.707905, 30.682081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837982, 43.423904, 29.847858>,  <29.305012, 43.744240, 30.450378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837982, 43.423904, 29.847858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585386, 43.630497, 30.079191>,  <28.433828, 43.754452, 30.217991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585386, 43.630497, 30.079191>,  <28.837982, 43.423904, 29.847858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585386, 43.630497, 30.079191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375136, 0.449256, -0.810828,
		-0.678597, -0.728982, -0.089949,
		-0.631489, 0.516483, 0.578331,
		28.395939, 43.785442, 30.252691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757469, 42.912537, 29.288990>,  <28.837982, 43.423904, 29.847858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757469, 42.912537, 29.288990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691700, 42.725964, 28.941334>,  <28.652239, 42.614017, 28.732740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691700, 42.725964, 28.941334>,  <28.757469, 42.912537, 29.288990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691700, 42.725964, 28.941334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178535, -0.880650, 0.438839,
		-0.970098, -0.083015, 0.228076,
		-0.164425, -0.466437, -0.869138,
		28.642372, 42.586033, 28.680592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409061, 42.323425, 29.509417>,  <28.757469, 42.912537, 29.288990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409061, 42.323425, 29.509417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517136, 42.213875, 29.140203>,  <28.581980, 42.148144, 28.918674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517136, 42.213875, 29.140203>,  <28.409061, 42.323425, 29.509417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517136, 42.213875, 29.140203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035541, -0.955199, 0.293823,
		-0.962152, -0.112192, -0.248346,
		0.270184, -0.273876, -0.923035,
		28.598190, 42.131714, 28.863293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202076, 41.603603, 29.518681>,  <28.409061, 42.323425, 29.509417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202076, 41.603603, 29.518681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471897, 41.649513, 29.226980>,  <28.633789, 41.677059, 29.051960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471897, 41.649513, 29.226980>,  <28.202076, 41.603603, 29.518681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471897, 41.649513, 29.226980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321842, -0.934741, 0.150591,
		-0.664377, -0.336285, -0.667470,
		0.674553, 0.114771, -0.729250,
		28.674263, 41.683945, 29.008205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160776, 41.020512, 29.010124>,  <28.202076, 41.603603, 29.518681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160776, 41.020512, 29.010124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533024, 41.156849, 28.956802>,  <28.756372, 41.238651, 28.924810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533024, 41.156849, 28.956802>,  <28.160776, 41.020512, 29.010124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533024, 41.156849, 28.956802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354963, -0.929310, 0.101906,
		-0.089146, -0.142153, -0.985822,
		0.930620, 0.340846, -0.133303,
		28.812210, 41.259102, 28.916811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437391, 40.667393, 28.505629>,  <28.160776, 41.020512, 29.010124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437391, 40.667393, 28.505629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764101, 40.822277, 28.676720>,  <28.960127, 40.915207, 28.779373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764101, 40.822277, 28.676720>,  <28.437391, 40.667393, 28.505629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764101, 40.822277, 28.676720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369435, -0.920431, 0.127772,
		0.443167, 0.053656, -0.894832,
		0.816775, 0.387206, 0.427727,
		29.009134, 40.938438, 28.805038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011286, 40.312233, 28.220526>,  <28.437391, 40.667393, 28.505629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011286, 40.312233, 28.220526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136019, 40.451546, 28.574125>,  <29.210859, 40.535133, 28.786285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136019, 40.451546, 28.574125>,  <29.011286, 40.312233, 28.220526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136019, 40.451546, 28.574125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439429, -0.877775, 0.190821,
		0.842414, 0.328951, -0.426767,
		0.311834, 0.348285, 0.884001,
		29.229568, 40.556030, 28.839325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656715, 39.961143, 28.301733>,  <29.011286, 40.312233, 28.220526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656715, 39.961143, 28.301733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572348, 40.103794, 28.665783>,  <29.521727, 40.189384, 28.884212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572348, 40.103794, 28.665783>,  <29.656715, 39.961143, 28.301733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572348, 40.103794, 28.665783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322393, -0.853597, 0.409188,
		0.922808, 0.379725, 0.065068,
		-0.210921, 0.356625, 0.910127,
		29.509071, 40.210781, 28.938822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246843, 40.020214, 28.599045>,  <29.656715, 39.961143, 28.301733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246843, 40.020214, 28.599045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968212, 39.975899, 28.882595>,  <29.801033, 39.949310, 29.052725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968212, 39.975899, 28.882595>,  <30.246843, 40.020214, 28.599045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968212, 39.975899, 28.882595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494231, -0.790312, 0.362136,
		0.520112, 0.602604, 0.605270,
		-0.696577, -0.110792, 0.708876,
		29.759239, 39.942661, 29.095259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816809, 40.516838, 28.778574>,  <30.246843, 40.020214, 28.599045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816809, 40.516838, 28.778574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208910, 40.565826, 28.716476>,  <31.444172, 40.595219, 28.679218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208910, 40.565826, 28.716476>,  <30.816809, 40.516838, 28.778574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208910, 40.565826, 28.716476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183359, 0.856910, -0.481753,
		0.074027, 0.500705, 0.862446,
		0.980255, 0.122474, -0.155243,
		31.502987, 40.602570, 28.669903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070269, 41.160721, 29.072287>,  <30.816809, 40.516838, 28.778574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070269, 41.160721, 29.072287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.326635, 41.074577, 28.777575>,  <31.480455, 41.022892, 28.600748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.326635, 41.074577, 28.777575>,  <31.070269, 41.160721, 29.072287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326635, 41.074577, 28.777575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153403, 0.904539, -0.397841,
		0.752125, 0.368007, 0.546697,
		0.640917, -0.215361, -0.736780,
		31.518911, 41.009968, 28.556541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405830, 41.758900, 29.025755>,  <31.070269, 41.160721, 29.072287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405830, 41.758900, 29.025755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462053, 41.566925, 28.679367>,  <31.495787, 41.451740, 28.471535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462053, 41.566925, 28.679367>,  <31.405830, 41.758900, 29.025755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462053, 41.566925, 28.679367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195873, 0.843886, -0.499489,
		0.970504, 0.239826, 0.024607,
		0.140556, -0.479936, -0.865971,
		31.504221, 41.422943, 28.419577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864822, 42.159153, 28.565166>,  <31.405830, 41.758900, 29.025755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864822, 42.159153, 28.565166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.676233, 41.905067, 28.320473>,  <31.563080, 41.752617, 28.173656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.676233, 41.905067, 28.320473>,  <31.864822, 42.159153, 28.565166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676233, 41.905067, 28.320473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228379, 0.757950, -0.611027,
		0.851796, -0.148377, -0.502422,
		-0.471473, -0.635213, -0.611733,
		31.534792, 41.714504, 28.136953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082436, 42.435436, 27.940805>,  <31.864822, 42.159153, 28.565166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082436, 42.435436, 27.940805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.771841, 42.196621, 27.860199>,  <31.585484, 42.053333, 27.811834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.771841, 42.196621, 27.860199>,  <32.082436, 42.435436, 27.940805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771841, 42.196621, 27.860199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279322, 0.612790, -0.739235,
		0.564836, -0.517722, -0.642591,
		-0.776491, -0.597036, -0.201515,
		31.538895, 42.017509, 27.799744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132252, 42.239094, 27.190121>,  <32.082436, 42.435436, 27.940805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132252, 42.239094, 27.190121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.750170, 42.195694, 27.300262>,  <31.520922, 42.169655, 27.366346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.750170, 42.195694, 27.300262>,  <32.132252, 42.239094, 27.190121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750170, 42.195694, 27.300262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271202, 0.693387, -0.667580,
		-0.118494, -0.712350, -0.691750,
		-0.955201, -0.108500, 0.275353,
		31.463610, 42.163143, 27.382868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715725, 42.095104, 26.573133>,  <32.132252, 42.239094, 27.190121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715725, 42.095104, 26.573133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444387, 42.190239, 26.851210>,  <31.281586, 42.247318, 27.018055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444387, 42.190239, 26.851210>,  <31.715725, 42.095104, 26.573133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444387, 42.190239, 26.851210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420654, 0.650042, -0.632847,
		-0.602414, -0.721721, -0.340905,
		-0.678342, 0.237833, 0.695189,
		31.240885, 42.261589, 27.059767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128048, 42.036140, 26.213882>,  <31.715725, 42.095104, 26.573133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128048, 42.036140, 26.213882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.068577, 42.292465, 26.515148>,  <31.032894, 42.446259, 26.695908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.068577, 42.292465, 26.515148>,  <31.128048, 42.036140, 26.213882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068577, 42.292465, 26.515148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454960, 0.631913, -0.627453,
		-0.878013, -0.435948, 0.197592,
		-0.148677, 0.640809, 0.753166,
		31.023973, 42.484707, 26.741098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444286, 42.348370, 26.168390>,  <31.128048, 42.036140, 26.213882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444286, 42.348370, 26.168390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674755, 42.592339, 26.386023>,  <30.813036, 42.738720, 26.516602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674755, 42.592339, 26.386023>,  <30.444286, 42.348370, 26.168390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674755, 42.592339, 26.386023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210646, 0.754006, -0.622176,
		-0.789717, 0.243872, 0.562914,
		0.576172, 0.609919, 0.544081,
		30.847607, 42.775314, 26.549248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.913437, 32.693485, 37.321960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139172, 33.023186, 37.340446>,  <37.274612, 33.221004, 37.351536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139172, 33.023186, 37.340446>,  <36.913437, 32.693485, 37.321960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139172, 33.023186, 37.340446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435906, 0.345056, -0.831217,
		-0.701076, 0.448944, 0.554024,
		0.564339, 0.824249, 0.046213,
		37.308472, 33.270462, 37.354309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455612, 33.223385, 37.397892>,  <36.913437, 32.693485, 37.321960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455612, 33.223385, 37.397892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796391, 33.355373, 37.235256>,  <37.000858, 33.434566, 37.137676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796391, 33.355373, 37.235256>,  <36.455612, 33.223385, 37.397892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796391, 33.355373, 37.235256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510715, 0.352178, -0.784309,
		-0.115608, 0.875837, 0.468556,
		0.851942, 0.329971, -0.406589,
		37.051971, 33.454365, 37.113281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299305, 33.845024, 37.008045>,  <36.455612, 33.223385, 37.397892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299305, 33.845024, 37.008045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650764, 33.797726, 36.823009>,  <36.861641, 33.769344, 36.711987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650764, 33.797726, 36.823009>,  <36.299305, 33.845024, 37.008045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650764, 33.797726, 36.823009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410814, 0.306494, -0.858658,
		0.243317, 0.944499, 0.220723,
		0.878652, -0.118250, -0.462588,
		36.914360, 33.762249, 36.684235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560963, 34.546600, 36.723927>,  <36.299305, 33.845024, 37.008045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560963, 34.546600, 36.723927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702099, 34.250774, 36.494648>,  <36.786781, 34.073280, 36.357082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702099, 34.250774, 36.494648>,  <36.560963, 34.546600, 36.723927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702099, 34.250774, 36.494648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387479, 0.442110, -0.808949,
		0.851683, 0.507531, -0.130570,
		0.352840, -0.739561, -0.573195,
		36.807949, 34.028908, 36.322689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747429, 34.839241, 36.090523>,  <36.560963, 34.546600, 36.723927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747429, 34.839241, 36.090523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770401, 34.457115, 35.974545>,  <36.784184, 34.227840, 35.904957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770401, 34.457115, 35.974545>,  <36.747429, 34.839241, 36.090523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770401, 34.457115, 35.974545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350285, 0.252676, -0.901918,
		0.934881, 0.153364, -0.320121,
		0.057435, -0.955319, -0.289943,
		36.787632, 34.170521, 35.887562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006920, 34.817890, 35.471363>,  <36.747429, 34.839241, 36.090523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006920, 34.817890, 35.471363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828968, 34.460922, 35.501476>,  <36.722198, 34.246742, 35.519543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828968, 34.460922, 35.501476>,  <37.006920, 34.817890, 35.471363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828968, 34.460922, 35.501476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510562, 0.183655, -0.839998,
		0.735807, -0.412132, -0.537341,
		-0.444876, -0.892422, 0.075284,
		36.695507, 34.193195, 35.524063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072212, 34.509941, 34.823605>,  <37.006920, 34.817890, 35.471363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072212, 34.509941, 34.823605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769829, 34.308155, 34.990482>,  <36.588398, 34.187084, 35.090607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769829, 34.308155, 34.990482>,  <37.072212, 34.509941, 34.823605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769829, 34.308155, 34.990482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582621, 0.227912, -0.780134,
		0.298468, -0.832809, -0.466203,
		-0.755956, -0.504465, 0.417188,
		36.543041, 34.156818, 35.115639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955738, 34.066570, 34.358299>,  <37.072212, 34.509941, 34.823605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955738, 34.066570, 34.358299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643661, 34.135025, 34.598969>,  <36.456417, 34.176098, 34.743370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643661, 34.135025, 34.598969>,  <36.955738, 34.066570, 34.358299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643661, 34.135025, 34.598969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562460, 0.229014, -0.794476,
		-0.273757, -0.958261, -0.082416,
		-0.780190, 0.171138, 0.601678,
		36.409603, 34.186367, 34.779472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406094, 33.679134, 34.081287>,  <36.955738, 34.066570, 34.358299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406094, 33.679134, 34.081287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207478, 33.953312, 34.294308>,  <36.088306, 34.117817, 34.422119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207478, 33.953312, 34.294308>,  <36.406094, 33.679134, 34.081287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207478, 33.953312, 34.294308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636387, 0.129767, -0.760376,
		-0.590301, -0.716471, 0.371771,
		-0.496544, 0.685441, 0.532555,
		36.058514, 34.158943, 34.454075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628540, 33.593502, 33.860806>,  <36.406094, 33.679134, 34.081287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628540, 33.593502, 33.860806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657612, 33.947536, 34.044689>,  <35.675053, 34.159958, 34.155022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657612, 33.947536, 34.044689>,  <35.628540, 33.593502, 33.860806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657612, 33.947536, 34.044689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690084, 0.377407, -0.617534,
		-0.720072, -0.272360, 0.638214,
		0.072675, 0.885090, 0.459711,
		35.679413, 34.213062, 34.182602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949104, 33.829128, 34.032028>,  <35.628540, 33.593502, 33.860806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949104, 33.829128, 34.032028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184292, 34.150837, 33.997532>,  <35.325405, 34.343861, 33.976833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184292, 34.150837, 33.997532>,  <34.949104, 33.829128, 34.032028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184292, 34.150837, 33.997532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687462, 0.440681, -0.577232,
		-0.426244, 0.398685, 0.812013,
		0.587973, 0.804270, -0.086243,
		35.360683, 34.392117, 33.971661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561172, 34.431789, 33.861912>,  <34.949104, 33.829128, 34.032028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561172, 34.431789, 33.861912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924252, 34.562649, 33.756798>,  <35.142101, 34.641163, 33.693729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924252, 34.562649, 33.756798>,  <34.561172, 34.431789, 33.861912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924252, 34.562649, 33.756798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418471, 0.659420, -0.624538,
		-0.031033, 0.676859, 0.735458,
		0.907700, 0.327149, -0.262782,
		35.196560, 34.660793, 33.677963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031139, 34.749660, 34.186245>,  <34.561172, 34.431789, 33.861912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031139, 34.749660, 34.186245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720646, 34.506756, 34.118484>,  <33.534351, 34.361012, 34.077827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720646, 34.506756, 34.118484>,  <34.031139, 34.749660, 34.186245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720646, 34.506756, 34.118484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144352, -0.432758, 0.889878,
		-0.613701, 0.666297, 0.423580,
		-0.776231, -0.607263, -0.169403,
		33.487778, 34.324577, 34.067665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658405, 34.762005, 34.809414>,  <34.031139, 34.749660, 34.186245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658405, 34.762005, 34.809414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520199, 34.439789, 34.616863>,  <33.437275, 34.246460, 34.501331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520199, 34.439789, 34.616863>,  <33.658405, 34.762005, 34.809414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520199, 34.439789, 34.616863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174007, -0.559071, 0.810655,
		-0.922140, 0.196328, 0.333335,
		-0.345513, -0.805540, -0.481380,
		33.416546, 34.198128, 34.472450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269577, 34.446167, 35.306232>,  <33.658405, 34.762005, 34.809414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269577, 34.446167, 35.306232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330532, 34.167816, 35.025509>,  <33.367104, 34.000805, 34.857075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330532, 34.167816, 35.025509>,  <33.269577, 34.446167, 35.306232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330532, 34.167816, 35.025509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151977, -0.685158, 0.712363,
		-0.976566, -0.215215, 0.001346,
		0.152389, -0.695874, -0.701810,
		33.376247, 33.959053, 34.814964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752098, 33.961269, 35.351063>,  <33.269577, 34.446167, 35.306232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752098, 33.961269, 35.351063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076145, 33.804745, 35.176437>,  <33.270573, 33.710831, 35.071663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076145, 33.804745, 35.176437>,  <32.752098, 33.961269, 35.351063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076145, 33.804745, 35.176437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068308, -0.676570, 0.733203,
		-0.582280, -0.623799, -0.521369,
		0.810114, -0.391315, -0.436564,
		33.319180, 33.687351, 35.045467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637001, 33.240162, 35.304787>,  <32.752098, 33.961269, 35.351063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637001, 33.240162, 35.304787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029648, 33.316460, 35.307129>,  <33.265236, 33.362240, 35.308533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029648, 33.316460, 35.307129>,  <32.637001, 33.240162, 35.304787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029648, 33.316460, 35.307129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112574, -0.603553, 0.789336,
		0.154099, -0.774170, -0.613934,
		0.981622, 0.190749, 0.005855,
		33.324135, 33.373684, 35.308884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017338, 32.663185, 35.371655>,  <32.637001, 33.240162, 35.304787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017338, 32.663185, 35.371655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281338, 32.937160, 35.495106>,  <33.439739, 33.101547, 35.569176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281338, 32.937160, 35.495106>,  <33.017338, 32.663185, 35.371655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281338, 32.937160, 35.495106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368503, -0.653156, 0.661507,
		0.654677, -0.322865, -0.683488,
		0.660002, 0.684941, 0.308629,
		33.479340, 33.142643, 35.587696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458042, 32.309219, 35.605019>,  <33.017338, 32.663185, 35.371655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458042, 32.309219, 35.605019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580761, 32.654560, 35.765274>,  <33.654392, 32.861763, 35.861427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580761, 32.654560, 35.765274>,  <33.458042, 32.309219, 35.605019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580761, 32.654560, 35.765274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329005, -0.491184, 0.806532,
		0.893104, -0.115627, -0.434737,
		0.306793, 0.863348, 0.400636,
		33.672798, 32.913563, 35.885464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067902, 32.109840, 36.086994>,  <33.458042, 32.309219, 35.605019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067902, 32.109840, 36.086994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960304, 32.481495, 36.188457>,  <33.895744, 32.704487, 36.249336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960304, 32.481495, 36.188457>,  <34.067902, 32.109840, 36.086994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960304, 32.481495, 36.188457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246444, -0.188198, 0.950709,
		0.931078, 0.318251, -0.178355,
		-0.268998, 0.929138, 0.253658,
		33.879604, 32.760235, 36.264553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625061, 32.487724, 36.470268>,  <34.067902, 32.109840, 36.086994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625061, 32.487724, 36.470268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306335, 32.708122, 36.569454>,  <34.115101, 32.840359, 36.628967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306335, 32.708122, 36.569454>,  <34.625061, 32.487724, 36.470268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306335, 32.708122, 36.569454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205394, -0.138952, 0.968765,
		0.568238, 0.822860, -0.002451,
		-0.796818, 0.550993, 0.247968,
		34.067291, 32.873421, 36.643845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856236, 33.122543, 36.895550>,  <34.625061, 32.487724, 36.470268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856236, 33.122543, 36.895550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480042, 33.013256, 36.976391>,  <34.254326, 32.947685, 37.024895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480042, 33.013256, 36.976391>,  <34.856236, 33.122543, 36.895550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480042, 33.013256, 36.976391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226803, -0.061736, 0.971982,
		-0.253083, 0.959970, 0.120028,
		-0.940483, -0.273215, 0.202100,
		34.197895, 32.931290, 37.037022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716496, 33.435112, 37.514214>,  <34.856236, 33.122543, 36.895550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716496, 33.435112, 37.514214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429794, 33.157825, 37.483994>,  <34.257774, 32.991451, 37.465862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429794, 33.157825, 37.483994>,  <34.716496, 33.435112, 37.514214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429794, 33.157825, 37.483994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143944, -0.253092, 0.956674,
		-0.682305, 0.674828, 0.281190,
		-0.716757, -0.693218, -0.075548,
		34.214767, 32.949860, 37.461330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644306, 33.280628, 38.103016>,  <34.716496, 33.435112, 37.514214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644306, 33.280628, 38.103016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405445, 32.991962, 37.962948>,  <34.262131, 32.818764, 37.878906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405445, 32.991962, 37.962948>,  <34.644306, 33.280628, 38.103016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405445, 32.991962, 37.962948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176240, -0.543918, 0.820422,
		-0.782528, 0.428202, 0.451987,
		-0.597151, -0.721662, -0.350165,
		34.226299, 32.775463, 37.857899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204025, 33.098980, 38.649548>,  <34.644306, 33.280628, 38.103016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204025, 33.098980, 38.649548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236439, 32.788765, 38.399117>,  <34.255886, 32.602638, 38.248856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236439, 32.788765, 38.399117>,  <34.204025, 33.098980, 38.649548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236439, 32.788765, 38.399117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064868, -0.622711, 0.779758,
		-0.994598, -0.103802, -0.000155,
		0.081037, -0.775536, -0.626081,
		34.260750, 32.556103, 38.211292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573845, 33.725353, 38.768631>,  <34.204025, 33.098980, 38.649548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573845, 33.725353, 38.768631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645916, 33.759457, 38.376659>,  <34.689159, 33.779919, 38.141476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645916, 33.759457, 38.376659>,  <34.573845, 33.725353, 38.768631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645916, 33.759457, 38.376659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982716, 0.058636, -0.175587,
		0.042488, 0.994632, 0.094353,
		0.180177, 0.085262, -0.979932,
		34.699970, 33.785034, 38.082680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956066, 33.571686, 39.309517>,  <34.573845, 33.725353, 38.768631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956066, 33.571686, 39.309517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980419, 33.579586, 39.708698>,  <34.995033, 33.584328, 39.948208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980419, 33.579586, 39.708698>,  <34.956066, 33.571686, 39.309517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980419, 33.579586, 39.708698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678372, 0.734228, 0.026855,
		-0.732192, -0.678616, 0.058104,
		0.060886, 0.019753, 0.997949,
		34.998684, 33.585510, 40.008083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384758, 33.351906, 39.799973>,  <34.956066, 33.571686, 39.309517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384758, 33.351906, 39.799973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621769, 33.649670, 39.923103>,  <34.763977, 33.828327, 39.996983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621769, 33.649670, 39.923103>,  <34.384758, 33.351906, 39.799973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621769, 33.649670, 39.923103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737147, 0.655166, -0.165448,
		-0.324842, -0.128885, 0.936945,
		0.592531, 0.744410, 0.307832,
		34.799530, 33.872993, 40.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924427, 33.838860, 39.804466>,  <34.384758, 33.351906, 39.799973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924427, 33.838860, 39.804466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271942, 34.033405, 39.841671>,  <34.480453, 34.150135, 39.863995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271942, 34.033405, 39.841671>,  <33.924427, 33.838860, 39.804466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271942, 34.033405, 39.841671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473300, 0.870837, -0.132778,
		-0.145575, 0.071335, 0.986772,
		0.868790, 0.486368, 0.093010,
		34.532578, 34.179317, 39.869576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690044, 34.420429, 40.158009>,  <33.924427, 33.838860, 39.804466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690044, 34.420429, 40.158009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051872, 34.501854, 40.008171>,  <34.268970, 34.550709, 39.918270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051872, 34.501854, 40.008171>,  <33.690044, 34.420429, 40.158009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051872, 34.501854, 40.008171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285346, 0.941897, -0.177220,
		0.316753, 0.267196, 0.910095,
		0.904569, 0.203557, -0.374592,
		34.323242, 34.562920, 39.895794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820210, 35.165558, 40.310551>,  <33.690044, 34.420429, 40.158009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820210, 35.165558, 40.310551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080124, 35.088627, 40.016396>,  <34.236073, 35.042469, 39.839905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080124, 35.088627, 40.016396>,  <33.820210, 35.165558, 40.310551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080124, 35.088627, 40.016396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121839, 0.928597, -0.350519,
		0.750290, 0.317361, 0.579955,
		0.649785, -0.192329, -0.735384,
		34.275059, 35.030930, 39.795780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041241, 35.779911, 40.156429>,  <33.820210, 35.165558, 40.310551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041241, 35.779911, 40.156429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158569, 35.589508, 39.824795>,  <34.228966, 35.475266, 39.625813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158569, 35.589508, 39.824795>,  <34.041241, 35.779911, 40.156429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158569, 35.589508, 39.824795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233008, 0.805483, -0.544889,
		0.927184, 0.353012, 0.125353,
		0.293322, -0.476004, -0.829085,
		34.246567, 35.446709, 39.576069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588497, 36.151451, 39.728775>,  <34.041241, 35.779911, 40.156429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588497, 36.151451, 39.728775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429474, 35.912910, 39.449833>,  <34.334061, 35.769787, 39.282467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429474, 35.912910, 39.449833>,  <34.588497, 36.151451, 39.728775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429474, 35.912910, 39.449833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240977, 0.801182, -0.547756,
		0.885368, -0.049718, -0.462224,
		-0.397559, -0.596351, -0.697361,
		34.310207, 35.734005, 39.240623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842682, 36.371239, 39.065929>,  <34.588497, 36.151451, 39.728775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842682, 36.371239, 39.065929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518803, 36.153591, 38.978001>,  <34.324474, 36.023003, 38.925243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518803, 36.153591, 38.978001>,  <34.842682, 36.371239, 39.065929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518803, 36.153591, 38.978001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320481, 0.723787, -0.611085,
		0.491604, -0.424348, -0.760430,
		-0.809702, -0.544115, -0.219821,
		34.275890, 35.990356, 38.912052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805534, 36.267685, 38.345417>,  <34.842682, 36.371239, 39.065929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805534, 36.267685, 38.345417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430862, 36.198471, 38.467201>,  <34.206059, 36.156940, 38.540272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430862, 36.198471, 38.467201>,  <34.805534, 36.267685, 38.345417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430862, 36.198471, 38.467201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333798, 0.704066, -0.626794,
		-0.105899, -0.688731, -0.717242,
		-0.936677, -0.173037, 0.304457,
		34.149860, 36.146561, 38.558537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379871, 36.290237, 37.789112>,  <34.805534, 36.267685, 38.345417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379871, 36.290237, 37.789112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.109196, 36.335785, 38.080078>,  <33.946793, 36.363113, 38.254658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.109196, 36.335785, 38.080078>,  <34.379871, 36.290237, 37.789112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109196, 36.335785, 38.080078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573642, 0.537798, -0.617826,
		-0.461555, -0.835348, -0.298597,
		-0.676684, 0.113873, 0.727414,
		33.906189, 36.369946, 38.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726547, 36.191341, 37.402077>,  <34.379871, 36.290237, 37.789112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726547, 36.191341, 37.402077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662361, 36.357197, 37.760368>,  <33.623848, 36.456711, 37.975342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662361, 36.357197, 37.760368>,  <33.726547, 36.191341, 37.402077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662361, 36.357197, 37.760368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703677, 0.588316, -0.398400,
		-0.692162, -0.694232, 0.197366,
		-0.160468, 0.414639, 0.895725,
		33.614220, 36.481590, 38.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096565, 36.018307, 37.609554>,  <33.726547, 36.191341, 37.402077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096565, 36.018307, 37.609554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229118, 36.366478, 37.755184>,  <33.308651, 36.575378, 37.842560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229118, 36.366478, 37.755184>,  <33.096565, 36.018307, 37.609554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229118, 36.366478, 37.755184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610607, 0.492019, -0.620545,
		-0.719269, -0.016670, 0.694532,
		0.331379, 0.870425, 0.364073,
		33.328533, 36.627605, 37.864407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558678, 36.497818, 37.654667>,  <33.096565, 36.018307, 37.609554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558678, 36.497818, 37.654667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865406, 36.754272, 37.642422>,  <33.049442, 36.908146, 37.635075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865406, 36.754272, 37.642422>,  <32.558678, 36.497818, 37.654667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865406, 36.754272, 37.642422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543534, 0.623243, -0.562263,
		-0.341409, 0.447790, 0.826392,
		0.766819, 0.641133, -0.030608,
		33.095451, 36.946613, 37.633240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223225, 37.163979, 37.720573>,  <32.558678, 36.497818, 37.654667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223225, 37.163979, 37.720573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578175, 37.287525, 37.583656>,  <32.791145, 37.361652, 37.501507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578175, 37.287525, 37.583656>,  <32.223225, 37.163979, 37.720573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578175, 37.287525, 37.583656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460888, 0.574864, -0.676102,
		-0.012055, 0.757715, 0.652475,
		0.887377, 0.308868, -0.342291,
		32.844387, 37.380184, 37.480968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287682, 37.931862, 37.676323>,  <32.223225, 37.163979, 37.720573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287682, 37.931862, 37.676323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574799, 37.802727, 37.429565>,  <32.747066, 37.725246, 37.281509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574799, 37.802727, 37.429565>,  <32.287682, 37.931862, 37.676323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574799, 37.802727, 37.429565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313250, 0.641536, -0.700218,
		0.621816, 0.695850, 0.359358,
		0.717788, -0.322838, -0.616892,
		32.790134, 37.705875, 37.244499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640911, 38.483246, 37.388504>,  <32.287682, 37.931862, 37.676323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640911, 38.483246, 37.388504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719948, 38.183479, 37.135735>,  <32.767368, 38.003620, 36.984074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719948, 38.183479, 37.135735>,  <32.640911, 38.483246, 37.388504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719948, 38.183479, 37.135735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323042, 0.558848, -0.763762,
		0.925528, 0.355051, -0.131670,
		0.197591, -0.749418, -0.631926,
		32.779224, 37.958652, 36.946156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751808, 38.821712, 36.871246>,  <32.640911, 38.483246, 37.388504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751808, 38.821712, 36.871246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712589, 38.452694, 36.721958>,  <32.689056, 38.231281, 36.632385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712589, 38.452694, 36.721958>,  <32.751808, 38.821712, 36.871246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712589, 38.452694, 36.721958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225415, 0.385863, -0.894594,
		0.969317, -0.003585, -0.245790,
		-0.098048, -0.922549, -0.373216,
		32.683174, 38.175930, 36.609993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295963, 38.695827, 36.358574>,  <32.751808, 38.821712, 36.871246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295963, 38.695827, 36.358574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985985, 38.455826, 36.279118>,  <32.799999, 38.311825, 36.231445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985985, 38.455826, 36.279118>,  <33.295963, 38.695827, 36.358574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985985, 38.455826, 36.279118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188030, 0.518922, -0.833886,
		0.603410, -0.608867, -0.514954,
		-0.774946, -0.600002, -0.198638,
		32.753502, 38.275826, 36.219528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341949, 38.445408, 35.658684>,  <33.295963, 38.695827, 36.358574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341949, 38.445408, 35.658684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953129, 38.394135, 35.737354>,  <32.719837, 38.363369, 35.784557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953129, 38.394135, 35.737354>,  <33.341949, 38.445408, 35.658684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953129, 38.394135, 35.737354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234692, 0.509730, -0.827705,
		0.005845, -0.850732, -0.525568,
		-0.972052, -0.128184, 0.196680,
		32.661514, 38.355679, 35.796360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096161, 38.192493, 35.090813>,  <33.341949, 38.445408, 35.658684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096161, 38.192493, 35.090813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778603, 38.333046, 35.289314>,  <32.588066, 38.417377, 35.408413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778603, 38.333046, 35.289314>,  <33.096161, 38.192493, 35.090813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778603, 38.333046, 35.289314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218339, 0.596965, -0.771985,
		-0.567503, -0.721226, -0.397208,
		-0.793895, 0.351378, 0.496251,
		32.540436, 38.438457, 35.438190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664368, 38.264328, 34.580185>,  <33.096161, 38.192493, 35.090813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664368, 38.264328, 34.580185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487057, 38.454033, 34.884441>,  <32.380672, 38.567856, 35.066998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487057, 38.454033, 34.884441>,  <32.664368, 38.264328, 34.580185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487057, 38.454033, 34.884441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384521, 0.665922, -0.639290,
		-0.809723, -0.575864, -0.112821,
		-0.443274, 0.474265, 0.760644,
		32.354073, 38.596313, 35.112637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985712, 38.454498, 34.344391>,  <32.664368, 38.264328, 34.580185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985712, 38.454498, 34.344391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056652, 38.708530, 34.645115>,  <32.099216, 38.860950, 34.825550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056652, 38.708530, 34.645115>,  <31.985712, 38.454498, 34.344391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056652, 38.708530, 34.645115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548300, 0.698143, -0.460396,
		-0.817260, -0.330568, 0.472029,
		0.177351, 0.635076, 0.751814,
		32.109856, 38.899052, 34.870659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316141, 38.710808, 34.581017>,  <31.985712, 38.454498, 34.344391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316141, 38.710808, 34.581017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601686, 38.978966, 34.661980>,  <31.773014, 39.139862, 34.710556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601686, 38.978966, 34.661980>,  <31.316141, 38.710808, 34.581017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601686, 38.978966, 34.661980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579349, 0.727745, -0.367071,
		-0.393384, 0.144774, 0.907904,
		0.713865, 0.670394, 0.202409,
		31.815845, 39.180084, 34.722702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924362, 39.176231, 34.917473>,  <31.316141, 38.710808, 34.581017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924362, 39.176231, 34.917473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.251612, 39.353218, 34.770557>,  <31.447962, 39.459408, 34.682407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.251612, 39.353218, 34.770557>,  <30.924362, 39.176231, 34.917473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251612, 39.353218, 34.770557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575031, 0.633887, -0.517229,
		0.003966, 0.634361, 0.773027,
		0.818122, 0.442463, -0.367291,
		31.497047, 39.485958, 34.660370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816820, 39.845264, 35.012371>,  <30.924362, 39.176231, 34.917473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816820, 39.845264, 35.012371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080797, 39.833191, 34.712086>,  <31.239183, 39.825947, 34.531914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080797, 39.833191, 34.712086>,  <30.816820, 39.845264, 35.012371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080797, 39.833191, 34.712086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408356, 0.824307, -0.392128,
		0.630652, 0.565338, 0.531668,
		0.659942, -0.030187, -0.750710,
		31.278780, 39.824135, 34.486874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077084, 40.568073, 34.981441>,  <30.816820, 39.845264, 35.012371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077084, 40.568073, 34.981441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.168097, 40.394489, 34.632751>,  <31.222704, 40.290337, 34.423538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.168097, 40.394489, 34.632751>,  <31.077084, 40.568073, 34.981441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168097, 40.394489, 34.632751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392514, 0.778385, -0.489948,
		0.891157, 0.453644, 0.006772,
		0.227533, -0.433963, -0.871725,
		31.236357, 40.264301, 34.371235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478424, 41.070690, 34.694725>,  <31.077084, 40.568073, 34.981441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478424, 41.070690, 34.694725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331408, 40.825981, 34.414539>,  <31.243198, 40.679157, 34.246426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331408, 40.825981, 34.414539>,  <31.478424, 41.070690, 34.694725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331408, 40.825981, 34.414539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380733, 0.786154, -0.486832,
		0.848502, 0.087759, -0.521864,
		-0.367541, -0.611769, -0.700466,
		31.221146, 40.642452, 34.204399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625288, 41.443417, 34.045101>,  <31.478424, 41.070690, 34.694725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625288, 41.443417, 34.045101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319887, 41.192139, 33.985184>,  <31.136646, 41.041374, 33.949234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319887, 41.192139, 33.985184>,  <31.625288, 41.443417, 34.045101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319887, 41.192139, 33.985184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447463, 0.681838, -0.578684,
		0.465660, -0.374799, -0.801677,
		-0.763504, -0.628190, -0.149796,
		31.090836, 41.003681, 33.940247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107185, 41.756962, 33.565216>,  <31.625288, 41.443417, 34.045101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107185, 41.756962, 33.565216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348522, 42.067558, 33.637920>,  <32.493324, 42.253918, 33.681545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348522, 42.067558, 33.637920>,  <32.107185, 41.756962, 33.565216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348522, 42.067558, 33.637920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411256, -0.498231, 0.763304,
		0.683259, -0.385783, -0.619942,
		0.603344, 0.776490, 0.181765,
		32.529526, 42.300507, 33.692451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714733, 41.495300, 33.622421>,  <32.107185, 41.756962, 33.565216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714733, 41.495300, 33.622421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752991, 41.838253, 33.824711>,  <32.775944, 42.044025, 33.946083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752991, 41.838253, 33.824711>,  <32.714733, 41.495300, 33.622421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752991, 41.838253, 33.824711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461751, -0.488296, 0.740509,
		0.881838, 0.162693, -0.442598,
		0.095643, 0.857379, 0.505722,
		32.781685, 42.095467, 33.976429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419659, 41.531052, 33.839695>,  <32.714733, 41.495300, 33.622421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419659, 41.531052, 33.839695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267349, 41.799019, 34.094635>,  <33.175964, 41.959801, 34.247601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267349, 41.799019, 34.094635>,  <33.419659, 41.531052, 33.839695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267349, 41.799019, 34.094635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493575, -0.435611, 0.752746,
		0.781916, 0.601211, -0.164783,
		-0.380778, 0.669917, 0.637354,
		33.153114, 41.999992, 34.285843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988659, 41.811764, 34.268810>,  <33.419659, 41.531052, 33.839695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988659, 41.811764, 34.268810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647339, 41.858936, 34.471973>,  <33.442547, 41.887238, 34.593872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647339, 41.858936, 34.471973>,  <33.988659, 41.811764, 34.268810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647339, 41.858936, 34.471973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462729, -0.277726, 0.841873,
		0.240340, 0.953395, 0.182416,
		-0.853299, 0.117927, 0.507912,
		33.391350, 41.894314, 34.624348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161163, 42.158424, 34.909893>,  <33.988659, 41.811764, 34.268810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161163, 42.158424, 34.909893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806999, 41.987728, 34.983589>,  <33.594501, 41.885311, 35.027805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806999, 41.987728, 34.983589>,  <34.161163, 42.158424, 34.909893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806999, 41.987728, 34.983589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343302, -0.333156, 0.878152,
		-0.313365, 0.840772, 0.441480,
		-0.885407, -0.426743, 0.184240,
		33.541378, 41.859707, 35.038860>
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
