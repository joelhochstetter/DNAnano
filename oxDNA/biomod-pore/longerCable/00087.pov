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
	<24.393177, 35.187733, 34.667355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366669, 34.904953, 34.949013>,  <24.350763, 34.735283, 35.118008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366669, 34.904953, 34.949013>,  <24.393177, 35.187733, 34.667355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366669, 34.904953, 34.949013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851336, 0.328007, 0.409437,
		-0.520419, 0.626601, 0.580117,
		-0.066271, -0.706953, 0.704149,
		24.346786, 34.692867, 35.160255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580162, 35.479500, 35.247101>,  <24.393177, 35.187733, 34.667355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580162, 35.479500, 35.247101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631758, 35.083027, 35.259220>,  <24.662716, 34.845142, 35.266491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631758, 35.083027, 35.259220>,  <24.580162, 35.479500, 35.247101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631758, 35.083027, 35.259220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865762, 0.127460, 0.483952,
		-0.483547, -0.036194, 0.874570,
		0.128989, -0.991183, 0.030297,
		24.670454, 34.785671, 35.268311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643745, 36.028042, 35.717316>,  <24.580162, 35.479500, 35.247101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643745, 36.028042, 35.717316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388779, 36.155586, 35.436737>,  <24.235800, 36.232113, 35.268391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388779, 36.155586, 35.436737>,  <24.643745, 36.028042, 35.717316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388779, 36.155586, 35.436737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730683, 0.539071, -0.418933,
		0.244548, -0.779569, -0.576601,
		-0.637416, 0.318863, -0.701447,
		24.197554, 36.251244, 35.226303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174877, 36.049538, 35.225155>,  <24.643745, 36.028042, 35.717316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174877, 36.049538, 35.225155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869999, 36.296455, 35.147175>,  <24.687073, 36.444607, 35.100388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869999, 36.296455, 35.147175>,  <25.174877, 36.049538, 35.225155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869999, 36.296455, 35.147175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646734, 0.712991, -0.270887,
		-0.028223, -0.332547, -0.942665,
		-0.762194, 0.617298, -0.194946,
		24.641340, 36.481644, 35.088692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057285, 36.286053, 34.517319>,  <25.174877, 36.049538, 35.225155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057285, 36.286053, 34.517319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.928961, 36.583157, 34.752396>,  <24.851965, 36.761421, 34.893444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.928961, 36.583157, 34.752396>,  <25.057285, 36.286053, 34.517319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928961, 36.583157, 34.752396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692856, 0.607103, -0.389072,
		-0.645778, 0.282368, -0.709393,
		-0.320813, 0.742761, 0.587694,
		24.832716, 36.805984, 34.928703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687094, 36.837395, 34.212269>,  <25.057285, 36.286053, 34.517319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687094, 36.837395, 34.212269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911831, 36.918655, 34.533035>,  <25.046673, 36.967411, 34.725494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911831, 36.918655, 34.533035>,  <24.687094, 36.837395, 34.212269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911831, 36.918655, 34.533035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572892, 0.603743, -0.554336,
		-0.596765, 0.770858, 0.222821,
		0.561841, 0.203156, 0.801912,
		25.080383, 36.979603, 34.773609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.618292, 37.506039, 34.327442>,  <24.687094, 36.837395, 34.212269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.618292, 37.506039, 34.327442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970573, 37.356438, 34.443707>,  <25.181942, 37.266678, 34.513466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970573, 37.356438, 34.443707>,  <24.618292, 37.506039, 34.327442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970573, 37.356438, 34.443707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461550, 0.539693, -0.704061,
		0.106450, 0.754225, 0.647930,
		0.880704, -0.373999, 0.290662,
		25.234785, 37.244236, 34.530907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079208, 38.123177, 34.451340>,  <24.618292, 37.506039, 34.327442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079208, 38.123177, 34.451340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273844, 37.795307, 34.330429>,  <25.390625, 37.598587, 34.257881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273844, 37.795307, 34.330429>,  <25.079208, 38.123177, 34.451340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273844, 37.795307, 34.330429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506508, 0.546601, -0.666841,
		0.711814, 0.171373, 0.681141,
		0.486591, -0.819670, -0.302276,
		25.419821, 37.549408, 34.239746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686832, 38.360897, 34.319778>,  <25.079208, 38.123177, 34.451340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686832, 38.360897, 34.319778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702530, 38.011036, 34.126514>,  <25.711948, 37.801121, 34.010555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702530, 38.011036, 34.126514>,  <25.686832, 38.360897, 34.319778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702530, 38.011036, 34.126514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665103, 0.383720, -0.640622,
		0.745720, -0.296206, 0.596795,
		0.039246, -0.874654, -0.483156,
		25.714304, 37.748638, 33.981567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426676, 38.186028, 34.366283>,  <25.686832, 38.360897, 34.319778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426676, 38.186028, 34.366283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247036, 37.963970, 34.086246>,  <26.139252, 37.830734, 33.918224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247036, 37.963970, 34.086246>,  <26.426676, 38.186028, 34.366283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247036, 37.963970, 34.086246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584762, 0.409809, -0.700078,
		0.675547, -0.723791, 0.140582,
		-0.449098, -0.555143, -0.700091,
		26.112307, 37.797428, 33.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010309, 37.971359, 34.035236>,  <26.426676, 38.186028, 34.366283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010309, 37.971359, 34.035236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681612, 37.978985, 33.807419>,  <26.484394, 37.983562, 33.670731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681612, 37.978985, 33.807419>,  <27.010309, 37.971359, 34.035236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681612, 37.978985, 33.807419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472371, 0.581840, -0.662063,
		0.318757, -0.813080, -0.487130,
		-0.821741, 0.019069, -0.569541,
		26.435089, 37.984707, 33.636555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353399, 37.964867, 33.362988>,  <27.010309, 37.971359, 34.035236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353399, 37.964867, 33.362988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987370, 38.126095, 33.357708>,  <26.767752, 38.222832, 33.354542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987370, 38.126095, 33.357708>,  <27.353399, 37.964867, 33.362988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987370, 38.126095, 33.357708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300106, 0.658724, -0.689942,
		-0.269406, -0.635307, -0.723744,
		-0.915072, 0.403074, -0.013195,
		26.712849, 38.247017, 33.353748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542259, 38.439785, 32.695431>,  <27.353399, 37.964867, 33.362988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542259, 38.439785, 32.695431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213840, 38.584393, 32.518711>,  <27.016788, 38.671158, 32.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213840, 38.584393, 32.518711>,  <27.542259, 38.439785, 32.695431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213840, 38.584393, 32.518711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557161, -0.676014, 0.482262,
		-0.124314, 0.642112, 0.756464,
		-0.821047, 0.361520, -0.441798,
		26.967525, 38.692848, 32.386173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021769, 38.672413, 33.214092>,  <27.542259, 38.439785, 32.695431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021769, 38.672413, 33.214092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872044, 38.545277, 32.865639>,  <26.782209, 38.468994, 32.656567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872044, 38.545277, 32.865639>,  <27.021769, 38.672413, 33.214092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872044, 38.545277, 32.865639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295326, -0.849650, 0.436896,
		-0.879018, 0.420803, 0.224168,
		-0.374312, -0.317837, -0.871132,
		26.759750, 38.449924, 32.604298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277420, 38.674171, 33.143440>,  <27.021769, 38.672413, 33.214092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277420, 38.674171, 33.143440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430071, 38.393593, 32.902664>,  <26.521662, 38.225246, 32.758198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430071, 38.393593, 32.902664>,  <26.277420, 38.674171, 33.143440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430071, 38.393593, 32.902664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505170, -0.703643, 0.499689,
		-0.774056, 0.113386, -0.622881,
		0.381629, -0.701448, -0.601938,
		26.544559, 38.183159, 32.722084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682247, 38.349911, 32.783630>,  <26.277420, 38.674171, 33.143440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682247, 38.349911, 32.783630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020939, 38.171490, 32.899624>,  <26.224154, 38.064438, 32.969219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020939, 38.171490, 32.899624>,  <25.682247, 38.349911, 32.783630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020939, 38.171490, 32.899624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520740, -0.583163, 0.623498,
		-0.109008, -0.678938, -0.726059,
		0.846727, -0.446054, 0.289981,
		26.274958, 38.037674, 32.986618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582230, 37.667782, 32.677486>,  <25.682247, 38.349911, 32.783630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582230, 37.667782, 32.677486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842253, 37.752014, 32.969536>,  <25.998266, 37.802555, 33.144764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842253, 37.752014, 32.969536>,  <25.582230, 37.667782, 32.677486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842253, 37.752014, 32.969536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562304, -0.512973, 0.648593,
		0.511118, -0.832173, -0.215048,
		0.650055, 0.210586, 0.730124,
		26.037270, 37.815189, 33.188572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396441, 37.059822, 32.976215>,  <25.582230, 37.667782, 32.677486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396441, 37.059822, 32.976215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637974, 37.268627, 33.217175>,  <25.782894, 37.393909, 33.361752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637974, 37.268627, 33.217175>,  <25.396441, 37.059822, 32.976215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637974, 37.268627, 33.217175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327254, -0.526756, 0.784495,
		0.726837, -0.670841, -0.147240,
		0.603831, 0.522016, 0.602401,
		25.819122, 37.425232, 33.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795502, 36.619335, 33.428093>,  <25.396441, 37.059822, 32.976215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795502, 36.619335, 33.428093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775974, 36.983074, 33.593357>,  <25.764257, 37.201317, 33.692516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775974, 36.983074, 33.593357>,  <25.795502, 36.619335, 33.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775974, 36.983074, 33.593357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413909, -0.394883, 0.820211,
		0.909008, -0.130968, 0.395666,
		-0.048820, 0.909349, 0.413161,
		25.761328, 37.255878, 33.717304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168604, 36.495892, 34.001244>,  <25.795502, 36.619335, 33.428093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168604, 36.495892, 34.001244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934557, 36.816658, 34.049515>,  <25.794128, 37.009117, 34.078480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934557, 36.816658, 34.049515>,  <26.168604, 36.495892, 34.001244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934557, 36.816658, 34.049515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471927, -0.457738, 0.753499,
		0.659484, 0.383934, 0.646278,
		-0.585120, 0.801917, 0.120682,
		25.759022, 37.057232, 34.085720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022303, 36.637165, 34.718147>,  <26.168604, 36.495892, 34.001244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022303, 36.637165, 34.718147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720341, 36.779533, 34.497807>,  <25.539164, 36.864952, 34.365601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720341, 36.779533, 34.497807>,  <26.022303, 36.637165, 34.718147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720341, 36.779533, 34.497807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653082, -0.484807, 0.581761,
		-0.059999, 0.798928, 0.598427,
		-0.754906, 0.355917, -0.550853,
		25.493868, 36.886307, 34.332550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658525, 36.160130, 34.923523>,  <26.022303, 36.637165, 34.718147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658525, 36.160130, 34.923523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574242, 36.528309, 35.055206>,  <26.523672, 36.749218, 35.134216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574242, 36.528309, 35.055206>,  <26.658525, 36.160130, 34.923523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574242, 36.528309, 35.055206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304097, -0.258337, 0.916944,
		0.929046, 0.293317, -0.225472,
		-0.210708, 0.920449, 0.329204,
		26.511030, 36.804443, 35.153969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335718, 36.524761, 35.142883>,  <26.658525, 36.160130, 34.923523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335718, 36.524761, 35.142883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010468, 36.651142, 35.338432>,  <26.815317, 36.726971, 35.455761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010468, 36.651142, 35.338432>,  <27.335718, 36.524761, 35.142883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010468, 36.651142, 35.338432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487923, -0.088018, 0.868437,
		0.317416, 0.944683, -0.082592,
		-0.813128, 0.315955, 0.488871,
		26.766529, 36.745930, 35.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510077, 37.256672, 35.512615>,  <27.335718, 36.524761, 35.142883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510077, 37.256672, 35.512615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217104, 37.050056, 35.690029>,  <27.041321, 36.926086, 35.796478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217104, 37.050056, 35.690029>,  <27.510077, 37.256672, 35.512615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217104, 37.050056, 35.690029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526328, -0.016333, 0.850124,
		-0.431881, 0.856106, 0.283834,
		-0.732432, -0.516543, 0.443539,
		26.997374, 36.895092, 35.823090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165106, 37.623997, 36.117512>,  <27.510077, 37.256672, 35.512615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165106, 37.623997, 36.117512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163330, 37.224369, 36.134701>,  <27.162266, 36.984592, 36.145012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163330, 37.224369, 36.134701>,  <27.165106, 37.623997, 36.117512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163330, 37.224369, 36.134701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613079, 0.031229, 0.789404,
		-0.790009, 0.029848, 0.612368,
		-0.004438, -0.999067, 0.042970,
		27.161999, 36.924648, 36.147591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260937, 38.379517, 36.122082>,  <27.165106, 37.623997, 36.117512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260937, 38.379517, 36.122082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606724, 38.283207, 35.945572>,  <27.814196, 38.225422, 35.839664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606724, 38.283207, 35.945572>,  <27.260937, 38.379517, 36.122082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606724, 38.283207, 35.945572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362851, 0.906404, 0.216264,
		0.347906, -0.347071, 0.870921,
		0.864465, -0.240775, -0.441278,
		27.866064, 38.210976, 35.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888540, 38.442909, 36.610470>,  <27.260937, 38.379517, 36.122082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888540, 38.442909, 36.610470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024778, 38.511711, 36.240734>,  <28.106522, 38.552990, 36.018890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024778, 38.511711, 36.240734>,  <27.888540, 38.442909, 36.610470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024778, 38.511711, 36.240734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357762, 0.885460, 0.296593,
		0.869483, -0.431712, 0.240048,
		0.340596, 0.172003, -0.924343,
		28.126957, 38.563313, 35.963432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566021, 38.578590, 36.647511>,  <27.888540, 38.442909, 36.610470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566021, 38.578590, 36.647511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437515, 38.755165, 36.312386>,  <28.360411, 38.861111, 36.111313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437515, 38.755165, 36.312386>,  <28.566021, 38.578590, 36.647511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437515, 38.755165, 36.312386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315051, 0.884134, 0.345036,
		0.893046, -0.153104, -0.423117,
		-0.321266, 0.441436, -0.837808,
		28.341135, 38.887596, 36.061043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082193, 39.096645, 36.339130>,  <28.566021, 38.578590, 36.647511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082193, 39.096645, 36.339130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703522, 39.200523, 36.262859>,  <28.476318, 39.262852, 36.217094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703522, 39.200523, 36.262859>,  <29.082193, 39.096645, 36.339130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703522, 39.200523, 36.262859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159330, 0.891770, 0.423509,
		0.280026, 0.370545, -0.885597,
		-0.946678, 0.259695, -0.190680,
		28.419518, 39.278431, 36.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095091, 39.813606, 36.047878>,  <29.082193, 39.096645, 36.339130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095091, 39.813606, 36.047878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738111, 39.767132, 36.222248>,  <28.523924, 39.739246, 36.326870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738111, 39.767132, 36.222248>,  <29.095091, 39.813606, 36.047878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738111, 39.767132, 36.222248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104604, 0.886647, 0.450462,
		-0.438851, 0.447614, -0.779135,
		-0.892450, -0.116186, 0.435928,
		28.470377, 39.732277, 36.353027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360313, 40.171532, 35.415863>,  <29.095091, 39.813606, 36.047878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360313, 40.171532, 35.415863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592373, 39.852413, 35.481525>,  <29.731609, 39.660942, 35.520924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592373, 39.852413, 35.481525>,  <29.360313, 40.171532, 35.415863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592373, 39.852413, 35.481525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512718, 0.514302, 0.687469,
		-0.632888, -0.314667, 0.707416,
		0.580149, -0.797796, 0.164160,
		29.766418, 39.613075, 35.530773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046738, 40.044697, 35.524399>,  <29.360313, 40.171532, 35.415863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046738, 40.044697, 35.524399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424786, 39.983017, 35.639614>,  <30.651615, 39.946011, 35.708744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424786, 39.983017, 35.639614>,  <30.046738, 40.044697, 35.524399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424786, 39.983017, 35.639614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016612, 0.903161, 0.428982,
		-0.326295, -0.400655, 0.856158,
		0.945122, -0.154197, 0.288042,
		30.708323, 39.936756, 35.726028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274584, 39.730850, 36.250740>,  <30.046738, 40.044697, 35.524399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274584, 39.730850, 36.250740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521732, 40.001118, 36.089886>,  <30.670021, 40.163277, 35.993374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521732, 40.001118, 36.089886>,  <30.274584, 39.730850, 36.250740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521732, 40.001118, 36.089886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099479, 0.574503, 0.812435,
		0.779962, -0.461974, 0.422182,
		0.617869, 0.675667, -0.402134,
		30.707092, 40.203819, 35.969246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800396, 39.861809, 36.712460>,  <30.274584, 39.730850, 36.250740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800396, 39.861809, 36.712460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775604, 40.185993, 36.479458>,  <30.760729, 40.380505, 36.339657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775604, 40.185993, 36.479458>,  <30.800396, 39.861809, 36.712460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775604, 40.185993, 36.479458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116288, 0.573785, 0.810709,
		0.991280, 0.117986, 0.058683,
		-0.061981, 0.810463, -0.582501,
		30.757010, 40.429131, 36.304707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222157, 40.433331, 37.088135>,  <30.800396, 39.861809, 36.712460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222157, 40.433331, 37.088135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947186, 40.590317, 36.843704>,  <30.782202, 40.684509, 36.697048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947186, 40.590317, 36.843704>,  <31.222157, 40.433331, 37.088135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947186, 40.590317, 36.843704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147710, 0.748267, 0.646744,
		0.711071, 0.534852, -0.456410,
		-0.687429, 0.392465, -0.611074,
		30.740957, 40.708057, 36.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936277, 40.667366, 37.765972>,  <31.222157, 40.433331, 37.088135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936277, 40.667366, 37.765972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908503, 41.064739, 37.729607>,  <30.891838, 41.303165, 37.707787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908503, 41.064739, 37.729607>,  <30.936277, 40.667366, 37.765972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908503, 41.064739, 37.729607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172588, -0.077795, -0.981917,
		-0.982544, -0.083872, -0.166053,
		-0.069437, 0.993435, -0.090912,
		30.887671, 41.362770, 37.702332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353401, 40.758850, 37.263561>,  <30.936277, 40.667366, 37.765972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353401, 40.758850, 37.263561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611633, 41.061443, 37.221695>,  <30.766573, 41.243000, 37.196575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611633, 41.061443, 37.221695>,  <30.353401, 40.758850, 37.263561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611633, 41.061443, 37.221695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003297, -0.139810, -0.990173,
		-0.763684, 0.638893, -0.092753,
		0.645582, 0.756485, -0.104664,
		30.805307, 41.288387, 37.190296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068964, 41.233044, 36.794502>,  <30.353401, 40.758850, 37.263561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068964, 41.233044, 36.794502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467333, 41.266518, 36.781010>,  <30.706354, 41.286602, 36.772915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467333, 41.266518, 36.781010>,  <30.068964, 41.233044, 36.794502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467333, 41.266518, 36.781010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009999, -0.473932, -0.880505,
		-0.089669, 0.876576, -0.472835,
		0.995921, 0.083682, -0.033732,
		30.766109, 41.291622, 36.770889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197594, 41.470097, 36.114384>,  <30.068964, 41.233044, 36.794502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197594, 41.470097, 36.114384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504953, 41.265820, 36.268661>,  <30.689369, 41.143253, 36.361229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504953, 41.265820, 36.268661>,  <30.197594, 41.470097, 36.114384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504953, 41.265820, 36.268661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194599, -0.387690, -0.901015,
		0.609669, 0.767394, -0.198520,
		0.768398, -0.510689, 0.385697,
		30.735474, 41.112614, 36.384369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731350, 41.498989, 35.613293>,  <30.197594, 41.470097, 36.114384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731350, 41.498989, 35.613293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787382, 41.165905, 35.827576>,  <30.821001, 40.966057, 35.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787382, 41.165905, 35.827576>,  <30.731350, 41.498989, 35.613293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787382, 41.165905, 35.827576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160212, -0.514846, -0.842179,
		0.977092, 0.203799, 0.061290,
		0.140080, -0.832707, 0.535703,
		30.829407, 40.916092, 35.988285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436136, 41.189819, 35.451458>,  <30.731350, 41.498989, 35.613293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436136, 41.189819, 35.451458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209743, 40.897705, 35.604481>,  <31.073908, 40.722435, 35.696293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209743, 40.897705, 35.604481>,  <31.436136, 41.189819, 35.451458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209743, 40.897705, 35.604481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243447, -0.591383, -0.768765,
		0.787654, -0.341975, 0.512498,
		-0.565981, -0.730287, 0.382552,
		31.039949, 40.678619, 35.719246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824348, 40.504242, 35.564350>,  <31.436136, 41.189819, 35.451458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824348, 40.504242, 35.564350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438457, 40.443058, 35.478649>,  <31.206923, 40.406345, 35.427231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438457, 40.443058, 35.478649>,  <31.824348, 40.504242, 35.564350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438457, 40.443058, 35.478649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263064, -0.529425, -0.806540,
		0.009942, -0.834452, 0.550990,
		-0.964727, -0.152964, -0.214251,
		31.149040, 40.397167, 35.414375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937262, 39.863873, 35.308838>,  <31.824348, 40.504242, 35.564350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937262, 39.863873, 35.308838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590279, 40.009411, 35.173115>,  <31.382088, 40.096733, 35.091679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590279, 40.009411, 35.173115>,  <31.937262, 39.863873, 35.308838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590279, 40.009411, 35.173115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043236, -0.624308, -0.779981,
		-0.495627, -0.691272, 0.525830,
		-0.867459, 0.363845, -0.339311,
		31.330042, 40.118565, 35.071320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451815, 39.347126, 35.135769>,  <31.937262, 39.863873, 35.308838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451815, 39.347126, 35.135769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341902, 39.638157, 34.884335>,  <31.275953, 39.812775, 34.733475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341902, 39.638157, 34.884335>,  <31.451815, 39.347126, 35.135769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341902, 39.638157, 34.884335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161408, -0.609570, -0.776126,
		-0.947862, -0.314725, 0.050061,
		-0.274782, 0.727580, -0.628587,
		31.259466, 39.856430, 34.695759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059052, 39.180153, 35.654911>,  <31.451815, 39.347126, 35.135769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059052, 39.180153, 35.654911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772150, 38.938286, 35.516392>,  <31.600008, 38.793167, 35.433281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772150, 38.938286, 35.516392>,  <32.059052, 39.180153, 35.654911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772150, 38.938286, 35.516392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233143, -0.676583, 0.698484,
		-0.656651, 0.420253, 0.626256,
		-0.717255, -0.604667, -0.346300,
		31.556974, 38.756886, 35.412502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394434, 38.988796, 36.078880>,  <32.059052, 39.180153, 35.654911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394434, 38.988796, 36.078880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569620, 38.711979, 35.849354>,  <31.674732, 38.545891, 35.711639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569620, 38.711979, 35.849354>,  <31.394434, 38.988796, 36.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569620, 38.711979, 35.849354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382525, -0.434166, 0.815582,
		-0.813547, -0.576697, 0.074573,
		0.437967, -0.692041, -0.573815,
		31.701010, 38.504368, 35.677208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066784, 38.290421, 36.212414>,  <31.394434, 38.988796, 36.078880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066784, 38.290421, 36.212414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451452, 38.338589, 36.113876>,  <31.682255, 38.367489, 36.054756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451452, 38.338589, 36.113876>,  <31.066784, 38.290421, 36.212414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451452, 38.338589, 36.113876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273819, -0.468984, 0.839689,
		-0.014414, -0.874959, -0.483983,
		0.961673, 0.120420, -0.246340,
		31.739954, 38.374714, 36.039974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447247, 37.627171, 36.092770>,  <31.066784, 38.290421, 36.212414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447247, 37.627171, 36.092770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684671, 37.914623, 36.237682>,  <31.827126, 38.087097, 36.324631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684671, 37.914623, 36.237682>,  <31.447247, 37.627171, 36.092770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684671, 37.914623, 36.237682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185395, -0.560146, 0.807382,
		0.783143, -0.412067, -0.465713,
		0.593562, 0.718636, 0.362279,
		31.862740, 38.130215, 36.346367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178665, 37.355473, 36.369659>,  <31.447247, 37.627171, 36.092770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178665, 37.355473, 36.369659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058983, 37.661163, 36.598194>,  <31.987173, 37.844578, 36.735313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058983, 37.661163, 36.598194>,  <32.178665, 37.355473, 36.369659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058983, 37.661163, 36.598194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130711, -0.560296, 0.817914,
		0.945192, 0.319408, 0.067753,
		-0.299211, 0.764230, 0.571337,
		31.969219, 37.890430, 36.769596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515221, 36.677307, 36.257595>,  <32.178665, 37.355473, 36.369659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515221, 36.677307, 36.257595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815212, 36.921249, 36.155136>,  <32.995205, 37.067616, 36.093662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815212, 36.921249, 36.155136>,  <32.515221, 36.677307, 36.257595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815212, 36.921249, 36.155136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461791, -0.205484, 0.862859,
		0.473590, -0.765407, -0.435735,
		0.749975, 0.609860, -0.256143,
		33.040203, 37.104206, 36.078293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067581, 36.450054, 36.598907>,  <32.515221, 36.677307, 36.257595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067581, 36.450054, 36.598907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216591, 36.811047, 36.512421>,  <33.306000, 37.027641, 36.460529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216591, 36.811047, 36.512421>,  <33.067581, 36.450054, 36.598907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216591, 36.811047, 36.512421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474284, 0.015108, 0.880242,
		0.797670, -0.430462, -0.422405,
		0.372529, 0.902483, -0.216212,
		33.328350, 37.081791, 36.447556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874981, 36.434826, 36.751125>,  <33.067581, 36.450054, 36.598907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874981, 36.434826, 36.751125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736202, 36.809711, 36.765263>,  <33.652935, 37.034645, 36.773746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736202, 36.809711, 36.765263>,  <33.874981, 36.434826, 36.751125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736202, 36.809711, 36.765263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538381, 0.168163, 0.825752,
		0.767966, 0.305522, -0.562924,
		-0.346949, 0.937218, 0.035343,
		33.632118, 37.090878, 36.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502182, 36.825573, 37.003773>,  <33.874981, 36.434826, 36.751125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502182, 36.825573, 37.003773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188942, 37.063034, 37.077892>,  <34.000999, 37.205509, 37.122364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188942, 37.063034, 37.077892>,  <34.502182, 36.825573, 37.003773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188942, 37.063034, 37.077892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382892, 0.225462, 0.895858,
		0.490048, 0.772494, -0.403863,
		-0.783101, 0.593650, 0.185294,
		33.954010, 37.241131, 37.133480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805138, 37.368134, 37.268677>,  <34.502182, 36.825573, 37.003773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805138, 37.368134, 37.268677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425209, 37.375450, 37.393574>,  <34.197250, 37.379841, 37.468513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425209, 37.375450, 37.393574>,  <34.805138, 37.368134, 37.268677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425209, 37.375450, 37.393574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312672, 0.081765, 0.946336,
		-0.008225, 0.996484, -0.083380,
		-0.949826, 0.018287, 0.312245,
		34.140263, 37.380936, 37.487247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666031, 37.821732, 37.751945>,  <34.805138, 37.368134, 37.268677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666031, 37.821732, 37.751945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382702, 37.590111, 37.913425>,  <34.212704, 37.451138, 38.010315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382702, 37.590111, 37.913425>,  <34.666031, 37.821732, 37.751945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382702, 37.590111, 37.913425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283022, 0.290958, 0.913916,
		-0.646666, 0.761605, -0.042208,
		-0.708323, -0.579052, 0.403704,
		34.170204, 37.416393, 38.034538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124146, 38.140835, 38.179592>,  <34.666031, 37.821732, 37.751945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124146, 38.140835, 38.179592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203503, 37.775806, 38.322617>,  <34.251118, 37.556789, 38.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203503, 37.775806, 38.322617>,  <34.124146, 38.140835, 38.179592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203503, 37.775806, 38.322617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334613, 0.405955, 0.850432,
		-0.921236, -0.049071, 0.385896,
		0.198388, -0.912575, 0.357561,
		34.263020, 37.502033, 38.429886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966133, 38.189728, 38.828117>,  <34.124146, 38.140835, 38.179592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966133, 38.189728, 38.828117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182011, 37.852989, 38.830139>,  <34.311535, 37.650944, 38.831352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182011, 37.852989, 38.830139>,  <33.966133, 38.189728, 38.828117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182011, 37.852989, 38.830139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388113, 0.254130, 0.885881,
		-0.747063, -0.476139, 0.463884,
		0.539689, -0.841849, 0.005056,
		34.343918, 37.600433, 38.831657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436203, 37.701908, 39.214870>,  <33.966133, 38.189728, 38.828117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436203, 37.701908, 39.214870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812199, 37.694195, 39.351135>,  <34.037796, 37.689568, 39.432896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812199, 37.694195, 39.351135>,  <33.436203, 37.701908, 39.214870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812199, 37.694195, 39.351135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304580, -0.497460, 0.812259,
		0.153806, -0.867273, -0.473478,
		0.939987, -0.019282, 0.340667,
		34.094196, 37.688412, 39.453335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142677, 37.424324, 38.558907>,  <33.436203, 37.701908, 39.214870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142677, 37.424324, 38.558907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319126, 37.067818, 38.516838>,  <33.424995, 36.853916, 38.491596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319126, 37.067818, 38.516838>,  <33.142677, 37.424324, 38.558907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319126, 37.067818, 38.516838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032912, 0.133172, -0.990546,
		0.896844, 0.433490, 0.088078,
		0.441121, -0.891264, -0.105168,
		33.451462, 36.800438, 38.485287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164131, 36.812344, 38.025887>,  <33.142677, 37.424324, 38.558907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164131, 36.812344, 38.025887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441666, 37.100380, 38.028965>,  <33.608185, 37.273201, 38.030811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441666, 37.100380, 38.028965>,  <33.164131, 36.812344, 38.025887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441666, 37.100380, 38.028965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211337, 0.213822, -0.953739,
		-0.688427, 0.660110, 0.300539,
		0.693834, 0.720094, 0.007696,
		33.649815, 37.316406, 38.031273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885113, 37.459671, 37.819767>,  <33.164131, 36.812344, 38.025887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885113, 37.459671, 37.819767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273438, 37.432697, 37.727699>,  <33.506432, 37.416512, 37.672459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273438, 37.432697, 37.727699>,  <32.885113, 37.459671, 37.819767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273438, 37.432697, 37.727699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203747, 0.274449, -0.939768,
		0.126545, 0.959234, 0.252698,
		0.970811, -0.067436, -0.230171,
		33.564682, 37.412468, 37.658649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945221, 38.016834, 37.376064>,  <32.885113, 37.459671, 37.819767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945221, 38.016834, 37.376064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274597, 37.804386, 37.296215>,  <33.472221, 37.676918, 37.248306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274597, 37.804386, 37.296215>,  <32.945221, 38.016834, 37.376064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274597, 37.804386, 37.296215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162557, 0.116245, -0.979828,
		0.543616, 0.839281, 0.009383,
		0.823442, -0.531125, -0.199624,
		33.521629, 37.645050, 37.236328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386002, 38.414703, 36.894756>,  <32.945221, 38.016834, 37.376064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386002, 38.414703, 36.894756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448219, 38.022072, 36.850380>,  <33.485550, 37.786491, 36.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448219, 38.022072, 36.850380>,  <33.386002, 38.414703, 36.894756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448219, 38.022072, 36.850380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095014, 0.096918, -0.990747,
		0.983249, 0.164644, -0.078189,
		0.155542, -0.981580, -0.110938,
		33.494881, 37.727596, 36.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640461, 38.359749, 36.281796>,  <33.386002, 38.414703, 36.894756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640461, 38.359749, 36.281796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534958, 37.975525, 36.317024>,  <33.471657, 37.744991, 36.338161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534958, 37.975525, 36.317024>,  <33.640461, 38.359749, 36.281796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534958, 37.975525, 36.317024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036564, -0.081286, -0.996020,
		0.963895, -0.265931, -0.013682,
		-0.263761, -0.960559, 0.088074,
		33.455830, 37.687359, 36.343445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989151, 38.004002, 35.791851>,  <33.640461, 38.359749, 36.281796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989151, 38.004002, 35.791851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697277, 37.741886, 35.869984>,  <33.522152, 37.584618, 35.916862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697277, 37.741886, 35.869984>,  <33.989151, 38.004002, 35.791851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697277, 37.741886, 35.869984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176312, -0.095694, -0.979672,
		0.660662, -0.749290, -0.045709,
		-0.729685, -0.655291, 0.195330,
		33.478371, 37.545300, 35.928581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988789, 37.206039, 35.618298>,  <33.989151, 38.004002, 35.791851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988789, 37.206039, 35.618298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609756, 37.329983, 35.587112>,  <33.382336, 37.404346, 35.568401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609756, 37.329983, 35.587112>,  <33.988789, 37.206039, 35.618298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609756, 37.329983, 35.587112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054059, -0.085007, -0.994913,
		-0.314908, -0.946975, 0.063801,
		-0.947581, 0.309857, -0.077962,
		33.325481, 37.422939, 35.563725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723202, 36.816727, 35.040878>,  <33.988789, 37.206039, 35.618298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723202, 36.816727, 35.040878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474628, 37.125919, 35.091980>,  <33.325485, 37.311436, 35.122643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474628, 37.125919, 35.091980>,  <33.723202, 36.816727, 35.040878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474628, 37.125919, 35.091980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027766, 0.141233, -0.989587,
		-0.782978, -0.618506, -0.066304,
		-0.621430, 0.772983, 0.127756,
		33.288200, 37.357815, 35.130306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149357, 36.665207, 34.658722>,  <33.723202, 36.816727, 35.040878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149357, 36.665207, 34.658722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143044, 37.058636, 34.730648>,  <33.139256, 37.294693, 34.773804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143044, 37.058636, 34.730648>,  <33.149357, 36.665207, 34.658722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143044, 37.058636, 34.730648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298937, 0.166973, -0.939551,
		-0.954142, -0.068583, 0.291391,
		-0.015783, 0.983573, 0.179818,
		33.138309, 37.353706, 34.784595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452610, 37.016159, 34.498909>,  <33.149357, 36.665207, 34.658722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452610, 37.016159, 34.498909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750397, 37.281025, 34.464722>,  <32.929070, 37.439945, 34.444210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750397, 37.281025, 34.464722>,  <32.452610, 37.016159, 34.498909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750397, 37.281025, 34.464722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225031, 0.128338, -0.965863,
		-0.628596, 0.738283, 0.244551,
		0.744465, 0.662169, -0.085464,
		32.973736, 37.479675, 34.439083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150330, 37.501644, 34.018272>,  <32.452610, 37.016159, 34.498909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150330, 37.501644, 34.018272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549885, 37.516434, 34.029961>,  <32.789619, 37.525307, 34.036976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549885, 37.516434, 34.029961>,  <32.150330, 37.501644, 34.018272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549885, 37.516434, 34.029961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021542, 0.193303, -0.980903,
		-0.041915, 0.980442, 0.192291,
		0.998889, 0.036972, 0.029223,
		32.849552, 37.527527, 34.038727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431293, 38.138237, 33.670654>,  <32.150330, 37.501644, 34.018272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431293, 38.138237, 33.670654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740105, 37.884365, 33.657001>,  <32.925392, 37.732044, 33.648811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740105, 37.884365, 33.657001>,  <32.431293, 38.138237, 33.670654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740105, 37.884365, 33.657001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105429, 0.180827, -0.977848,
		0.626788, 0.751324, 0.206516,
		0.772024, -0.634676, -0.034129,
		32.971710, 37.693962, 33.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890324, 38.456833, 33.256668>,  <32.431293, 38.138237, 33.670654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890324, 38.456833, 33.256668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038723, 38.085449, 33.263924>,  <33.127762, 37.862621, 33.268276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038723, 38.085449, 33.263924>,  <32.890324, 38.456833, 33.256668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038723, 38.085449, 33.263924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277956, 0.092387, -0.956141,
		0.886058, 0.359771, 0.292346,
		0.371001, -0.928455, 0.018140,
		33.150024, 37.806911, 33.269367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585892, 38.560623, 32.953651>,  <32.890324, 38.456833, 33.256668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585892, 38.560623, 32.953651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524082, 38.166557, 32.923786>,  <33.486996, 37.930119, 32.905869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524082, 38.166557, 32.923786>,  <33.585892, 38.560623, 32.953651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524082, 38.166557, 32.923786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333756, 0.019077, -0.942466,
		0.929908, -0.170554, 0.325857,
		-0.154525, -0.985164, -0.074663,
		33.477726, 37.871010, 32.901386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196396, 38.284794, 32.562397>,  <33.585892, 38.560623, 32.953651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196396, 38.284794, 32.562397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903324, 38.019085, 32.503174>,  <33.727482, 37.859657, 32.467640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903324, 38.019085, 32.503174>,  <34.196396, 38.284794, 32.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903324, 38.019085, 32.503174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202653, -0.005265, -0.979236,
		0.649704, -0.747469, 0.138475,
		-0.732677, -0.664276, -0.148056,
		33.683521, 37.819801, 32.458755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471329, 37.958244, 32.043514>,  <34.196396, 38.284794, 32.562397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471329, 37.958244, 32.043514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097206, 37.817257, 32.031113>,  <33.872730, 37.732662, 32.023674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097206, 37.817257, 32.031113>,  <34.471329, 37.958244, 32.043514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097206, 37.817257, 32.031113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037363, -0.011258, -0.999238,
		0.351856, -0.935754, 0.023699,
		-0.935308, -0.352473, -0.031002,
		33.816612, 37.711514, 32.021812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459446, 37.383141, 31.695263>,  <34.471329, 37.958244, 32.043514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459446, 37.383141, 31.695263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083694, 37.517235, 31.666460>,  <33.858242, 37.597691, 31.649178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083694, 37.517235, 31.666460>,  <34.459446, 37.383141, 31.695263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083694, 37.517235, 31.666460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062003, -0.040464, -0.997255,
		-0.337231, -0.941264, 0.017226,
		-0.939378, 0.335238, -0.072007,
		33.801880, 37.617805, 31.644857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098480, 36.963860, 31.137886>,  <34.459446, 37.383141, 31.695263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098480, 36.963860, 31.137886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890282, 37.304226, 31.166258>,  <33.765362, 37.508446, 31.183281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890282, 37.304226, 31.166258>,  <34.098480, 36.963860, 31.137886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890282, 37.304226, 31.166258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027107, 0.066560, -0.997414,
		-0.853434, -0.521072, -0.011579,
		-0.520495, 0.850913, 0.070929,
		33.734135, 37.559502, 31.187536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525429, 36.906567, 30.666815>,  <34.098480, 36.963860, 31.137886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525429, 36.906567, 30.666815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558842, 37.301987, 30.717091>,  <33.578888, 37.539238, 30.747257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558842, 37.301987, 30.717091>,  <33.525429, 36.906567, 30.666815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558842, 37.301987, 30.717091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012085, 0.127127, -0.991813,
		-0.996432, 0.081327, 0.022566,
		0.083530, 0.988547, 0.125690,
		33.583900, 37.598549, 30.754797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171307, 37.208378, 30.221016>,  <33.525429, 36.906567, 30.666815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171307, 37.208378, 30.221016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387001, 37.530251, 30.320385>,  <33.516418, 37.723373, 30.380007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387001, 37.530251, 30.320385>,  <33.171307, 37.208378, 30.221016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387001, 37.530251, 30.320385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070422, 0.250866, -0.965457,
		-0.839202, 0.538108, 0.078610,
		0.539240, 0.804678, 0.248422,
		33.548775, 37.771652, 30.394911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936604, 37.620407, 29.792042>,  <33.171307, 37.208378, 30.221016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936604, 37.620407, 29.792042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272190, 37.820717, 29.877230>,  <33.473541, 37.940903, 29.928343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272190, 37.820717, 29.877230>,  <32.936604, 37.620407, 29.792042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272190, 37.820717, 29.877230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054888, 0.311488, -0.948664,
		-0.541406, 0.807588, 0.233842,
		0.838968, 0.500777, 0.212968,
		33.523880, 37.970951, 29.941120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919758, 38.256973, 29.496874>,  <32.936604, 37.620407, 29.792042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919758, 38.256973, 29.496874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313622, 38.203407, 29.541609>,  <33.549942, 38.171268, 29.568449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313622, 38.203407, 29.541609>,  <32.919758, 38.256973, 29.496874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313622, 38.203407, 29.541609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156230, 0.391383, -0.906869,
		0.077673, 0.910432, 0.406302,
		0.984662, -0.133916, 0.111837,
		33.609020, 38.163231, 29.575159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279518, 38.915894, 29.435431>,  <32.919758, 38.256973, 29.496874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279518, 38.915894, 29.435431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521633, 38.614090, 29.333961>,  <33.666901, 38.433010, 29.273079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521633, 38.614090, 29.333961>,  <33.279518, 38.915894, 29.435431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521633, 38.614090, 29.333961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212396, 0.460213, -0.862028,
		0.767150, 0.467892, 0.438814,
		0.605284, -0.754507, -0.253674,
		33.703217, 38.387737, 29.257860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839550, 39.207924, 29.146093>,  <33.279518, 38.915894, 29.435431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839550, 39.207924, 29.146093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877972, 38.837532, 29.000031>,  <33.901024, 38.615299, 28.912392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877972, 38.837532, 29.000031>,  <33.839550, 39.207924, 29.146093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877972, 38.837532, 29.000031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284058, 0.377099, -0.881537,
		0.953984, -0.019052, 0.299252,
		0.096052, -0.925977, -0.365158,
		33.906788, 38.559738, 28.890484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496326, 39.166340, 28.818436>,  <33.839550, 39.207924, 29.146093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496326, 39.166340, 28.818436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244827, 38.894966, 28.666431>,  <34.093929, 38.732143, 28.575228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244827, 38.894966, 28.666431>,  <34.496326, 39.166340, 28.818436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244827, 38.894966, 28.666431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226086, 0.308093, -0.924101,
		0.744017, -0.666942, -0.040329,
		-0.628747, -0.678430, -0.380013,
		34.056202, 38.691437, 28.552427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928947, 38.700184, 28.370939>,  <34.496326, 39.166340, 28.818436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928947, 38.700184, 28.370939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544991, 38.657696, 28.267155>,  <34.314617, 38.632202, 28.204884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544991, 38.657696, 28.267155>,  <34.928947, 38.700184, 28.370939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544991, 38.657696, 28.267155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233747, 0.207808, -0.949831,
		0.154809, -0.972385, -0.174645,
		-0.959894, -0.106220, -0.259463,
		34.257023, 38.625828, 28.189316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004868, 38.526077, 27.665989>,  <34.928947, 38.700184, 28.370939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004868, 38.526077, 27.665989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607735, 38.557804, 27.701752>,  <34.369453, 38.576839, 27.723209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607735, 38.557804, 27.701752>,  <35.004868, 38.526077, 27.665989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607735, 38.557804, 27.701752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090165, -0.006019, -0.995908,
		-0.078461, -0.996831, 0.013128,
		-0.992831, 0.079324, 0.089407,
		34.309887, 38.581600, 27.728575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773453, 38.041077, 27.187830>,  <35.004868, 38.526077, 27.665989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773453, 38.041077, 27.187830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516712, 38.341915, 27.247665>,  <34.362667, 38.522419, 27.283566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516712, 38.341915, 27.247665>,  <34.773453, 38.041077, 27.187830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516712, 38.341915, 27.247665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166483, 0.327093, -0.930211,
		-0.748538, -0.572154, -0.335157,
		-0.641851, 0.752097, 0.149588,
		34.324158, 38.567543, 27.292542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276447, 38.134640, 26.650639>,  <34.773453, 38.041077, 27.187830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276447, 38.134640, 26.650639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234726, 38.499191, 26.809891>,  <34.209694, 38.717922, 26.905441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234726, 38.499191, 26.809891>,  <34.276447, 38.134640, 26.650639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234726, 38.499191, 26.809891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002486, 0.400073, -0.916480,
		-0.994542, -0.096584, -0.039464,
		-0.104306, 0.911380, 0.398130,
		34.203434, 38.772606, 26.929329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799774, 38.438805, 26.170532>,  <34.276447, 38.134640, 26.650639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799774, 38.438805, 26.170532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977184, 38.729969, 26.379694>,  <34.083630, 38.904667, 26.505192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977184, 38.729969, 26.379694>,  <33.799774, 38.438805, 26.170532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977184, 38.729969, 26.379694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067050, 0.554846, -0.829247,
		-0.893750, 0.402853, 0.197282,
		0.443526, 0.727912, 0.522904,
		34.110241, 38.948341, 26.536566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406143, 39.034042, 26.017752>,  <33.799774, 38.438805, 26.170532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406143, 39.034042, 26.017752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764145, 39.163643, 26.140387>,  <33.978947, 39.241402, 26.213968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764145, 39.163643, 26.140387>,  <33.406143, 39.034042, 26.017752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764145, 39.163643, 26.140387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120318, 0.486493, -0.865360,
		-0.429529, 0.811387, 0.396429,
		0.895002, 0.324000, 0.306587,
		34.032646, 39.260841, 26.232363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456921, 39.725819, 25.759941>,  <33.406143, 39.034042, 26.017752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456921, 39.725819, 25.759941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830364, 39.640564, 25.875147>,  <34.054428, 39.589409, 25.944271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830364, 39.640564, 25.875147>,  <33.456921, 39.725819, 25.759941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830364, 39.640564, 25.875147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358225, 0.572065, -0.737846,
		-0.007499, 0.792031, 0.610434,
		0.933605, -0.213140, 0.288015,
		34.110447, 39.576622, 25.961552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735870, 40.382229, 25.649187>,  <33.456921, 39.725819, 25.759941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735870, 40.382229, 25.649187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032539, 40.113960, 25.653547>,  <34.210541, 39.952999, 25.656164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032539, 40.113960, 25.653547>,  <33.735870, 40.382229, 25.649187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032539, 40.113960, 25.653547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412693, 0.443458, -0.795632,
		0.528771, 0.594600, 0.605683,
		0.741677, -0.670668, 0.010900,
		34.255043, 39.912758, 25.656816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277531, 40.754066, 25.482817>,  <33.735870, 40.382229, 25.649187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277531, 40.754066, 25.482817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447495, 40.396370, 25.426558>,  <34.549473, 40.181751, 25.392801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447495, 40.396370, 25.426558>,  <34.277531, 40.754066, 25.482817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447495, 40.396370, 25.426558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377134, 0.316120, -0.870539,
		0.822934, 0.316859, 0.471572,
		0.424911, -0.894242, -0.140647,
		34.574966, 40.128098, 25.384363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933212, 40.918774, 25.250549>,  <34.277531, 40.754066, 25.482817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933212, 40.918774, 25.250549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888462, 40.539291, 25.132271>,  <34.861614, 40.311600, 25.061304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888462, 40.539291, 25.132271>,  <34.933212, 40.918774, 25.250549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888462, 40.539291, 25.132271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433711, 0.221113, -0.873501,
		0.894081, -0.225966, 0.386729,
		-0.111871, -0.948709, -0.295697,
		34.854900, 40.254677, 25.043562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604172, 40.721840, 25.021008>,  <34.933212, 40.918774, 25.250549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604172, 40.721840, 25.021008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338348, 40.479511, 24.846039>,  <35.178852, 40.334114, 24.741056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338348, 40.479511, 24.846039>,  <35.604172, 40.721840, 25.021008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338348, 40.479511, 24.846039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349252, 0.265685, -0.898574,
		0.660594, -0.749926, 0.035022,
		-0.664560, -0.605824, -0.437423,
		35.138981, 40.297764, 24.714811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026424, 40.441818, 24.441454>,  <35.604172, 40.721840, 25.021008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026424, 40.441818, 24.441454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643932, 40.339710, 24.384235>,  <35.414436, 40.278446, 24.349905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643932, 40.339710, 24.384235>,  <36.026424, 40.441818, 24.441454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643932, 40.339710, 24.384235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076844, 0.252628, -0.964507,
		0.282351, -0.933282, -0.221954,
		-0.956229, -0.255273, -0.143047,
		35.357063, 40.263130, 24.341322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945606, 39.967899, 23.861584>,  <36.026424, 40.441818, 24.441454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945606, 39.967899, 23.861584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583908, 40.134815, 23.897827>,  <35.366890, 40.234966, 23.919573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583908, 40.134815, 23.897827>,  <35.945606, 39.967899, 23.861584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583908, 40.134815, 23.897827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026675, 0.156581, -0.987305,
		-0.426181, -0.895182, -0.130457,
		-0.904245, 0.417291, 0.090611,
		35.312634, 40.260002, 23.925011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527908, 39.527596, 23.502571>,  <35.945606, 39.967899, 23.861584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527908, 39.527596, 23.502571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401466, 39.907040, 23.508556>,  <35.325600, 40.134705, 23.512148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401466, 39.907040, 23.508556>,  <35.527908, 39.527596, 23.502571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401466, 39.907040, 23.508556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005798, 0.017702, -0.999827,
		-0.948707, -0.315962, -0.011096,
		-0.316103, 0.948607, 0.014963,
		35.306637, 40.191620, 23.513044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513779, 39.785141, 22.859121>,  <35.527908, 39.527596, 23.502571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513779, 39.785141, 22.859121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412422, 40.136589, 23.021023>,  <35.351608, 40.347458, 23.118164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412422, 40.136589, 23.021023>,  <35.513779, 39.785141, 22.859121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412422, 40.136589, 23.021023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040915, 0.427767, -0.902962,
		-0.966499, -0.212240, -0.144340,
		-0.253389, 0.878618, 0.404752,
		35.336407, 40.400173, 23.142448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969234, 40.040199, 22.467607>,  <35.513779, 39.785141, 22.859121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969234, 40.040199, 22.467607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149124, 40.351395, 22.643099>,  <35.257057, 40.538113, 22.748394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149124, 40.351395, 22.643099>,  <34.969234, 40.040199, 22.467607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149124, 40.351395, 22.643099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067380, 0.460254, -0.885226,
		-0.890623, 0.427669, 0.154566,
		0.449724, 0.777988, 0.438729,
		35.284042, 40.584789, 22.774717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522060, 40.576454, 22.247595>,  <34.969234, 40.040199, 22.467607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522060, 40.576454, 22.247595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867432, 40.752312, 22.346552>,  <35.074654, 40.857826, 22.405926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867432, 40.752312, 22.346552>,  <34.522060, 40.576454, 22.247595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867432, 40.752312, 22.346552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045257, 0.420917, -0.905969,
		-0.502440, 0.793435, 0.343534,
		0.863427, 0.439648, 0.247394,
		35.126461, 40.884205, 22.420771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478954, 41.269753, 21.880911>,  <34.522060, 40.576454, 22.247595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478954, 41.269753, 21.880911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860870, 41.214172, 21.986040>,  <35.090019, 41.180824, 22.049118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860870, 41.214172, 21.986040>,  <34.478954, 41.269753, 21.880911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860870, 41.214172, 21.986040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297144, 0.474090, -0.828821,
		-0.009436, 0.869443, 0.493943,
		0.954786, -0.138951, 0.262823,
		35.147305, 41.172485, 22.064888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859741, 41.993813, 21.988117>,  <34.478954, 41.269753, 21.880911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859741, 41.993813, 21.988117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106705, 41.693737, 21.893446>,  <35.254883, 41.513691, 21.836643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106705, 41.693737, 21.893446>,  <34.859741, 41.993813, 21.988117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106705, 41.693737, 21.893446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347622, 0.530096, -0.773406,
		0.705663, 0.395237, 0.588071,
		0.617412, -0.750191, -0.236676,
		35.291927, 41.468681, 21.822443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317223, 42.351669, 21.751511>,  <34.859741, 41.993813, 21.988117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317223, 42.351669, 21.751511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390209, 41.986553, 21.605347>,  <35.434002, 41.767483, 21.517649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390209, 41.986553, 21.605347>,  <35.317223, 42.351669, 21.751511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390209, 41.986553, 21.605347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269001, 0.403815, -0.874398,
		0.945697, 0.061256, 0.319225,
		0.182470, -0.912787, -0.365409,
		35.444950, 41.712715, 21.495724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971558, 42.384483, 21.458466>,  <35.317223, 42.351669, 21.751511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971558, 42.384483, 21.458466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805305, 42.067287, 21.280285>,  <35.705555, 41.876972, 21.173376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805305, 42.067287, 21.280285>,  <35.971558, 42.384483, 21.458466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805305, 42.067287, 21.280285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525095, 0.190692, -0.829404,
		0.742651, -0.578626, 0.337137,
		-0.415626, -0.792987, -0.445451,
		35.680618, 41.829391, 21.146650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487686, 42.105785, 20.998999>,  <35.971558, 42.384483, 21.458466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487686, 42.105785, 20.998999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141048, 41.957607, 20.865259>,  <35.933067, 41.868702, 20.785015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141048, 41.957607, 20.865259>,  <36.487686, 42.105785, 20.998999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141048, 41.957607, 20.865259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300203, 0.148199, -0.942293,
		0.398614, -0.916957, -0.017221,
		-0.866594, -0.370441, -0.334347,
		35.881069, 41.846474, 20.764956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705227, 41.842663, 20.465258>,  <36.487686, 42.105785, 20.998999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705227, 41.842663, 20.465258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312370, 41.828602, 20.391327>,  <36.076656, 41.820164, 20.346968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312370, 41.828602, 20.391327>,  <36.705227, 41.842663, 20.465258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312370, 41.828602, 20.391327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178975, 0.128298, -0.975453,
		0.058002, -0.991113, -0.119715,
		-0.982143, -0.035152, -0.184826,
		36.017727, 41.818054, 20.335878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584419, 41.514038, 19.736530>,  <36.705227, 41.842663, 20.465258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584419, 41.514038, 19.736530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243568, 41.709904, 19.810404>,  <36.039059, 41.827423, 19.854729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243568, 41.709904, 19.810404>,  <36.584419, 41.514038, 19.736530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243568, 41.709904, 19.810404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009786, 0.367747, -0.929875,
		-0.523247, -0.790562, -0.318158,
		-0.852125, 0.489668, 0.184685,
		35.987930, 41.856804, 19.865808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293201, 41.533283, 19.082939>,  <36.584419, 41.514038, 19.736530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293201, 41.533283, 19.082939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122776, 41.816448, 19.308264>,  <36.020519, 41.986347, 19.443459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122776, 41.816448, 19.308264>,  <36.293201, 41.533283, 19.082939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122776, 41.816448, 19.308264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090867, 0.586023, -0.805183,
		-0.900117, -0.394248, -0.185359,
		-0.426067, 0.707916, 0.563313,
		35.994957, 42.028824, 19.477257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723083, 41.708473, 18.765135>,  <36.293201, 41.533283, 19.082939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723083, 41.708473, 18.765135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832287, 42.030281, 18.976118>,  <35.897808, 42.223366, 19.102709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832287, 42.030281, 18.976118>,  <35.723083, 41.708473, 18.765135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832287, 42.030281, 18.976118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067295, 0.562915, -0.823770,
		-0.959655, 0.189400, 0.207821,
		0.273007, 0.804521, 0.527459,
		35.914188, 42.271637, 19.134356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211655, 42.269348, 18.718115>,  <35.723083, 41.708473, 18.765135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211655, 42.269348, 18.718115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520718, 42.502708, 18.818224>,  <35.706158, 42.642727, 18.878290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520718, 42.502708, 18.818224>,  <35.211655, 42.269348, 18.718115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520718, 42.502708, 18.818224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416697, 0.763519, -0.493359,
		-0.478917, 0.276910, 0.833043,
		0.772660, 0.583404, 0.250274,
		35.752514, 42.677731, 18.893307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995010, 42.909779, 19.120346>,  <35.211655, 42.269348, 18.718115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995010, 42.909779, 19.120346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313549, 42.934029, 18.879629>,  <35.504673, 42.948578, 18.735199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313549, 42.934029, 18.879629>,  <34.995010, 42.909779, 19.120346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313549, 42.934029, 18.879629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438127, 0.743758, -0.504845,
		0.416979, 0.665694, 0.618854,
		0.796350, 0.060627, -0.601790,
		35.552452, 42.952217, 18.699093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120449, 43.571930, 19.015484>,  <34.995010, 42.909779, 19.120346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120449, 43.571930, 19.015484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245300, 43.418198, 18.667953>,  <35.320213, 43.325958, 18.459435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245300, 43.418198, 18.667953>,  <35.120449, 43.571930, 19.015484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245300, 43.418198, 18.667953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357351, 0.799861, -0.482206,
		0.880269, 0.460989, 0.112321,
		0.312133, -0.384333, -0.868828,
		35.338940, 43.302898, 18.407305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209522, 44.000031, 19.663242>,  <35.120449, 43.571930, 19.015484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209522, 44.000031, 19.663242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399338, 44.351044, 19.690830>,  <35.513226, 44.561649, 19.707382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399338, 44.351044, 19.690830>,  <35.209522, 44.000031, 19.663242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399338, 44.351044, 19.690830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332361, 0.251177, -0.909091,
		-0.815078, 0.408475, 0.410849,
		0.474536, 0.877530, 0.068968,
		35.541698, 44.614304, 19.711521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791508, 44.398205, 19.324997>,  <35.209522, 44.000031, 19.663242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791508, 44.398205, 19.324997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153637, 44.566238, 19.299976>,  <35.370914, 44.667057, 19.284964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153637, 44.566238, 19.299976>,  <34.791508, 44.398205, 19.324997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153637, 44.566238, 19.299976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216330, 0.329365, -0.919086,
		-0.365493, 0.845605, 0.389060,
		0.905327, 0.420085, -0.062550,
		35.425236, 44.692265, 19.281212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188423, 44.317024, 18.600765>,  <34.791508, 44.398205, 19.324997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188423, 44.317024, 18.600765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195812, 44.180511, 18.224854>,  <35.200245, 44.098602, 17.999308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195812, 44.180511, 18.224854>,  <35.188423, 44.317024, 18.600765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195812, 44.180511, 18.224854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991427, 0.115349, -0.061373,
		0.129348, 0.932855, -0.336230,
		0.018468, -0.341286, -0.939778,
		35.201351, 44.078125, 17.942921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798466, 44.671291, 18.266720>,  <35.188423, 44.317024, 18.600765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798466, 44.671291, 18.266720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572708, 44.930351, 18.471468>,  <35.437252, 45.085785, 18.594316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572708, 44.930351, 18.471468>,  <35.798466, 44.671291, 18.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572708, 44.930351, 18.471468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681056, 0.014909, 0.732080,
		0.466498, 0.761794, -0.449499,
		-0.564395, 0.647648, 0.511869,
		35.403389, 45.124645, 18.625029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280697, 45.102757, 18.720375>,  <35.798466, 44.671291, 18.266720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280697, 45.102757, 18.720375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913689, 45.163734, 18.867300>,  <35.693485, 45.200321, 18.955456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913689, 45.163734, 18.867300>,  <36.280697, 45.102757, 18.720375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913689, 45.163734, 18.867300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340557, -0.175796, 0.923643,
		0.205375, 0.972552, 0.109381,
		-0.917519, 0.152443, 0.367314,
		35.638432, 45.209469, 18.977493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308876, 45.623943, 19.289949>,  <36.280697, 45.102757, 18.720375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308876, 45.623943, 19.289949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010563, 45.360851, 19.332294>,  <35.831577, 45.202995, 19.357700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010563, 45.360851, 19.332294>,  <36.308876, 45.623943, 19.289949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010563, 45.360851, 19.332294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265461, -0.147655, 0.952748,
		-0.611019, 0.738641, 0.284720,
		-0.745779, -0.657729, 0.105861,
		35.786831, 45.163532, 19.364052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045521, 45.795490, 19.843149>,  <36.308876, 45.623943, 19.289949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045521, 45.795490, 19.843149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879993, 45.434170, 19.797895>,  <35.780678, 45.217377, 19.770742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879993, 45.434170, 19.797895>,  <36.045521, 45.795490, 19.843149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879993, 45.434170, 19.797895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313281, -0.257988, 0.913946,
		-0.854755, 0.342769, 0.389748,
		-0.413823, -0.903300, -0.113134,
		35.755848, 45.163181, 19.763956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608452, 45.715771, 20.445942>,  <36.045521, 45.795490, 19.843149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608452, 45.715771, 20.445942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680885, 45.353336, 20.292986>,  <35.724346, 45.135876, 20.201212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680885, 45.353336, 20.292986>,  <35.608452, 45.715771, 20.445942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680885, 45.353336, 20.292986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047565, -0.380295, 0.923641,
		-0.982318, -0.185440, -0.025766,
		0.181079, -0.906084, -0.382391,
		35.735210, 45.081512, 20.178268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078514, 45.208664, 20.730402>,  <35.608452, 45.715771, 20.445942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078514, 45.208664, 20.730402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376881, 44.967377, 20.617453>,  <35.555901, 44.822605, 20.549683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376881, 44.967377, 20.617453>,  <35.078514, 45.208664, 20.730402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376881, 44.967377, 20.617453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008963, -0.414830, 0.909855,
		-0.665977, -0.681208, -0.304023,
		0.745918, -0.603217, -0.282373,
		35.600655, 44.786411, 20.532742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863609, 44.581966, 20.931540>,  <35.078514, 45.208664, 20.730402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863609, 44.581966, 20.931540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261894, 44.571384, 20.896088>,  <35.500866, 44.565037, 20.874817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261894, 44.571384, 20.896088>,  <34.863609, 44.581966, 20.931540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261894, 44.571384, 20.896088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059732, -0.547694, 0.834544,
		-0.070621, -0.836261, -0.543765,
		0.995713, -0.026456, -0.088631,
		35.560608, 44.563446, 20.869499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953537, 43.985001, 21.168465>,  <34.863609, 44.581966, 20.931540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953537, 43.985001, 21.168465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317417, 44.149990, 21.187704>,  <35.535744, 44.248985, 21.199247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317417, 44.149990, 21.187704>,  <34.953537, 43.985001, 21.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317417, 44.149990, 21.187704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253972, -0.644246, 0.721419,
		0.328555, -0.644058, -0.690826,
		0.909698, 0.412477, 0.048098,
		35.590328, 44.273731, 21.202133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453156, 43.407223, 21.221994>,  <34.953537, 43.985001, 21.168465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453156, 43.407223, 21.221994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685139, 43.709038, 21.344837>,  <35.824329, 43.890129, 21.418543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685139, 43.709038, 21.344837>,  <35.453156, 43.407223, 21.221994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685139, 43.709038, 21.344837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323647, -0.559367, 0.763126,
		0.747596, -0.343188, -0.568614,
		0.579959, 0.754540, 0.307109,
		35.859127, 43.935398, 21.436970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762501, 43.105164, 21.756807>,  <35.453156, 43.407223, 21.221994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762501, 43.105164, 21.756807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857040, 43.489056, 21.817549>,  <35.913765, 43.719391, 21.853994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857040, 43.489056, 21.817549>,  <35.762501, 43.105164, 21.756807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857040, 43.489056, 21.817549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291214, -0.219064, 0.931239,
		0.927001, -0.175879, -0.331263,
		0.236353, 0.959728, 0.151854,
		35.927948, 43.776974, 21.863106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458733, 43.122566, 21.989342>,  <35.762501, 43.105164, 21.756807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458733, 43.122566, 21.989342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276649, 43.457783, 22.109659>,  <36.167400, 43.658913, 22.181850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276649, 43.457783, 22.109659>,  <36.458733, 43.122566, 21.989342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276649, 43.457783, 22.109659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155503, -0.257808, 0.953600,
		0.876703, 0.480857, -0.012963,
		-0.455203, 0.838040, 0.300796,
		36.140087, 43.709194, 22.199898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985119, 43.605267, 22.387938>,  <36.458733, 43.122566, 21.989342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985119, 43.605267, 22.387938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599407, 43.641911, 22.487358>,  <36.367981, 43.663898, 22.547010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599407, 43.641911, 22.487358>,  <36.985119, 43.605267, 22.387938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599407, 43.641911, 22.487358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240983, -0.086197, 0.966694,
		0.109985, 0.992057, 0.061041,
		-0.964277, 0.091612, 0.248550,
		36.310123, 43.669395, 22.561922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019215, 44.022171, 22.953447>,  <36.985119, 43.605267, 22.387938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019215, 44.022171, 22.953447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642071, 43.895500, 22.994879>,  <36.415783, 43.819496, 23.019737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642071, 43.895500, 22.994879>,  <37.019215, 44.022171, 22.953447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642071, 43.895500, 22.994879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122231, -0.039550, 0.991713,
		-0.309958, 0.947708, 0.075998,
		-0.942860, -0.316679, 0.103580,
		36.359211, 43.800495, 23.025953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702724, 44.363956, 23.507074>,  <37.019215, 44.022171, 22.953447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702724, 44.363956, 23.507074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500366, 44.019173, 23.493866>,  <36.378952, 43.812302, 23.485941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500366, 44.019173, 23.493866>,  <36.702724, 44.363956, 23.507074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500366, 44.019173, 23.493866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130608, -0.114384, 0.984813,
		-0.852650, 0.493899, 0.170446,
		-0.505894, -0.861963, -0.033022,
		36.348598, 43.760582, 23.483959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678921, 44.346230, 24.204136>,  <36.702724, 44.363956, 23.507074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678921, 44.346230, 24.204136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449741, 44.030491, 24.115906>,  <36.312233, 43.841045, 24.062967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449741, 44.030491, 24.115906>,  <36.678921, 44.346230, 24.204136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449741, 44.030491, 24.115906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050445, -0.302581, 0.951788,
		-0.818035, 0.534203, 0.213183,
		-0.572953, -0.789349, -0.220574,
		36.277855, 43.793686, 24.049734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098694, 44.247173, 24.713184>,  <36.678921, 44.346230, 24.204136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098694, 44.247173, 24.713184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216789, 43.902905, 24.547255>,  <36.287647, 43.696342, 24.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216789, 43.902905, 24.547255>,  <36.098694, 44.247173, 24.713184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216789, 43.902905, 24.547255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013707, -0.437947, 0.898896,
		-0.955326, -0.259701, -0.141095,
		0.295237, -0.860673, -0.414822,
		36.305359, 43.644703, 24.422808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619328, 43.750603, 24.956396>,  <36.098694, 44.247173, 24.713184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619328, 43.750603, 24.956396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937370, 43.534252, 24.846663>,  <36.128197, 43.404442, 24.780823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937370, 43.534252, 24.846663>,  <35.619328, 43.750603, 24.956396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937370, 43.534252, 24.846663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084237, -0.546449, 0.833246,
		-0.600598, -0.639405, -0.480044,
		0.795101, -0.540883, -0.274335,
		36.175900, 43.371986, 24.764362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341438, 42.991680, 24.846813>,  <35.619328, 43.750603, 24.956396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341438, 42.991680, 24.846813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732105, 43.024380, 24.926250>,  <35.966507, 43.043999, 24.973913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732105, 43.024380, 24.926250>,  <35.341438, 42.991680, 24.846813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732105, 43.024380, 24.926250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127945, -0.521220, 0.843778,
		0.172490, -0.849498, -0.498598,
		0.976667, 0.081750, 0.198594,
		36.025105, 43.048904, 24.985828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518669, 42.342480, 25.036022>,  <35.341438, 42.991680, 24.846813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518669, 42.342480, 25.036022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829292, 42.555553, 25.170610>,  <36.015667, 42.683395, 25.251364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829292, 42.555553, 25.170610>,  <35.518669, 42.342480, 25.036022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829292, 42.555553, 25.170610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040648, -0.490570, 0.870453,
		0.628737, -0.689632, -0.359302,
		0.776555, 0.532681, 0.336472,
		36.062260, 42.715359, 25.271551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816734, 41.803020, 25.409996>,  <35.518669, 42.342480, 25.036022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816734, 41.803020, 25.409996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979782, 42.140560, 25.549574>,  <36.077610, 42.343082, 25.633320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979782, 42.140560, 25.549574>,  <35.816734, 41.803020, 25.409996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979782, 42.140560, 25.549574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058649, -0.405537, 0.912195,
		0.911264, -0.351368, -0.214798,
		0.407624, 0.843849, 0.348944,
		36.102070, 42.393715, 25.654257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501286, 41.618130, 25.740513>,  <35.816734, 41.803020, 25.409996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501286, 41.618130, 25.740513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380550, 41.969971, 25.887589>,  <36.308109, 42.181076, 25.975834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380550, 41.969971, 25.887589>,  <36.501286, 41.618130, 25.740513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380550, 41.969971, 25.887589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011424, -0.382315, 0.923962,
		0.953291, 0.283088, 0.105348,
		-0.301839, 0.879600, 0.367691,
		36.289997, 42.233852, 25.997896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854134, 41.813599, 26.421928>,  <36.501286, 41.618130, 25.740513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854134, 41.813599, 26.421928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525814, 42.042080, 26.423845>,  <36.328823, 42.179169, 26.424995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525814, 42.042080, 26.423845>,  <36.854134, 41.813599, 26.421928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525814, 42.042080, 26.423845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114146, -0.172228, 0.978421,
		0.559700, 0.802538, 0.206564,
		-0.820796, 0.571201, 0.004790,
		36.279575, 42.213440, 26.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924828, 42.128422, 27.082520>,  <36.854134, 41.813599, 26.421928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924828, 42.128422, 27.082520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549164, 42.187862, 26.958656>,  <36.323765, 42.223526, 26.884338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549164, 42.187862, 26.958656>,  <36.924828, 42.128422, 27.082520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549164, 42.187862, 26.958656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316314, -0.022862, 0.948379,
		0.133854, 0.988632, 0.068477,
		-0.939164, 0.148605, -0.309658,
		36.267414, 42.232445, 26.865759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705246, 42.673790, 27.376642>,  <36.924828, 42.128422, 27.082520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705246, 42.673790, 27.376642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365334, 42.475449, 27.305084>,  <36.161388, 42.356441, 27.262150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365334, 42.475449, 27.305084>,  <36.705246, 42.673790, 27.376642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365334, 42.475449, 27.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169621, -0.064109, 0.983422,
		-0.499106, 0.866034, -0.029630,
		-0.849777, -0.495858, -0.178895,
		36.110401, 42.326691, 27.251415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266644, 42.988338, 27.815042>,  <36.705246, 42.673790, 27.376642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266644, 42.988338, 27.815042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060658, 42.663097, 27.706467>,  <35.937065, 42.467953, 27.641321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060658, 42.663097, 27.706467>,  <36.266644, 42.988338, 27.815042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060658, 42.663097, 27.706467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391001, -0.058992, 0.918498,
		-0.762843, 0.579129, -0.287544,
		-0.514966, -0.813099, -0.271441,
		35.906166, 42.419167, 27.625034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511860, 43.094379, 28.113735>,  <36.266644, 42.988338, 27.815042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511860, 43.094379, 28.113735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552097, 42.699406, 28.064989>,  <35.576241, 42.462421, 28.035742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552097, 42.699406, 28.064989>,  <35.511860, 43.094379, 28.113735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552097, 42.699406, 28.064989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499927, -0.156066, 0.851890,
		-0.860206, -0.024773, -0.509345,
		0.100595, -0.987436, -0.121864,
		35.582275, 42.403175, 28.028429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817303, 42.869026, 28.265005>,  <35.511860, 43.094379, 28.113735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817303, 42.869026, 28.265005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099091, 42.590233, 28.318567>,  <35.268166, 42.422955, 28.350704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099091, 42.590233, 28.318567>,  <34.817303, 42.869026, 28.265005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099091, 42.590233, 28.318567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351094, -0.178264, 0.919214,
		-0.616809, -0.694574, -0.370289,
		0.704471, -0.696986, 0.133906,
		35.310432, 42.381138, 28.358740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506184, 42.245869, 28.446241>,  <34.817303, 42.869026, 28.265005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506184, 42.245869, 28.446241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880329, 42.203320, 28.581171>,  <35.104816, 42.177792, 28.662128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880329, 42.203320, 28.581171>,  <34.506184, 42.245869, 28.446241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880329, 42.203320, 28.581171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352667, -0.207735, 0.912399,
		-0.026977, -0.972385, -0.231820,
		0.935360, -0.106369, 0.337324,
		35.160938, 42.171410, 28.682367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515774, 41.480854, 28.621412>,  <34.506184, 42.245869, 28.446241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515774, 41.480854, 28.621412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797646, 41.683575, 28.820040>,  <34.966770, 41.805206, 28.939217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797646, 41.683575, 28.820040>,  <34.515774, 41.480854, 28.621412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797646, 41.683575, 28.820040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277886, -0.446814, 0.850374,
		0.652845, -0.737230, -0.174027,
		0.704680, 0.506802, 0.496566,
		35.009048, 41.835617, 28.969009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732212, 40.944447, 29.052502>,  <34.515774, 41.480854, 28.621412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732212, 40.944447, 29.052502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895844, 41.277702, 29.201380>,  <34.994022, 41.477657, 29.290707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895844, 41.277702, 29.201380>,  <34.732212, 40.944447, 29.052502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895844, 41.277702, 29.201380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062671, -0.432576, 0.899417,
		0.910343, -0.344610, -0.229173,
		0.409082, 0.833140, 0.372196,
		35.018570, 41.527645, 29.313038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386406, 40.830536, 29.350483>,  <34.732212, 40.944447, 29.052502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386406, 40.830536, 29.350483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210686, 41.139427, 29.534081>,  <35.105251, 41.324760, 29.644239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210686, 41.139427, 29.534081>,  <35.386406, 40.830536, 29.350483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210686, 41.139427, 29.534081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311057, -0.348569, 0.884162,
		0.842766, 0.531189, -0.087079,
		-0.439304, 0.772229, 0.458993,
		35.078896, 41.371098, 29.671778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783848, 40.905861, 30.011223>,  <35.386406, 40.830536, 29.350483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783848, 40.905861, 30.011223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497009, 41.175209, 30.083155>,  <35.324905, 41.336819, 30.126314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497009, 41.175209, 30.083155>,  <35.783848, 40.905861, 30.011223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497009, 41.175209, 30.083155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069985, -0.326277, 0.942680,
		0.693449, 0.663409, 0.281099,
		-0.717099, 0.673373, 0.179828,
		35.281879, 41.377220, 30.137102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960976, 41.321438, 30.587528>,  <35.783848, 40.905861, 30.011223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960976, 41.321438, 30.587528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565022, 41.378098, 30.590862>,  <35.327450, 41.412094, 30.592863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565022, 41.378098, 30.590862>,  <35.960976, 41.321438, 30.587528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565022, 41.378098, 30.590862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026873, -0.244807, 0.969199,
		0.139331, 0.959168, 0.246136,
		-0.989881, 0.141654, 0.008333,
		35.268059, 41.420593, 30.593363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769386, 41.586445, 31.310724>,  <35.960976, 41.321438, 30.587528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769386, 41.586445, 31.310724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419342, 41.464672, 31.160255>,  <35.209316, 41.391609, 31.069973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419342, 41.464672, 31.160255>,  <35.769386, 41.586445, 31.310724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419342, 41.464672, 31.160255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245594, -0.390400, 0.887283,
		-0.416977, 0.868854, 0.266875,
		-0.875108, -0.304433, -0.376173,
		35.156811, 41.373341, 31.047403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240295, 41.794930, 31.806446>,  <35.769386, 41.586445, 31.310724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240295, 41.794930, 31.806446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057316, 41.500061, 31.607521>,  <34.947529, 41.323139, 31.488167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057316, 41.500061, 31.607521>,  <35.240295, 41.794930, 31.806446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057316, 41.500061, 31.607521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238776, -0.436889, 0.867245,
		-0.856576, 0.515470, 0.023838,
		-0.457453, -0.737169, -0.497311,
		34.920078, 41.278912, 31.458328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517960, 41.734241, 32.150307>,  <35.240295, 41.794930, 31.806446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517960, 41.734241, 32.150307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614979, 41.391266, 31.968767>,  <34.673191, 41.185482, 31.859844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614979, 41.391266, 31.968767>,  <34.517960, 41.734241, 32.150307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614979, 41.391266, 31.968767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253756, -0.507601, 0.823376,
		-0.936365, -0.084539, -0.340696,
		0.242545, -0.857434, -0.453848,
		34.687744, 41.134037, 31.832613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959259, 41.291645, 32.335117>,  <34.517960, 41.734241, 32.150307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959259, 41.291645, 32.335117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244316, 41.029896, 32.233974>,  <34.415352, 40.872849, 32.173290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244316, 41.029896, 32.233974>,  <33.959259, 41.291645, 32.335117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244316, 41.029896, 32.233974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139467, -0.485395, 0.863100,
		-0.687520, -0.579820, -0.437178,
		0.712646, -0.654370, -0.252853,
		34.458111, 40.833584, 32.158119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683495, 40.627110, 32.404705>,  <33.959259, 41.291645, 32.335117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683495, 40.627110, 32.404705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081337, 40.588280, 32.419319>,  <34.320042, 40.564983, 32.428089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081337, 40.588280, 32.419319>,  <33.683495, 40.627110, 32.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081337, 40.588280, 32.419319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086789, -0.585997, 0.805652,
		-0.056799, -0.804478, -0.591261,
		0.994606, -0.097075, 0.036536,
		34.379719, 40.559158, 32.430279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743965, 39.933563, 32.470238>,  <33.683495, 40.627110, 32.404705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743965, 39.933563, 32.470238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101608, 40.084942, 32.566029>,  <34.316193, 40.175770, 32.623501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101608, 40.084942, 32.566029>,  <33.743965, 39.933563, 32.470238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101608, 40.084942, 32.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041497, -0.462414, 0.885692,
		0.445923, -0.801843, -0.397744,
		0.894109, 0.378446, 0.239475,
		34.369843, 40.198475, 32.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154270, 39.425812, 32.727341>,  <33.743965, 39.933563, 32.470238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154270, 39.425812, 32.727341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339828, 39.744667, 32.881939>,  <34.451164, 39.935978, 32.974697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339828, 39.744667, 32.881939>,  <34.154270, 39.425812, 32.727341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339828, 39.744667, 32.881939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031166, -0.450698, 0.892133,
		0.885344, -0.401807, -0.233918,
		0.463891, 0.797134, 0.386500,
		34.478996, 39.983807, 32.997890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535999, 39.112080, 33.228069>,  <34.154270, 39.425812, 32.727341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535999, 39.112080, 33.228069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543381, 39.495396, 33.342155>,  <34.547810, 39.725384, 33.410606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543381, 39.495396, 33.342155>,  <34.535999, 39.112080, 33.228069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543381, 39.495396, 33.342155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022319, -0.284794, 0.958329,
		0.999581, -0.024049, 0.016133,
		0.018452, 0.958287, 0.285211,
		34.548916, 39.782883, 33.427719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923244, 39.146320, 33.928806>,  <34.535999, 39.112080, 33.228069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923244, 39.146320, 33.928806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753780, 39.508507, 33.938999>,  <34.652103, 39.725819, 33.945114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753780, 39.508507, 33.938999>,  <34.923244, 39.146320, 33.928806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753780, 39.508507, 33.938999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072776, -0.062063, 0.995415,
		0.902893, 0.419863, 0.092189,
		-0.423659, 0.905463, 0.025480,
		34.626682, 39.780148, 33.946644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291294, 39.495770, 34.551476>,  <34.923244, 39.146320, 33.928806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291294, 39.495770, 34.551476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928566, 39.638542, 34.461788>,  <34.710930, 39.724205, 34.407978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928566, 39.638542, 34.461788>,  <35.291294, 39.495770, 34.551476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928566, 39.638542, 34.461788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261148, -0.058202, 0.963543,
		0.330870, 0.932315, 0.145992,
		-0.906822, 0.356933, -0.224214,
		34.656521, 39.745621, 34.394524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702732, 39.708435, 34.039860>,  <35.291294, 39.495770, 34.551476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702732, 39.708435, 34.039860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098495, 39.672005, 34.085087>,  <36.335953, 39.650146, 34.112225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098495, 39.672005, 34.085087>,  <35.702732, 39.708435, 34.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098495, 39.672005, 34.085087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139388, 0.813782, -0.564207,
		-0.040624, 0.573989, 0.817855,
		0.989404, -0.091078, 0.113066,
		36.395317, 39.644680, 34.119007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981544, 40.449089, 33.903725>,  <35.702732, 39.708435, 34.039860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981544, 40.449089, 33.903725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297615, 40.203938, 33.903568>,  <36.487259, 40.056847, 33.903473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297615, 40.203938, 33.903568>,  <35.981544, 40.449089, 33.903725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297615, 40.203938, 33.903568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496208, 0.640126, -0.586530,
		0.359722, 0.463268, 0.809928,
		0.790176, -0.612880, -0.000390,
		36.534668, 40.020073, 33.903450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678810, 40.854271, 33.897213>,  <35.981544, 40.449089, 33.903725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678810, 40.854271, 33.897213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802505, 40.503708, 33.749550>,  <36.876720, 40.293369, 33.660954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802505, 40.503708, 33.749550>,  <36.678810, 40.854271, 33.897213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802505, 40.503708, 33.749550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586127, 0.481336, -0.651745,
		0.748885, -0.014830, 0.662534,
		0.309236, -0.876411, -0.369158,
		36.895275, 40.240784, 33.638802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350830, 40.998615, 33.776855>,  <36.678810, 40.854271, 33.897213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350830, 40.998615, 33.776855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324619, 40.661762, 33.562748>,  <37.308891, 40.459648, 33.434284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324619, 40.661762, 33.562748>,  <37.350830, 40.998615, 33.776855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324619, 40.661762, 33.562748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560573, 0.412706, -0.717935,
		0.825508, -0.347102, 0.445035,
		-0.065528, -0.842136, -0.535269,
		37.304962, 40.409122, 33.402168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093544, 40.532692, 33.567905>,  <37.350830, 40.998615, 33.776855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093544, 40.532692, 33.567905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803101, 40.465897, 33.301109>,  <37.628834, 40.425819, 33.141029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803101, 40.465897, 33.301109>,  <38.093544, 40.532692, 33.567905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803101, 40.465897, 33.301109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532726, 0.476670, -0.699277,
		0.434704, -0.863077, -0.257158,
		-0.726110, -0.166984, -0.666994,
		37.585266, 40.415802, 33.101009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457397, 40.393810, 32.889744>,  <38.093544, 40.532692, 33.567905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457397, 40.393810, 32.889744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086224, 40.468575, 32.760742>,  <37.863522, 40.513435, 32.683342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086224, 40.468575, 32.760742>,  <38.457397, 40.393810, 32.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086224, 40.468575, 32.760742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368437, 0.328654, -0.869621,
		-0.056553, -0.925770, -0.373834,
		-0.927931, 0.186914, -0.322501,
		37.807846, 40.524647, 32.663990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374493, 40.174919, 32.198277>,  <38.457397, 40.393810, 32.889744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374493, 40.174919, 32.198277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079731, 40.442856, 32.234707>,  <37.902874, 40.603619, 32.256565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079731, 40.442856, 32.234707>,  <38.374493, 40.174919, 32.198277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079731, 40.442856, 32.234707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170912, 0.314956, -0.933591,
		-0.654039, -0.672398, -0.346575,
		-0.736900, 0.669839, 0.091073,
		37.858662, 40.643806, 32.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870449, 40.092743, 31.648211>,  <38.374493, 40.174919, 32.198277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870449, 40.092743, 31.648211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828609, 40.470032, 31.774321>,  <37.803505, 40.696404, 31.849987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828609, 40.470032, 31.774321>,  <37.870449, 40.092743, 31.648211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828609, 40.470032, 31.774321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179174, 0.329698, -0.926928,
		-0.978241, -0.040465, -0.203485,
		-0.104597, 0.943219, 0.315274,
		37.797230, 40.752998, 31.868902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604862, 40.386841, 31.102201>,  <37.870449, 40.092743, 31.648211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604862, 40.386841, 31.102201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746147, 40.710140, 31.290657>,  <37.830917, 40.904121, 31.403730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746147, 40.710140, 31.290657>,  <37.604862, 40.386841, 31.102201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746147, 40.710140, 31.290657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174664, 0.437774, -0.881956,
		-0.919095, 0.393807, 0.013453,
		0.353210, 0.808252, 0.471139,
		37.852112, 40.952614, 31.431999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370972, 40.887398, 30.759022>,  <37.604862, 40.386841, 31.102201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370972, 40.887398, 30.759022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656033, 41.086426, 30.956831>,  <37.827068, 41.205841, 31.075516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656033, 41.086426, 30.956831>,  <37.370972, 40.887398, 30.759022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656033, 41.086426, 30.956831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246315, 0.482571, -0.840508,
		-0.656853, 0.720798, 0.221347,
		0.712653, 0.497569, 0.494521,
		37.869827, 41.235695, 31.105186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315559, 41.689758, 30.668600>,  <37.370972, 40.887398, 30.759022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315559, 41.689758, 30.668600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697342, 41.619465, 30.765034>,  <37.926411, 41.577290, 30.822893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697342, 41.619465, 30.765034>,  <37.315559, 41.689758, 30.668600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697342, 41.619465, 30.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297994, 0.600346, -0.742148,
		-0.014310, 0.780193, 0.625375,
		0.954461, -0.175738, 0.241084,
		37.983681, 41.566742, 30.837358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664310, 42.310959, 30.558594>,  <37.315559, 41.689758, 30.668600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664310, 42.310959, 30.558594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964760, 42.048874, 30.526333>,  <38.145031, 41.891624, 30.506975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964760, 42.048874, 30.526333>,  <37.664310, 42.310959, 30.558594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964760, 42.048874, 30.526333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374547, 0.523575, -0.765235,
		0.543619, 0.544581, 0.638679,
		0.751128, -0.655211, -0.080654,
		38.190098, 41.852310, 30.502136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294518, 42.691956, 30.436096>,  <37.664310, 42.310959, 30.558594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294518, 42.691956, 30.436096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412914, 42.324051, 30.332994>,  <38.483952, 42.103310, 30.271133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412914, 42.324051, 30.332994>,  <38.294518, 42.691956, 30.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412914, 42.324051, 30.332994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493786, 0.378327, -0.782971,
		0.817659, 0.104473, 0.566144,
		0.295987, -0.919757, -0.257755,
		38.501709, 42.048122, 30.255669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005695, 42.640526, 30.353176>,  <38.294518, 42.691956, 30.436096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005695, 42.640526, 30.353176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833031, 42.357464, 30.129427>,  <38.729431, 42.187626, 29.995178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833031, 42.357464, 30.129427>,  <39.005695, 42.640526, 30.353176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833031, 42.357464, 30.129427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557876, 0.277867, -0.782026,
		0.708834, -0.649629, 0.274839,
		-0.431658, -0.707653, -0.559374,
		38.703533, 42.145168, 29.961615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520786, 42.472042, 29.858452>,  <39.005695, 42.640526, 30.353176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520786, 42.472042, 29.858452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199070, 42.289261, 29.706499>,  <39.006039, 42.179592, 29.615328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199070, 42.289261, 29.706499>,  <39.520786, 42.472042, 29.858452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199070, 42.289261, 29.706499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339214, 0.171829, -0.924883,
		0.487902, -0.872737, 0.016803,
		-0.804292, -0.456952, -0.379880,
		38.957783, 42.152176, 29.592535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815079, 42.102821, 29.295006>,  <39.520786, 42.472042, 29.858452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815079, 42.102821, 29.295006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423988, 42.121944, 29.213259>,  <39.189335, 42.133419, 29.164211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423988, 42.121944, 29.213259>,  <39.815079, 42.102821, 29.295006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423988, 42.121944, 29.213259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209301, 0.149578, -0.966343,
		-0.015628, -0.987593, -0.156252,
		-0.977727, 0.047806, -0.204367,
		39.130669, 42.136288, 29.151949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866352, 41.779537, 28.639778>,  <39.815079, 42.102821, 29.295006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866352, 41.779537, 28.639778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492149, 41.911835, 28.689461>,  <39.267628, 41.991215, 28.719271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492149, 41.911835, 28.689461>,  <39.866352, 41.779537, 28.639778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492149, 41.911835, 28.689461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163004, -0.092164, -0.982311,
		-0.313451, -0.939208, 0.140134,
		-0.935510, 0.330749, 0.124205,
		39.211494, 42.011059, 28.726723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330784, 41.330074, 28.173273>,  <39.866352, 41.779537, 28.639778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330784, 41.330074, 28.173273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173092, 41.691856, 28.238451>,  <39.078476, 41.908924, 28.277557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173092, 41.691856, 28.238451>,  <39.330784, 41.330074, 28.173273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173092, 41.691856, 28.238451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374141, 0.003993, -0.927363,
		-0.839407, -0.426556, 0.336818,
		-0.394228, 0.904452, 0.162944,
		39.054825, 41.963192, 28.287334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609379, 41.279503, 28.019943>,  <39.330784, 41.330074, 28.173273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609379, 41.279503, 28.019943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758183, 41.643383, 27.946117>,  <38.847466, 41.861710, 27.901823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758183, 41.643383, 27.946117>,  <38.609379, 41.279503, 28.019943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758183, 41.643383, 27.946117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282871, -0.078272, -0.955959,
		-0.884078, 0.407832, 0.228208,
		0.372008, 0.909696, -0.184563,
		38.869785, 41.916290, 27.890749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118340, 41.667957, 27.600641>,  <38.609379, 41.279503, 28.019943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118340, 41.667957, 27.600641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451885, 41.878197, 27.533226>,  <38.652012, 42.004341, 27.492777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451885, 41.878197, 27.533226>,  <38.118340, 41.667957, 27.600641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451885, 41.878197, 27.533226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289174, 0.155916, -0.944494,
		-0.470151, 0.836320, 0.282005,
		0.833868, 0.525603, -0.168538,
		38.702045, 42.035877, 27.482664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921524, 42.219162, 27.193266>,  <38.118340, 41.667957, 27.600641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921524, 42.219162, 27.193266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317749, 42.199615, 27.142035>,  <38.555485, 42.187889, 27.111296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317749, 42.199615, 27.142035>,  <37.921524, 42.219162, 27.193266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317749, 42.199615, 27.142035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099289, 0.388434, -0.916112,
		0.094514, 0.920180, 0.379915,
		0.990560, -0.048864, -0.128077,
		38.614918, 42.184956, 27.103611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079636, 42.817226, 26.821678>,  <37.921524, 42.219162, 27.193266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079636, 42.817226, 26.821678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384644, 42.570107, 26.744852>,  <38.567646, 42.421833, 26.698757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384644, 42.570107, 26.744852>,  <38.079636, 42.817226, 26.821678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384644, 42.570107, 26.744852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070650, 0.215577, -0.973928,
		0.643100, 0.756205, 0.120733,
		0.762516, -0.617804, -0.192063,
		38.613400, 42.384766, 26.687233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509682, 43.211201, 26.339867>,  <38.079636, 42.817226, 26.821678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509682, 43.211201, 26.339867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638008, 42.834026, 26.304224>,  <38.715004, 42.607719, 26.282839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638008, 42.834026, 26.304224>,  <38.509682, 43.211201, 26.339867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638008, 42.834026, 26.304224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004702, 0.095665, -0.995403,
		0.947129, 0.318925, 0.035125,
		0.320819, -0.942940, -0.089107,
		38.734253, 42.551144, 26.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132614, 43.272564, 25.891155>,  <38.509682, 43.211201, 26.339867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132614, 43.272564, 25.891155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041840, 42.884453, 25.857525>,  <38.987377, 42.651588, 25.837347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041840, 42.884453, 25.857525>,  <39.132614, 43.272564, 25.891155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041840, 42.884453, 25.857525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175980, 0.044054, -0.983407,
		0.957879, -0.237964, 0.160751,
		-0.226934, -0.970274, -0.084075,
		38.973759, 42.593372, 25.832302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572010, 43.011662, 25.421484>,  <39.132614, 43.272564, 25.891155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572010, 43.011662, 25.421484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263130, 42.757690, 25.411892>,  <39.077805, 42.605309, 25.406137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263130, 42.757690, 25.411892>,  <39.572010, 43.011662, 25.421484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263130, 42.757690, 25.411892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039281, -0.010039, -0.999178,
		0.634167, -0.772505, 0.032693,
		-0.772198, -0.634930, -0.023979,
		39.031471, 42.567211, 25.404697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753536, 42.450619, 25.076723>,  <39.572010, 43.011662, 25.421484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753536, 42.450619, 25.076723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358238, 42.421497, 25.022938>,  <39.121059, 42.404022, 24.990667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358238, 42.421497, 25.022938>,  <39.753536, 42.450619, 25.076723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358238, 42.421497, 25.022938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144593, -0.158924, -0.976645,
		0.049739, -0.984603, 0.167583,
		-0.988240, -0.072809, -0.134462,
		39.061768, 42.399654, 24.982599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661598, 41.827618, 24.547396>,  <39.753536, 42.450619, 25.076723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661598, 41.827618, 24.547396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341938, 42.067585, 24.532101>,  <39.150143, 42.211567, 24.522924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341938, 42.067585, 24.532101>,  <39.661598, 41.827618, 24.547396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341938, 42.067585, 24.532101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080880, -0.170333, -0.982062,
		-0.595669, -0.781719, 0.184643,
		-0.799147, 0.599918, -0.038237,
		39.102192, 42.247559, 24.520630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256027, 41.538219, 24.012005>,  <39.661598, 41.827618, 24.547396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256027, 41.538219, 24.012005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041695, 41.873238, 24.054705>,  <38.913094, 42.074249, 24.080324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041695, 41.873238, 24.054705>,  <39.256027, 41.538219, 24.012005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041695, 41.873238, 24.054705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152988, 0.028030, -0.987830,
		-0.830347, -0.545646, 0.113116,
		-0.535835, 0.837547, 0.106752,
		38.880943, 42.124500, 24.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645687, 41.474545, 23.498941>,  <39.256027, 41.538219, 24.012005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645687, 41.474545, 23.498941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748272, 41.851448, 23.585081>,  <38.809822, 42.077591, 23.636765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748272, 41.851448, 23.585081>,  <38.645687, 41.474545, 23.498941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748272, 41.851448, 23.585081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144458, 0.257664, -0.955375,
		-0.955698, 0.213909, 0.202198,
		0.256462, 0.942259, 0.215348,
		38.825211, 42.134125, 23.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999249, 41.967976, 23.445946>,  <38.645687, 41.474545, 23.498941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999249, 41.967976, 23.445946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328331, 42.187553, 23.386869>,  <38.525780, 42.319302, 23.351423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328331, 42.187553, 23.386869>,  <37.999249, 41.967976, 23.445946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328331, 42.187553, 23.386869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314861, 0.223722, -0.922394,
		-0.473303, 0.805361, 0.356899,
		0.822707, 0.548946, -0.147689,
		38.575142, 42.352238, 23.342564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685070, 42.453857, 23.149172>,  <37.999249, 41.967976, 23.445946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685070, 42.453857, 23.149172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077271, 42.503193, 23.087978>,  <38.312592, 42.532795, 23.051262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077271, 42.503193, 23.087978>,  <37.685070, 42.453857, 23.149172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077271, 42.503193, 23.087978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167317, 0.115688, -0.979092,
		-0.103060, 0.985599, 0.134068,
		0.980502, 0.123337, -0.152985,
		38.371422, 42.540195, 23.042084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785694, 43.065559, 22.667387>,  <37.685070, 42.453857, 23.149172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785694, 43.065559, 22.667387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118748, 42.844204, 22.658640>,  <38.318581, 42.711391, 22.653391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118748, 42.844204, 22.658640>,  <37.785694, 43.065559, 22.667387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118748, 42.844204, 22.658640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078143, 0.156482, -0.984585,
		0.548282, 0.818090, 0.173536,
		0.832635, -0.553391, -0.021869,
		38.368538, 42.678188, 22.652079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280712, 43.579510, 22.315836>,  <37.785694, 43.065559, 22.667387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280712, 43.579510, 22.315836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391544, 43.195606, 22.297525>,  <38.458042, 42.965263, 22.286539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391544, 43.195606, 22.297525>,  <38.280712, 43.579510, 22.315836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391544, 43.195606, 22.297525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274241, 0.124654, -0.953548,
		0.920879, 0.251654, 0.297743,
		0.277079, -0.959756, -0.045777,
		38.474667, 42.907681, 22.283792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957726, 43.497440, 21.891607>,  <38.280712, 43.579510, 22.315836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957726, 43.497440, 21.891607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825356, 43.121635, 21.856260>,  <38.745934, 42.896152, 21.835052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825356, 43.121635, 21.856260>,  <38.957726, 43.497440, 21.891607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825356, 43.121635, 21.856260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366002, -0.041472, -0.929689,
		0.869788, -0.340000, 0.357587,
		-0.330924, -0.939510, -0.088369,
		38.726078, 42.839783, 21.829750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515102, 43.072556, 21.599594>,  <38.957726, 43.497440, 21.891607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515102, 43.072556, 21.599594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153107, 42.922550, 21.519234>,  <38.935909, 42.832546, 21.471018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153107, 42.922550, 21.519234>,  <39.515102, 43.072556, 21.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153107, 42.922550, 21.519234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255390, -0.101210, -0.961526,
		0.340251, -0.921479, 0.187369,
		-0.904989, -0.375012, -0.200899,
		38.881611, 42.810047, 21.458963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737423, 42.688950, 21.021475>,  <39.515102, 43.072556, 21.599594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737423, 42.688950, 21.021475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346371, 42.608925, 20.995493>,  <39.111740, 42.560909, 20.979904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346371, 42.608925, 20.995493>,  <39.737423, 42.688950, 21.021475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346371, 42.608925, 20.995493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108912, -0.217290, -0.970012,
		0.179948, -0.955385, 0.234218,
		-0.977628, -0.200061, -0.064953,
		39.053082, 42.548908, 20.976007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593296, 42.017391, 20.751934>,  <39.737423, 42.688950, 21.021475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593296, 42.017391, 20.751934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282906, 42.262794, 20.693321>,  <39.096672, 42.410038, 20.658154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282906, 42.262794, 20.693321>,  <39.593296, 42.017391, 20.751934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282906, 42.262794, 20.693321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067402, -0.150327, -0.986336,
		-0.627156, -0.775245, 0.075298,
		-0.775971, 0.613512, -0.146531,
		39.050114, 42.446850, 20.649363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727875, 41.713139, 20.005796>,  <39.593296, 42.017391, 20.751934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727875, 41.713139, 20.005796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928535, 41.458611, 19.771381>,  <40.048931, 41.305893, 19.630733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928535, 41.458611, 19.771381>,  <39.727875, 41.713139, 20.005796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928535, 41.458611, 19.771381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074278, -0.643258, 0.762038,
		-0.861874, -0.425809, -0.275428,
		0.501654, -0.636322, -0.586036,
		40.079033, 41.267715, 19.595572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416466, 41.133499, 20.235788>,  <39.727875, 41.713139, 20.005796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416466, 41.133499, 20.235788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756584, 41.013119, 20.063078>,  <39.960655, 40.940891, 19.959452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756584, 41.013119, 20.063078>,  <39.416466, 41.133499, 20.235788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756584, 41.013119, 20.063078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205231, -0.565853, 0.798555,
		-0.484645, -0.767620, -0.419378,
		0.850294, -0.300947, -0.431777,
		40.011673, 40.922832, 19.933544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439541, 40.439846, 20.271212>,  <39.416466, 41.133499, 20.235788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439541, 40.439846, 20.271212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824081, 40.536884, 20.219126>,  <40.054806, 40.595108, 20.187874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824081, 40.536884, 20.219126>,  <39.439541, 40.439846, 20.271212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824081, 40.536884, 20.219126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255870, -0.612513, 0.747902,
		0.101677, -0.752314, -0.650912,
		0.961349, 0.242593, -0.130216,
		40.112488, 40.609661, 20.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672329, 39.771084, 20.395916>,  <39.439541, 40.439846, 20.271212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672329, 39.771084, 20.395916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944927, 40.060295, 20.441162>,  <40.108486, 40.233822, 20.468309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944927, 40.060295, 20.441162>,  <39.672329, 39.771084, 20.395916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944927, 40.060295, 20.441162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376431, -0.478884, 0.793076,
		0.627584, -0.497899, -0.598527,
		0.681497, 0.723026, 0.113115,
		40.149376, 40.277203, 20.475098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204426, 39.464394, 20.631010>,  <39.672329, 39.771084, 20.395916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204426, 39.464394, 20.631010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286465, 39.837967, 20.748110>,  <40.335690, 40.062111, 20.818371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286465, 39.837967, 20.748110>,  <40.204426, 39.464394, 20.631010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286465, 39.837967, 20.748110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367184, -0.350685, 0.861508,
		0.907254, -0.069200, -0.414851,
		0.205098, 0.933933, 0.292752,
		40.347996, 40.118149, 20.835936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892006, 39.383232, 20.946724>,  <40.204426, 39.464394, 20.631010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892006, 39.383232, 20.946724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685295, 39.696278, 21.085554>,  <40.561268, 39.884106, 21.168852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685295, 39.696278, 21.085554>,  <40.892006, 39.383232, 20.946724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685295, 39.696278, 21.085554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350888, -0.176170, 0.919697,
		0.780911, 0.597060, -0.183569,
		-0.516775, 0.782613, 0.347074,
		40.530262, 39.931061, 21.189676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218517, 39.575092, 21.452560>,  <40.892006, 39.383232, 20.946724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218517, 39.575092, 21.452560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891766, 39.784035, 21.550423>,  <40.695717, 39.909401, 21.609140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891766, 39.784035, 21.550423>,  <41.218517, 39.575092, 21.452560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891766, 39.784035, 21.550423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146166, -0.222850, 0.963833,
		0.557985, 0.823093, 0.105690,
		-0.816877, 0.522356, 0.244655,
		40.646702, 39.940742, 21.623819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403824, 39.960957, 22.072182>,  <41.218517, 39.575092, 21.452560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403824, 39.960957, 22.072182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004440, 39.982410, 22.077995>,  <40.764812, 39.995281, 22.081484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004440, 39.982410, 22.077995>,  <41.403824, 39.960957, 22.072182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004440, 39.982410, 22.077995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007272, -0.133191, 0.991064,
		0.055090, 0.989638, 0.132595,
		-0.998455, 0.053634, 0.014534,
		40.704903, 39.998501, 22.082355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220776, 40.390842, 22.739985>,  <41.403824, 39.960957, 22.072182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220776, 40.390842, 22.739985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884357, 40.196934, 22.643948>,  <40.682507, 40.080589, 22.586325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884357, 40.196934, 22.643948>,  <41.220776, 40.390842, 22.739985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884357, 40.196934, 22.643948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218184, -0.102152, 0.970546,
		-0.495021, 0.868654, -0.019856,
		-0.841041, -0.484773, -0.240094,
		40.632046, 40.051502, 22.571918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722935, 40.755894, 23.095516>,  <41.220776, 40.390842, 22.739985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722935, 40.755894, 23.095516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579323, 40.388512, 23.029146>,  <40.493156, 40.168083, 22.989325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579323, 40.388512, 23.029146>,  <40.722935, 40.755894, 23.095516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579323, 40.388512, 23.029146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213849, -0.092094, 0.972516,
		-0.908495, 0.384649, -0.163346,
		-0.359034, -0.918457, -0.165924,
		40.471611, 40.112976, 22.979368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290718, 40.781124, 23.607277>,  <40.722935, 40.755894, 23.095516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290718, 40.781124, 23.607277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267601, 40.395817, 23.502373>,  <40.253731, 40.164635, 23.439430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267601, 40.395817, 23.502373>,  <40.290718, 40.781124, 23.607277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267601, 40.395817, 23.502373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262955, -0.238737, 0.934804,
		-0.963076, 0.122987, -0.239499,
		-0.057791, -0.963265, -0.262262,
		40.250263, 40.106838, 23.423695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576355, 40.411667, 23.794445>,  <40.290718, 40.781124, 23.607277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576355, 40.411667, 23.794445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836285, 40.107807, 23.784155>,  <39.992241, 39.925491, 23.777981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836285, 40.107807, 23.784155>,  <39.576355, 40.411667, 23.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836285, 40.107807, 23.784155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167239, -0.175912, 0.970096,
		-0.741459, -0.626088, -0.241355,
		0.649823, -0.759650, -0.025726,
		40.031231, 39.879913, 23.776438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192215, 39.825489, 24.097260>,  <39.576355, 40.411667, 23.794445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192215, 39.825489, 24.097260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589474, 39.804371, 24.138956>,  <39.827831, 39.791698, 24.163975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589474, 39.804371, 24.138956>,  <39.192215, 39.825489, 24.097260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589474, 39.804371, 24.138956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112634, -0.195081, 0.974298,
		-0.031099, -0.979365, -0.199691,
		0.993150, -0.052792, 0.104243,
		39.887417, 39.788532, 24.170229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204243, 39.320126, 24.516306>,  <39.192215, 39.825489, 24.097260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204243, 39.320126, 24.516306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537849, 39.539261, 24.542492>,  <39.738014, 39.670742, 24.558205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537849, 39.539261, 24.542492>,  <39.204243, 39.320126, 24.516306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537849, 39.539261, 24.542492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040001, -0.178384, 0.983148,
		0.550286, -0.817344, -0.170690,
		0.834018, 0.547840, 0.065467,
		39.788055, 39.703613, 24.562132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772770, 38.965744, 24.959240>,  <39.204243, 39.320126, 24.516306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772770, 38.965744, 24.959240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881325, 39.350670, 24.952244>,  <39.946457, 39.581623, 24.948046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881325, 39.350670, 24.952244>,  <39.772770, 38.965744, 24.959240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881325, 39.350670, 24.952244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015682, 0.013751, 0.999782,
		0.962342, -0.271604, -0.011359,
		0.271389, 0.962311, -0.017492,
		39.962742, 39.639362, 24.946997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376118, 39.046501, 25.413832>,  <39.772770, 38.965744, 24.959240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376118, 39.046501, 25.413832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207138, 39.408119, 25.387770>,  <40.105751, 39.625092, 25.372131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207138, 39.408119, 25.387770>,  <40.376118, 39.046501, 25.413832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207138, 39.408119, 25.387770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166730, 0.148166, 0.974807,
		0.890922, 0.400939, -0.213323,
		-0.422445, 0.904044, -0.065156,
		40.080406, 39.679333, 25.368223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882130, 39.458275, 25.695078>,  <40.376118, 39.046501, 25.413832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882130, 39.458275, 25.695078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541092, 39.665619, 25.721584>,  <40.336468, 39.790024, 25.737488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541092, 39.665619, 25.721584>,  <40.882130, 39.458275, 25.695078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541092, 39.665619, 25.721584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084273, 0.011235, 0.996379,
		0.515736, 0.855091, -0.053263,
		-0.852593, 0.518357, 0.066267,
		40.285313, 39.821125, 25.741465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039974, 39.969723, 26.205416>,  <40.882130, 39.458275, 25.695078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039974, 39.969723, 26.205416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641384, 39.940269, 26.189354>,  <40.402229, 39.922600, 26.179716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641384, 39.940269, 26.189354>,  <41.039974, 39.969723, 26.205416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641384, 39.940269, 26.189354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053489, 0.189190, 0.980483,
		-0.064596, 0.979176, -0.192462,
		-0.996477, -0.073630, -0.040154,
		40.342442, 39.918182, 26.177307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782436, 40.576481, 26.697178>,  <41.039974, 39.969723, 26.205416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782436, 40.576481, 26.697178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484066, 40.316322, 26.639803>,  <40.305042, 40.160225, 26.605377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484066, 40.316322, 26.639803>,  <40.782436, 40.576481, 26.697178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484066, 40.316322, 26.639803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316674, 0.156879, 0.935471,
		-0.585927, 0.743216, -0.322985,
		-0.745927, -0.650399, -0.143437,
		40.260288, 40.121204, 26.596771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269379, 40.834324, 27.028494>,  <40.782436, 40.576481, 26.697178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269379, 40.834324, 27.028494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183258, 40.444744, 27.000006>,  <40.131584, 40.210999, 26.982914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183258, 40.444744, 27.000006>,  <40.269379, 40.834324, 27.028494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183258, 40.444744, 27.000006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301890, -0.002976, 0.953338,
		-0.928713, 0.226756, -0.293384,
		-0.215302, -0.973947, -0.071220,
		40.118668, 40.152561, 26.978640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595955, 40.772038, 27.213755>,  <40.269379, 40.834324, 27.028494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595955, 40.772038, 27.213755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729912, 40.405365, 27.300970>,  <39.810287, 40.185360, 27.353300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729912, 40.405365, 27.300970>,  <39.595955, 40.772038, 27.213755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729912, 40.405365, 27.300970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387222, 0.077068, 0.918760,
		-0.859014, -0.392118, -0.329149,
		0.334895, -0.916681, 0.218039,
		39.830379, 40.130360, 27.366383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204525, 40.556431, 27.716770>,  <39.595955, 40.772038, 27.213755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204525, 40.556431, 27.716770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482231, 40.274628, 27.775633>,  <39.648857, 40.105545, 27.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482231, 40.274628, 27.775633>,  <39.204525, 40.556431, 27.716770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482231, 40.274628, 27.775633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288437, -0.085035, 0.953716,
		-0.659390, -0.704580, -0.262244,
		0.694269, -0.704512, 0.147156,
		39.690514, 40.063274, 27.819780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854553, 40.173336, 28.229881>,  <39.204525, 40.556431, 27.716770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854553, 40.173336, 28.229881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240913, 40.070831, 28.244629>,  <39.472729, 40.009327, 28.253477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240913, 40.070831, 28.244629>,  <38.854553, 40.173336, 28.229881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240913, 40.070831, 28.244629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032324, 0.021936, 0.999237,
		-0.256876, -0.966358, 0.012904,
		0.965904, -0.256263, 0.036871,
		39.530685, 39.993954, 28.255690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882996, 39.609840, 28.681574>,  <38.854553, 40.173336, 28.229881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882996, 39.609840, 28.681574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240887, 39.788464, 28.678724>,  <39.455620, 39.895638, 28.677015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240887, 39.788464, 28.678724>,  <38.882996, 39.609840, 28.681574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240887, 39.788464, 28.678724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005485, 0.026934, 0.999622,
		0.446585, -0.894347, 0.026548,
		0.894724, 0.446562, -0.007122,
		39.509304, 39.922432, 28.676588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315136, 39.266731, 29.244692>,  <38.882996, 39.609840, 28.681574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315136, 39.266731, 29.244692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541332, 39.588497, 29.171877>,  <39.677048, 39.781559, 29.128189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541332, 39.588497, 29.171877>,  <39.315136, 39.266731, 29.244692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541332, 39.588497, 29.171877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141730, 0.122652, 0.982278,
		0.812488, -0.581266, -0.044651,
		0.565488, 0.804417, -0.182036,
		39.710979, 39.829823, 29.117266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863251, 39.113430, 29.594311>,  <39.315136, 39.266731, 29.244692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863251, 39.113430, 29.594311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898170, 39.509869, 29.554096>,  <39.919125, 39.747730, 29.529968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898170, 39.509869, 29.554096>,  <39.863251, 39.113430, 29.594311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898170, 39.509869, 29.554096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350886, 0.063860, 0.934238,
		0.932339, -0.116839, -0.342187,
		0.087304, 0.991096, -0.100536,
		39.924362, 39.807198, 29.523935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524075, 39.270046, 29.860788>,  <39.863251, 39.113430, 29.594311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524075, 39.270046, 29.860788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291439, 39.594814, 29.880917>,  <40.151859, 39.789677, 29.892994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291439, 39.594814, 29.880917>,  <40.524075, 39.270046, 29.860788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291439, 39.594814, 29.880917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261074, 0.127706, 0.956834,
		0.770450, 0.569623, -0.286245,
		-0.581590, 0.811924, 0.050323,
		40.116962, 39.838390, 29.896013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976704, 39.740936, 29.955978>,  <40.524075, 39.270046, 29.860788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976704, 39.740936, 29.955978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614086, 39.827614, 30.100878>,  <40.396515, 39.879620, 30.187817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614086, 39.827614, 30.100878>,  <40.976704, 39.740936, 29.955978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614086, 39.827614, 30.100878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398027, 0.153082, 0.904511,
		0.140549, 0.964162, -0.225026,
		-0.906543, 0.216695, 0.362247,
		40.342125, 39.892624, 30.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143883, 40.089413, 30.548010>,  <40.976704, 39.740936, 29.955978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143883, 40.089413, 30.548010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761284, 39.982288, 30.594305>,  <40.531723, 39.918015, 30.622082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761284, 39.982288, 30.594305>,  <41.143883, 40.089413, 30.548010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761284, 39.982288, 30.594305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158495, -0.143933, 0.976812,
		-0.244938, 0.952661, 0.180117,
		-0.956496, -0.267806, 0.115738,
		40.474335, 39.901947, 30.629026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875420, 40.575420, 31.034348>,  <41.143883, 40.089413, 30.548010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875420, 40.575420, 31.034348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698803, 40.216618, 31.042480>,  <40.592831, 40.001335, 31.047359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698803, 40.216618, 31.042480>,  <40.875420, 40.575420, 31.034348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698803, 40.216618, 31.042480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328184, -0.140373, 0.934125,
		-0.835065, 0.419131, 0.356365,
		-0.441545, -0.897009, 0.020332,
		40.566338, 39.947514, 31.048580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671356, 40.537239, 31.670990>,  <40.875420, 40.575420, 31.034348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671356, 40.537239, 31.670990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605850, 40.160156, 31.554718>,  <40.566547, 39.933907, 31.484955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605850, 40.160156, 31.554718>,  <40.671356, 40.537239, 31.670990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605850, 40.160156, 31.554718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120648, -0.311584, 0.942528,
		-0.979095, 0.119280, 0.164761,
		-0.163761, -0.942702, -0.290679,
		40.556721, 39.877346, 31.467514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201763, 40.282829, 32.078575>,  <40.671356, 40.537239, 31.670990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201763, 40.282829, 32.078575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387840, 39.952469, 31.951153>,  <40.499485, 39.754250, 31.874699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387840, 39.952469, 31.951153>,  <40.201763, 40.282829, 32.078575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387840, 39.952469, 31.951153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207726, -0.247968, 0.946236,
		-0.860494, -0.506351, 0.056210,
		0.465189, -0.825906, -0.318557,
		40.527397, 39.704697, 31.855585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008236, 39.850208, 32.514576>,  <40.201763, 40.282829, 32.078575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008236, 39.850208, 32.514576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319790, 39.642841, 32.373386>,  <40.506721, 39.518421, 32.288673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319790, 39.642841, 32.373386>,  <40.008236, 39.850208, 32.514576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319790, 39.642841, 32.373386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026835, -0.534740, 0.844590,
		-0.626595, -0.667309, -0.402588,
		0.778883, -0.518413, -0.352973,
		40.553455, 39.487316, 32.267494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847557, 39.095303, 32.642624>,  <40.008236, 39.850208, 32.514576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847557, 39.095303, 32.642624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234951, 39.109070, 32.543945>,  <40.467388, 39.117329, 32.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234951, 39.109070, 32.543945>,  <39.847557, 39.095303, 32.642624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234951, 39.109070, 32.543945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235461, -0.449582, 0.861646,
		-0.081258, -0.892576, -0.443515,
		0.968480, 0.034416, -0.246699,
		40.525494, 39.119396, 32.469936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118935, 38.424515, 32.717770>,  <39.847557, 39.095303, 32.642624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118935, 38.424515, 32.717770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418499, 38.685078, 32.766422>,  <40.598236, 38.841415, 32.795616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418499, 38.685078, 32.766422>,  <40.118935, 38.424515, 32.717770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418499, 38.685078, 32.766422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223635, -0.421229, 0.878950,
		0.623794, -0.631054, -0.461141,
		0.748912, 0.651411, 0.121634,
		40.643173, 38.880501, 32.802914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638096, 38.016369, 32.906929>,  <40.118935, 38.424515, 32.717770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638096, 38.016369, 32.906929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709332, 38.390781, 33.028339>,  <40.752071, 38.615429, 33.101185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709332, 38.390781, 33.028339>,  <40.638096, 38.016369, 32.906929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709332, 38.390781, 33.028339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308336, -0.346002, 0.886122,
		0.934460, -0.064217, -0.350230,
		0.178085, 0.936033, 0.303525,
		40.762756, 38.671593, 33.119396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291870, 37.929829, 33.144131>,  <40.638096, 38.016369, 32.906929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291870, 37.929829, 33.144131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141979, 38.271313, 33.288769>,  <41.052044, 38.476204, 33.375553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141979, 38.271313, 33.288769>,  <41.291870, 37.929829, 33.144131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141979, 38.271313, 33.288769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417357, -0.192933, 0.888026,
		0.827884, 0.483682, -0.284006,
		-0.374728, 0.853715, 0.361594,
		41.029560, 38.527428, 33.397247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803150, 38.083733, 33.601013>,  <41.291870, 37.929829, 33.144131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803150, 38.083733, 33.601013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487850, 38.309700, 33.698608>,  <41.298672, 38.445282, 33.757164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487850, 38.309700, 33.698608>,  <41.803150, 38.083733, 33.601013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487850, 38.309700, 33.698608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199964, -0.139827, 0.969775,
		0.581962, 0.813212, -0.002746,
		-0.788248, 0.564921, 0.243987,
		41.251377, 38.479176, 33.771805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009029, 38.587372, 34.207130>,  <41.803150, 38.083733, 33.601013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009029, 38.587372, 34.207130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609901, 38.561394, 34.211716>,  <41.370422, 38.545807, 34.214466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609901, 38.561394, 34.211716>,  <42.009029, 38.587372, 34.207130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609901, 38.561394, 34.211716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016176, -0.072455, 0.997241,
		-0.063936, 0.995255, 0.073347,
		-0.997823, -0.064946, 0.011467,
		41.310555, 38.541908, 34.215157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799599, 38.962269, 34.772411>,  <42.009029, 38.587372, 34.207130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799599, 38.962269, 34.772411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494568, 38.709629, 34.716476>,  <41.311550, 38.558044, 34.682915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494568, 38.709629, 34.716476>,  <41.799599, 38.962269, 34.772411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494568, 38.709629, 34.716476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146050, -0.378690, 0.913927,
		-0.630191, 0.676519, 0.381026,
		-0.762580, -0.631598, -0.139841,
		41.265793, 38.520149, 34.674522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429375, 38.916023, 35.394905>,  <41.799599, 38.962269, 34.772411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429375, 38.916023, 35.394905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247326, 38.603695, 35.223705>,  <41.138096, 38.416298, 35.120983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247326, 38.603695, 35.223705>,  <41.429375, 38.916023, 35.394905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247326, 38.603695, 35.223705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048749, -0.501799, 0.863609,
		-0.889092, 0.372186, 0.266446,
		-0.455125, -0.780817, -0.428002,
		41.110786, 38.369450, 35.095306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978462, 38.727093, 35.863972>,  <41.429375, 38.916023, 35.394905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978462, 38.727093, 35.863972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006931, 38.406952, 35.625858>,  <41.024014, 38.214867, 35.482990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006931, 38.406952, 35.625858>,  <40.978462, 38.727093, 35.863972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006931, 38.406952, 35.625858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315023, -0.584291, 0.747906,
		-0.946411, 0.134298, -0.293717,
		0.071174, -0.800355, -0.595287,
		41.028282, 38.166847, 35.447273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340500, 38.264034, 35.887333>,  <40.978462, 38.727093, 35.863972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340500, 38.264034, 35.887333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658058, 38.050491, 35.770897>,  <40.848591, 37.922367, 35.701035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658058, 38.050491, 35.770897>,  <40.340500, 38.264034, 35.887333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658058, 38.050491, 35.770897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091927, -0.578593, 0.810419,
		-0.601075, -0.616623, -0.508414,
		0.793888, -0.533860, -0.291093,
		40.896225, 37.890335, 35.683571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097046, 37.633770, 35.880955>,  <40.340500, 38.264034, 35.887333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097046, 37.633770, 35.880955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490814, 37.565746, 35.898842>,  <40.727074, 37.524933, 35.909573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490814, 37.565746, 35.898842>,  <40.097046, 37.633770, 35.880955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490814, 37.565746, 35.898842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151964, -0.694867, 0.702899,
		-0.088459, -0.698743, -0.709883,
		0.984420, -0.170054, 0.044716,
		40.786140, 37.514729, 35.912258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101768, 36.925819, 35.818787>,  <40.097046, 37.633770, 35.880955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101768, 36.925819, 35.818787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470119, 37.020985, 35.942322>,  <40.691132, 37.078083, 36.016445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470119, 37.020985, 35.942322>,  <40.101768, 36.925819, 35.818787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470119, 37.020985, 35.942322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031639, -0.743974, 0.667459,
		0.388569, -0.624419, -0.677580,
		0.920877, 0.237916, 0.308842,
		40.746384, 37.092358, 36.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500435, 36.268936, 35.846218>,  <40.101768, 36.925819, 35.818787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500435, 36.268936, 35.846218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647789, 36.540752, 36.099995>,  <40.736202, 36.703842, 36.252262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647789, 36.540752, 36.099995>,  <40.500435, 36.268936, 35.846218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647789, 36.540752, 36.099995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058822, -0.664035, 0.745384,
		0.927810, -0.311909, -0.204650,
		0.368387, 0.679537, 0.634445,
		40.758305, 36.744614, 36.290329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825195, 35.891678, 36.289635>,  <40.500435, 36.268936, 35.846218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825195, 35.891678, 36.289635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816288, 36.219879, 36.518120>,  <40.810944, 36.416801, 36.655209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816288, 36.219879, 36.518120>,  <40.825195, 35.891678, 36.289635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816288, 36.219879, 36.518120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019900, -0.570874, 0.820797,
		0.999554, 0.029645, -0.003615,
		-0.022269, 0.820502, 0.571209,
		40.809608, 36.466030, 36.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040684, 35.710743, 36.961334>,  <40.825195, 35.891678, 36.289635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040684, 35.710743, 36.961334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864025, 36.060764, 37.040562>,  <40.758030, 36.270779, 37.088100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864025, 36.060764, 37.040562>,  <41.040684, 35.710743, 36.961334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864025, 36.060764, 37.040562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191134, -0.307468, 0.932165,
		0.876594, 0.373828, 0.303044,
		-0.441645, 0.875052, 0.198073,
		40.731533, 36.323280, 37.099983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202835, 35.829121, 37.742043>,  <41.040684, 35.710743, 36.961334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202835, 35.829121, 37.742043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875900, 36.030289, 37.629593>,  <40.679737, 36.150990, 37.562122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875900, 36.030289, 37.629593>,  <41.202835, 35.829121, 37.742043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875900, 36.030289, 37.629593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492540, -0.356751, 0.793809,
		0.298931, 0.787275, 0.539295,
		-0.817340, 0.502919, -0.281120,
		40.630699, 36.181164, 37.545258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913399, 36.305233, 38.278263>,  <41.202835, 35.829121, 37.742043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913399, 36.305233, 38.278263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611870, 36.215652, 38.031170>,  <40.430954, 36.161903, 37.882912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611870, 36.215652, 38.031170>,  <40.913399, 36.305233, 38.278263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611870, 36.215652, 38.031170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533865, -0.339334, 0.774494,
		-0.383065, 0.913619, 0.136240,
		-0.753823, -0.223947, -0.617736,
		40.385723, 36.148468, 37.845848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247677, 36.610512, 38.560402>,  <40.913399, 36.305233, 38.278263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247677, 36.610512, 38.560402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186184, 36.291458, 38.327114>,  <40.149288, 36.100025, 38.187141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186184, 36.291458, 38.327114>,  <40.247677, 36.610512, 38.560402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186184, 36.291458, 38.327114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554565, -0.418864, 0.719034,
		-0.817817, 0.433971, -0.377949,
		-0.153731, -0.797636, -0.583219,
		40.140064, 36.052166, 38.152149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614799, 36.347095, 38.524754>,  <40.247677, 36.610512, 38.560402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614799, 36.347095, 38.524754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853329, 36.031693, 38.464550>,  <39.996445, 35.842449, 38.428429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853329, 36.031693, 38.464550>,  <39.614799, 36.347095, 38.524754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853329, 36.031693, 38.464550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528746, -0.526885, 0.665447,
		-0.604012, -0.317240, -0.731114,
		0.596319, -0.788512, -0.150506,
		40.032227, 35.795139, 38.419399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015438, 36.644230, 38.191032>,  <39.614799, 36.347095, 38.524754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015438, 36.644230, 38.191032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985077, 36.246983, 38.226723>,  <38.966862, 36.008636, 38.248135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985077, 36.246983, 38.226723>,  <39.015438, 36.644230, 38.191032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985077, 36.246983, 38.226723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721453, 0.116464, 0.682599,
		-0.688291, -0.012559, -0.725326,
		-0.075901, -0.993116, 0.089222,
		38.962307, 35.949047, 38.253490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296471, 36.456203, 38.120991>,  <39.015438, 36.644230, 38.191032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296471, 36.456203, 38.120991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517014, 36.221951, 38.358658>,  <38.649342, 36.081398, 38.501259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517014, 36.221951, 38.358658>,  <38.296471, 36.456203, 38.120991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517014, 36.221951, 38.358658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577759, 0.245734, 0.778338,
		-0.601827, -0.772431, -0.202867,
		0.551361, -0.585633, 0.594168,
		38.682423, 36.046261, 38.536907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878273, 35.921875, 38.484303>,  <38.296471, 36.456203, 38.120991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878273, 35.921875, 38.484303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199219, 36.035805, 38.694092>,  <38.391788, 36.104164, 38.819965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199219, 36.035805, 38.694092>,  <37.878273, 35.921875, 38.484303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199219, 36.035805, 38.694092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596828, 0.384474, 0.704256,
		-0.001057, -0.878096, 0.478483,
		0.802369, 0.284828, 0.524478,
		38.439930, 36.121254, 38.851437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656490, 35.762295, 39.136711>,  <37.878273, 35.921875, 38.484303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656490, 35.762295, 39.136711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985455, 35.974903, 39.217834>,  <38.182831, 36.102467, 39.266510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985455, 35.974903, 39.217834>,  <37.656490, 35.762295, 39.136711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985455, 35.974903, 39.217834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414158, 0.314970, 0.853971,
		0.390026, -0.786306, 0.479168,
		0.822406, 0.531522, 0.202809,
		38.232178, 36.134357, 39.278679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869595, 35.569508, 39.928093>,  <37.656490, 35.762295, 39.136711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869595, 35.569508, 39.928093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968498, 35.929733, 39.785069>,  <38.027840, 36.145866, 39.699253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968498, 35.929733, 39.785069>,  <37.869595, 35.569508, 39.928093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968498, 35.929733, 39.785069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406247, 0.431370, 0.805533,
		0.879674, -0.053918, 0.472511,
		0.247260, 0.900563, -0.357561,
		38.042675, 36.199902, 39.677799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972786, 35.808758, 40.605991>,  <37.869595, 35.569508, 39.928093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972786, 35.808758, 40.605991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910145, 36.114506, 40.355801>,  <37.872562, 36.297955, 40.205688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910145, 36.114506, 40.355801>,  <37.972786, 35.808758, 40.605991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910145, 36.114506, 40.355801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472375, 0.498195, 0.727092,
		0.867374, 0.409321, 0.283051,
		-0.156600, 0.764368, -0.625475,
		37.863163, 36.343815, 40.168159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112278, 36.478352, 40.972027>,  <37.972786, 35.808758, 40.605991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112278, 36.478352, 40.972027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872601, 36.553066, 40.660622>,  <37.728794, 36.597893, 40.473778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872601, 36.553066, 40.660622>,  <38.112278, 36.478352, 40.972027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872601, 36.553066, 40.660622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628314, 0.492935, 0.601861,
		0.496172, 0.849781, -0.178006,
		-0.599195, 0.186783, -0.778509,
		37.692841, 36.609100, 40.427071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836964, 37.098045, 41.076740>,  <38.112278, 36.478352, 40.972027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836964, 37.098045, 41.076740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566753, 36.986862, 40.803562>,  <37.404629, 36.920151, 40.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566753, 36.986862, 40.803562>,  <37.836964, 37.098045, 41.076740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566753, 36.986862, 40.803562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681232, 0.589669, 0.433837,
		0.282121, 0.758308, -0.587688,
		-0.675523, -0.277957, -0.682941,
		37.364098, 36.903477, 40.598679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673344, 37.635708, 40.651794>,  <37.836964, 37.098045, 41.076740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673344, 37.635708, 40.651794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361820, 37.387337, 40.687378>,  <37.174908, 37.238316, 40.708729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361820, 37.387337, 40.687378>,  <37.673344, 37.635708, 40.651794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361820, 37.387337, 40.687378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568232, 0.758443, 0.319182,
		-0.265656, 0.198033, -0.943509,
		-0.778807, -0.620924, 0.088957,
		37.128178, 37.201061, 40.714066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997063, 37.919373, 40.259663>,  <37.673344, 37.635708, 40.651794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997063, 37.919373, 40.259663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911263, 37.682056, 40.570019>,  <36.859783, 37.539669, 40.756233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911263, 37.682056, 40.570019>,  <36.997063, 37.919373, 40.259663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911263, 37.682056, 40.570019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425399, 0.771823, 0.472572,
		-0.879217, -0.228692, -0.417943,
		-0.214505, -0.593286, 0.775886,
		36.846912, 37.504070, 40.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369164, 38.073902, 40.524605>,  <36.997063, 37.919373, 40.259663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369164, 38.073902, 40.524605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545681, 37.873699, 40.822533>,  <36.651592, 37.753578, 41.001289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545681, 37.873699, 40.822533>,  <36.369164, 38.073902, 40.524605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545681, 37.873699, 40.822533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344370, 0.672003, 0.655607,
		-0.828654, -0.545810, 0.124193,
		0.441295, -0.500504, 0.744819,
		36.678070, 37.723549, 41.045979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873196, 37.700382, 41.114441>,  <36.369164, 38.073902, 40.524605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873196, 37.700382, 41.114441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215195, 37.836769, 41.270760>,  <36.420395, 37.918602, 41.364552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215195, 37.836769, 41.270760>,  <35.873196, 37.700382, 41.114441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215195, 37.836769, 41.270760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516736, 0.495594, 0.698119,
		0.044361, -0.798827, 0.599922,
		0.854995, 0.340971, 0.390798,
		36.471695, 37.939060, 41.388000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304771, 37.105709, 41.242496>,  <35.873196, 37.700382, 41.114441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304771, 37.105709, 41.242496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134396, 37.146305, 40.882881>,  <36.032169, 37.170662, 40.667110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134396, 37.146305, 40.882881>,  <36.304771, 37.105709, 41.242496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134396, 37.146305, 40.882881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823691, -0.367611, -0.431736,
		-0.374316, -0.924425, 0.072982,
		-0.425936, 0.101491, -0.899043,
		36.006615, 37.176750, 40.613167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329750, 36.576153, 40.770126>,  <36.304771, 37.105709, 41.242496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329750, 36.576153, 40.770126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369305, 36.927940, 40.583897>,  <36.393040, 37.139011, 40.472157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369305, 36.927940, 40.583897>,  <36.329750, 36.576153, 40.770126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369305, 36.927940, 40.583897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919879, -0.259238, -0.294310,
		-0.379530, -0.399169, -0.834638,
		0.098891, 0.879465, -0.465576,
		36.398972, 37.191780, 40.444225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286564, 36.490841, 40.078930>,  <36.329750, 36.576153, 40.770126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286564, 36.490841, 40.078930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527863, 36.776009, 40.221951>,  <36.672642, 36.947109, 40.307762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527863, 36.776009, 40.221951>,  <36.286564, 36.490841, 40.078930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527863, 36.776009, 40.221951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792649, -0.486245, -0.367797,
		-0.088353, 0.505283, -0.858419,
		0.603243, 0.712921, 0.357551,
		36.708836, 36.989883, 40.329216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653851, 36.603626, 39.546776>,  <36.286564, 36.490841, 40.078930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653851, 36.603626, 39.546776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857384, 36.708172, 39.874866>,  <36.979504, 36.770897, 40.071720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857384, 36.708172, 39.874866>,  <36.653851, 36.603626, 39.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857384, 36.708172, 39.874866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839265, -0.362701, -0.405071,
		0.191628, 0.894504, -0.403907,
		0.508836, 0.261362, 0.820229,
		37.010033, 36.786579, 40.120934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117405, 37.103134, 39.375889>,  <36.653851, 36.603626, 39.546776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117405, 37.103134, 39.375889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292839, 36.948418, 39.700367>,  <37.398098, 36.855587, 39.895054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292839, 36.948418, 39.700367>,  <37.117405, 37.103134, 39.375889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292839, 36.948418, 39.700367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700308, -0.418598, -0.578225,
		0.563218, 0.821685, 0.087286,
		0.438581, -0.386794, 0.811194,
		37.424412, 36.832378, 39.943726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751186, 37.440887, 39.495277>,  <37.117405, 37.103134, 39.375889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751186, 37.440887, 39.495277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769772, 37.078720, 39.664062>,  <37.780922, 36.861420, 39.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769772, 37.078720, 39.664062>,  <37.751186, 37.440887, 39.495277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769772, 37.078720, 39.664062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763355, -0.240277, -0.599630,
		0.644306, 0.349972, 0.679993,
		0.046467, -0.905421, 0.421964,
		37.783710, 36.807095, 39.790653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496044, 37.376606, 39.673096>,  <37.751186, 37.440887, 39.495277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496044, 37.376606, 39.673096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322636, 37.016628, 39.654461>,  <38.218590, 36.800644, 39.643280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322636, 37.016628, 39.654461>,  <38.496044, 37.376606, 39.673096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322636, 37.016628, 39.654461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726007, -0.318168, -0.609658,
		0.533832, -0.298123, 0.791294,
		-0.433518, -0.899940, -0.046591,
		38.192581, 36.746647, 39.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129807, 37.014587, 39.605610>,  <38.496044, 37.376606, 39.673096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129807, 37.014587, 39.605610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845097, 36.752289, 39.504910>,  <38.674271, 36.594910, 39.444489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845097, 36.752289, 39.504910>,  <39.129807, 37.014587, 39.605610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845097, 36.752289, 39.504910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646217, -0.470868, -0.600573,
		0.275282, -0.590157, 0.758904,
		-0.711775, -0.655743, -0.251748,
		38.631565, 36.555565, 39.429386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482635, 36.430325, 39.517864>,  <39.129807, 37.014587, 39.605610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482635, 36.430325, 39.517864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142612, 36.354786, 39.321198>,  <38.938599, 36.309464, 39.203197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142612, 36.354786, 39.321198>,  <39.482635, 36.430325, 39.517864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142612, 36.354786, 39.321198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520051, -0.448668, -0.726804,
		-0.083339, -0.873518, 0.479605,
		-0.850060, -0.188847, -0.491665,
		38.887596, 36.298130, 39.173698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384388, 35.687141, 39.349487>,  <39.482635, 36.430325, 39.517864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384388, 35.687141, 39.349487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201508, 35.906960, 39.069782>,  <39.091782, 36.038849, 38.901958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201508, 35.906960, 39.069782>,  <39.384388, 35.687141, 39.349487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201508, 35.906960, 39.069782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589596, -0.401361, -0.700918,
		-0.665843, -0.732742, -0.140509,
		-0.457197, 0.549545, -0.699265,
		39.064350, 36.071823, 38.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768173, 35.614941, 38.841042>,  <39.384388, 35.687141, 39.349487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768173, 35.614941, 38.841042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490067, 35.820320, 38.639854>,  <39.323204, 35.943546, 38.519142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490067, 35.820320, 38.639854>,  <39.768173, 35.614941, 38.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490067, 35.820320, 38.639854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595627, 0.019922, -0.803014,
		-0.402288, -0.857888, -0.319676,
		-0.695265, 0.513451, -0.502967,
		39.281487, 35.974354, 38.488964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420174, 35.250614, 38.228798>,  <39.768173, 35.614941, 38.841042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420174, 35.250614, 38.228798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427410, 35.645340, 38.164463>,  <39.431751, 35.882175, 38.125862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427410, 35.645340, 38.164463>,  <39.420174, 35.250614, 38.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427410, 35.645340, 38.164463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620928, -0.137170, -0.771773,
		-0.783659, -0.085901, -0.615223,
		0.018094, 0.986816, -0.160833,
		39.432838, 35.941383, 38.116215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217308, 35.490273, 37.540878>,  <39.420174, 35.250614, 38.228798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217308, 35.490273, 37.540878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498974, 35.719372, 37.708744>,  <39.667973, 35.856831, 37.809464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498974, 35.719372, 37.708744>,  <39.217308, 35.490273, 37.540878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498974, 35.719372, 37.708744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609475, -0.184327, -0.771079,
		-0.364277, 0.798740, -0.478871,
		0.704161, 0.572746, 0.419666,
		39.710220, 35.891197, 37.834644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482262, 35.843605, 36.984722>,  <39.217308, 35.490273, 37.540878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482262, 35.843605, 36.984722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764286, 35.921227, 37.257553>,  <39.933498, 35.967800, 37.421253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764286, 35.921227, 37.257553>,  <39.482262, 35.843605, 36.984722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764286, 35.921227, 37.257553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706047, -0.102231, -0.700747,
		-0.066253, 0.975650, -0.209090,
		0.705059, 0.194054, 0.682081,
		39.975803, 35.979443, 37.462177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799259, 36.471340, 36.816891>,  <39.482262, 35.843605, 36.984722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799259, 36.471340, 36.816891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052406, 36.221584, 37.000027>,  <40.204296, 36.071732, 37.109909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052406, 36.221584, 37.000027>,  <39.799259, 36.471340, 36.816891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052406, 36.221584, 37.000027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627002, 0.066372, -0.776185,
		0.454251, 0.778292, 0.433495,
		0.632870, -0.624385, 0.457841,
		40.242268, 36.034267, 37.137379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557514, 36.986065, 37.325054>,  <39.799259, 36.471340, 36.816891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557514, 36.986065, 37.325054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881367, 36.754749, 37.365219>,  <40.075676, 36.615959, 37.389320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881367, 36.754749, 37.365219>,  <39.557514, 36.986065, 37.325054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881367, 36.754749, 37.365219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493352, 0.577814, -0.650181,
		0.317971, 0.575945, 0.753115,
		0.809628, -0.578289, 0.100416,
		40.124256, 36.581261, 37.395344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110500, 37.409081, 37.316143>,  <39.557514, 36.986065, 37.325054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110500, 37.409081, 37.316143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323994, 37.077965, 37.246975>,  <40.452087, 36.879295, 37.205475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323994, 37.077965, 37.246975>,  <40.110500, 37.409081, 37.316143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323994, 37.077965, 37.246975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617072, 0.521045, -0.589690,
		0.578235, 0.208033, 0.788902,
		0.533729, -0.827788, -0.172915,
		40.484112, 36.829628, 37.195099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863991, 37.456341, 37.534149>,  <40.110500, 37.409081, 37.316143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863991, 37.456341, 37.534149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791050, 37.207325, 37.229733>,  <40.747284, 37.057915, 37.047081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791050, 37.207325, 37.229733>,  <40.863991, 37.456341, 37.534149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791050, 37.207325, 37.229733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516093, 0.598220, -0.613010,
		0.836896, -0.504556, 0.212199,
		-0.182356, -0.622540, -0.761046,
		40.736343, 37.020565, 37.001419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395176, 37.492111, 37.129772>,  <40.863991, 37.456341, 37.534149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395176, 37.492111, 37.129772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170063, 37.288124, 36.869556>,  <41.034996, 37.165730, 36.713425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170063, 37.288124, 36.869556>,  <41.395176, 37.492111, 37.129772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170063, 37.288124, 36.869556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461401, 0.459184, -0.759118,
		0.685847, -0.727379, -0.023120,
		-0.562782, -0.509971, -0.650543,
		41.001228, 37.135132, 36.674393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834057, 37.394188, 36.605515>,  <41.395176, 37.492111, 37.129772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834057, 37.394188, 36.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477314, 37.311356, 36.444660>,  <41.263268, 37.261658, 36.348148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477314, 37.311356, 36.444660>,  <41.834057, 37.394188, 36.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477314, 37.311356, 36.444660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344395, 0.265492, -0.900503,
		0.293249, -0.941610, -0.165459,
		-0.891851, -0.207088, -0.402141,
		41.209759, 37.249233, 36.324017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027607, 37.217453, 35.858028>,  <41.834057, 37.394188, 36.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027607, 37.217453, 35.858028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636158, 37.299381, 35.865471>,  <41.401287, 37.348537, 35.869934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636158, 37.299381, 35.865471>,  <42.027607, 37.217453, 35.858028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636158, 37.299381, 35.865471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050196, 0.325597, -0.944175,
		-0.199441, -0.923058, -0.328917,
		-0.978623, 0.204817, 0.018603,
		41.342571, 37.360825, 35.871052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785324, 37.083164, 35.159328>,  <42.027607, 37.217453, 35.858028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785324, 37.083164, 35.159328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513382, 37.322559, 35.328850>,  <41.350216, 37.466198, 35.430561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513382, 37.322559, 35.328850>,  <41.785324, 37.083164, 35.159328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513382, 37.322559, 35.328850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141030, 0.460416, -0.876429,
		-0.719658, -0.655614, -0.228611,
		-0.679855, 0.598488, 0.423803,
		41.309425, 37.502106, 35.455990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213032, 37.090286, 34.737682>,  <41.785324, 37.083164, 35.159328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213032, 37.090286, 34.737682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123875, 37.408535, 34.963001>,  <41.070381, 37.599483, 35.098190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123875, 37.408535, 34.963001>,  <41.213032, 37.090286, 34.737682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123875, 37.408535, 34.963001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156808, 0.541043, -0.826247,
		-0.962148, -0.272495, 0.004165,
		-0.222895, 0.795625, 0.563293,
		41.057007, 37.647221, 35.131989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460911, 36.467220, 35.013641>,  <41.213032, 37.090286, 34.737682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460911, 36.467220, 35.013641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499542, 36.158276, 34.762524>,  <41.522720, 35.972908, 34.611851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499542, 36.158276, 34.762524>,  <41.460911, 36.467220, 35.013641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499542, 36.158276, 34.762524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916500, -0.176997, 0.358746,
		-0.388200, -0.610024, 0.690776,
		0.096579, -0.772362, -0.627797,
		41.528515, 35.926567, 34.574184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745728, 35.845398, 35.345757>,  <41.460911, 36.467220, 35.013641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745728, 35.845398, 35.345757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878281, 35.801941, 34.970867>,  <41.957813, 35.775867, 34.745934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878281, 35.801941, 34.970867>,  <41.745728, 35.845398, 35.345757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878281, 35.801941, 34.970867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926564, -0.149880, 0.344985,
		-0.177952, -0.982717, 0.051000,
		0.331379, -0.108646, -0.937222,
		41.977695, 35.769348, 34.689701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149178, 35.173363, 35.165375>,  <41.745728, 35.845398, 35.345757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149178, 35.173363, 35.165375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279728, 35.475548, 34.938133>,  <42.358059, 35.656860, 34.801788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279728, 35.475548, 34.938133>,  <42.149178, 35.173363, 35.165375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279728, 35.475548, 34.938133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887281, -0.037637, 0.459692,
		0.325900, -0.654104, -0.682595,
		0.326377, 0.755467, -0.568108,
		42.377640, 35.702187, 34.767700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790024, 34.972679, 34.866589>,  <42.149178, 35.173363, 35.165375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790024, 34.972679, 34.866589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757774, 35.369656, 34.903580>,  <42.738426, 35.607841, 34.925774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757774, 35.369656, 34.903580>,  <42.790024, 34.972679, 34.866589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757774, 35.369656, 34.903580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848749, 0.019709, 0.528429,
		0.522614, 0.121096, -0.843925,
		-0.080623, 0.992445, 0.092480,
		42.733589, 35.667389, 34.931324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517857, 35.330521, 34.800735>,  <42.790024, 34.972679, 34.866589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517857, 35.330521, 34.800735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286087, 35.546555, 35.044895>,  <43.147026, 35.676174, 35.191391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286087, 35.546555, 35.044895>,  <43.517857, 35.330521, 34.800735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286087, 35.546555, 35.044895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769622, 0.116084, 0.627858,
		0.268237, 0.833569, -0.482920,
		-0.579422, 0.540081, 0.610395,
		43.112259, 35.708580, 35.228012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807510, 36.074726, 34.896412>,  <43.517857, 35.330521, 34.800735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807510, 36.074726, 34.896412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598518, 35.958282, 35.216980>,  <43.473125, 35.888416, 35.409321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598518, 35.958282, 35.216980>,  <43.807510, 36.074726, 34.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598518, 35.958282, 35.216980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742339, 0.307088, 0.595507,
		-0.419464, 0.906064, 0.055655,
		-0.522477, -0.291109, 0.801420,
		43.441776, 35.870949, 35.457405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637405, 36.662029, 35.516430>,  <43.807510, 36.074726, 34.896412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637405, 36.662029, 35.516430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683571, 36.278088, 35.618694>,  <43.711269, 36.047722, 35.680054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683571, 36.278088, 35.618694>,  <43.637405, 36.662029, 35.516430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683571, 36.278088, 35.618694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776813, 0.247624, 0.579002,
		-0.619064, 0.131772, 0.774207,
		0.115416, -0.959853, 0.255658,
		43.718197, 35.990131, 35.695393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516953, 36.656139, 36.117668>,  <43.637405, 36.662029, 35.516430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516953, 36.656139, 36.117668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767349, 36.362858, 36.011425>,  <43.917587, 36.186890, 35.947678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767349, 36.362858, 36.011425>,  <43.516953, 36.656139, 36.117668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767349, 36.362858, 36.011425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745307, 0.462278, 0.480433,
		-0.229472, -0.498705, 0.835845,
		0.625987, -0.733207, -0.265609,
		43.955147, 36.142895, 35.931744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786850, 36.263573, 36.688496>,  <43.516953, 36.656139, 36.117668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786850, 36.263573, 36.688496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036057, 36.270172, 36.375683>,  <44.185581, 36.274132, 36.187996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036057, 36.270172, 36.375683>,  <43.786850, 36.263573, 36.688496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036057, 36.270172, 36.375683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720956, 0.375723, 0.582284,
		0.303434, -0.926585, 0.222188,
		0.623017, 0.016496, -0.782035,
		44.222961, 36.275120, 36.141071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380753, 36.521137, 36.981613>,  <43.786850, 36.263573, 36.688496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380753, 36.521137, 36.981613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484512, 36.510933, 36.595440>,  <44.546768, 36.504810, 36.363735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484512, 36.510933, 36.595440>,  <44.380753, 36.521137, 36.981613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484512, 36.510933, 36.595440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874399, 0.430637, 0.223557,
		0.410048, -0.902164, 0.134015,
		0.259397, -0.025513, -0.965433,
		44.562332, 36.503281, 36.305809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101063, 36.187031, 36.898964>,  <44.380753, 36.521137, 36.981613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101063, 36.187031, 36.898964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005688, 36.479149, 36.642895>,  <44.948463, 36.654419, 36.489254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005688, 36.479149, 36.642895>,  <45.101063, 36.187031, 36.898964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005688, 36.479149, 36.642895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914903, 0.390007, 0.104151,
		0.325734, -0.560865, -0.761136,
		-0.238434, 0.730291, -0.640176,
		44.934158, 36.698235, 36.450844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499252, 36.177296, 36.367325>,  <45.101063, 36.187031, 36.898964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499252, 36.177296, 36.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377846, 36.555065, 36.417824>,  <45.305000, 36.781727, 36.448124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377846, 36.555065, 36.417824>,  <45.499252, 36.177296, 36.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377846, 36.555065, 36.417824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924547, 0.259869, 0.278714,
		0.230415, 0.201320, -0.952039,
		-0.303516, 0.944425, 0.126252,
		45.286793, 36.838394, 36.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926132, 36.642845, 35.907890>,  <45.499252, 36.177296, 36.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926132, 36.642845, 35.907890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794502, 36.833698, 36.233849>,  <45.715527, 36.948212, 36.429424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794502, 36.833698, 36.233849>,  <45.926132, 36.642845, 35.907890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794502, 36.833698, 36.233849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933028, 0.297256, 0.202728,
		-0.145503, 0.827032, -0.542999,
		-0.329072, 0.477135, 0.814895,
		45.695782, 36.976837, 36.478317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139320, 37.394955, 35.950336>,  <45.926132, 36.642845, 35.907890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139320, 37.394955, 35.950336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115803, 37.235737, 36.316528>,  <46.101692, 37.140205, 36.536243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115803, 37.235737, 36.316528>,  <46.139320, 37.394955, 35.950336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115803, 37.235737, 36.316528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981117, 0.146231, 0.126590,
		-0.184260, 0.905636, 0.381931,
		-0.058794, -0.398045, 0.915480,
		46.098164, 37.116322, 36.591171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430504, 37.903503, 36.277225>,  <46.139320, 37.394955, 35.950336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430504, 37.903503, 36.277225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452557, 37.534893, 36.430977>,  <46.465790, 37.313725, 36.523228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452557, 37.534893, 36.430977>,  <46.430504, 37.903503, 36.277225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452557, 37.534893, 36.430977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998479, 0.050529, -0.022076,
		0.000922, 0.385009, 0.922913,
		0.055134, -0.921529, 0.384376,
		46.469097, 37.258434, 36.546291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016312, 37.897427, 36.729881>,  <46.430504, 37.903503, 36.277225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016312, 37.897427, 36.729881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885208, 37.553024, 36.885441>,  <46.806545, 37.346382, 36.978775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885208, 37.553024, 36.885441>,  <47.016312, 37.897427, 36.729881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885208, 37.553024, 36.885441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911319, -0.179581, 0.370471,
		-0.249138, 0.475838, 0.843510,
		-0.327763, -0.861004, 0.388900,
		46.786880, 37.294724, 37.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273918, 37.249249, 36.249760>,  <47.016312, 37.897427, 36.729881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273918, 37.249249, 36.249760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485252, 37.553051, 36.401558>,  <47.612053, 37.735332, 36.492638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485252, 37.553051, 36.401558>,  <47.273918, 37.249249, 36.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.485252, 37.553051, 36.401558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840067, -0.532426, -0.103970,
		0.123090, 0.373735, -0.919332,
		0.528333, 0.759503, 0.379499,
		47.643753, 37.780903, 36.515408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.682182, 36.731228, 35.933849>,  <47.273918, 37.249249, 36.249760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.682182, 36.731228, 35.933849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815887, 36.772270, 35.559097>,  <47.896111, 36.796898, 35.334248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815887, 36.772270, 35.559097>,  <47.682182, 36.731228, 35.933849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.815887, 36.772270, 35.559097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678931, -0.715687, 0.163844,
		-0.653701, -0.690842, -0.308889,
		0.334258, 0.102609, -0.936879,
		47.916164, 36.803051, 35.278034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.926765, 36.113377, 35.527405>,  <47.682182, 36.731228, 35.933849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.926765, 36.113377, 35.527405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.083855, 35.745537, 35.523178>,  <48.178108, 35.524834, 35.520641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.083855, 35.745537, 35.523178>,  <47.926765, 36.113377, 35.527405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.083855, 35.745537, 35.523178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880417, -0.372621, -0.293293,
		0.265772, 0.124489, -0.955964,
		0.392724, -0.919596, -0.010570,
		48.201672, 35.469658, 35.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774490, 35.688835, 34.810833>,  <47.926765, 36.113377, 35.527405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774490, 35.688835, 34.810833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809780, 35.430286, 35.113995>,  <47.830952, 35.275158, 35.295891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809780, 35.430286, 35.113995>,  <47.774490, 35.688835, 34.810833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809780, 35.430286, 35.113995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676213, -0.597548, -0.430898,
		0.731405, -0.474492, -0.489801,
		0.088221, -0.646370, 0.757906,
		47.836246, 35.236374, 35.341366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999634, 35.014202, 34.678799>,  <47.774490, 35.688835, 34.810833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999634, 35.014202, 34.678799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794861, 34.941013, 35.014523>,  <47.671997, 34.897099, 35.215958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794861, 34.941013, 35.014523>,  <47.999634, 35.014202, 34.678799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794861, 34.941013, 35.014523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537653, -0.693770, -0.479178,
		0.669967, -0.696566, 0.256787,
		-0.511931, -0.182971, 0.839314,
		47.641281, 34.886124, 35.266315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.847725, 37.056347, 25.656391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471195, 37.191311, 25.659531>,  <37.245277, 37.272289, 25.661413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471195, 37.191311, 25.659531>,  <37.847725, 37.056347, 25.656391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471195, 37.191311, 25.659531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027509, 0.053530, 0.998187,
		0.336381, 0.939834, -0.059670,
		-0.941324, 0.337412, 0.007847,
		37.188797, 37.292534, 25.661884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732281, 37.509293, 26.315115>,  <37.847725, 37.056347, 25.656391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732281, 37.509293, 26.315115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363148, 37.404057, 26.202572>,  <37.141666, 37.340916, 26.135046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363148, 37.404057, 26.202572>,  <37.732281, 37.509293, 26.315115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363148, 37.404057, 26.202572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305421, 0.054651, 0.950648,
		-0.234729, 0.963222, -0.130787,
		-0.922833, -0.263089, -0.281360,
		37.086296, 37.325130, 26.118164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341515, 37.938957, 26.675476>,  <37.732281, 37.509293, 26.315115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341515, 37.938957, 26.675476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100407, 37.628841, 26.600006>,  <36.955742, 37.442772, 26.554724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100407, 37.628841, 26.600006>,  <37.341515, 37.938957, 26.675476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100407, 37.628841, 26.600006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341695, 0.037124, 0.939078,
		-0.721048, 0.630520, -0.287288,
		-0.602772, -0.775285, -0.188677,
		36.919575, 37.396255, 26.543404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697922, 38.157345, 26.859167>,  <37.341515, 37.938957, 26.675476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697922, 38.157345, 26.859167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705322, 37.757683, 26.873880>,  <36.709763, 37.517887, 26.882710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705322, 37.757683, 26.873880>,  <36.697922, 38.157345, 26.859167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705322, 37.757683, 26.873880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254602, 0.030871, 0.966553,
		-0.966869, -0.027247, -0.253815,
		0.018500, -0.999152, 0.036785,
		36.710873, 37.457935, 26.884916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097019, 38.017212, 27.184273>,  <36.697922, 38.157345, 26.859167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097019, 38.017212, 27.184273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308731, 37.678696, 27.208435>,  <36.435757, 37.475586, 27.222933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308731, 37.678696, 27.208435>,  <36.097019, 38.017212, 27.184273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308731, 37.678696, 27.208435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357799, -0.158080, 0.920321,
		-0.769313, -0.508722, -0.386471,
		0.529281, -0.846294, 0.060407,
		36.467514, 37.424809, 27.226557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595436, 37.487839, 27.419643>,  <36.097019, 38.017212, 27.184273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595436, 37.487839, 27.419643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961193, 37.337555, 27.479959>,  <36.180645, 37.247383, 27.516150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961193, 37.337555, 27.479959>,  <35.595436, 37.487839, 27.419643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961193, 37.337555, 27.479959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292188, -0.354656, 0.888170,
		-0.280213, -0.856191, -0.434070,
		0.914389, -0.375707, 0.150790,
		36.235508, 37.224842, 27.525196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458347, 36.793598, 27.621344>,  <35.595436, 37.487839, 27.419643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458347, 36.793598, 27.621344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821991, 36.895061, 27.753517>,  <36.040176, 36.955940, 27.832821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821991, 36.895061, 27.753517>,  <35.458347, 36.793598, 27.621344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821991, 36.895061, 27.753517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266431, -0.255710, 0.929315,
		0.320223, -0.932883, -0.164885,
		0.909105, 0.253657, 0.330433,
		36.094723, 36.971157, 27.852648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630119, 36.238625, 27.980278>,  <35.458347, 36.793598, 27.621344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630119, 36.238625, 27.980278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828972, 36.558098, 28.115906>,  <35.948284, 36.749783, 28.197283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828972, 36.558098, 28.115906>,  <35.630119, 36.238625, 27.980278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828972, 36.558098, 28.115906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331980, -0.185964, 0.924774,
		0.801656, -0.572297, 0.172698,
		0.497129, 0.798683, 0.339070,
		35.978111, 36.797703, 28.217627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964912, 35.958218, 28.559778>,  <35.630119, 36.238625, 27.980278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964912, 35.958218, 28.559778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.000023, 36.352531, 28.617083>,  <36.021091, 36.589119, 28.651464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.000023, 36.352531, 28.617083>,  <35.964912, 35.958218, 28.559778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000023, 36.352531, 28.617083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089100, -0.135469, 0.986767,
		0.992147, -0.099384, 0.075942,
		0.087781, 0.985785, 0.143260,
		36.026356, 36.648266, 28.660061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509666, 36.041710, 29.010513>,  <35.964912, 35.958218, 28.559778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509666, 36.041710, 29.010513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276958, 36.365715, 29.039949>,  <36.137333, 36.560120, 29.057611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276958, 36.365715, 29.039949>,  <36.509666, 36.041710, 29.010513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276958, 36.365715, 29.039949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001889, -0.089129, 0.996018,
		0.813350, 0.579594, 0.050322,
		-0.581771, 0.810017, 0.073588,
		36.102428, 36.608719, 29.062025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881992, 36.466312, 29.427618>,  <36.509666, 36.041710, 29.010513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881992, 36.466312, 29.427618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494366, 36.563232, 29.446350>,  <36.261787, 36.621384, 29.457590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494366, 36.563232, 29.446350>,  <36.881992, 36.466312, 29.427618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494366, 36.563232, 29.446350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032056, -0.064567, 0.997398,
		0.244693, 0.968051, 0.054802,
		-0.969071, 0.242299, 0.046831,
		36.203644, 36.635921, 29.460400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874653, 36.927517, 29.911602>,  <36.881992, 36.466312, 29.427618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874653, 36.927517, 29.911602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486942, 36.829678, 29.901268>,  <36.254314, 36.770973, 29.895067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486942, 36.829678, 29.901268>,  <36.874653, 36.927517, 29.911602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486942, 36.829678, 29.901268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039715, 0.051992, 0.997857,
		-0.242728, 0.968230, -0.060109,
		-0.969281, -0.244595, -0.025834,
		36.196159, 36.756298, 29.893518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532360, 37.381752, 30.374142>,  <36.874653, 36.927517, 29.911602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532360, 37.381752, 30.374142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271835, 37.081120, 30.332327>,  <36.115520, 36.900742, 30.307238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271835, 37.081120, 30.332327>,  <36.532360, 37.381752, 30.374142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271835, 37.081120, 30.332327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079069, -0.069791, 0.994423,
		-0.754681, 0.655944, -0.013970,
		-0.651310, -0.751576, -0.104535,
		36.076443, 36.855648, 30.300966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939693, 37.504189, 30.756880>,  <36.532360, 37.381752, 30.374142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939693, 37.504189, 30.756880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981159, 37.107948, 30.721193>,  <36.006039, 36.870205, 30.699781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981159, 37.107948, 30.721193>,  <35.939693, 37.504189, 30.756880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981159, 37.107948, 30.721193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012334, -0.090972, 0.995777,
		-0.994536, -0.102123, -0.021648,
		0.103661, -0.990603, -0.089216,
		36.012257, 36.810768, 30.694429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594635, 37.263268, 31.389744>,  <35.939693, 37.504189, 30.756880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594635, 37.263268, 31.389744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815575, 36.950768, 31.273422>,  <35.948139, 36.763268, 31.203629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815575, 36.950768, 31.273422>,  <35.594635, 37.263268, 31.389744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815575, 36.950768, 31.273422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268090, -0.163840, 0.949360,
		-0.789331, -0.602335, 0.118949,
		0.552345, -0.781248, -0.290804,
		35.981277, 36.716393, 31.186180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397961, 36.682991, 31.920218>,  <35.594635, 37.263268, 31.389744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397961, 36.682991, 31.920218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739220, 36.596645, 31.730255>,  <35.943977, 36.544838, 31.616278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739220, 36.596645, 31.730255>,  <35.397961, 36.682991, 31.920218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739220, 36.596645, 31.730255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409406, -0.287126, 0.865994,
		-0.323299, -0.933252, -0.156584,
		0.853150, -0.215868, -0.474906,
		35.995163, 36.531883, 31.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698467, 36.130348, 32.368038>,  <35.397961, 36.682991, 31.920218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698467, 36.130348, 32.368038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004463, 36.232395, 32.131496>,  <36.188061, 36.293625, 31.989571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004463, 36.232395, 32.131496>,  <35.698467, 36.130348, 32.368038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004463, 36.232395, 32.131496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636423, -0.158678, 0.754842,
		0.098738, -0.953801, -0.283751,
		0.764994, 0.255117, -0.591353,
		36.233963, 36.308929, 31.954090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272789, 35.516644, 32.325035>,  <35.698467, 36.130348, 32.368038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272789, 35.516644, 32.325035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460320, 35.852276, 32.214657>,  <36.572838, 36.053658, 32.148430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460320, 35.852276, 32.214657>,  <36.272789, 35.516644, 32.325035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460320, 35.852276, 32.214657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704936, -0.167192, 0.689284,
		0.532231, -0.517674, -0.669883,
		0.468824, 0.839083, -0.275942,
		36.600967, 36.104000, 32.131874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971668, 35.326778, 32.438431>,  <36.272789, 35.516644, 32.325035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971668, 35.326778, 32.438431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001694, 35.725292, 32.421547>,  <37.019707, 35.964401, 32.411415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001694, 35.725292, 32.421547>,  <36.971668, 35.326778, 32.438431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001694, 35.725292, 32.421547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578624, -0.009039, 0.815544,
		0.812133, -0.085638, -0.577153,
		0.075059, 0.996285, -0.042211,
		37.024212, 36.024178, 32.408882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677010, 35.482285, 32.494705>,  <36.971668, 35.326778, 32.438431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677010, 35.482285, 32.494705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468586, 35.802105, 32.614185>,  <37.343533, 35.993996, 32.685871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468586, 35.802105, 32.614185>,  <37.677010, 35.482285, 32.494705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468586, 35.802105, 32.614185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591784, 0.086243, 0.801470,
		0.615054, 0.594376, -0.518098,
		-0.521057, 0.799549, 0.298699,
		37.312267, 36.041969, 32.703796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237648, 35.895580, 32.768105>,  <37.677010, 35.482285, 32.494705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237648, 35.895580, 32.768105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890900, 36.044289, 32.900963>,  <37.682850, 36.133514, 32.980679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890900, 36.044289, 32.900963>,  <38.237648, 35.895580, 32.768105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890900, 36.044289, 32.900963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422379, 0.193788, 0.885462,
		0.264824, 0.907872, -0.325018,
		-0.866870, 0.371772, 0.332146,
		37.630840, 36.155819, 33.000607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420658, 36.511425, 33.136967>,  <38.237648, 35.895580, 32.768105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420658, 36.511425, 33.136967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050137, 36.421814, 33.258141>,  <37.827824, 36.368050, 33.330845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050137, 36.421814, 33.258141>,  <38.420658, 36.511425, 33.136967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050137, 36.421814, 33.258141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247383, 0.244798, 0.937484,
		-0.284177, 0.943338, -0.171338,
		-0.926307, -0.224026, 0.302932,
		37.772243, 36.354607, 33.349022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925350, 36.387825, 33.726597>,  <38.420658, 36.511425, 33.136967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925350, 36.387825, 33.726597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.290409, 36.252430, 33.818256>,  <39.509445, 36.171192, 33.873253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.290409, 36.252430, 33.818256>,  <38.925350, 36.387825, 33.726597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290409, 36.252430, 33.818256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378563, 0.488448, -0.786199,
		0.154187, 0.804267, 0.573916,
		0.912642, -0.338485, 0.229153,
		39.564201, 36.150883, 33.887001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395744, 36.938622, 33.574619>,  <38.925350, 36.387825, 33.726597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395744, 36.938622, 33.574619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588543, 36.589252, 33.546875>,  <39.704224, 36.379631, 33.530228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588543, 36.589252, 33.546875>,  <39.395744, 36.938622, 33.574619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588543, 36.589252, 33.546875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128780, 0.148920, -0.980428,
		0.866657, 0.463631, 0.184259,
		0.481997, -0.873424, -0.069356,
		39.733143, 36.327225, 33.526070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983513, 37.101608, 33.164581>,  <39.395744, 36.938622, 33.574619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983513, 37.101608, 33.164581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918850, 36.708035, 33.134262>,  <39.880051, 36.471889, 33.116070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918850, 36.708035, 33.134262>,  <39.983513, 37.101608, 33.164581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918850, 36.708035, 33.134262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094148, 0.061085, -0.993682,
		0.982345, -0.167775, 0.082761,
		-0.161660, -0.983931, -0.075802,
		39.870354, 36.412857, 33.111523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552578, 36.817574, 32.773163>,  <39.983513, 37.101608, 33.164581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552578, 36.817574, 32.773163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272015, 36.536453, 32.725655>,  <40.103676, 36.367783, 32.697151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272015, 36.536453, 32.725655>,  <40.552578, 36.817574, 32.773163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272015, 36.536453, 32.725655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089650, 0.078316, -0.992889,
		0.707101, -0.707067, 0.008074,
		-0.701407, -0.702797, -0.118766,
		40.061592, 36.325615, 32.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835258, 36.435707, 32.264076>,  <40.552578, 36.817574, 32.773163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835258, 36.435707, 32.264076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449612, 36.329517, 32.263840>,  <40.218224, 36.265804, 32.263699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449612, 36.329517, 32.263840>,  <40.835258, 36.435707, 32.264076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449612, 36.329517, 32.263840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015543, 0.058665, -0.998157,
		0.265021, -0.962331, -0.060687,
		-0.964117, -0.265476, -0.000590,
		40.160378, 36.249874, 32.263664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803314, 36.099438, 31.570347>,  <40.835258, 36.435707, 32.264076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803314, 36.099438, 31.570347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419880, 36.116070, 31.683046>,  <40.189819, 36.126049, 31.750666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419880, 36.116070, 31.683046>,  <40.803314, 36.099438, 31.570347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419880, 36.116070, 31.683046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280153, 0.040339, -0.959107,
		-0.051245, -0.998321, -0.027020,
		-0.958586, 0.041580, 0.281750,
		40.132305, 36.128544, 31.767570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463078, 35.573273, 31.228611>,  <40.803314, 36.099438, 31.570347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463078, 35.573273, 31.228611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206757, 35.873043, 31.295221>,  <40.052963, 36.052906, 31.335188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206757, 35.873043, 31.295221>,  <40.463078, 35.573273, 31.228611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206757, 35.873043, 31.295221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219870, 0.028673, -0.975108,
		-0.735546, -0.661467, 0.146402,
		-0.640804, 0.749426, 0.166527,
		40.014515, 36.097870, 31.345179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815140, 35.305660, 30.957932>,  <40.463078, 35.573273, 31.228611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815140, 35.305660, 30.957932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787281, 35.702557, 30.999146>,  <39.770565, 35.940693, 31.023874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787281, 35.702557, 30.999146>,  <39.815140, 35.305660, 30.957932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787281, 35.702557, 30.999146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335275, 0.073996, -0.939210,
		-0.939543, -0.099954, 0.327519,
		-0.069643, 0.992237, 0.103034,
		39.766388, 36.000229, 31.030056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212734, 35.461578, 30.539352>,  <39.815140, 35.305660, 30.957932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212734, 35.461578, 30.539352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403637, 35.812275, 30.563211>,  <39.518177, 36.022694, 30.577526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403637, 35.812275, 30.563211>,  <39.212734, 35.461578, 30.539352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403637, 35.812275, 30.563211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301589, 0.227168, -0.925980,
		-0.825392, 0.423939, 0.372832,
		0.477254, 0.876739, 0.059648,
		39.546814, 36.075298, 30.581106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734722, 36.072811, 30.333498>,  <39.212734, 35.461578, 30.539352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734722, 36.072811, 30.333498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090744, 36.252037, 30.299923>,  <39.304356, 36.359573, 30.279778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090744, 36.252037, 30.299923>,  <38.734722, 36.072811, 30.333498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090744, 36.252037, 30.299923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270044, 0.369891, -0.888964,
		-0.367268, 0.813889, 0.450220,
		0.890051, 0.448068, -0.083937,
		39.357758, 36.386456, 30.274742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625252, 36.746666, 29.977438>,  <38.734722, 36.072811, 30.333498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625252, 36.746666, 29.977438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013374, 36.672451, 29.915361>,  <39.246246, 36.627922, 29.878115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013374, 36.672451, 29.915361>,  <38.625252, 36.746666, 29.977438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013374, 36.672451, 29.915361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085697, 0.336290, -0.937851,
		0.226200, 0.923300, 0.310403,
		0.970304, -0.185541, -0.155193,
		39.304466, 36.616787, 29.868803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883030, 37.311470, 29.655149>,  <38.625252, 36.746666, 29.977438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883030, 37.311470, 29.655149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149967, 37.026474, 29.568424>,  <39.310127, 36.855476, 29.516388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149967, 37.026474, 29.568424>,  <38.883030, 37.311470, 29.655149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149967, 37.026474, 29.568424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054557, 0.243572, -0.968347,
		0.742752, 0.658045, 0.123674,
		0.667340, -0.712495, -0.216815,
		39.350170, 36.812725, 29.503380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461529, 37.573460, 29.251204>,  <38.883030, 37.311470, 29.655149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461529, 37.573460, 29.251204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449795, 37.180275, 29.178627>,  <39.442757, 36.944363, 29.135080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449795, 37.180275, 29.178627>,  <39.461529, 37.573460, 29.251204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449795, 37.180275, 29.178627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031781, 0.180512, -0.983059,
		0.999065, -0.034601, 0.025945,
		-0.029331, -0.982964, -0.181443,
		39.440994, 36.885387, 29.124193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954670, 37.576134, 28.654963>,  <39.461529, 37.573460, 29.251204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954670, 37.576134, 28.654963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756618, 37.228947, 28.639622>,  <39.637787, 37.020634, 28.630417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756618, 37.228947, 28.639622>,  <39.954670, 37.576134, 28.654963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756618, 37.228947, 28.639622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106890, -0.017049, -0.994125,
		0.862219, -0.496320, 0.101219,
		-0.495130, -0.867972, -0.038352,
		39.608078, 36.968555, 28.628117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306175, 37.180805, 28.264469>,  <39.954670, 37.576134, 28.654963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306175, 37.180805, 28.264469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946957, 37.004959, 28.258127>,  <39.731426, 36.899452, 28.254322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946957, 37.004959, 28.258127>,  <40.306175, 37.180805, 28.264469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946957, 37.004959, 28.258127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080051, -0.127872, -0.988555,
		0.432557, -0.889037, 0.150027,
		-0.898046, -0.439616, -0.015857,
		39.677544, 36.873074, 28.253370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345798, 36.583080, 27.901716>,  <40.306175, 37.180805, 28.264469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345798, 36.583080, 27.901716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951580, 36.649670, 27.889126>,  <39.715050, 36.689625, 27.881571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951580, 36.649670, 27.889126>,  <40.345798, 36.583080, 27.901716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951580, 36.649670, 27.889126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000818, -0.190472, -0.981692,
		-0.169411, -0.967476, 0.187855,
		-0.985545, 0.166463, -0.031476,
		39.655918, 36.699612, 27.879683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042301, 36.067039, 27.405741>,  <40.345798, 36.583080, 27.901716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042301, 36.067039, 27.405741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763645, 36.348995, 27.459141>,  <39.596451, 36.518169, 27.491180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763645, 36.348995, 27.459141>,  <40.042301, 36.067039, 27.405741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763645, 36.348995, 27.459141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308769, -0.126617, -0.942672,
		-0.647579, -0.697921, 0.305855,
		-0.696637, 0.704893, 0.133502,
		39.554653, 36.560463, 27.499191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351868, 35.864655, 27.066132>,  <40.042301, 36.067039, 27.405741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351868, 35.864655, 27.066132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349064, 36.264179, 27.085459>,  <39.347382, 36.503895, 27.097055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349064, 36.264179, 27.085459>,  <39.351868, 35.864655, 27.066132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349064, 36.264179, 27.085459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143175, 0.046818, -0.988589,
		-0.989672, -0.013851, 0.142676,
		-0.007013, 0.998807, 0.048318,
		39.346958, 36.563820, 27.099955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.662331, 36.037861, 26.566299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924244, 36.334412, 26.625105>,  <39.081390, 36.512344, 26.660387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924244, 36.334412, 26.625105>,  <38.662331, 36.037861, 26.566299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924244, 36.334412, 26.625105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247342, -0.026390, -0.968569,
		-0.714199, 0.670566, -0.200655,
		0.654784, 0.741381, 0.147011,
		39.120678, 36.556828, 26.669209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478626, 36.568569, 26.164898>,  <38.662331, 36.037861, 26.566299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478626, 36.568569, 26.164898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868587, 36.632832, 26.226559>,  <39.102562, 36.671391, 26.263556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868587, 36.632832, 26.226559>,  <38.478626, 36.568569, 26.164898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868587, 36.632832, 26.226559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104783, 0.279822, -0.954316,
		-0.196451, 0.946514, 0.255964,
		0.974899, 0.160656, 0.154150,
		39.161057, 36.681026, 26.272804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622372, 37.236496, 25.877314>,  <38.478626, 36.568569, 26.164898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622372, 37.236496, 25.877314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970322, 37.040661, 25.901375>,  <39.179092, 36.923161, 25.915812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970322, 37.040661, 25.901375>,  <38.622372, 37.236496, 25.877314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970322, 37.040661, 25.901375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228624, 0.292109, -0.928657,
		0.437087, 0.821570, 0.366030,
		0.869877, -0.489587, 0.060153,
		39.231285, 36.893784, 25.919420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151203, 37.708717, 25.722286>,  <38.622372, 37.236496, 25.877314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151203, 37.708717, 25.722286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300152, 37.344563, 25.650139>,  <39.389523, 37.126068, 25.606850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300152, 37.344563, 25.650139>,  <39.151203, 37.708717, 25.722286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300152, 37.344563, 25.650139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247386, 0.284681, -0.926152,
		0.894505, 0.300253, 0.331225,
		0.372373, -0.910387, -0.180370,
		39.411865, 37.071445, 25.596027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761341, 37.886398, 25.422270>,  <39.151203, 37.708717, 25.722286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761341, 37.886398, 25.422270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698788, 37.505154, 25.318636>,  <39.661255, 37.276409, 25.256454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698788, 37.505154, 25.318636>,  <39.761341, 37.886398, 25.422270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698788, 37.505154, 25.318636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157186, 0.234955, -0.959213,
		0.975109, -0.190730, 0.113072,
		-0.156384, -0.953110, -0.259086,
		39.651871, 37.219219, 25.240910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167557, 37.847603, 24.835278>,  <39.761341, 37.886398, 25.422270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167557, 37.847603, 24.835278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932365, 37.524078, 24.831335>,  <39.791248, 37.329964, 24.828970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932365, 37.524078, 24.831335>,  <40.167557, 37.847603, 24.835278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932365, 37.524078, 24.831335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019170, -0.001755, -0.999815,
		0.808646, -0.588063, 0.016537,
		-0.587983, -0.808813, -0.009854,
		39.755970, 37.281433, 24.828379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482792, 37.481934, 24.328110>,  <40.167557, 37.847603, 24.835278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482792, 37.481934, 24.328110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107727, 37.344009, 24.345482>,  <39.882687, 37.261253, 24.355906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107727, 37.344009, 24.345482>,  <40.482792, 37.481934, 24.328110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107727, 37.344009, 24.345482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036891, -0.025508, -0.998994,
		0.345574, -0.938324, 0.011198,
		-0.937666, -0.344814, 0.043431,
		39.826427, 37.240566, 24.358511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409828, 36.944481, 23.804560>,  <40.482792, 37.481934, 24.328110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409828, 36.944481, 23.804560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022968, 37.031792, 23.856686>,  <39.790852, 37.084179, 23.887960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022968, 37.031792, 23.856686>,  <40.409828, 36.944481, 23.804560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022968, 37.031792, 23.856686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132184, 0.006075, -0.991207,
		-0.217152, -0.975867, 0.022978,
		-0.967147, 0.218280, 0.130313,
		39.732822, 37.097275, 23.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005741, 36.400261, 23.396721>,  <40.409828, 36.944481, 23.804560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005741, 36.400261, 23.396721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766701, 36.719944, 23.422436>,  <39.623276, 36.911755, 23.437864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766701, 36.719944, 23.422436>,  <40.005741, 36.400261, 23.396721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766701, 36.719944, 23.422436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033831, 0.054973, -0.997915,
		-0.801077, -0.598533, -0.005814,
		-0.597604, 0.799210, 0.064286,
		39.587418, 36.959705, 23.441721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460075, 36.351307, 22.802004>,  <40.005741, 36.400261, 23.396721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460075, 36.351307, 22.802004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499603, 36.737709, 22.897554>,  <39.523319, 36.969551, 22.954885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499603, 36.737709, 22.897554>,  <39.460075, 36.351307, 22.802004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499603, 36.737709, 22.897554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201774, 0.254518, -0.945784,
		-0.974434, 0.045266, 0.220068,
		0.098823, 0.966008, 0.238878,
		39.529251, 37.027512, 22.969217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003727, 36.605186, 22.466635>,  <39.460075, 36.351307, 22.802004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003727, 36.605186, 22.466635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184441, 36.949924, 22.558828>,  <39.292870, 37.156765, 22.614145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184441, 36.949924, 22.558828>,  <39.003727, 36.605186, 22.466635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184441, 36.949924, 22.558828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228605, 0.361565, -0.903886,
		-0.862342, 0.355668, 0.360369,
		0.451780, 0.861842, 0.230486,
		39.319973, 37.208477, 22.627974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566963, 37.131493, 22.287205>,  <39.003727, 36.605186, 22.466635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566963, 37.131493, 22.287205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920582, 37.318428, 22.290115>,  <39.132751, 37.430592, 22.291861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920582, 37.318428, 22.290115>,  <38.566963, 37.131493, 22.287205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920582, 37.318428, 22.290115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169257, 0.334604, -0.927034,
		-0.435675, 0.818311, 0.374906,
		0.884047, 0.467341, 0.007274,
		39.185795, 37.458630, 22.292297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538612, 37.898952, 22.230309>,  <38.566963, 37.131493, 22.287205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538612, 37.898952, 22.230309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909161, 37.834797, 22.094006>,  <39.131489, 37.796303, 22.012224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909161, 37.834797, 22.094006>,  <38.538612, 37.898952, 22.230309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909161, 37.834797, 22.094006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235878, 0.458263, -0.856946,
		0.293601, 0.874226, 0.386688,
		0.926369, -0.160389, -0.340757,
		39.187073, 37.786678, 21.991777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512920, 38.269089, 21.597403>,  <38.538612, 37.898952, 22.230309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512920, 38.269089, 21.597403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839375, 38.040482, 21.563259>,  <39.035248, 37.903316, 21.542772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839375, 38.040482, 21.563259>,  <38.512920, 38.269089, 21.597403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839375, 38.040482, 21.563259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215720, 0.438368, -0.872524,
		0.536084, 0.693686, 0.481056,
		0.816137, -0.571519, -0.085360,
		39.084217, 37.869026, 21.537651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078251, 38.717850, 21.419094>,  <38.512920, 38.269089, 21.597403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078251, 38.717850, 21.419094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.173798, 38.346924, 21.303837>,  <39.231125, 38.124367, 21.234682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.173798, 38.346924, 21.303837>,  <39.078251, 38.717850, 21.419094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173798, 38.346924, 21.303837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194108, 0.336341, -0.921519,
		0.951455, 0.164185, 0.260339,
		0.238862, -0.927318, -0.288144,
		39.245457, 38.068729, 21.217394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712486, 38.784687, 21.100937>,  <39.078251, 38.717850, 21.419094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712486, 38.784687, 21.100937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577091, 38.434982, 20.961740>,  <39.495853, 38.225159, 20.878222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577091, 38.434982, 20.961740>,  <39.712486, 38.784687, 21.100937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577091, 38.434982, 20.961740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238693, 0.277951, -0.930467,
		0.910193, -0.398014, 0.114596,
		-0.338487, -0.874258, -0.347993,
		39.475544, 38.172707, 20.857342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231426, 38.588375, 20.639637>,  <39.712486, 38.784687, 21.100937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231426, 38.588375, 20.639637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909744, 38.373547, 20.537804>,  <39.716736, 38.244652, 20.476704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909744, 38.373547, 20.537804>,  <40.231426, 38.588375, 20.639637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909744, 38.373547, 20.537804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184895, 0.181017, -0.965944,
		0.564863, -0.823887, -0.046273,
		-0.804204, -0.537070, -0.254582,
		39.668484, 38.212425, 20.461430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399033, 38.106358, 20.193735>,  <40.231426, 38.588375, 20.639637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399033, 38.106358, 20.193735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007416, 38.162521, 20.134714>,  <39.772446, 38.196220, 20.099302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007416, 38.162521, 20.134714>,  <40.399033, 38.106358, 20.193735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007416, 38.162521, 20.134714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152659, 0.026266, -0.987930,
		-0.134839, -0.989745, -0.047150,
		-0.979037, 0.140409, -0.147551,
		39.713703, 38.204643, 20.090448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251030, 37.763000, 19.603361>,  <40.399033, 38.106358, 20.193735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251030, 37.763000, 19.603361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936123, 38.006050, 19.645302>,  <39.747177, 38.151882, 19.670465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936123, 38.006050, 19.645302>,  <40.251030, 37.763000, 19.603361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936123, 38.006050, 19.645302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000614, 0.169272, -0.985569,
		-0.616607, -0.775974, -0.132890,
		-0.787271, 0.607627, 0.104851,
		39.699940, 38.188339, 19.676758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968185, 37.728230, 18.996536>,  <40.251030, 37.763000, 19.603361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968185, 37.728230, 18.996536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.761814, 38.044113, 19.129305>,  <39.637989, 38.233643, 19.208965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.761814, 38.044113, 19.129305>,  <39.968185, 37.728230, 18.996536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761814, 38.044113, 19.129305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115956, 0.319524, -0.940457,
		-0.848746, -0.523699, -0.073281,
		-0.515931, 0.789712, 0.331920,
		39.607037, 38.281025, 19.228882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406731, 37.730202, 18.602051>,  <39.968185, 37.728230, 18.996536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406731, 37.730202, 18.602051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480381, 38.099846, 18.735991>,  <39.524570, 38.321632, 18.816355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480381, 38.099846, 18.735991>,  <39.406731, 37.730202, 18.602051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480381, 38.099846, 18.735991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040816, 0.333191, -0.941975,
		-0.982055, 0.187107, 0.023630,
		0.184123, 0.924108, 0.334849,
		39.535618, 38.377079, 18.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121197, 38.163010, 18.114370>,  <39.406731, 37.730202, 18.602051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121197, 38.163010, 18.114370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360214, 38.432743, 18.287903>,  <39.503624, 38.594582, 18.392023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360214, 38.432743, 18.287903>,  <39.121197, 38.163010, 18.114370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360214, 38.432743, 18.287903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102706, 0.600962, -0.792651,
		-0.795230, 0.429088, 0.428361,
		0.597546, 0.674335, 0.433833,
		39.539478, 38.635044, 18.418053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790565, 38.886101, 18.425220>,  <39.121197, 38.163010, 18.114370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790565, 38.886101, 18.425220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143875, 38.880741, 18.237751>,  <39.355862, 38.877525, 18.125269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143875, 38.880741, 18.237751>,  <38.790565, 38.886101, 18.425220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143875, 38.880741, 18.237751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388651, 0.538214, -0.747847,
		0.262268, 0.842702, 0.470181,
		0.883270, -0.013400, -0.468673,
		39.408855, 38.876720, 18.097149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973312, 39.569824, 18.295061>,  <38.790565, 38.886101, 18.425220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973312, 39.569824, 18.295061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149128, 39.334415, 18.023638>,  <39.254620, 39.193169, 17.860785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149128, 39.334415, 18.023638>,  <38.973312, 39.569824, 18.295061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149128, 39.334415, 18.023638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223894, 0.659815, -0.717297,
		0.869871, 0.467207, 0.158249,
		0.439541, -0.588524, -0.678559,
		39.280991, 39.157860, 17.820070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988777, 39.934814, 18.957422>,  <38.973312, 39.569824, 18.295061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988777, 39.934814, 18.957422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627129, 39.983315, 18.793541>,  <38.410137, 40.012413, 18.695213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627129, 39.983315, 18.793541>,  <38.988777, 39.934814, 18.957422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627129, 39.983315, 18.793541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393594, 0.136764, 0.909054,
		0.166252, 0.983155, -0.075930,
		-0.904126, 0.121247, -0.409701,
		38.355892, 40.019688, 18.670631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640381, 40.624027, 19.133303>,  <38.988777, 39.934814, 18.957422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640381, 40.624027, 19.133303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341572, 40.376137, 19.037060>,  <38.162285, 40.227402, 18.979315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341572, 40.376137, 19.037060>,  <38.640381, 40.624027, 19.133303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341572, 40.376137, 19.037060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421672, 0.161904, 0.892177,
		-0.513952, 0.767935, -0.382268,
		-0.747025, -0.619728, -0.240605,
		38.117466, 40.190220, 18.964878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083099, 41.048328, 19.398960>,  <38.640381, 40.624027, 19.133303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083099, 41.048328, 19.398960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922100, 40.687901, 19.334385>,  <37.825500, 40.471642, 19.295639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922100, 40.687901, 19.334385>,  <38.083099, 41.048328, 19.398960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922100, 40.687901, 19.334385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405835, 0.017567, 0.913777,
		-0.820544, 0.433312, -0.372758,
		-0.402499, -0.901073, -0.161439,
		37.801350, 40.417580, 19.285954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345600, 41.065372, 19.598085>,  <38.083099, 41.048328, 19.398960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345600, 41.065372, 19.598085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460800, 40.683739, 19.631018>,  <37.529922, 40.454758, 19.650776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460800, 40.683739, 19.631018>,  <37.345600, 41.065372, 19.598085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460800, 40.683739, 19.631018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241515, 0.010827, 0.970337,
		-0.926674, -0.299345, -0.227307,
		0.288004, -0.954083, 0.082329,
		37.547203, 40.397514, 19.655716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757576, 40.724419, 19.921349>,  <37.345600, 41.065372, 19.598085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757576, 40.724419, 19.921349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053776, 40.458225, 19.958866>,  <37.231495, 40.298508, 19.981377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053776, 40.458225, 19.958866>,  <36.757576, 40.724419, 19.921349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053776, 40.458225, 19.958866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332961, -0.242047, 0.911345,
		-0.583782, -0.706078, -0.400815,
		0.740497, -0.665483, 0.093793,
		37.275925, 40.258579, 19.987003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515797, 40.115780, 20.303526>,  <36.757576, 40.724419, 19.921349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515797, 40.115780, 20.303526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904602, 40.024994, 20.327776>,  <37.137886, 39.970524, 20.342325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904602, 40.024994, 20.327776>,  <36.515797, 40.115780, 20.303526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904602, 40.024994, 20.327776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161483, -0.458106, 0.874107,
		-0.170615, -0.859435, -0.481936,
		0.972015, -0.226960, 0.060625,
		37.196205, 39.956905, 20.345963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569057, 39.504173, 20.582554>,  <36.515797, 40.115780, 20.303526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569057, 39.504173, 20.582554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921425, 39.685978, 20.635330>,  <37.132843, 39.795059, 20.666996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921425, 39.685978, 20.635330>,  <36.569057, 39.504173, 20.582554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921425, 39.685978, 20.635330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137516, -0.512565, 0.847565,
		0.452856, -0.728489, -0.514029,
		0.880915, 0.454512, 0.131940,
		37.185699, 39.822330, 20.674911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145702, 38.932304, 20.744888>,  <36.569057, 39.504173, 20.582554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145702, 38.932304, 20.744888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216892, 39.294167, 20.899769>,  <37.259605, 39.511284, 20.992697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216892, 39.294167, 20.899769>,  <37.145702, 38.932304, 20.744888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216892, 39.294167, 20.899769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226775, -0.420599, 0.878447,
		0.957547, -0.068536, -0.280011,
		0.177978, 0.904654, 0.387201,
		37.270287, 39.565563, 21.015930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690735, 38.779968, 21.204271>,  <37.145702, 38.932304, 20.744888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690735, 38.779968, 21.204271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545216, 39.127594, 21.338364>,  <37.457905, 39.336170, 21.418819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545216, 39.127594, 21.338364>,  <37.690735, 38.779968, 21.204271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545216, 39.127594, 21.338364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095820, -0.323064, 0.941514,
		0.926535, 0.374646, 0.034258,
		-0.363802, 0.869063, 0.335229,
		37.436073, 39.388313, 21.438932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981041, 38.768406, 21.750158>,  <37.690735, 38.779968, 21.204271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981041, 38.768406, 21.750158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711632, 39.060135, 21.798248>,  <37.549988, 39.235172, 21.827103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711632, 39.060135, 21.798248>,  <37.981041, 38.768406, 21.750158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711632, 39.060135, 21.798248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024956, -0.184994, 0.982423,
		0.738747, 0.658682, 0.142799,
		-0.673521, 0.729326, 0.120226,
		37.509575, 39.278931, 21.834316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235191, 39.235981, 22.298288>,  <37.981041, 38.768406, 21.750158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235191, 39.235981, 22.298288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836472, 39.260708, 22.278034>,  <37.597240, 39.275543, 22.265881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836472, 39.260708, 22.278034>,  <38.235191, 39.235981, 22.298288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836472, 39.260708, 22.278034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064585, -0.250072, 0.966071,
		0.047060, 0.966251, 0.253265,
		-0.996802, 0.061821, -0.050637,
		37.537430, 39.279255, 22.262844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973061, 39.423309, 22.907757>,  <38.235191, 39.235981, 22.298288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973061, 39.423309, 22.907757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627007, 39.290493, 22.757399>,  <37.419376, 39.210804, 22.667183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627007, 39.290493, 22.757399>,  <37.973061, 39.423309, 22.907757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627007, 39.290493, 22.757399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203289, -0.453006, 0.868020,
		-0.458500, 0.827367, 0.324410,
		-0.865131, -0.332038, -0.375897,
		37.367466, 39.190880, 22.644629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550274, 39.373268, 23.504536>,  <37.973061, 39.423309, 22.907757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550274, 39.373268, 23.504536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346916, 39.142281, 23.249016>,  <37.224903, 39.003689, 23.095705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346916, 39.142281, 23.249016>,  <37.550274, 39.373268, 23.504536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346916, 39.142281, 23.249016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196341, -0.644545, 0.738926,
		-0.838443, 0.501088, 0.214301,
		-0.508393, -0.577471, -0.638798,
		37.194397, 38.969040, 23.057377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908627, 39.228161, 23.724810>,  <37.550274, 39.373268, 23.504536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908627, 39.228161, 23.724810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946323, 38.927879, 23.463255>,  <36.968941, 38.747711, 23.306322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946323, 38.927879, 23.463255>,  <36.908627, 39.228161, 23.724810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946323, 38.927879, 23.463255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152675, -0.659938, 0.735644,
		-0.983773, 0.030505, -0.176806,
		0.094240, -0.750701, -0.653886,
		36.974594, 38.702667, 23.267090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423004, 38.752991, 24.005907>,  <36.908627, 39.228161, 23.724810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423004, 38.752991, 24.005907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633095, 38.522720, 23.755234>,  <36.759151, 38.384560, 23.604830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633095, 38.522720, 23.755234>,  <36.423004, 38.752991, 24.005907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633095, 38.522720, 23.755234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128804, -0.781738, 0.610160,
		-0.841155, -0.239755, -0.484742,
		0.525230, -0.575677, -0.626681,
		36.790665, 38.350018, 23.567228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073025, 38.050949, 23.958000>,  <36.423004, 38.752991, 24.005907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073025, 38.050949, 23.958000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464108, 38.029236, 23.876860>,  <36.698757, 38.016209, 23.828176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464108, 38.029236, 23.876860>,  <36.073025, 38.050949, 23.958000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464108, 38.029236, 23.876860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100051, -0.728887, 0.677284,
		-0.184619, -0.682479, -0.707205,
		0.977704, -0.054283, -0.202849,
		36.757420, 38.012951, 23.816006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197300, 37.298599, 23.792736>,  <36.073025, 38.050949, 23.958000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197300, 37.298599, 23.792736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535500, 37.473824, 23.914875>,  <36.738419, 37.578957, 23.988159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535500, 37.473824, 23.914875>,  <36.197300, 37.298599, 23.792736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535500, 37.473824, 23.914875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108396, -0.700732, 0.705142,
		0.522862, -0.563097, -0.639951,
		0.845497, 0.438060, 0.305349,
		36.789150, 37.605240, 24.006479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434750, 36.840412, 24.299986>,  <36.197300, 37.298599, 23.792736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434750, 36.840412, 24.299986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685329, 37.147743, 24.352501>,  <36.835678, 37.332142, 24.384010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685329, 37.147743, 24.352501>,  <36.434750, 36.840412, 24.299986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685329, 37.147743, 24.352501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153654, -0.286854, 0.945571,
		0.764171, -0.572175, -0.297755,
		0.626445, 0.768329, 0.131289,
		36.873264, 37.378242, 24.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018414, 36.564816, 24.608463>,  <36.434750, 36.840412, 24.299986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018414, 36.564816, 24.608463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004387, 36.955482, 24.693207>,  <36.995972, 37.189884, 24.744053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004387, 36.955482, 24.693207>,  <37.018414, 36.564816, 24.608463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004387, 36.955482, 24.693207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210153, -0.200042, 0.956984,
		0.977039, 0.078083, -0.198235,
		-0.035069, 0.976671, 0.211858,
		36.993866, 37.248486, 24.756763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635017, 36.731468, 25.036148>,  <37.018414, 36.564816, 24.608463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635017, 36.731468, 25.036148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342819, 36.989307, 25.126356>,  <37.167500, 37.144012, 25.180481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342819, 36.989307, 25.126356>,  <37.635017, 36.731468, 25.036148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342819, 36.989307, 25.126356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104649, -0.220674, 0.969717,
		0.674847, 0.731979, 0.093745,
		-0.730500, 0.644601, 0.225522,
		37.123669, 37.182686, 25.194014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.174423, 35.800148, 29.429985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921463, 36.109829, 29.440414>,  <39.769688, 36.295639, 29.446672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921463, 36.109829, 29.440414>,  <40.174423, 35.800148, 29.429985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921463, 36.109829, 29.440414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378531, 0.279483, 0.882385,
		0.675859, 0.567888, -0.469805,
		-0.632399, 0.774204, 0.026072,
		39.731743, 36.342091, 29.448236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575649, 36.348644, 29.698046>,  <40.174423, 35.800148, 29.429985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575649, 36.348644, 29.698046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192528, 36.452301, 29.747791>,  <39.962654, 36.514496, 29.777637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192528, 36.452301, 29.747791>,  <40.575649, 36.348644, 29.698046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192528, 36.452301, 29.747791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119867, -0.033142, 0.992237,
		0.261251, 0.965271, 0.000681,
		-0.957800, 0.259141, 0.124362,
		39.905190, 36.530045, 29.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571980, 36.863667, 30.119099>,  <40.575649, 36.348644, 29.698046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571980, 36.863667, 30.119099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200222, 36.727291, 30.175644>,  <39.977169, 36.645466, 30.209572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200222, 36.727291, 30.175644>,  <40.571980, 36.863667, 30.119099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200222, 36.727291, 30.175644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115718, 0.094534, 0.988773,
		-0.350478, 0.935319, -0.048407,
		-0.929395, -0.340942, 0.141365,
		39.921402, 36.625008, 30.218054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149868, 37.258953, 30.676743>,  <40.571980, 36.863667, 30.119099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149868, 37.258953, 30.676743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975567, 36.899792, 30.651796>,  <39.870987, 36.684296, 30.636829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975567, 36.899792, 30.651796>,  <40.149868, 37.258953, 30.676743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975567, 36.899792, 30.651796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082786, -0.029012, 0.996145,
		-0.896249, 0.439239, -0.061691,
		-0.435756, -0.897902, -0.062365,
		39.844841, 36.630421, 30.633087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583302, 37.308418, 31.158943>,  <40.149868, 37.258953, 30.676743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583302, 37.308418, 31.158943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647594, 36.917225, 31.105701>,  <39.686169, 36.682510, 31.073757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647594, 36.917225, 31.105701>,  <39.583302, 37.308418, 31.158943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647594, 36.917225, 31.105701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029139, -0.130096, 0.991073,
		-0.986569, -0.163172, 0.007587,
		0.160728, -0.977983, -0.133103,
		39.695812, 36.623829, 31.065771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139816, 37.026974, 31.577129>,  <39.583302, 37.308418, 31.158943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139816, 37.026974, 31.577129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437042, 36.768158, 31.508785>,  <39.615379, 36.612869, 31.467779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437042, 36.768158, 31.508785>,  <39.139816, 37.026974, 31.577129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437042, 36.768158, 31.508785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166417, -0.068633, 0.983664,
		-0.648197, -0.759360, 0.056680,
		0.743065, -0.647041, -0.170858,
		39.659962, 36.574047, 31.457527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966816, 36.523251, 31.922712>,  <39.139816, 37.026974, 31.577129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966816, 36.523251, 31.922712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350754, 36.417976, 31.883881>,  <39.581116, 36.354813, 31.860580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350754, 36.417976, 31.883881>,  <38.966816, 36.523251, 31.922712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350754, 36.417976, 31.883881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034196, -0.233718, 0.971703,
		-0.278433, -0.936006, -0.215334,
		0.959847, -0.263191, -0.097082,
		39.638710, 36.339020, 31.854755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940403, 35.884769, 32.259476>,  <38.966816, 36.523251, 31.922712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940403, 35.884769, 32.259476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326832, 35.987198, 32.272884>,  <39.558689, 36.048656, 32.280930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326832, 35.987198, 32.272884>,  <38.940403, 35.884769, 32.259476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326832, 35.987198, 32.272884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033867, -0.254288, 0.966535,
		0.256029, -0.932611, -0.254334,
		0.966076, 0.256075, 0.033521,
		39.616653, 36.064022, 32.282940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249104, 35.375206, 32.647144>,  <38.940403, 35.884769, 32.259476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249104, 35.375206, 32.647144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.481850, 35.700245, 32.660458>,  <39.621498, 35.895267, 32.668446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.481850, 35.700245, 32.660458>,  <39.249104, 35.375206, 32.647144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481850, 35.700245, 32.660458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027963, -0.060885, 0.997753,
		0.812802, -0.579631, -0.058150,
		0.581869, 0.812602, 0.033279,
		39.656410, 35.944027, 32.670441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810249, 35.063618, 33.027260>,  <39.249104, 35.375206, 32.647144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810249, 35.063618, 33.027260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835030, 35.461647, 33.058220>,  <39.849895, 35.700466, 33.076794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835030, 35.461647, 33.058220>,  <39.810249, 35.063618, 33.027260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835030, 35.461647, 33.058220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177283, -0.087283, 0.980282,
		0.982208, -0.047004, -0.181816,
		0.061946, 0.995074, 0.077397,
		39.853615, 35.760170, 33.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356934, 35.224766, 33.362762>,  <39.810249, 35.063618, 33.027260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356934, 35.224766, 33.362762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168945, 35.573685, 33.416763>,  <40.056152, 35.783035, 33.449162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168945, 35.573685, 33.416763>,  <40.356934, 35.224766, 33.362762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168945, 35.573685, 33.416763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025153, -0.139644, 0.989882,
		0.882323, 0.468612, 0.043688,
		-0.469971, 0.872297, 0.134998,
		40.027954, 35.835373, 33.457264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707413, 35.545696, 33.890743>,  <40.356934, 35.224766, 33.362762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707413, 35.545696, 33.890743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338203, 35.699570, 33.888103>,  <40.116676, 35.791893, 33.886520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338203, 35.699570, 33.888103>,  <40.707413, 35.545696, 33.890743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338203, 35.699570, 33.888103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016696, -0.022912, 0.999598,
		0.384381, 0.922763, 0.027571,
		-0.923024, 0.384686, -0.006599,
		40.061295, 35.814976, 33.886124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555847, 36.165485, 34.184498>,  <40.707413, 35.545696, 33.890743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555847, 36.165485, 34.184498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190575, 36.012653, 34.241226>,  <39.971413, 35.920952, 34.275265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190575, 36.012653, 34.241226>,  <40.555847, 36.165485, 34.184498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190575, 36.012653, 34.241226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004840, 0.337794, 0.941208,
		-0.407528, 0.860178, -0.306617,
		-0.913180, -0.382084, 0.141824,
		39.916622, 35.898029, 34.283775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163223, 36.702305, 34.524708>,  <40.555847, 36.165485, 34.184498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163223, 36.702305, 34.524708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989479, 36.357487, 34.629181>,  <39.885231, 36.150597, 34.691864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989479, 36.357487, 34.629181>,  <40.163223, 36.702305, 34.524708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989479, 36.357487, 34.629181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158626, 0.358640, 0.919899,
		-0.886662, 0.358138, -0.292521,
		-0.434360, -0.862041, 0.261183,
		39.859173, 36.098873, 34.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599583, 37.374180, 34.483147>,  <40.163223, 36.702305, 34.524708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599583, 37.374180, 34.483147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.754379, 37.681740, 34.686729>,  <40.847256, 37.866276, 34.808880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.754379, 37.681740, 34.686729>,  <40.599583, 37.374180, 34.483147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754379, 37.681740, 34.686729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270819, 0.622399, -0.734354,
		-0.881417, 0.146352, 0.449093,
		0.386989, 0.768895, 0.508959,
		40.870476, 37.912407, 34.839417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070091, 37.852802, 34.479145>,  <40.599583, 37.374180, 34.483147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070091, 37.852802, 34.479145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.428555, 38.023548, 34.527630>,  <40.643631, 38.125996, 34.556721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.428555, 38.023548, 34.527630>,  <40.070091, 37.852802, 34.479145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428555, 38.023548, 34.527630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253260, 0.716322, -0.650187,
		-0.364364, 0.551972, 0.750044,
		0.896158, 0.426860, 0.121209,
		40.697403, 38.151608, 34.563992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950954, 38.432083, 34.325043>,  <40.070091, 37.852802, 34.479145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950954, 38.432083, 34.325043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348934, 38.444561, 34.286861>,  <40.587723, 38.452045, 34.263950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348934, 38.444561, 34.286861>,  <39.950954, 38.432083, 34.325043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348934, 38.444561, 34.286861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095486, 0.588197, -0.803061,
		0.031098, 0.808116, 0.588202,
		0.994945, 0.031192, -0.095456,
		40.647419, 38.453918, 34.258224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151325, 39.092247, 34.116634>,  <39.950954, 38.432083, 34.325043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151325, 39.092247, 34.116634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493172, 38.911217, 34.014801>,  <40.698280, 38.802597, 33.953701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493172, 38.911217, 34.014801>,  <40.151325, 39.092247, 34.116634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493172, 38.911217, 34.014801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034257, 0.440070, -0.897310,
		0.518136, 0.775574, 0.360585,
		0.854612, -0.452576, -0.254585,
		40.749554, 38.775444, 33.938427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539845, 39.631481, 33.845074>,  <40.151325, 39.092247, 34.116634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539845, 39.631481, 33.845074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689560, 39.284496, 33.713974>,  <40.779388, 39.076305, 33.635315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689560, 39.284496, 33.713974>,  <40.539845, 39.631481, 33.845074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689560, 39.284496, 33.713974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045136, 0.370062, -0.927910,
		0.926212, 0.332516, 0.177665,
		0.374292, -0.867460, -0.327747,
		40.801849, 39.024258, 33.615650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153904, 39.805077, 33.506416>,  <40.539845, 39.631481, 33.845074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153904, 39.805077, 33.506416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997532, 39.464985, 33.365398>,  <40.903709, 39.260929, 33.280788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997532, 39.464985, 33.365398>,  <41.153904, 39.805077, 33.506416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997532, 39.464985, 33.365398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254619, 0.268179, -0.929112,
		0.884502, -0.452981, 0.111645,
		-0.390929, -0.850228, -0.352542,
		40.880253, 39.209915, 33.259636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643406, 39.715721, 32.858627>,  <41.153904, 39.805077, 33.506416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643406, 39.715721, 32.858627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351513, 39.443550, 32.831791>,  <41.176376, 39.280247, 32.815689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351513, 39.443550, 32.831791>,  <41.643406, 39.715721, 32.858627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351513, 39.443550, 32.831791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102867, 0.206268, -0.973073,
		0.675948, -0.703183, -0.220515,
		-0.729734, -0.680431, -0.067093,
		41.132591, 39.239422, 32.811665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850319, 39.226345, 32.343552>,  <41.643406, 39.715721, 32.858627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850319, 39.226345, 32.343552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451645, 39.224438, 32.376026>,  <41.212440, 39.223293, 32.395512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451645, 39.224438, 32.376026>,  <41.850319, 39.226345, 32.343552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451645, 39.224438, 32.376026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080464, 0.202798, -0.975909,
		-0.011816, -0.979209, -0.202510,
		-0.996688, -0.004764, 0.081187,
		41.152637, 39.223007, 32.400383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564377, 38.955032, 31.687996>,  <41.850319, 39.226345, 32.343552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564377, 38.955032, 31.687996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232727, 39.086246, 31.869078>,  <41.033737, 39.164974, 31.977726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232727, 39.086246, 31.869078>,  <41.564377, 38.955032, 31.687996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232727, 39.086246, 31.869078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441792, 0.111760, -0.890129,
		-0.342585, -0.938032, 0.052258,
		-0.829129, 0.328032, 0.452703,
		40.983990, 39.184658, 32.004890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105530, 38.631336, 31.373499>,  <41.564377, 38.955032, 31.687996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105530, 38.631336, 31.373499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917271, 38.956310, 31.511164>,  <40.804314, 39.151295, 31.593761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917271, 38.956310, 31.511164>,  <41.105530, 38.631336, 31.373499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917271, 38.956310, 31.511164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421370, 0.135743, -0.896672,
		-0.775202, -0.567036, 0.278447,
		-0.470648, 0.812431, 0.344160,
		40.776077, 39.200039, 31.614412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500954, 38.636589, 31.044321>,  <41.105530, 38.631336, 31.373499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500954, 38.636589, 31.044321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519951, 39.012424, 31.179916>,  <40.531349, 39.237926, 31.261274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519951, 39.012424, 31.179916>,  <40.500954, 38.636589, 31.044321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519951, 39.012424, 31.179916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294215, 0.337476, -0.894174,
		-0.954559, -0.057270, 0.292469,
		0.047492, 0.939590, 0.338990,
		40.534199, 39.294300, 31.281614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778881, 38.912102, 30.981089>,  <40.500954, 38.636589, 31.044321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778881, 38.912102, 30.981089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024796, 39.227203, 30.996437>,  <40.172344, 39.416264, 31.005646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024796, 39.227203, 30.996437>,  <39.778881, 38.912102, 30.981089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024796, 39.227203, 30.996437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578390, 0.483399, -0.657108,
		-0.536189, 0.381791, 0.752820,
		0.614791, 0.787757, 0.038369,
		40.209232, 39.463531, 31.007948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241192, 39.555573, 30.837570>,  <39.778881, 38.912102, 30.981089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241192, 39.555573, 30.837570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.616276, 39.677467, 30.770842>,  <39.841328, 39.750603, 30.730804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.616276, 39.677467, 30.770842>,  <39.241192, 39.555573, 30.837570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616276, 39.677467, 30.770842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325674, 0.603874, -0.727512,
		-0.120961, 0.736526, 0.665505,
		0.937713, 0.304738, -0.166822,
		39.897591, 39.768890, 30.720795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223091, 40.243797, 30.736950>,  <39.241192, 39.555573, 30.837570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223091, 40.243797, 30.736950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566990, 40.132324, 30.565756>,  <39.773327, 40.065441, 30.463039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566990, 40.132324, 30.565756>,  <39.223091, 40.243797, 30.736950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566990, 40.132324, 30.565756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192698, 0.599056, -0.777174,
		0.472976, 0.750643, 0.461333,
		0.859745, -0.278687, -0.427987,
		39.824913, 40.048717, 30.437361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147568, 40.995525, 30.602774>,  <39.223091, 40.243797, 30.736950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147568, 40.995525, 30.602774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.859589, 41.272442, 30.583136>,  <38.686802, 41.438591, 30.571352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.859589, 41.272442, 30.583136>,  <39.147568, 40.995525, 30.602774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859589, 41.272442, 30.583136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375000, -0.328503, 0.866868,
		0.583995, 0.642511, 0.496114,
		-0.719948, 0.692290, -0.049097,
		38.643604, 41.480129, 30.568407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164181, 41.259651, 31.297459>,  <39.147568, 40.995525, 30.602774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164181, 41.259651, 31.297459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812721, 41.377941, 31.147512>,  <38.601845, 41.448914, 31.057545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812721, 41.377941, 31.147512>,  <39.164181, 41.259651, 31.297459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812721, 41.377941, 31.147512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425399, -0.128336, 0.895860,
		0.216817, 0.946614, 0.238562,
		-0.878650, 0.295722, -0.374863,
		38.549126, 41.466656, 31.035053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872097, 41.810295, 31.784784>,  <39.164181, 41.259651, 31.297459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872097, 41.810295, 31.784784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581078, 41.646206, 31.564825>,  <38.406467, 41.547752, 31.432850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581078, 41.646206, 31.564825>,  <38.872097, 41.810295, 31.784784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581078, 41.646206, 31.564825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537371, -0.157543, 0.828500,
		-0.426503, 0.898275, -0.105822,
		-0.727549, -0.410223, -0.549900,
		38.362812, 41.523140, 31.399855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238224, 41.890110, 32.173645>,  <38.872097, 41.810295, 31.784784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238224, 41.890110, 32.173645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.143204, 41.584854, 31.933252>,  <38.086193, 41.401699, 31.789015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.143204, 41.584854, 31.933252>,  <38.238224, 41.890110, 32.173645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143204, 41.584854, 31.933252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595482, -0.374399, 0.710792,
		-0.767444, 0.526726, -0.365499,
		-0.237550, -0.763142, -0.600986,
		38.071938, 41.355911, 31.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551830, 41.936573, 32.380505>,  <38.238224, 41.890110, 32.173645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551830, 41.936573, 32.380505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648109, 41.583721, 32.218559>,  <37.705879, 41.372009, 32.121391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648109, 41.583721, 32.218559>,  <37.551830, 41.936573, 32.380505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648109, 41.583721, 32.218559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498307, -0.470269, 0.728380,
		-0.832918, 0.026423, -0.552765,
		0.240702, -0.882128, -0.404863,
		37.720322, 41.319084, 32.097099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025021, 41.503284, 32.505974>,  <37.551830, 41.936573, 32.380505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025021, 41.503284, 32.505974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263195, 41.205051, 32.386265>,  <37.406101, 41.026112, 32.314442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263195, 41.205051, 32.386265>,  <37.025021, 41.503284, 32.505974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263195, 41.205051, 32.386265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503871, -0.636706, 0.583711,
		-0.625748, -0.196775, -0.754798,
		0.595444, -0.745577, -0.299268,
		37.441826, 40.981377, 32.296482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591270, 40.884766, 32.331284>,  <37.025021, 41.503284, 32.505974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591270, 40.884766, 32.331284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.958778, 40.770733, 32.440525>,  <37.179283, 40.702312, 32.506069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.958778, 40.770733, 32.440525>,  <36.591270, 40.884766, 32.331284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958778, 40.770733, 32.440525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393948, -0.617050, 0.681215,
		-0.025685, -0.733470, -0.679237,
		0.918774, -0.285081, 0.273101,
		37.234409, 40.685207, 32.522453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620781, 40.140297, 32.241390>,  <36.591270, 40.884766, 32.331284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620781, 40.140297, 32.241390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910107, 40.234810, 32.500927>,  <37.083702, 40.291519, 32.656647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910107, 40.234810, 32.500927>,  <36.620781, 40.140297, 32.241390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910107, 40.234810, 32.500927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291659, -0.747166, 0.597225,
		0.625904, -0.621219, -0.471520,
		0.723311, 0.236283, 0.648839,
		37.127102, 40.305695, 32.695580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841335, 39.496067, 32.583141>,  <36.620781, 40.140297, 32.241390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841335, 39.496067, 32.583141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.965481, 39.781849, 32.833973>,  <37.039970, 39.953320, 32.984470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.965481, 39.781849, 32.833973>,  <36.841335, 39.496067, 32.583141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965481, 39.781849, 32.833973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280555, -0.561425, 0.778518,
		0.908274, -0.417555, 0.026197,
		0.310366, 0.714458, 0.627075,
		37.058590, 39.996185, 33.022095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157009, 39.150928, 33.122147>,  <36.841335, 39.496067, 32.583141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157009, 39.150928, 33.122147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092693, 39.505390, 33.295982>,  <37.054104, 39.718067, 33.400284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092693, 39.505390, 33.295982>,  <37.157009, 39.150928, 33.122147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092693, 39.505390, 33.295982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247202, -0.462446, 0.851490,
		0.955529, 0.029482, 0.293418,
		-0.160794, 0.886157, 0.434592,
		37.044456, 39.771236, 33.426361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574749, 39.273083, 33.677048>,  <37.157009, 39.150928, 33.122147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574749, 39.273083, 33.677048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244450, 39.487446, 33.747398>,  <37.046268, 39.616066, 33.789608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244450, 39.487446, 33.747398>,  <37.574749, 39.273083, 33.677048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244450, 39.487446, 33.747398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180781, -0.546839, 0.817487,
		0.534277, 0.643247, 0.548435,
		-0.825752, 0.535911, 0.175877,
		36.996723, 39.648220, 33.800163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650684, 39.669231, 34.393600>,  <37.574749, 39.273083, 33.677048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650684, 39.669231, 34.393600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263187, 39.628193, 34.303249>,  <37.030689, 39.603569, 34.249039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263187, 39.628193, 34.303249>,  <37.650684, 39.669231, 34.393600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263187, 39.628193, 34.303249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112570, -0.629579, 0.768739,
		-0.221075, 0.770134, 0.598348,
		-0.968738, -0.102593, -0.225878,
		36.972565, 39.597416, 34.235485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.910423, 42.389141, 27.077631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516315, 42.321289, 27.068970>,  <39.279850, 42.280579, 27.063772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516315, 42.321289, 27.068970>,  <39.910423, 42.389141, 27.077631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516315, 42.321289, 27.068970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015188, -0.039333, 0.999111,
		-0.170328, 0.984723, 0.036177,
		-0.985270, -0.169627, -0.021655,
		39.220734, 42.270401, 27.062473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638386, 42.891487, 27.551016>,  <39.910423, 42.389141, 27.077631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638386, 42.891487, 27.551016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349152, 42.617538, 27.515026>,  <39.175610, 42.453171, 27.493433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349152, 42.617538, 27.515026>,  <39.638386, 42.891487, 27.551016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349152, 42.617538, 27.515026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202294, 0.085415, 0.975593,
		-0.660469, 0.723642, -0.200307,
		-0.723089, -0.684870, -0.089975,
		39.132225, 42.412079, 27.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121235, 43.179073, 27.805763>,  <39.638386, 42.891487, 27.551016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121235, 43.179073, 27.805763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048721, 42.786781, 27.834879>,  <39.005211, 42.551407, 27.852348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048721, 42.786781, 27.834879>,  <39.121235, 43.179073, 27.805763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048721, 42.786781, 27.834879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049868, 0.083086, 0.995294,
		-0.982165, 0.176804, -0.063969,
		-0.181286, -0.980733, 0.072788,
		38.994335, 42.492561, 27.856716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700584, 43.195328, 28.356112>,  <39.121235, 43.179073, 27.805763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700584, 43.195328, 28.356112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796555, 42.807739, 28.332323>,  <38.854137, 42.575188, 28.318050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796555, 42.807739, 28.332323>,  <38.700584, 43.195328, 28.356112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796555, 42.807739, 28.332323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139032, -0.094923, 0.985728,
		-0.960783, -0.228236, -0.157492,
		0.239928, -0.968967, -0.059469,
		38.868534, 42.517048, 28.314482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104103, 42.793690, 28.626169>,  <38.700584, 43.195328, 28.356112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104103, 42.793690, 28.626169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432426, 42.566471, 28.650179>,  <38.629421, 42.430141, 28.664585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432426, 42.566471, 28.650179>,  <38.104103, 42.793690, 28.626169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432426, 42.566471, 28.650179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264547, -0.284902, 0.921328,
		-0.506257, -0.772109, -0.384124,
		0.820803, -0.568048, 0.060026,
		38.678669, 42.396057, 28.668186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815678, 42.221519, 28.857994>,  <38.104103, 42.793690, 28.626169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815678, 42.221519, 28.857994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203213, 42.203712, 28.955465>,  <38.435734, 42.193027, 29.013948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203213, 42.203712, 28.955465>,  <37.815678, 42.221519, 28.857994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203213, 42.203712, 28.955465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235269, -0.473189, 0.848965,
		0.077512, -0.879836, -0.468915,
		0.968834, -0.044516, 0.243676,
		38.493862, 42.190357, 29.028568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966576, 41.558376, 29.074631>,  <37.815678, 42.221519, 28.857994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966576, 41.558376, 29.074631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268612, 41.757137, 29.245710>,  <38.449833, 41.876392, 29.348358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268612, 41.757137, 29.245710>,  <37.966576, 41.558376, 29.074631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268612, 41.757137, 29.245710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099111, -0.558346, 0.823667,
		0.648086, -0.664332, -0.372353,
		0.755090, 0.496903, 0.427699,
		38.495140, 41.906208, 29.374020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429585, 41.023315, 29.335091>,  <37.966576, 41.558376, 29.074631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429585, 41.023315, 29.335091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504646, 41.367535, 29.524509>,  <38.549683, 41.574066, 29.638161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504646, 41.367535, 29.524509>,  <38.429585, 41.023315, 29.335091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504646, 41.367535, 29.524509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176550, -0.444709, 0.878102,
		0.966237, -0.248387, 0.068476,
		0.187658, 0.860545, 0.473547,
		38.560944, 41.625698, 29.666574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672070, 40.776829, 29.948730>,  <38.429585, 41.023315, 29.335091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672070, 40.776829, 29.948730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626587, 41.166851, 30.024982>,  <38.599297, 41.400864, 30.070734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626587, 41.166851, 30.024982>,  <38.672070, 40.776829, 29.948730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626587, 41.166851, 30.024982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067371, -0.183865, 0.980640,
		0.991228, 0.124345, -0.044784,
		-0.113704, 0.975055, 0.190630,
		38.592476, 41.459366, 30.082170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418858, 41.000763, 29.831570>,  <38.672070, 40.776829, 29.948730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418858, 41.000763, 29.831570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643719, 40.670895, 29.856533>,  <39.778637, 40.472973, 29.871511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643719, 40.670895, 29.856533>,  <39.418858, 41.000763, 29.831570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643719, 40.670895, 29.856533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024476, -0.092018, -0.995456,
		0.826671, 0.558071, -0.071913,
		0.562153, -0.824675, 0.062409,
		39.812366, 40.423492, 29.875256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911106, 41.114807, 29.278858>,  <39.418858, 41.000763, 29.831570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911106, 41.114807, 29.278858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890209, 40.724567, 29.364151>,  <39.877670, 40.490421, 29.415327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890209, 40.724567, 29.364151>,  <39.911106, 41.114807, 29.278858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890209, 40.724567, 29.364151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002031, -0.213420, -0.976958,
		0.998633, -0.051468, 0.009168,
		-0.052239, -0.975604, 0.213233,
		39.874538, 40.431885, 29.428122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278862, 40.939907, 28.766735>,  <39.911106, 41.114807, 29.278858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278862, 40.939907, 28.766735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089340, 40.609058, 28.887653>,  <39.975628, 40.410549, 28.960205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089340, 40.609058, 28.887653>,  <40.278862, 40.939907, 28.766735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089340, 40.609058, 28.887653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112504, -0.283607, -0.952318,
		0.873415, -0.485220, 0.041319,
		-0.473802, -0.827121, 0.302296,
		39.947201, 40.360924, 28.978342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730885, 40.423405, 28.565517>,  <40.278862, 40.939907, 28.766735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730885, 40.423405, 28.565517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365356, 40.263809, 28.595831>,  <40.146042, 40.168053, 28.614019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365356, 40.263809, 28.595831>,  <40.730885, 40.423405, 28.565517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365356, 40.263809, 28.595831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049659, -0.294976, -0.954213,
		0.403079, -0.868213, 0.289367,
		-0.913817, -0.398993, 0.075784,
		40.091213, 40.144112, 28.618567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855667, 39.819736, 28.197737>,  <40.730885, 40.423405, 28.565517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855667, 39.819736, 28.197737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459122, 39.866478, 28.221569>,  <40.221195, 39.894524, 28.235868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459122, 39.866478, 28.221569>,  <40.855667, 39.819736, 28.197737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459122, 39.866478, 28.221569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098239, -0.360499, -0.927572,
		-0.086914, -0.925411, 0.368864,
		-0.991360, 0.116856, 0.059579,
		40.161713, 39.901535, 28.239443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659893, 39.144962, 27.995914>,  <40.855667, 39.819736, 28.197737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659893, 39.144962, 27.995914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361206, 39.410042, 27.973118>,  <40.181995, 39.569088, 27.959440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361206, 39.410042, 27.973118>,  <40.659893, 39.144962, 27.995914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361206, 39.410042, 27.973118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112566, -0.210352, -0.971124,
		-0.655550, -0.718737, 0.231670,
		-0.746715, 0.662699, -0.056991,
		40.137192, 39.608852, 27.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315109, 38.940022, 27.481853>,  <40.659893, 39.144962, 27.995914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315109, 38.940022, 27.481853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163120, 39.308647, 27.449997>,  <40.071926, 39.529823, 27.430883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163120, 39.308647, 27.449997>,  <40.315109, 38.940022, 27.481853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163120, 39.308647, 27.449997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188435, -0.161414, -0.968730,
		-0.905602, -0.353081, 0.234988,
		-0.379970, 0.921564, -0.079644,
		40.049129, 39.585117, 27.426104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520695, 39.060444, 27.180901>,  <40.315109, 38.940022, 27.481853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520695, 39.060444, 27.180901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741177, 39.384659, 27.101700>,  <39.873466, 39.579189, 27.054180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741177, 39.384659, 27.101700>,  <39.520695, 39.060444, 27.180901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741177, 39.384659, 27.101700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233513, -0.077964, -0.969223,
		-0.801027, 0.580477, 0.146297,
		0.551205, 0.810536, -0.198001,
		39.906540, 39.627819, 27.042299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277081, 39.255955, 26.556252>,  <39.520695, 39.060444, 27.180901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277081, 39.255955, 26.556252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574226, 39.523651, 26.562693>,  <39.752514, 39.684269, 26.566557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574226, 39.523651, 26.562693>,  <39.277081, 39.255955, 26.556252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574226, 39.523651, 26.562693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075291, 0.107427, -0.991358,
		-0.665192, 0.735235, 0.130193,
		0.742867, 0.669246, 0.016103,
		39.797085, 39.724426, 26.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051910, 39.791718, 26.129719>,  <39.277081, 39.255955, 26.556252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051910, 39.791718, 26.129719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446419, 39.853123, 26.154083>,  <39.683125, 39.889965, 26.168701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446419, 39.853123, 26.154083>,  <39.051910, 39.791718, 26.129719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446419, 39.853123, 26.154083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033908, 0.172735, -0.984384,
		-0.161634, 0.972932, 0.165158,
		0.986268, 0.153510, 0.060910,
		39.742298, 39.899178, 26.172356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226215, 40.539116, 25.830153>,  <39.051910, 39.791718, 26.129719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226215, 40.539116, 25.830153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561325, 40.320808, 25.823610>,  <39.762390, 40.189823, 25.819685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561325, 40.320808, 25.823610>,  <39.226215, 40.539116, 25.830153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561325, 40.320808, 25.823610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000637, 0.028980, -0.999580,
		0.546018, 0.837431, 0.023931,
		0.837773, -0.545773, -0.016358,
		39.812656, 40.157078, 25.818703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645695, 40.893749, 25.400896>,  <39.226215, 40.539116, 25.830153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645695, 40.893749, 25.400896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767471, 40.513382, 25.378756>,  <39.840538, 40.285160, 25.365471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767471, 40.513382, 25.378756>,  <39.645695, 40.893749, 25.400896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767471, 40.513382, 25.378756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043710, 0.071993, -0.996447,
		0.951529, 0.300938, 0.063482,
		0.304439, -0.950922, -0.055350,
		39.858803, 40.228104, 25.362150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135700, 40.911385, 24.967550>,  <39.645695, 40.893749, 25.400896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135700, 40.911385, 24.967550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090454, 40.514000, 24.961447>,  <40.063305, 40.275570, 24.957785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090454, 40.514000, 24.961447>,  <40.135700, 40.911385, 24.967550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090454, 40.514000, 24.961447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315989, -0.021411, -0.948521,
		0.941995, -0.112116, 0.316346,
		-0.113118, -0.993464, -0.015259,
		40.056519, 40.215961, 24.956869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725422, 40.576126, 24.688908>,  <40.135700, 40.911385, 24.967550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725422, 40.576126, 24.688908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425507, 40.315605, 24.642233>,  <40.245556, 40.159294, 24.614227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425507, 40.315605, 24.642233>,  <40.725422, 40.576126, 24.688908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425507, 40.315605, 24.642233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273238, -0.144160, -0.951083,
		0.602622, -0.744997, 0.286051,
		-0.749792, -0.651304, -0.116687,
		40.200569, 40.120213, 24.607227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.294819, 39.443069, 24.148600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542149, 39.700447, 24.329115>,  <34.690544, 39.854874, 24.437424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542149, 39.700447, 24.329115>,  <34.294819, 39.443069, 24.148600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542149, 39.700447, 24.329115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093836, -0.509666, 0.855240,
		0.780305, -0.571159, -0.254758,
		0.618320, 0.643443, 0.451290,
		34.727646, 39.893478, 24.464502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558048, 39.099060, 24.584759>,  <34.294819, 39.443069, 24.148600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558048, 39.099060, 24.584759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663990, 39.455498, 24.732161>,  <34.727554, 39.669361, 24.820602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663990, 39.455498, 24.732161>,  <34.558048, 39.099060, 24.584759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663990, 39.455498, 24.732161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121712, -0.348204, 0.929484,
		0.956577, -0.291028, 0.016234,
		0.264853, 0.891099, 0.368505,
		34.743446, 39.722828, 24.842712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103409, 39.009277, 25.042780>,  <34.558048, 39.099060, 24.584759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103409, 39.009277, 25.042780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920681, 39.346729, 25.155638>,  <34.811043, 39.549202, 25.223352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920681, 39.346729, 25.155638>,  <35.103409, 39.009277, 25.042780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920681, 39.346729, 25.155638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156553, -0.388469, 0.908066,
		0.875676, 0.370650, 0.309533,
		-0.456819, 0.843629, 0.282146,
		34.783634, 39.599819, 25.240282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320889, 39.085346, 25.671453>,  <35.103409, 39.009277, 25.042780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320889, 39.085346, 25.671453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006802, 39.333031, 25.670732>,  <34.818348, 39.481644, 25.670300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006802, 39.333031, 25.670732>,  <35.320889, 39.085346, 25.671453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006802, 39.333031, 25.670732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176395, -0.220896, 0.959213,
		0.593562, 0.753510, 0.282678,
		-0.785219, 0.619215, -0.001800,
		34.771236, 39.518795, 25.670193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355656, 39.423672, 26.299633>,  <35.320889, 39.085346, 25.671453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355656, 39.423672, 26.299633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973915, 39.465878, 26.187864>,  <34.744869, 39.491203, 26.120804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973915, 39.465878, 26.187864>,  <35.355656, 39.423672, 26.299633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973915, 39.465878, 26.187864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297525, -0.253624, 0.920410,
		0.026252, 0.961531, 0.273441,
		-0.954353, 0.105518, -0.279421,
		34.687611, 39.497532, 26.104038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149151, 39.776951, 26.820103>,  <35.355656, 39.423672, 26.299633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149151, 39.776951, 26.820103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825272, 39.640701, 26.628954>,  <34.630943, 39.558952, 26.514265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825272, 39.640701, 26.628954>,  <35.149151, 39.776951, 26.820103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825272, 39.640701, 26.628954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459570, -0.138341, 0.877301,
		-0.364937, 0.929967, -0.044525,
		-0.809701, -0.340622, -0.477871,
		34.582363, 39.538513, 26.485592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607803, 39.984200, 27.227228>,  <35.149151, 39.776951, 26.820103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607803, 39.984200, 27.227228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470837, 39.674515, 27.014307>,  <34.388657, 39.488705, 26.886555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470837, 39.674515, 27.014307>,  <34.607803, 39.984200, 27.227228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470837, 39.674515, 27.014307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437962, -0.369710, 0.819453,
		-0.831230, 0.513720, -0.212483,
		-0.342412, -0.774213, -0.532304,
		34.368114, 39.442249, 26.854616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019989, 39.871750, 27.600700>,  <34.607803, 39.984200, 27.227228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019989, 39.871750, 27.600700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.072723, 39.545158, 27.375853>,  <34.104366, 39.349201, 27.240944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.072723, 39.545158, 27.375853>,  <34.019989, 39.871750, 27.600700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072723, 39.545158, 27.375853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287200, -0.574207, 0.766683,
		-0.948755, 0.060362, -0.310195,
		0.131838, -0.816482, -0.562118,
		34.112274, 39.300213, 27.207218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455330, 39.476135, 27.594934>,  <34.019989, 39.871750, 27.600700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455330, 39.476135, 27.594934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731655, 39.201534, 27.504166>,  <33.897449, 39.036774, 27.449703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731655, 39.201534, 27.504166>,  <33.455330, 39.476135, 27.594934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731655, 39.201534, 27.504166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337844, -0.583956, 0.738145,
		-0.639254, -0.433251, -0.635333,
		0.690808, -0.686505, -0.226925,
		33.938900, 38.995583, 27.436089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060730, 38.967953, 27.712227>,  <33.455330, 39.476135, 27.594934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060730, 38.967953, 27.712227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.443134, 38.850632, 27.713575>,  <33.672577, 38.780239, 27.714384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.443134, 38.850632, 27.713575>,  <33.060730, 38.967953, 27.712227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443134, 38.850632, 27.713575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162646, -0.520502, 0.838227,
		-0.244097, -0.801905, -0.545312,
		0.956014, -0.293302, 0.003374,
		33.729939, 38.762642, 27.714588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002422, 38.290531, 27.920033>,  <33.060730, 38.967953, 27.712227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002422, 38.290531, 27.920033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.379826, 38.404221, 27.988167>,  <33.606266, 38.472435, 28.029047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.379826, 38.404221, 27.988167>,  <33.002422, 38.290531, 27.920033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379826, 38.404221, 27.988167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073721, -0.681230, 0.728348,
		0.323047, -0.674644, -0.663698,
		0.943507, 0.284220, 0.170334,
		33.662876, 38.489487, 28.039267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395905, 37.649632, 28.162416>,  <33.002422, 38.290531, 27.920033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395905, 37.649632, 28.162416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.617271, 37.960991, 28.280954>,  <33.750092, 38.147808, 28.352077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.617271, 37.960991, 28.280954>,  <33.395905, 37.649632, 28.162416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617271, 37.960991, 28.280954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148470, -0.442290, 0.884498,
		0.819565, -0.445497, -0.360340,
		0.553416, 0.778403, 0.296343,
		33.783295, 38.194511, 28.369858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001839, 37.355213, 28.467951>,  <33.395905, 37.649632, 28.162416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001839, 37.355213, 28.467951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.983131, 37.727425, 28.613243>,  <33.971909, 37.950752, 28.700418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.983131, 37.727425, 28.613243>,  <34.001839, 37.355213, 28.467951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983131, 37.727425, 28.613243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147701, -0.353188, 0.923820,
		0.987926, 0.096853, -0.120922,
		-0.046766, 0.930525, 0.363229,
		33.969101, 38.006584, 28.722212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529423, 37.339211, 28.991659>,  <34.001839, 37.355213, 28.467951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529423, 37.339211, 28.991659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.285023, 37.645599, 29.071615>,  <34.138382, 37.829433, 29.119589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.285023, 37.645599, 29.071615>,  <34.529423, 37.339211, 28.991659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285023, 37.645599, 29.071615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030205, -0.229766, 0.972777,
		0.791053, 0.600406, 0.117251,
		-0.611001, 0.765977, 0.199892,
		34.101723, 37.875393, 29.131582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349861, 37.653339, 29.099527>,  <34.529423, 37.339211, 28.991659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349861, 37.653339, 29.099527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582951, 37.328331, 29.093349>,  <35.722805, 37.133324, 29.089643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582951, 37.328331, 29.093349>,  <35.349861, 37.653339, 29.099527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582951, 37.328331, 29.093349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249455, 0.196925, -0.948152,
		0.773436, 0.548660, 0.317441,
		0.582725, -0.812523, -0.015443,
		35.757767, 37.084576, 29.088717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942902, 37.907654, 28.879824>,  <35.349861, 37.653339, 29.099527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942902, 37.907654, 28.879824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955528, 37.519543, 28.783859>,  <35.963104, 37.286674, 28.726280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955528, 37.519543, 28.783859>,  <35.942902, 37.907654, 28.879824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955528, 37.519543, 28.783859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456226, 0.227552, -0.860278,
		0.889304, -0.082301, 0.449850,
		0.031562, -0.970281, -0.239911,
		35.964996, 37.228458, 28.711885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628742, 37.779648, 28.711227>,  <35.942902, 37.907654, 28.879824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628742, 37.779648, 28.711227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406792, 37.495522, 28.537992>,  <36.273621, 37.325047, 28.434052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406792, 37.495522, 28.537992>,  <36.628742, 37.779648, 28.711227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406792, 37.495522, 28.537992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509570, 0.121312, -0.851834,
		0.657609, -0.693351, 0.294643,
		-0.554876, -0.710315, -0.433087,
		36.240330, 37.282429, 28.408066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195171, 37.398636, 28.424746>,  <36.628742, 37.779648, 28.711227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195171, 37.398636, 28.424746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863338, 37.275970, 28.238092>,  <36.664238, 37.202370, 28.126101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863338, 37.275970, 28.238092>,  <37.195171, 37.398636, 28.424746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863338, 37.275970, 28.238092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498030, -0.028468, -0.866692,
		0.252499, -0.951392, 0.176344,
		-0.829585, -0.306664, -0.466633,
		36.614464, 37.183971, 28.098103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442795, 36.904930, 27.906870>,  <37.195171, 37.398636, 28.424746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442795, 36.904930, 27.906870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.073330, 36.987400, 27.777668>,  <36.851650, 37.036880, 27.700148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.073330, 36.987400, 27.777668>,  <37.442795, 36.904930, 27.906870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073330, 36.987400, 27.777668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305246, -0.113705, -0.945461,
		-0.231659, -0.971886, 0.042091,
		-0.923666, 0.206177, -0.323005,
		36.796230, 37.049252, 27.680767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149063, 36.328396, 27.407154>,  <37.442795, 36.904930, 27.906870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149063, 36.328396, 27.407154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960571, 36.674538, 27.338924>,  <36.847477, 36.882225, 27.297987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960571, 36.674538, 27.338924>,  <37.149063, 36.328396, 27.407154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960571, 36.674538, 27.338924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141072, -0.116956, -0.983067,
		-0.870655, -0.487315, -0.066964,
		-0.471231, 0.865358, -0.170575,
		36.819202, 36.934147, 27.287752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754959, 36.151806, 26.764383>,  <37.149063, 36.328396, 27.407154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754959, 36.151806, 26.764383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755444, 36.549335, 26.808781>,  <36.755733, 36.787853, 26.835419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755444, 36.549335, 26.808781>,  <36.754959, 36.151806, 26.764383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755444, 36.549335, 26.808781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025954, 0.110925, -0.993490,
		-0.999662, 0.004088, -0.025659,
		0.001215, 0.993821, 0.110993,
		36.755810, 36.847481, 26.842079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081676, 36.463612, 26.367636>,  <36.754959, 36.151806, 26.764383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081676, 36.463612, 26.367636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338703, 36.766735, 26.412958>,  <36.492920, 36.948608, 26.440151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338703, 36.766735, 26.412958>,  <36.081676, 36.463612, 26.367636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338703, 36.766735, 26.412958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139475, 0.029724, -0.989779,
		-0.753429, 0.651803, -0.086595,
		0.642567, 0.757806, 0.113305,
		36.531475, 36.994076, 26.446949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917492, 36.945873, 25.829391>,  <36.081676, 36.463612, 26.367636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917492, 36.945873, 25.829391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288174, 37.079857, 25.897537>,  <36.510582, 37.160248, 25.938425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288174, 37.079857, 25.897537>,  <35.917492, 36.945873, 25.829391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288174, 37.079857, 25.897537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017985, 0.413293, -0.910420,
		-0.375366, 0.846753, 0.376975,
		0.926702, 0.334961, 0.170366,
		36.566185, 37.180344, 25.948647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943302, 37.683418, 25.600374>,  <35.917492, 36.945873, 25.829391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943302, 37.683418, 25.600374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.322018, 37.555885, 25.617970>,  <36.549248, 37.479366, 25.628527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.322018, 37.555885, 25.617970>,  <35.943302, 37.683418, 25.600374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322018, 37.555885, 25.617970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182801, 0.420208, -0.888825,
		0.264906, 0.849570, 0.456132,
		0.946789, -0.318836, 0.043987,
		36.606052, 37.460236, 25.631166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319397, 38.189739, 25.320786>,  <35.943302, 37.683418, 25.600374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319397, 38.189739, 25.320786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.578709, 37.886398, 25.293583>,  <36.734295, 37.704391, 25.277262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.578709, 37.886398, 25.293583>,  <36.319397, 38.189739, 25.320786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578709, 37.886398, 25.293583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262037, 0.306079, -0.915233,
		0.714888, 0.575510, 0.397143,
		0.648284, -0.758356, -0.068008,
		36.773193, 37.658890, 25.273180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982655, 38.469929, 25.165352>,  <36.319397, 38.189739, 25.320786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982655, 38.469929, 25.165352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.988850, 38.090946, 25.037544>,  <36.992565, 37.863556, 24.960859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.988850, 38.090946, 25.037544>,  <36.982655, 38.469929, 25.165352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988850, 38.090946, 25.037544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121549, 0.318972, -0.939938,
		0.992465, -0.024279, 0.120102,
		0.015489, -0.947453, -0.319520,
		36.993496, 37.806709, 24.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542576, 38.489567, 24.670038>,  <36.982655, 38.469929, 25.165352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542576, 38.489567, 24.670038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349049, 38.148308, 24.592005>,  <37.232933, 37.943554, 24.545185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349049, 38.148308, 24.592005>,  <37.542576, 38.489567, 24.670038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349049, 38.148308, 24.592005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134006, 0.148062, -0.979857,
		0.864848, -0.500216, 0.042691,
		-0.483819, -0.853148, -0.195083,
		37.203903, 37.892365, 24.533480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020016, 37.962326, 24.221733>,  <37.542576, 38.489567, 24.670038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020016, 37.962326, 24.221733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637024, 37.876801, 24.144249>,  <37.407230, 37.825485, 24.097757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637024, 37.876801, 24.144249>,  <38.020016, 37.962326, 24.221733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637024, 37.876801, 24.144249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142648, 0.232783, -0.962010,
		0.250787, -0.948733, -0.192383,
		-0.957474, -0.213817, -0.193714,
		37.349781, 37.812656, 24.086136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487061, 37.403202, 24.007467>,  <38.020016, 37.962326, 24.221733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487061, 37.403202, 24.007467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880322, 37.331367, 23.993860>,  <39.116280, 37.288265, 23.985697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880322, 37.331367, 23.993860>,  <38.487061, 37.403202, 24.007467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880322, 37.331367, 23.993860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018056, -0.280619, 0.959649,
		-0.181887, -0.942869, -0.279135,
		0.983153, -0.179587, -0.034017,
		39.175266, 37.277489, 23.983654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561249, 36.851971, 24.402246>,  <38.487061, 37.403202, 24.007467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561249, 36.851971, 24.402246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945065, 36.963215, 24.384642>,  <39.175354, 37.029961, 24.374079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945065, 36.963215, 24.384642>,  <38.561249, 36.851971, 24.402246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945065, 36.963215, 24.384642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156279, -0.396007, 0.904851,
		0.234221, -0.875119, -0.423448,
		0.959540, 0.278111, -0.044010,
		39.232925, 37.046650, 24.371439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015308, 36.269802, 24.524458>,  <38.561249, 36.851971, 24.402246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015308, 36.269802, 24.524458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.225662, 36.591457, 24.635309>,  <39.351875, 36.784451, 24.701820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.225662, 36.591457, 24.635309>,  <39.015308, 36.269802, 24.524458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225662, 36.591457, 24.635309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195673, -0.431461, 0.880655,
		0.827742, -0.408897, -0.384248,
		0.525885, 0.804142, 0.277128,
		39.383427, 36.832699, 24.718447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574100, 36.019691, 24.820192>,  <39.015308, 36.269802, 24.524458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574100, 36.019691, 24.820192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581459, 36.394829, 24.958824>,  <39.585873, 36.619911, 25.042004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581459, 36.394829, 24.958824>,  <39.574100, 36.019691, 24.820192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581459, 36.394829, 24.958824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174466, -0.344332, 0.922495,
		0.984491, 0.043499, -0.169955,
		0.018394, 0.937840, 0.346581,
		39.586979, 36.676182, 25.062798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128876, 36.031399, 25.385326>,  <39.574100, 36.019691, 24.820192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128876, 36.031399, 25.385326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927696, 36.369492, 25.457575>,  <39.806988, 36.572346, 25.500923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927696, 36.369492, 25.457575>,  <40.128876, 36.031399, 25.385326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927696, 36.369492, 25.457575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011415, -0.202462, 0.979223,
		0.864240, 0.494562, 0.092180,
		-0.502950, 0.845232, 0.180621,
		39.776810, 36.623062, 25.511761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408195, 36.472500, 25.943270>,  <40.128876, 36.031399, 25.385326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408195, 36.472500, 25.943270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023781, 36.582943, 25.938087>,  <39.793133, 36.649208, 25.934978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023781, 36.582943, 25.938087>,  <40.408195, 36.472500, 25.943270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023781, 36.582943, 25.938087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026214, -0.044377, 0.998671,
		0.275162, 0.960103, 0.049886,
		-0.961040, 0.276104, -0.012957,
		39.735470, 36.665775, 25.934200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356647, 37.064735, 26.490519>,  <40.408195, 36.472500, 25.943270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356647, 37.064735, 26.490519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983940, 36.931335, 26.433134>,  <39.760315, 36.851295, 26.398705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983940, 36.931335, 26.433134>,  <40.356647, 37.064735, 26.490519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983940, 36.931335, 26.433134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205047, 0.157338, 0.966023,
		-0.299596, 0.929528, -0.214987,
		-0.931771, -0.333499, -0.143459,
		39.704411, 36.831287, 26.390097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836163, 37.607075, 26.741680>,  <40.356647, 37.064735, 26.490519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836163, 37.607075, 26.741680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.623211, 37.268494, 26.745485>,  <39.495441, 37.065346, 26.747768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.623211, 37.268494, 26.745485>,  <39.836163, 37.607075, 26.741680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623211, 37.268494, 26.745485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201401, 0.137572, 0.969800,
		-0.822201, 0.514381, -0.243717,
		-0.532375, -0.846455, 0.009515,
		39.463497, 37.014557, 26.748341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171078, 37.841335, 27.186028>,  <39.836163, 37.607075, 26.741680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171078, 37.841335, 27.186028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227825, 37.445995, 27.163971>,  <39.261871, 37.208790, 27.150736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227825, 37.445995, 27.163971>,  <39.171078, 37.841335, 27.186028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227825, 37.445995, 27.163971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056604, -0.063715, 0.996362,
		-0.988266, -0.138227, -0.064984,
		0.141864, -0.988349, -0.055143,
		39.270386, 37.149490, 27.147429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750946, 37.566563, 27.699053>,  <39.171078, 37.841335, 27.186028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750946, 37.566563, 27.699053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992546, 37.255852, 27.627720>,  <39.137508, 37.069427, 27.584919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992546, 37.255852, 27.627720>,  <38.750946, 37.566563, 27.699053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992546, 37.255852, 27.627720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010977, -0.231848, 0.972690,
		-0.796907, -0.585550, -0.148563,
		0.604003, -0.776774, -0.178334,
		39.173748, 37.022820, 27.574221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347912, 36.905914, 27.891714>,  <38.750946, 37.566563, 27.699053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347912, 36.905914, 27.891714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.742836, 36.842552, 27.896286>,  <38.979790, 36.804535, 27.899029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.742836, 36.842552, 27.896286>,  <38.347912, 36.905914, 27.891714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742836, 36.842552, 27.896286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063771, -0.329501, 0.941999,
		-0.145449, -0.930773, -0.335420,
		0.987308, -0.158403, 0.011431,
		39.039028, 36.795033, 27.899715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465034, 36.290634, 28.198402>,  <38.347912, 36.905914, 27.891714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465034, 36.290634, 28.198402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829639, 36.452999, 28.224878>,  <39.048401, 36.550419, 28.240765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829639, 36.452999, 28.224878>,  <38.465034, 36.290634, 28.198402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829639, 36.452999, 28.224878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056383, -0.282753, 0.957534,
		0.407391, -0.869072, -0.280619,
		0.911512, 0.405913, 0.066190,
		39.103092, 36.574772, 28.244736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861492, 35.834934, 28.649567>,  <38.465034, 36.290634, 28.198402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861492, 35.834934, 28.649567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091633, 36.161602, 28.631607>,  <39.229717, 36.357601, 28.620831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091633, 36.161602, 28.631607>,  <38.861492, 35.834934, 28.649567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091633, 36.161602, 28.631607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287089, -0.150247, 0.946048,
		0.765863, -0.557204, -0.320903,
		0.575356, 0.816670, -0.044899,
		39.264240, 36.406605, 28.618137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490589, 35.625271, 28.861471>,  <38.861492, 35.834934, 28.649567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490589, 35.625271, 28.861471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474812, 36.019485, 28.927406>,  <39.465347, 36.256012, 28.966967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474812, 36.019485, 28.927406>,  <39.490589, 35.625271, 28.861471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474812, 36.019485, 28.927406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321631, -0.143664, 0.935903,
		0.946043, 0.089930, -0.311311,
		-0.039442, 0.985532, 0.164836,
		39.462978, 36.315144, 28.976858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.174480, 39.617119, 24.274769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779957, 39.673668, 24.240791>,  <40.543243, 39.707600, 24.220404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779957, 39.673668, 24.240791>,  <41.174480, 39.617119, 24.274769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779957, 39.673668, 24.240791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082269, -0.024682, -0.996304,
		-0.142953, -0.989648, 0.012713,
		-0.986304, 0.141379, -0.084946,
		40.484066, 39.716080, 24.215307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889015, 38.964333, 23.917402>,  <41.174480, 39.617119, 24.274769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889015, 38.964333, 23.917402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637604, 39.270489, 23.862070>,  <40.486755, 39.454182, 23.828871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637604, 39.270489, 23.862070>,  <40.889015, 38.964333, 23.917402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637604, 39.270489, 23.862070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043945, -0.142622, -0.988801,
		-0.776544, -0.627569, 0.056007,
		-0.628529, 0.765386, -0.138331,
		40.449043, 39.500103, 23.820570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535564, 38.887154, 23.315489>,  <40.889015, 38.964333, 23.917402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535564, 38.887154, 23.315489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.406590, 39.265789, 23.314852>,  <40.329205, 39.492970, 23.314470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.406590, 39.265789, 23.314852>,  <40.535564, 38.887154, 23.315489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406590, 39.265789, 23.314852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000222, -0.001756, -0.999998,
		-0.946589, -0.322441, 0.000776,
		-0.322441, 0.946588, -0.001591,
		40.309856, 39.549767, 23.314375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948788, 38.954185, 22.846291>,  <40.535564, 38.887154, 23.315489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948788, 38.954185, 22.846291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.100796, 39.323349, 22.871002>,  <40.192001, 39.544849, 22.885830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.100796, 39.323349, 22.871002>,  <39.948788, 38.954185, 22.846291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100796, 39.323349, 22.871002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054888, 0.089171, -0.994503,
		-0.923348, 0.374542, 0.084543,
		0.380022, 0.922912, 0.061778,
		40.214802, 39.600224, 22.889536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595917, 39.349808, 22.213346>,  <39.948788, 38.954185, 22.846291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595917, 39.349808, 22.213346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.900089, 39.584671, 22.324341>,  <40.082592, 39.725590, 22.390938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.900089, 39.584671, 22.324341>,  <39.595917, 39.349808, 22.213346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900089, 39.584671, 22.324341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014955, 0.411334, -0.911362,
		-0.649250, 0.697174, 0.304009,
		0.760428, 0.587156, 0.277485,
		40.128216, 39.760818, 22.407587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385044, 40.084743, 22.176342>,  <39.595917, 39.349808, 22.213346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385044, 40.084743, 22.176342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781578, 40.061756, 22.129108>,  <40.019501, 40.047962, 22.100769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781578, 40.061756, 22.129108>,  <39.385044, 40.084743, 22.176342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781578, 40.061756, 22.129108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084726, 0.407124, -0.909435,
		0.100341, 0.911563, 0.398729,
		0.991339, -0.057471, -0.118084,
		40.078979, 40.044514, 22.093683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566864, 40.657120, 21.861290>,  <39.385044, 40.084743, 22.176342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566864, 40.657120, 21.861290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.881119, 40.424992, 21.775488>,  <40.069672, 40.285717, 21.724007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.881119, 40.424992, 21.775488>,  <39.566864, 40.657120, 21.861290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881119, 40.424992, 21.775488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065626, 0.266582, -0.961575,
		0.615203, 0.769522, 0.171351,
		0.785633, -0.580319, -0.214503,
		40.116810, 40.250896, 21.711138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088593, 41.123905, 21.659227>,  <39.566864, 40.657120, 21.861290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088593, 41.123905, 21.659227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221962, 40.772392, 21.522655>,  <40.301983, 40.561485, 21.440712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221962, 40.772392, 21.522655>,  <40.088593, 41.123905, 21.659227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221962, 40.772392, 21.522655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188107, 0.416883, -0.889283,
		0.923821, 0.232282, 0.304304,
		0.333423, -0.878780, -0.341431,
		40.321987, 40.508759, 21.420225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805012, 41.225574, 21.384535>,  <40.088593, 41.123905, 21.659227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805012, 41.225574, 21.384535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608215, 40.924492, 21.209549>,  <40.490135, 40.743843, 21.104557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608215, 40.924492, 21.209549>,  <40.805012, 41.225574, 21.384535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608215, 40.924492, 21.209549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199214, 0.391820, -0.898215,
		0.847499, -0.529066, -0.042824,
		-0.491994, -0.752706, -0.437464,
		40.460617, 40.698681, 21.078310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015507, 41.204330, 20.664246>,  <40.805012, 41.225574, 21.384535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015507, 41.204330, 20.664246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.727509, 40.929459, 20.625507>,  <40.554710, 40.764534, 20.602264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.727509, 40.929459, 20.625507>,  <41.015507, 41.204330, 20.664246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727509, 40.929459, 20.625507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153906, 0.294196, -0.943272,
		0.676693, -0.664250, -0.317583,
		-0.719999, -0.687183, -0.096848,
		40.511509, 40.723305, 20.596453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301369, 40.965565, 20.044508>,  <41.015507, 41.204330, 20.664246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301369, 40.965565, 20.044508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929298, 40.827106, 20.093424>,  <40.706055, 40.744030, 20.122774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929298, 40.827106, 20.093424>,  <41.301369, 40.965565, 20.044508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929298, 40.827106, 20.093424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252326, 0.360858, -0.897838,
		0.266656, -0.866004, -0.423003,
		-0.930175, -0.346149, 0.122291,
		40.650246, 40.723263, 20.130112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196743, 40.704781, 19.466145>,  <41.301369, 40.965565, 20.044508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196743, 40.704781, 19.466145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.823708, 40.767090, 19.596388>,  <40.599888, 40.804474, 19.674534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.823708, 40.767090, 19.596388>,  <41.196743, 40.704781, 19.466145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823708, 40.767090, 19.596388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240205, 0.405500, -0.881970,
		-0.269418, -0.900725, -0.340747,
		-0.932585, 0.155769, 0.325607,
		40.543930, 40.813820, 19.694071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829670, 40.452553, 18.918522>,  <41.196743, 40.704781, 19.466145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829670, 40.452553, 18.918522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.606449, 40.716385, 19.119928>,  <40.472515, 40.874683, 19.240772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.606449, 40.716385, 19.119928>,  <40.829670, 40.452553, 18.918522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606449, 40.716385, 19.119928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361318, 0.353101, -0.863000,
		-0.747013, -0.663527, 0.041271,
		-0.558051, 0.659584, 0.503516,
		40.439034, 40.914261, 19.270983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190334, 40.199726, 18.665823>,  <40.829670, 40.452553, 18.918522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190334, 40.199726, 18.665823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.203480, 40.583328, 18.778408>,  <40.211369, 40.813492, 18.845959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.203480, 40.583328, 18.778408>,  <40.190334, 40.199726, 18.665823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203480, 40.583328, 18.778408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477340, 0.262479, -0.838601,
		-0.878104, -0.106794, 0.466399,
		0.032862, 0.959010, 0.281461,
		40.213337, 40.871033, 18.862846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128628, 39.594620, 19.021711>,  <40.190334, 40.199726, 18.665823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128628, 39.594620, 19.021711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924767, 39.299824, 18.844130>,  <39.802452, 39.122944, 18.737579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924767, 39.299824, 18.844130>,  <40.128628, 39.594620, 19.021711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924767, 39.299824, 18.844130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326494, -0.311738, 0.892312,
		-0.796026, 0.599717, -0.081747,
		-0.509651, -0.736993, -0.443956,
		39.771870, 39.078724, 18.710943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589756, 39.535858, 19.364321>,  <40.128628, 39.594620, 19.021711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589756, 39.535858, 19.364321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573437, 39.178764, 19.184830>,  <39.563644, 38.964508, 19.077135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573437, 39.178764, 19.184830>,  <39.589756, 39.535858, 19.364321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573437, 39.178764, 19.184830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280776, -0.420760, 0.862628,
		-0.958906, 0.161188, -0.233492,
		-0.040801, -0.892738, -0.448726,
		39.561195, 38.910942, 19.050211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935818, 39.313595, 19.637726>,  <39.589756, 39.535858, 19.364321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935818, 39.313595, 19.637726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139133, 38.990402, 19.518526>,  <39.261124, 38.796486, 19.447006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.139133, 38.990402, 19.518526>,  <38.935818, 39.313595, 19.637726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139133, 38.990402, 19.518526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222733, -0.457603, 0.860808,
		-0.831884, -0.371165, -0.412559,
		0.508290, -0.807983, -0.298002,
		39.291622, 38.748009, 19.429125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549015, 38.744385, 19.811079>,  <38.935818, 39.313595, 19.637726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549015, 38.744385, 19.811079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.912914, 38.589279, 19.751740>,  <39.131252, 38.496216, 19.716135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.912914, 38.589279, 19.751740>,  <38.549015, 38.744385, 19.811079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912914, 38.589279, 19.751740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136466, -0.616755, 0.775236,
		-0.392101, -0.685021, -0.614005,
		0.909744, -0.387762, -0.148348,
		39.185837, 38.472950, 19.707235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426094, 38.052689, 20.020718>,  <38.549015, 38.744385, 19.811079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426094, 38.052689, 20.020718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.823849, 38.094635, 20.015026>,  <39.062500, 38.119804, 20.011612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.823849, 38.094635, 20.015026>,  <38.426094, 38.052689, 20.020718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823849, 38.094635, 20.015026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069791, -0.548746, 0.833071,
		0.079555, -0.829385, -0.552984,
		0.994384, 0.104869, -0.014228,
		39.122166, 38.126095, 20.010757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678112, 37.396526, 20.161846>,  <38.426094, 38.052689, 20.020718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678112, 37.396526, 20.161846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.961842, 37.665016, 20.247925>,  <39.132080, 37.826111, 20.299572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.961842, 37.665016, 20.247925>,  <38.678112, 37.396526, 20.161846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961842, 37.665016, 20.247925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089517, -0.388602, 0.917047,
		0.699173, -0.631222, -0.335731,
		0.709326, 0.671229, 0.215195,
		39.174641, 37.866386, 20.312483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227219, 37.000610, 20.304352>,  <38.678112, 37.396526, 20.161846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227219, 37.000610, 20.304352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264130, 37.354172, 20.487745>,  <39.286278, 37.566307, 20.597782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264130, 37.354172, 20.487745>,  <39.227219, 37.000610, 20.304352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264130, 37.354172, 20.487745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175998, -0.467678, 0.866200,
		0.980056, 0.000759, -0.198722,
		0.092280, 0.883899, 0.458484,
		39.291813, 37.619343, 20.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703018, 36.877792, 20.823046>,  <39.227219, 37.000610, 20.304352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703018, 36.877792, 20.823046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550373, 37.230404, 20.934240>,  <39.458786, 37.441971, 21.000957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550373, 37.230404, 20.934240>,  <39.703018, 36.877792, 20.823046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550373, 37.230404, 20.934240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301350, -0.165658, 0.939013,
		0.873818, 0.442112, -0.202432,
		-0.381615, 0.881530, 0.277986,
		39.435890, 37.494862, 21.017635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077801, 37.017422, 21.374445>,  <39.703018, 36.877792, 20.823046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077801, 37.017422, 21.374445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.791595, 37.294132, 21.413425>,  <39.619873, 37.460159, 21.436813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.791595, 37.294132, 21.413425>,  <40.077801, 37.017422, 21.374445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791595, 37.294132, 21.413425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063964, -0.074039, 0.995202,
		0.695668, 0.718311, 0.008727,
		-0.715510, 0.691772, 0.097453,
		39.576942, 37.501663, 21.442661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403786, 37.401711, 21.872690>,  <40.077801, 37.017422, 21.374445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403786, 37.401711, 21.872690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020496, 37.516071, 21.875780>,  <39.790524, 37.584690, 21.877634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020496, 37.516071, 21.875780>,  <40.403786, 37.401711, 21.872690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020496, 37.516071, 21.875780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011049, 0.010012, 0.999889,
		0.285795, 0.958206, -0.012752,
		-0.958227, 0.285904, 0.007726,
		39.733028, 37.601841, 21.878098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414249, 37.875690, 22.417143>,  <40.403786, 37.401711, 21.872690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414249, 37.875690, 22.417143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032505, 37.762215, 22.379791>,  <39.803459, 37.694130, 22.357380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032505, 37.762215, 22.379791>,  <40.414249, 37.875690, 22.417143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032505, 37.762215, 22.379791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046324, -0.168267, 0.984652,
		-0.295052, 0.944036, 0.147445,
		-0.954357, -0.283694, -0.093379,
		39.746197, 37.677105, 22.351778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100292, 38.175545, 22.946407>,  <40.414249, 37.875690, 22.417143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100292, 38.175545, 22.946407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866440, 37.870552, 22.835537>,  <39.726128, 37.687557, 22.769014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866440, 37.870552, 22.835537>,  <40.100292, 38.175545, 22.946407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866440, 37.870552, 22.835537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136289, -0.244490, 0.960026,
		-0.799772, 0.599035, 0.039018,
		-0.584629, -0.762484, -0.277178,
		39.691051, 37.641808, 22.752384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523529, 38.223335, 23.415615>,  <40.100292, 38.175545, 22.946407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523529, 38.223335, 23.415615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513527, 37.851391, 23.268793>,  <39.507526, 37.628223, 23.180700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513527, 37.851391, 23.268793>,  <39.523529, 38.223335, 23.415615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513527, 37.851391, 23.268793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253487, -0.349272, 0.902083,
		-0.967015, 0.115605, -0.226973,
		-0.025010, -0.929863, -0.367056,
		39.506023, 37.572433, 23.158676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833153, 37.986389, 23.531765>,  <39.523529, 38.223335, 23.415615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833153, 37.986389, 23.531765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080318, 37.672199, 23.517797>,  <39.228619, 37.483685, 23.509417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080318, 37.672199, 23.517797>,  <38.833153, 37.986389, 23.531765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080318, 37.672199, 23.517797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184748, -0.188216, 0.964594,
		-0.764235, -0.589582, -0.261415,
		0.617910, -0.785473, -0.034917,
		39.265690, 37.436558, 23.507322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056202, 37.975441, 23.498041>,  <38.833153, 37.986389, 23.531765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056202, 37.975441, 23.498041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674141, 38.003647, 23.613073>,  <37.444904, 38.020569, 23.682093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674141, 38.003647, 23.613073>,  <38.056202, 37.975441, 23.498041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674141, 38.003647, 23.613073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201496, 0.556876, -0.805784,
		-0.216967, -0.827597, -0.517696,
		-0.955157, 0.070515, 0.287581,
		37.387592, 38.024803, 23.699348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766464, 37.851231, 22.888340>,  <38.056202, 37.975441, 23.498041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766464, 37.851231, 22.888340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467274, 38.010536, 23.100721>,  <37.287758, 38.106121, 23.228149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467274, 38.010536, 23.100721>,  <37.766464, 37.851231, 22.888340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467274, 38.010536, 23.100721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218954, 0.607117, -0.763850,
		-0.626565, -0.687599, -0.366910,
		-0.747981, 0.398266, 0.530951,
		37.242878, 38.130016, 23.260006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077999, 37.692413, 22.555742>,  <37.766464, 37.851231, 22.888340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077999, 37.692413, 22.555742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.110481, 38.017960, 22.785881>,  <37.129971, 38.213287, 22.923964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.110481, 38.017960, 22.785881>,  <37.077999, 37.692413, 22.555742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110481, 38.017960, 22.785881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100593, 0.580999, -0.807664,
		-0.991609, 0.007708, 0.129048,
		0.081202, 0.813868, 0.575348,
		37.134842, 38.262119, 22.958485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591572, 38.151852, 22.241734>,  <37.077999, 37.692413, 22.555742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591572, 38.151852, 22.241734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778301, 38.408985, 22.484663>,  <36.890339, 38.563267, 22.630421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778301, 38.408985, 22.484663>,  <36.591572, 38.151852, 22.241734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778301, 38.408985, 22.484663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174686, 0.740241, -0.649252,
		-0.866926, 0.196994, 0.457856,
		0.466822, 0.642834, 0.607322,
		36.918346, 38.601837, 22.666861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343597, 38.662159, 22.028175>,  <36.591572, 38.151852, 22.241734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343597, 38.662159, 22.028175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648937, 38.820091, 22.232685>,  <36.832142, 38.914852, 22.355391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648937, 38.820091, 22.232685>,  <36.343597, 38.662159, 22.028175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648937, 38.820091, 22.232685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003832, 0.794218, -0.607621,
		-0.645971, 0.461870, 0.607781,
		0.763352, 0.394834, 0.511272,
		36.877941, 38.938541, 22.386066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320320, 39.384098, 21.939144>,  <36.343597, 38.662159, 22.028175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320320, 39.384098, 21.939144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683456, 39.363968, 22.105661>,  <36.901337, 39.351891, 22.205572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683456, 39.363968, 22.105661>,  <36.320320, 39.384098, 21.939144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683456, 39.363968, 22.105661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297400, 0.777152, -0.554606,
		-0.295611, 0.627297, 0.720495,
		0.907837, -0.050328, 0.416293,
		36.955807, 39.348869, 22.230549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551952, 40.077351, 22.177477>,  <36.320320, 39.384098, 21.939144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551952, 40.077351, 22.177477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851986, 39.836704, 22.067619>,  <37.032005, 39.692314, 22.001705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851986, 39.836704, 22.067619>,  <36.551952, 40.077351, 22.177477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851986, 39.836704, 22.067619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301696, 0.680828, -0.667423,
		0.588519, 0.417764, 0.692184,
		0.750083, -0.601620, -0.274643,
		37.077011, 39.656219, 21.985226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423149, 40.856579, 22.251148>,  <36.551952, 40.077351, 22.177477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423149, 40.856579, 22.251148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038006, 40.955341, 22.207430>,  <35.806919, 41.014599, 22.181198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038006, 40.955341, 22.207430>,  <36.423149, 40.856579, 22.251148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038006, 40.955341, 22.207430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180623, -0.288094, 0.940413,
		0.200703, 0.925225, 0.321990,
		-0.962857, 0.246902, -0.109296,
		35.749149, 41.029411, 22.174641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240990, 41.411221, 22.785103>,  <36.423149, 40.856579, 22.251148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240990, 41.411221, 22.785103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892906, 41.244537, 22.679955>,  <35.684055, 41.144527, 22.616865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892906, 41.244537, 22.679955>,  <36.240990, 41.411221, 22.785103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892906, 41.244537, 22.679955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224721, -0.139116, 0.964442,
		-0.438456, 0.898335, 0.027417,
		-0.870205, -0.416704, -0.262870,
		35.631844, 41.119526, 22.601093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877602, 41.580200, 23.330088>,  <36.240990, 41.411221, 22.785103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877602, 41.580200, 23.330088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673923, 41.283562, 23.155386>,  <35.551716, 41.105579, 23.050566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673923, 41.283562, 23.155386>,  <35.877602, 41.580200, 23.330088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673923, 41.283562, 23.155386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263950, -0.348452, 0.899395,
		-0.819176, 0.573250, -0.018314,
		-0.509197, -0.741596, -0.436753,
		35.521164, 41.061081, 23.024361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194275, 41.592197, 23.554592>,  <35.877602, 41.580200, 23.330088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194275, 41.592197, 23.554592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.253712, 41.213425, 23.440578>,  <35.289371, 40.986160, 23.372169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.253712, 41.213425, 23.440578>,  <35.194275, 41.592197, 23.554592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253712, 41.213425, 23.440578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470890, -0.321211, 0.821637,
		-0.869588, 0.012134, -0.493628,
		0.148589, -0.946930, -0.285035,
		35.298290, 40.929344, 23.355068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605804, 41.297142, 23.791964>,  <35.194275, 41.592197, 23.554592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605804, 41.297142, 23.791964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843307, 40.985397, 23.711918>,  <34.985809, 40.798351, 23.663891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843307, 40.985397, 23.711918>,  <34.605804, 41.297142, 23.791964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843307, 40.985397, 23.711918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289812, -0.439144, 0.850389,
		-0.750641, -0.446928, -0.486614,
		0.593757, -0.779364, -0.200115,
		35.021435, 40.751587, 23.651884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168995, 40.778313, 23.911570>,  <34.605804, 41.297142, 23.791964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168995, 40.778313, 23.911570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539722, 40.629944, 23.934980>,  <34.762157, 40.540924, 23.949026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539722, 40.629944, 23.934980>,  <34.168995, 40.778313, 23.911570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539722, 40.629944, 23.934980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250889, -0.495700, 0.831466,
		-0.279395, -0.785303, -0.552484,
		0.926819, -0.370919, 0.058528,
		34.817768, 40.518669, 23.952539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078007, 40.104149, 23.962099>,  <34.168995, 40.778313, 23.911570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078007, 40.104149, 23.962099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.449070, 40.149158, 24.104528>,  <34.671707, 40.176163, 24.189987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.449070, 40.149158, 24.104528>,  <34.078007, 40.104149, 23.962099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449070, 40.149158, 24.104528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200873, -0.653467, 0.729816,
		0.314803, -0.748546, -0.583591,
		0.927658, 0.112521, 0.356076,
		34.727367, 40.182915, 24.211351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.500755, 43.502552, 21.046173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.506977, 43.295250, 20.704140>,  <37.510708, 43.170868, 20.498919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.506977, 43.295250, 20.704140>,  <37.500755, 43.502552, 21.046173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506977, 43.295250, 20.704140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052277, -0.853598, 0.518304,
		-0.998512, -0.052761, 0.013819,
		0.015550, -0.518255, -0.855085,
		37.511642, 43.139774, 20.447615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153942, 43.301392, 20.746067>,  <37.500755, 43.502552, 21.046173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153942, 43.301392, 20.746067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318134, 42.957565, 20.624306>,  <38.416649, 42.751270, 20.551249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318134, 42.957565, 20.624306>,  <38.153942, 43.301392, 20.746067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318134, 42.957565, 20.624306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082213, -0.297577, 0.951151,
		-0.908158, -0.415451, -0.051481,
		0.410476, -0.859563, -0.304402,
		38.441277, 42.699696, 20.532986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728924, 42.711514, 20.945522>,  <38.153942, 43.301392, 20.746067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728924, 42.711514, 20.945522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118351, 42.621105, 20.958693>,  <38.352005, 42.566860, 20.966595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118351, 42.621105, 20.958693>,  <37.728924, 42.711514, 20.945522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118351, 42.621105, 20.958693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039800, -0.025920, 0.998871,
		-0.224911, -0.973778, -0.034231,
		0.973566, -0.226019, 0.032926,
		38.410419, 42.553299, 20.968571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880009, 42.067886, 21.273756>,  <37.728924, 42.711514, 20.945522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880009, 42.067886, 21.273756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185287, 42.321678, 21.322695>,  <38.368454, 42.473953, 21.352058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185287, 42.321678, 21.322695>,  <37.880009, 42.067886, 21.273756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185287, 42.321678, 21.322695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153174, -0.006302, 0.988179,
		0.627754, -0.772911, 0.092377,
		0.763193, 0.634484, 0.122346,
		38.414246, 42.512024, 21.359398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118195, 41.756943, 21.820629>,  <37.880009, 42.067886, 21.273756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118195, 41.756943, 21.820629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.332172, 42.094761, 21.811014>,  <38.460560, 42.297451, 21.805244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.332172, 42.094761, 21.811014>,  <38.118195, 41.756943, 21.820629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332172, 42.094761, 21.811014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122989, -0.049691, 0.991163,
		0.835885, -0.533177, -0.130452,
		0.534948, 0.844543, -0.024039,
		38.492657, 42.348125, 21.803802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751408, 41.612648, 22.165392>,  <38.118195, 41.756943, 21.820629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751408, 41.612648, 22.165392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.684059, 42.006268, 22.188398>,  <38.643650, 42.242439, 22.202202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.684059, 42.006268, 22.188398>,  <38.751408, 41.612648, 22.165392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684059, 42.006268, 22.188398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066033, -0.046957, 0.996712,
		0.983509, 0.171616, -0.057073,
		-0.168372, 0.984044, 0.057515,
		38.633549, 42.301479, 22.205652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375957, 41.901756, 22.499891>,  <38.751408, 41.612648, 22.165392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375957, 41.901756, 22.499891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065933, 42.150040, 22.547215>,  <38.879917, 42.299011, 22.575609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065933, 42.150040, 22.547215>,  <39.375957, 41.901756, 22.499891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065933, 42.150040, 22.547215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251062, 0.130688, 0.959108,
		0.579865, 0.773073, -0.257128,
		-0.775064, 0.620708, 0.118308,
		38.833412, 42.336250, 22.582706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656734, 42.549557, 22.902576>,  <39.375957, 41.901756, 22.499891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656734, 42.549557, 22.902576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.259308, 42.574154, 22.940617>,  <39.020851, 42.588913, 22.963442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.259308, 42.574154, 22.940617>,  <39.656734, 42.549557, 22.902576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259308, 42.574154, 22.940617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110157, 0.329825, 0.937593,
		0.026286, 0.942037, -0.334477,
		-0.993567, 0.061490, 0.095103,
		38.961239, 42.592602, 22.969147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532169, 43.155590, 23.181684>,  <39.656734, 42.549557, 22.902576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532169, 43.155590, 23.181684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.235409, 42.901859, 23.268600>,  <39.057354, 42.749622, 23.320749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.235409, 42.901859, 23.268600>,  <39.532169, 43.155590, 23.181684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235409, 42.901859, 23.268600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174581, 0.130141, 0.976004,
		-0.647381, 0.762034, 0.014189,
		-0.741902, -0.634324, 0.217288,
		39.012836, 42.711563, 23.333786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187843, 43.389893, 23.837008>,  <39.532169, 43.155590, 23.181684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187843, 43.389893, 23.837008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065235, 43.011711, 23.792887>,  <38.991669, 42.784801, 23.766415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065235, 43.011711, 23.792887>,  <39.187843, 43.389893, 23.837008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065235, 43.011711, 23.792887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041001, -0.102660, 0.993871,
		-0.950981, 0.309164, -0.007297,
		-0.306520, -0.945452, -0.110303,
		38.973278, 42.728077, 23.759796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498268, 43.329334, 24.184340>,  <39.187843, 43.389893, 23.837008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498268, 43.329334, 24.184340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607639, 42.944614, 24.178886>,  <38.673264, 42.713783, 24.175613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607639, 42.944614, 24.178886>,  <38.498268, 43.329334, 24.184340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607639, 42.944614, 24.178886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266789, -0.089449, 0.959595,
		-0.924153, -0.258745, -0.281055,
		0.273430, -0.961795, -0.013634,
		38.689667, 42.656075, 24.174797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993835, 42.951679, 24.511066>,  <38.498268, 43.329334, 24.184340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993835, 42.951679, 24.511066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324833, 42.727097, 24.509033>,  <38.523430, 42.592346, 24.507812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324833, 42.727097, 24.509033>,  <37.993835, 42.951679, 24.511066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324833, 42.727097, 24.509033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078039, -0.123973, 0.989212,
		-0.556028, -0.818168, -0.146402,
		0.827491, -0.561455, -0.005083,
		38.573082, 42.558659, 24.507507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245625, 42.765499, 24.400225>,  <37.993835, 42.951679, 24.511066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245625, 42.765499, 24.400225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.890144, 42.914291, 24.507442>,  <36.676857, 43.003567, 24.571774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.890144, 42.914291, 24.507442>,  <37.245625, 42.765499, 24.400225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890144, 42.914291, 24.507442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225439, 0.154550, -0.961921,
		-0.399244, -0.915283, -0.053488,
		-0.888696, 0.371983, 0.268044,
		36.623535, 43.025887, 24.587856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697510, 42.485538, 23.929241>,  <37.245625, 42.765499, 24.400225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697510, 42.485538, 23.929241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.599133, 42.842319, 24.080994>,  <36.540108, 43.056389, 24.172045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.599133, 42.842319, 24.080994>,  <36.697510, 42.485538, 23.929241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599133, 42.842319, 24.080994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163022, 0.347762, -0.923301,
		-0.955478, -0.288923, 0.059881,
		-0.245938, 0.891956, 0.379380,
		36.525352, 43.109905, 24.194807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013908, 42.509789, 23.776012>,  <36.697510, 42.485538, 23.929241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013908, 42.509789, 23.776012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098465, 42.895214, 23.841572>,  <36.149197, 43.126469, 23.880907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098465, 42.895214, 23.841572>,  <36.013908, 42.509789, 23.776012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098465, 42.895214, 23.841572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332830, 0.228631, -0.914851,
		-0.918988, 0.138840, 0.369032,
		0.211390, 0.963562, 0.163899,
		36.161880, 43.184284, 23.890741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495785, 42.833416, 23.420540>,  <36.013908, 42.509789, 23.776012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495785, 42.833416, 23.420540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.757481, 43.135372, 23.438929>,  <35.914497, 43.316547, 23.449963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.757481, 43.135372, 23.438929>,  <35.495785, 42.833416, 23.420540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757481, 43.135372, 23.438929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392688, 0.391020, -0.832406,
		-0.646351, 0.526539, 0.552256,
		0.654237, 0.754891, 0.045971,
		35.953751, 43.361839, 23.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132526, 43.402077, 23.088640>,  <35.495785, 42.833416, 23.420540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132526, 43.402077, 23.088640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.512733, 43.526272, 23.084461>,  <35.740860, 43.600788, 23.081953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.512733, 43.526272, 23.084461>,  <35.132526, 43.402077, 23.088640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512733, 43.526272, 23.084461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162465, 0.468141, -0.868590,
		-0.264794, 0.827310, 0.495421,
		0.950520, 0.310486, -0.010448,
		35.797890, 43.619419, 23.081327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115894, 44.100174, 22.958139>,  <35.132526, 43.402077, 23.088640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115894, 44.100174, 22.958139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.470554, 43.961063, 22.836224>,  <35.683350, 43.877598, 22.763075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.470554, 43.961063, 22.836224>,  <35.115894, 44.100174, 22.958139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470554, 43.961063, 22.836224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152357, 0.402605, -0.902605,
		0.436614, 0.846736, 0.303986,
		0.886654, -0.347775, -0.304789,
		35.736549, 43.856731, 22.744787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479797, 44.698215, 22.680918>,  <35.115894, 44.100174, 22.958139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479797, 44.698215, 22.680918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.662838, 44.381874, 22.518366>,  <35.772663, 44.192070, 22.420835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.662838, 44.381874, 22.518366>,  <35.479797, 44.698215, 22.680918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662838, 44.381874, 22.518366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003375, 0.458583, -0.888645,
		0.889149, 0.405277, 0.212519,
		0.457605, -0.790855, -0.406380,
		35.800121, 44.144619, 22.396452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973137, 45.025875, 22.183750>,  <35.479797, 44.698215, 22.680918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973137, 45.025875, 22.183750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.962181, 44.639896, 22.079350>,  <35.955608, 44.408310, 22.016708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.962181, 44.639896, 22.079350>,  <35.973137, 45.025875, 22.183750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962181, 44.639896, 22.079350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036438, 0.259963, -0.964931,
		0.998960, -0.035943, 0.028040,
		-0.027393, -0.964949, -0.261003,
		35.953964, 44.350410, 22.001049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595364, 44.950462, 21.826057>,  <35.973137, 45.025875, 22.183750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595364, 44.950462, 21.826057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.350395, 44.653343, 21.717846>,  <36.203415, 44.475071, 21.652920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.350395, 44.653343, 21.717846>,  <36.595364, 44.950462, 21.826057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350395, 44.653343, 21.717846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025847, 0.360842, -0.932269,
		0.790108, -0.563951, -0.240187,
		-0.612423, -0.742801, -0.270528,
		36.166668, 44.430504, 21.636688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745163, 44.912209, 21.160170>,  <36.595364, 44.950462, 21.826057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745163, 44.912209, 21.160170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.401146, 44.710361, 21.190338>,  <36.194736, 44.589252, 21.208439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.401146, 44.710361, 21.190338>,  <36.745163, 44.912209, 21.160170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401146, 44.710361, 21.190338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221054, 0.235296, -0.946452,
		0.459848, -0.830662, -0.313911,
		-0.860044, -0.504615, 0.075421,
		36.143131, 44.558975, 21.212965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844612, 44.258270, 20.689507>,  <36.745163, 44.912209, 21.160170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844612, 44.258270, 20.689507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463551, 44.368896, 20.740051>,  <36.234913, 44.435272, 20.770378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463551, 44.368896, 20.740051>,  <36.844612, 44.258270, 20.689507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463551, 44.368896, 20.740051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056669, 0.569783, -0.819839,
		-0.298739, -0.773860, -0.558477,
		-0.952651, 0.276566, 0.126363,
		36.177753, 44.451866, 20.777960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610756, 44.111324, 19.988630>,  <36.844612, 44.258270, 20.689507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610756, 44.111324, 19.988630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.302788, 44.311436, 20.147091>,  <36.118008, 44.431503, 20.242168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.302788, 44.311436, 20.147091>,  <36.610756, 44.111324, 19.988630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302788, 44.311436, 20.147091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295426, 0.270827, -0.916175,
		-0.565635, -0.822417, -0.060719,
		-0.769922, 0.500282, 0.396153,
		36.071812, 44.461521, 20.265936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025223, 43.912155, 19.643467>,  <36.610756, 44.111324, 19.988630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025223, 43.912155, 19.643467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.919407, 44.257355, 19.815626>,  <35.855915, 44.464474, 19.918922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.919407, 44.257355, 19.815626>,  <36.025223, 43.912155, 19.643467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919407, 44.257355, 19.815626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281452, 0.357778, -0.890382,
		-0.922389, -0.356681, 0.148247,
		-0.264542, 0.863003, 0.430399,
		35.840046, 44.516254, 19.944746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990036, 43.194389, 19.565432>,  <36.025223, 43.912155, 19.643467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990036, 43.194389, 19.565432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.812763, 42.867523, 19.418011>,  <35.706398, 42.671406, 19.329557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.812763, 42.867523, 19.418011>,  <35.990036, 43.194389, 19.565432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812763, 42.867523, 19.418011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052784, -0.386633, 0.920722,
		-0.894875, 0.427503, 0.128217,
		-0.443184, -0.817163, -0.368554,
		35.679810, 42.622375, 19.307446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306404, 43.015121, 20.008350>,  <35.990036, 43.194389, 19.565432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306404, 43.015121, 20.008350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.453484, 42.689896, 19.827808>,  <35.541733, 42.494759, 19.719482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.453484, 42.689896, 19.827808>,  <35.306404, 43.015121, 20.008350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453484, 42.689896, 19.827808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063578, -0.506202, 0.860068,
		-0.927768, -0.287551, -0.237824,
		0.367701, -0.813065, -0.451356,
		35.563793, 42.445976, 19.692402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896530, 42.514652, 20.203306>,  <35.306404, 43.015121, 20.008350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896530, 42.514652, 20.203306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231331, 42.320549, 20.102150>,  <35.432213, 42.204086, 20.041456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231331, 42.320549, 20.102150>,  <34.896530, 42.514652, 20.203306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231331, 42.320549, 20.102150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111223, -0.603373, 0.789665,
		-0.535777, -0.632824, -0.558997,
		0.837002, -0.485257, -0.252888,
		35.482430, 42.174973, 20.026283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747345, 41.815979, 20.055006>,  <34.896530, 42.514652, 20.203306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747345, 41.815979, 20.055006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138622, 41.826721, 20.137394>,  <35.373386, 41.833164, 20.186827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138622, 41.826721, 20.137394>,  <34.747345, 41.815979, 20.055006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138622, 41.826721, 20.137394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158919, -0.541768, 0.825368,
		0.133753, -0.840099, -0.525684,
		0.978189, 0.026854, 0.205971,
		35.432079, 41.834778, 20.199184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882603, 41.132439, 20.356161>,  <34.747345, 41.815979, 20.055006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882603, 41.132439, 20.356161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.173512, 41.380783, 20.473192>,  <35.348057, 41.529789, 20.543411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.173512, 41.380783, 20.473192>,  <34.882603, 41.132439, 20.356161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173512, 41.380783, 20.473192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050733, -0.376491, 0.925030,
		0.684467, -0.687596, -0.242315,
		0.727277, 0.620859, 0.292579,
		35.391693, 41.567039, 20.560966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199249, 40.701401, 20.695139>,  <34.882603, 41.132439, 20.356161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199249, 40.701401, 20.695139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372162, 41.034004, 20.834700>,  <35.475910, 41.233566, 20.918436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372162, 41.034004, 20.834700>,  <35.199249, 40.701401, 20.695139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372162, 41.034004, 20.834700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085173, -0.347540, 0.933789,
		0.897707, -0.433378, -0.079413,
		0.432283, 0.831505, 0.348901,
		35.501846, 41.283455, 20.939369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687248, 40.499538, 21.093067>,  <35.199249, 40.701401, 20.695139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687248, 40.499538, 21.093067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.635342, 40.879044, 21.208305>,  <35.604198, 41.106747, 21.277449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.635342, 40.879044, 21.208305>,  <35.687248, 40.499538, 21.093067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635342, 40.879044, 21.208305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040692, -0.285214, 0.957600,
		0.990709, 0.135991, -0.001595,
		-0.129770, 0.948767, 0.288097,
		35.596409, 41.163673, 21.294735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224674, 40.630699, 21.579096>,  <35.687248, 40.499538, 21.093067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224674, 40.630699, 21.579096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.914814, 40.875450, 21.642998>,  <35.728897, 41.022301, 21.681339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.914814, 40.875450, 21.642998>,  <36.224674, 40.630699, 21.579096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914814, 40.875450, 21.642998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055130, -0.186316, 0.980942,
		0.629984, 0.768693, 0.110597,
		-0.774649, 0.611880, 0.159754,
		35.682419, 41.059013, 21.690924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036743, 40.544525, 21.904835>,  <36.224674, 40.630699, 21.579096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036743, 40.544525, 21.904835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143322, 40.192249, 21.748173>,  <37.207268, 39.980885, 21.654175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143322, 40.192249, 21.748173>,  <37.036743, 40.544525, 21.904835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143322, 40.192249, 21.748173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238842, 0.454002, -0.858392,
		0.933788, 0.135173, 0.331313,
		0.266449, -0.880687, -0.391656,
		37.223255, 39.928043, 21.630676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645046, 40.703259, 21.509493>,  <37.036743, 40.544525, 21.904835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645046, 40.703259, 21.509493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544178, 40.346790, 21.358637>,  <37.483658, 40.132912, 21.268124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544178, 40.346790, 21.358637>,  <37.645046, 40.703259, 21.509493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544178, 40.346790, 21.358637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183426, 0.338648, -0.922861,
		0.950140, -0.301894, 0.078067,
		-0.252169, -0.891167, -0.377138,
		37.468529, 40.079441, 21.245495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215961, 40.521618, 21.005619>,  <37.645046, 40.703259, 21.509493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215961, 40.521618, 21.005619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897934, 40.296021, 20.916376>,  <37.707119, 40.160660, 20.862831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897934, 40.296021, 20.916376>,  <38.215961, 40.521618, 21.005619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897934, 40.296021, 20.916376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225999, 0.065874, -0.971897,
		0.562843, -0.823146, 0.075088,
		-0.795067, -0.563996, -0.223107,
		37.659412, 40.126823, 20.849443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459114, 39.970024, 20.601103>,  <38.215961, 40.521618, 21.005619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459114, 39.970024, 20.601103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.067791, 39.984226, 20.519470>,  <37.832996, 39.992748, 20.470490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.067791, 39.984226, 20.519470>,  <38.459114, 39.970024, 20.601103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067791, 39.984226, 20.519470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193810, -0.190936, -0.962279,
		-0.073131, -0.980960, 0.179913,
		-0.978309, 0.035503, -0.204083,
		37.774300, 39.994877, 20.458244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295170, 39.490963, 20.119139>,  <38.459114, 39.970024, 20.601103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295170, 39.490963, 20.119139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973179, 39.724548, 20.077196>,  <37.779984, 39.864700, 20.052031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973179, 39.724548, 20.077196>,  <38.295170, 39.490963, 20.119139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973179, 39.724548, 20.077196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104989, -0.033738, -0.993901,
		-0.583939, -0.811079, -0.034151,
		-0.804980, 0.583963, -0.104856,
		37.731686, 39.899738, 20.045740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995537, 39.157654, 19.585585>,  <38.295170, 39.490963, 20.119139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995537, 39.157654, 19.585585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.834259, 39.523502, 19.597620>,  <37.737492, 39.743011, 19.604841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.834259, 39.523502, 19.597620>,  <37.995537, 39.157654, 19.585585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834259, 39.523502, 19.597620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012855, 0.038536, -0.999175,
		-0.915023, -0.402478, -0.027295,
		-0.403198, 0.914618, 0.030088,
		37.713299, 39.797886, 19.606646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505096, 39.139000, 19.000999>,  <37.995537, 39.157654, 19.585585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505096, 39.139000, 19.000999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573692, 39.522694, 19.090857>,  <37.614849, 39.752911, 19.144772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573692, 39.522694, 19.090857>,  <37.505096, 39.139000, 19.000999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573692, 39.522694, 19.090857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236435, 0.181285, -0.954586,
		-0.956394, 0.216814, -0.195708,
		0.171489, 0.959233, 0.224642,
		37.625137, 39.810463, 19.158249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081127, 39.610855, 18.547813>,  <37.505096, 39.139000, 19.000999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081127, 39.610855, 18.547813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.414146, 39.787861, 18.681110>,  <37.613956, 39.894062, 18.761087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.414146, 39.787861, 18.681110>,  <37.081127, 39.610855, 18.547813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414146, 39.787861, 18.681110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324767, 0.097437, -0.940762,
		-0.448766, 0.891455, -0.062592,
		0.832547, 0.442510, 0.333242,
		37.663910, 39.920612, 18.781082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144535, 40.207474, 18.131449>,  <37.081127, 39.610855, 18.547813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144535, 40.207474, 18.131449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.514126, 40.123917, 18.259594>,  <37.735882, 40.073784, 18.336481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.514126, 40.123917, 18.259594>,  <37.144535, 40.207474, 18.131449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514126, 40.123917, 18.259594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329869, 0.011401, -0.943958,
		0.193529, 0.977873, 0.079440,
		0.923977, -0.208888, 0.320363,
		37.791317, 40.061249, 18.355703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.628567, 35.850506, 33.840000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969143, 36.005150, 33.698254>,  <37.173489, 36.097935, 33.613205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969143, 36.005150, 33.698254>,  <36.628567, 35.850506, 33.840000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969143, 36.005150, 33.698254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467710, 0.254083, -0.846575,
		-0.237257, 0.886551, 0.397160,
		0.851444, 0.386611, -0.354366,
		37.224575, 36.121132, 33.591942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480240, 36.472652, 33.552841>,  <36.628567, 35.850506, 33.840000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480240, 36.472652, 33.552841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833626, 36.390766, 33.384274>,  <37.045658, 36.341637, 33.283134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833626, 36.390766, 33.384274>,  <36.480240, 36.472652, 33.552841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833626, 36.390766, 33.384274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346319, 0.320442, -0.881692,
		0.315533, 0.924884, 0.212202,
		0.883460, -0.204713, -0.421415,
		37.098663, 36.329353, 33.257851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671772, 37.092667, 33.078129>,  <36.480240, 36.472652, 33.552841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671772, 37.092667, 33.078129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854168, 36.755230, 32.964684>,  <36.963604, 36.552769, 32.896618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854168, 36.755230, 32.964684>,  <36.671772, 37.092667, 33.078129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854168, 36.755230, 32.964684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395033, 0.093716, -0.913875,
		0.797513, 0.528750, -0.290511,
		0.455986, -0.843588, -0.283614,
		36.990963, 36.502155, 32.879601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944565, 37.353436, 32.593975>,  <36.671772, 37.092667, 33.078129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944565, 37.353436, 32.593975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956287, 36.957958, 32.535145>,  <36.963322, 36.720673, 32.499847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956287, 36.957958, 32.535145>,  <36.944565, 37.353436, 32.593975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956287, 36.957958, 32.535145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330438, 0.129288, -0.934931,
		0.943373, 0.076001, -0.322911,
		0.029307, -0.988690, -0.147080,
		36.965080, 36.661350, 32.491020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097160, 37.264786, 31.836393>,  <36.944565, 37.353436, 32.593975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097160, 37.264786, 31.836393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952385, 36.901722, 31.921385>,  <36.865520, 36.683884, 31.972380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952385, 36.901722, 31.921385>,  <37.097160, 37.264786, 31.836393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952385, 36.901722, 31.921385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459048, -0.024841, -0.888064,
		0.811342, -0.418962, -0.407671,
		-0.361938, -0.907664, 0.212478,
		36.843803, 36.629421, 31.985128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233452, 36.793266, 31.273104>,  <37.097160, 37.264786, 31.836393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233452, 36.793266, 31.273104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916523, 36.648834, 31.469816>,  <36.726364, 36.562176, 31.587843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916523, 36.648834, 31.469816>,  <37.233452, 36.793266, 31.273104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916523, 36.648834, 31.469816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454168, -0.189149, -0.870605,
		0.407376, -0.913151, -0.014123,
		-0.792323, -0.361078, 0.491779,
		36.678825, 36.540512, 31.617350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129620, 36.112423, 31.020283>,  <37.233452, 36.793266, 31.273104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129620, 36.112423, 31.020283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797478, 36.272118, 31.175783>,  <36.598194, 36.367935, 31.269083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797478, 36.272118, 31.175783>,  <37.129620, 36.112423, 31.020283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797478, 36.272118, 31.175783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504772, -0.243360, -0.828240,
		-0.236080, -0.883949, 0.403609,
		-0.830344, 0.399261, 0.388740,
		36.548370, 36.391888, 31.292408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652206, 35.702892, 30.753113>,  <37.129620, 36.112423, 31.020283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652206, 35.702892, 30.753113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432354, 36.003162, 30.899748>,  <36.300442, 36.183327, 30.987728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432354, 36.003162, 30.899748>,  <36.652206, 35.702892, 30.753113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432354, 36.003162, 30.899748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542526, 0.012948, -0.839939,
		-0.635272, -0.660539, 0.400147,
		-0.549631, 0.750680, 0.366585,
		36.267464, 36.228367, 31.009724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958172, 35.576401, 30.400932>,  <36.652206, 35.702892, 30.753113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958172, 35.576401, 30.400932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948795, 35.961365, 30.509163>,  <35.943169, 36.192345, 30.574100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948795, 35.961365, 30.509163>,  <35.958172, 35.576401, 30.400932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948795, 35.961365, 30.509163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200480, 0.260626, -0.944395,
		-0.979417, -0.076385, 0.186834,
		-0.023444, 0.962413, 0.270575,
		35.941761, 36.250088, 30.590336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341724, 35.793377, 30.103628>,  <35.958172, 35.576401, 30.400932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341724, 35.793377, 30.103628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561451, 36.118870, 30.179611>,  <35.693287, 36.314167, 30.225201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561451, 36.118870, 30.179611>,  <35.341724, 35.793377, 30.103628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561451, 36.118870, 30.179611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223733, 0.362257, -0.904828,
		-0.805103, 0.454541, 0.381054,
		0.549320, 0.813734, 0.189958,
		35.726246, 36.362991, 30.236599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942844, 36.367409, 29.818464>,  <35.341724, 35.793377, 30.103628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942844, 36.367409, 29.818464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318268, 36.501720, 29.850346>,  <35.543522, 36.582306, 29.869474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318268, 36.501720, 29.850346>,  <34.942844, 36.367409, 29.818464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318268, 36.501720, 29.850346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014485, 0.269073, -0.963011,
		-0.344804, 0.902692, 0.257406,
		0.938563, 0.335779, 0.079702,
		35.599838, 36.602455, 29.874256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947685, 36.972546, 29.472637>,  <34.942844, 36.367409, 29.818464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947685, 36.972546, 29.472637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332333, 36.862793, 29.472141>,  <35.563122, 36.796944, 29.471844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332333, 36.862793, 29.472141>,  <34.947685, 36.972546, 29.472637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332333, 36.862793, 29.472141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070532, 0.251560, -0.965268,
		0.265162, 0.928134, 0.261258,
		0.961621, -0.274380, -0.001241,
		35.620819, 36.780479, 29.471769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838463, 37.796272, 29.597395>,  <34.947685, 36.972546, 29.472637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838463, 37.796272, 29.597395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454914, 37.909657, 29.603201>,  <34.224785, 37.977688, 29.606686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454914, 37.909657, 29.603201>,  <34.838463, 37.796272, 29.597395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454914, 37.909657, 29.603201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034570, -0.167396, 0.985283,
		0.281722, 0.944260, 0.170311,
		-0.958873, 0.283464, 0.014516,
		34.167252, 37.994698, 29.607555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729961, 38.392132, 30.064552>,  <34.838463, 37.796272, 29.597395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729961, 38.392132, 30.064552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349571, 38.271530, 30.036999>,  <34.121338, 38.199169, 30.020468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349571, 38.271530, 30.036999>,  <34.729961, 38.392132, 30.064552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349571, 38.271530, 30.036999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059597, -0.039898, 0.997425,
		-0.303475, 0.952630, 0.019974,
		-0.950974, -0.301504, -0.068882,
		34.064278, 38.181080, 30.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404533, 38.740387, 30.579069>,  <34.729961, 38.392132, 30.064552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404533, 38.740387, 30.579069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169952, 38.421722, 30.520550>,  <34.029205, 38.230522, 30.485437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169952, 38.421722, 30.520550>,  <34.404533, 38.740387, 30.579069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169952, 38.421722, 30.520550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143650, -0.075459, 0.986748,
		-0.797143, 0.599697, -0.070187,
		-0.586453, -0.796662, -0.146298,
		33.994015, 38.182724, 30.476660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731556, 38.882923, 30.955669>,  <34.404533, 38.740387, 30.579069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731556, 38.882923, 30.955669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697968, 38.487186, 30.908083>,  <33.677814, 38.249744, 30.879532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697968, 38.487186, 30.908083>,  <33.731556, 38.882923, 30.955669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697968, 38.487186, 30.908083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376538, -0.079033, 0.923024,
		-0.922588, 0.122299, -0.365889,
		-0.083968, -0.989342, -0.118965,
		33.672779, 38.190384, 30.872393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179810, 38.731178, 31.354010>,  <33.731556, 38.882923, 30.955669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179810, 38.731178, 31.354010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354721, 38.378113, 31.285091>,  <33.459667, 38.166271, 31.243740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354721, 38.378113, 31.285091>,  <33.179810, 38.731178, 31.354010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354721, 38.378113, 31.285091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324453, -0.333516, 0.885154,
		-0.838758, -0.331160, -0.432224,
		0.437281, -0.882666, -0.172294,
		33.485905, 38.113312, 31.233404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661503, 38.323105, 31.644312>,  <33.179810, 38.731178, 31.354010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661503, 38.323105, 31.644312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997021, 38.105915, 31.628317>,  <33.198334, 37.975601, 31.618719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997021, 38.105915, 31.628317>,  <32.661503, 38.323105, 31.644312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997021, 38.105915, 31.628317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211575, -0.392762, 0.894971,
		-0.501651, -0.742240, -0.444327,
		0.838798, -0.542972, -0.039990,
		33.248661, 37.943024, 31.616320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520313, 37.571095, 31.897568>,  <32.661503, 38.323105, 31.644312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520313, 37.571095, 31.897568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914291, 37.612934, 31.952612>,  <33.150681, 37.638039, 31.985638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914291, 37.612934, 31.952612>,  <32.520313, 37.571095, 31.897568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914291, 37.612934, 31.952612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076448, -0.450411, 0.889542,
		0.155028, -0.886673, -0.435635,
		0.984948, 0.104601, 0.137611,
		33.209774, 37.644314, 31.993895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734268, 36.954582, 32.237701>,  <32.520313, 37.571095, 31.897568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734268, 36.954582, 32.237701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032421, 37.205109, 32.329029>,  <33.211311, 37.355427, 32.383823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032421, 37.205109, 32.329029>,  <32.734268, 36.954582, 32.237701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032421, 37.205109, 32.329029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069341, -0.267788, 0.960979,
		0.663020, -0.732130, -0.156175,
		0.745383, 0.626319, 0.228316,
		33.256035, 37.393005, 32.397522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162926, 36.618656, 32.694984>,  <32.734268, 36.954582, 32.237701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162926, 36.618656, 32.694984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265785, 36.998829, 32.764896>,  <33.327499, 37.226933, 32.806843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265785, 36.998829, 32.764896>,  <33.162926, 36.618656, 32.694984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265785, 36.998829, 32.764896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037106, -0.171018, 0.984569,
		0.965659, -0.259667, -0.008710,
		0.257149, 0.950435, 0.174780,
		33.342930, 37.283958, 32.817329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624252, 36.596138, 33.252495>,  <33.162926, 36.618656, 32.694984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624252, 36.596138, 33.252495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467331, 36.964054, 33.256039>,  <33.373177, 37.184803, 33.258163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467331, 36.964054, 33.256039>,  <33.624252, 36.596138, 33.252495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467331, 36.964054, 33.256039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111823, -0.057251, 0.992078,
		0.913012, 0.388208, 0.125313,
		-0.392307, 0.919792, 0.008860,
		33.349640, 37.239990, 33.258698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012848, 36.974628, 33.666233>,  <33.624252, 36.596138, 33.252495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012848, 36.974628, 33.666233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659180, 37.161495, 33.666588>,  <33.446980, 37.273613, 33.666801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659180, 37.161495, 33.666588>,  <34.012848, 36.974628, 33.666233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659180, 37.161495, 33.666588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064069, 0.119377, 0.990780,
		0.462752, 0.876074, -0.135480,
		-0.884170, 0.467165, 0.000888,
		33.393929, 37.301643, 33.666855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216587, 37.654896, 34.025410>,  <34.012848, 36.974628, 33.666233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216587, 37.654896, 34.025410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816849, 37.640507, 34.026752>,  <33.577007, 37.631874, 34.027557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816849, 37.640507, 34.026752>,  <34.216587, 37.654896, 34.025410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816849, 37.640507, 34.026752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007206, 0.289474, 0.957159,
		-0.035404, 0.956510, -0.289545,
		-0.999347, -0.035974, 0.003356,
		33.517044, 37.629715, 34.027760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969833, 38.279770, 34.249352>,  <34.216587, 37.654896, 34.025410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969833, 38.279770, 34.249352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657040, 38.037529, 34.308346>,  <33.469364, 37.892185, 34.343742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657040, 38.037529, 34.308346>,  <33.969833, 38.279770, 34.249352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657040, 38.037529, 34.308346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029772, 0.272638, 0.961656,
		-0.622586, 0.747609, -0.231229,
		-0.781984, -0.605598, 0.147483,
		33.422443, 37.855850, 34.352592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496708, 38.647190, 34.770920>,  <33.969833, 38.279770, 34.249352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496708, 38.647190, 34.770920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412319, 38.256256, 34.777882>,  <33.361687, 38.021694, 34.782059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412319, 38.256256, 34.777882>,  <33.496708, 38.647190, 34.770920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412319, 38.256256, 34.777882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223534, 0.065570, 0.972488,
		-0.951589, 0.201280, -0.232302,
		-0.210975, -0.977337, 0.017402,
		33.349026, 37.963055, 34.783104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912880, 39.199226, 34.765781>,  <33.496708, 38.647190, 34.770920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912880, 39.199226, 34.765781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904858, 39.564877, 34.927753>,  <33.900043, 39.784267, 35.024937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904858, 39.564877, 34.927753>,  <33.912880, 39.199226, 34.765781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904858, 39.564877, 34.927753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296370, 0.392246, -0.870809,
		-0.954863, 0.102542, -0.278787,
		-0.020059, 0.914127, 0.404931,
		33.898842, 39.839115, 35.049232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332397, 39.626488, 34.469151>,  <33.912880, 39.199226, 34.765781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332397, 39.626488, 34.469151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671360, 39.819134, 34.558544>,  <33.874737, 39.934723, 34.612179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671360, 39.819134, 34.558544>,  <33.332397, 39.626488, 34.469151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671360, 39.819134, 34.558544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112608, 0.248313, -0.962112,
		-0.518861, 0.840469, 0.156189,
		0.847409, 0.481615, 0.223484,
		33.925583, 39.963619, 34.625587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444138, 40.230980, 34.169132>,  <33.332397, 39.626488, 34.469151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444138, 40.230980, 34.169132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822014, 40.134899, 34.258446>,  <34.048740, 40.077251, 34.312035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822014, 40.134899, 34.258446>,  <33.444138, 40.230980, 34.169132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822014, 40.134899, 34.258446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304668, 0.390837, -0.868576,
		0.121368, 0.888565, 0.442404,
		0.944694, -0.240204, 0.223282,
		34.105423, 40.062840, 34.325432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944771, 40.853291, 34.055500>,  <33.444138, 40.230980, 34.169132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944771, 40.853291, 34.055500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130116, 40.501476, 34.012215>,  <34.241322, 40.290386, 33.986244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130116, 40.501476, 34.012215>,  <33.944771, 40.853291, 34.055500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130116, 40.501476, 34.012215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194301, 0.219977, -0.955958,
		0.864604, 0.421932, 0.272825,
		0.463365, -0.879536, -0.108211,
		34.269127, 40.237614, 33.979752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507385, 41.048077, 33.691517>,  <33.944771, 40.853291, 34.055500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507385, 41.048077, 33.691517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551460, 40.655937, 33.626064>,  <34.577904, 40.420654, 33.586792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551460, 40.655937, 33.626064>,  <34.507385, 41.048077, 33.691517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551460, 40.655937, 33.626064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334701, 0.191615, -0.922637,
		0.935860, 0.046896, 0.349238,
		0.110187, -0.980349, -0.163629,
		34.584515, 40.361832, 33.576977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112190, 41.024734, 33.406258>,  <34.507385, 41.048077, 33.691517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112190, 41.024734, 33.406258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937378, 40.683861, 33.291172>,  <34.832489, 40.479336, 33.222122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937378, 40.683861, 33.291172>,  <35.112190, 41.024734, 33.406258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937378, 40.683861, 33.291172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414323, 0.093183, -0.905347,
		0.798335, -0.514874, 0.312356,
		-0.437033, -0.852186, -0.287715,
		34.806267, 40.428204, 33.204857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527958, 40.628002, 33.016781>,  <35.112190, 41.024734, 33.406258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527958, 40.628002, 33.016781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162708, 40.514111, 32.900066>,  <34.943558, 40.445778, 32.830040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162708, 40.514111, 32.900066>,  <35.527958, 40.628002, 33.016781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162708, 40.514111, 32.900066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262977, 0.135532, -0.955235,
		0.311527, -0.948979, -0.048881,
		-0.913123, -0.284727, -0.291782,
		34.888771, 40.428692, 32.812531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655674, 40.471004, 32.326534>,  <35.527958, 40.628002, 33.016781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655674, 40.471004, 32.326534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258896, 40.474014, 32.377110>,  <35.020828, 40.475819, 32.407455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258896, 40.474014, 32.377110>,  <35.655674, 40.471004, 32.326534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258896, 40.474014, 32.377110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117897, 0.310082, -0.943371,
		-0.046307, -0.950680, -0.306697,
		-0.991945, 0.007526, 0.126441,
		34.961311, 40.476273, 32.415043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300663, 39.911854, 31.943071>,  <35.655674, 40.471004, 32.326534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300663, 39.911854, 31.943071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079933, 40.242138, 31.989876>,  <34.947495, 40.440308, 32.017960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079933, 40.242138, 31.989876>,  <35.300663, 39.911854, 31.943071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079933, 40.242138, 31.989876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013564, 0.149177, -0.988717,
		-0.833852, -0.544008, -0.093519,
		-0.551821, 0.825713, 0.117013,
		34.914387, 40.489853, 32.024979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808659, 39.995872, 31.309160>,  <35.300663, 39.911854, 31.943071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808659, 39.995872, 31.309160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798798, 40.355797, 31.483395>,  <34.792881, 40.571751, 31.587936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798798, 40.355797, 31.483395>,  <34.808659, 39.995872, 31.309160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798798, 40.355797, 31.483395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055444, 0.433819, -0.899292,
		-0.998157, -0.046318, 0.039196,
		-0.024649, 0.899808, 0.435588,
		34.791401, 40.625740, 31.614071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354870, 40.344685, 30.844057>,  <34.808659, 39.995872, 31.309160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354870, 40.344685, 30.844057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539284, 40.638851, 31.042698>,  <34.649933, 40.815350, 31.161882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539284, 40.638851, 31.042698>,  <34.354870, 40.344685, 30.844057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539284, 40.638851, 31.042698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088713, 0.595020, -0.798800,
		-0.882936, 0.324221, 0.339566,
		0.461036, 0.735413, 0.496602,
		34.677593, 40.859474, 31.191679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961533, 40.982323, 30.704082>,  <34.354870, 40.344685, 30.844057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961533, 40.982323, 30.704082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336086, 41.086346, 30.798357>,  <34.560818, 41.148762, 30.854921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336086, 41.086346, 30.798357>,  <33.961533, 40.982323, 30.704082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336086, 41.086346, 30.798357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079106, 0.497863, -0.863640,
		-0.341939, 0.827345, 0.445620,
		0.936387, 0.260061, 0.235687,
		34.617001, 41.164364, 30.869062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010532, 41.589462, 30.529106>,  <33.961533, 40.982323, 30.704082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010532, 41.589462, 30.529106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399284, 41.498581, 30.553829>,  <34.632538, 41.444054, 30.568663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399284, 41.498581, 30.553829>,  <34.010532, 41.589462, 30.529106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399284, 41.498581, 30.553829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159455, 0.441945, -0.882756,
		0.173251, 0.867792, 0.465748,
		0.971884, -0.227205, 0.061807,
		34.690849, 41.430420, 30.572371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304661, 42.244190, 30.366848>,  <34.010532, 41.589462, 30.529106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304661, 42.244190, 30.366848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577827, 41.962158, 30.290447>,  <34.741726, 41.792938, 30.244606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577827, 41.962158, 30.290447>,  <34.304661, 42.244190, 30.366848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577827, 41.962158, 30.290447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238571, 0.462404, -0.853971,
		0.690441, 0.537624, 0.483995,
		0.682917, -0.705084, -0.191001,
		34.782703, 41.750633, 30.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701302, 42.636574, 29.989250>,  <34.304661, 42.244190, 30.366848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701302, 42.636574, 29.989250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788681, 42.251163, 29.927404>,  <34.841110, 42.019917, 29.890297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788681, 42.251163, 29.927404>,  <34.701302, 42.636574, 29.989250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788681, 42.251163, 29.927404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319178, 0.220275, -0.921740,
		0.922174, 0.152003, 0.355654,
		0.218449, -0.963522, -0.154616,
		34.854218, 41.962109, 29.881020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503506, 42.648956, 29.892731>,  <34.701302, 42.636574, 29.989250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503506, 42.648956, 29.892731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331799, 42.337208, 29.710167>,  <35.228775, 42.150158, 29.600630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331799, 42.337208, 29.710167>,  <35.503506, 42.648956, 29.892731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331799, 42.337208, 29.710167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455032, 0.249890, -0.854693,
		0.780175, -0.574574, 0.247369,
		-0.429270, -0.779371, -0.456408,
		35.203018, 42.103397, 29.573244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064289, 42.368042, 29.514206>,  <35.503506, 42.648956, 29.892731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064289, 42.368042, 29.514206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735683, 42.204952, 29.354767>,  <35.538521, 42.107098, 29.259104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735683, 42.204952, 29.354767>,  <36.064289, 42.368042, 29.514206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735683, 42.204952, 29.354767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460625, -0.062522, -0.885390,
		0.336075, -0.910962, 0.239171,
		-0.821510, -0.407726, -0.398599,
		35.489231, 42.082634, 29.235188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275681, 41.740883, 29.086290>,  <36.064289, 42.368042, 29.514206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275681, 41.740883, 29.086290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914574, 41.830189, 28.939232>,  <35.697910, 41.883774, 28.850998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914574, 41.830189, 28.939232>,  <36.275681, 41.740883, 29.086290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914574, 41.830189, 28.939232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371874, -0.024381, -0.927963,
		-0.216144, -0.974453, -0.061016,
		-0.902768, 0.223264, -0.367644,
		35.643742, 41.897167, 28.828939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003235, 41.293056, 28.474083>,  <36.275681, 41.740883, 29.086290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003235, 41.293056, 28.474083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805019, 41.640461, 28.469599>,  <35.686089, 41.848904, 28.466908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805019, 41.640461, 28.469599>,  <36.003235, 41.293056, 28.474083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805019, 41.640461, 28.469599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221615, 0.113942, -0.968455,
		-0.839839, -0.482390, -0.248938,
		-0.495537, 0.868515, -0.011212,
		35.656357, 41.901016, 28.466234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750782, 41.159412, 27.849264>,  <36.003235, 41.293056, 28.474083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750782, 41.159412, 27.849264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703712, 41.551727, 27.911503>,  <35.675468, 41.787117, 27.948847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703712, 41.551727, 27.911503>,  <35.750782, 41.159412, 27.849264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703712, 41.551727, 27.911503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174099, 0.174635, -0.969119,
		-0.977672, -0.086954, -0.191305,
		-0.117678, 0.980786, 0.155597,
		35.668407, 41.845963, 27.958181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373459, 41.265766, 27.293503>,  <35.750782, 41.159412, 27.849264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373459, 41.265766, 27.293503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529186, 41.614635, 27.411983>,  <35.622623, 41.823959, 27.483072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529186, 41.614635, 27.411983>,  <35.373459, 41.265766, 27.293503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529186, 41.614635, 27.411983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015219, 0.327620, -0.944687,
		-0.920976, 0.363279, 0.140823,
		0.389322, 0.872177, 0.296201,
		35.645985, 41.876289, 27.500843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021660, 41.700645, 26.844053>,  <35.373459, 41.265766, 27.293503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021660, 41.700645, 26.844053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354183, 41.878254, 26.977783>,  <35.553696, 41.984821, 27.058022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354183, 41.878254, 26.977783>,  <35.021660, 41.700645, 26.844053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354183, 41.878254, 26.977783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177099, 0.358551, -0.916557,
		-0.526848, 0.821147, 0.219428,
		0.831304, 0.444026, 0.334327,
		35.603573, 42.011463, 27.078081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958942, 42.358768, 26.572321>,  <35.021660, 41.700645, 26.844053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958942, 42.358768, 26.572321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349621, 42.320923, 26.649385>,  <35.584026, 42.298214, 26.695623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349621, 42.320923, 26.649385>,  <34.958942, 42.358768, 26.572321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349621, 42.320923, 26.649385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211943, 0.566994, -0.795989,
		-0.033922, 0.818270, 0.573832,
		0.976693, -0.094618, 0.192660,
		35.642628, 42.292538, 26.707184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250843, 42.982864, 26.358078>,  <34.958942, 42.358768, 26.572321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250843, 42.982864, 26.358078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564659, 42.736538, 26.387108>,  <35.752949, 42.588741, 26.404526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564659, 42.736538, 26.387108>,  <35.250843, 42.982864, 26.358078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564659, 42.736538, 26.387108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448856, 0.483252, -0.751662,
		0.427813, 0.622285, 0.655543,
		0.784541, -0.615815, 0.072575,
		35.800022, 42.551792, 26.408880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893112, 43.433151, 26.368755>,  <35.250843, 42.982864, 26.358078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893112, 43.433151, 26.368755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021622, 43.067551, 26.269651>,  <36.098728, 42.848190, 26.210190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021622, 43.067551, 26.269651>,  <35.893112, 43.433151, 26.368755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021622, 43.067551, 26.269651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558657, 0.394180, -0.729742,
		0.764647, 0.096033, 0.637253,
		0.321272, -0.914002, -0.247759,
		36.118004, 42.793350, 26.195324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566696, 43.501972, 26.151049>,  <35.893112, 43.433151, 26.368755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566696, 43.501972, 26.151049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447891, 43.153820, 25.993965>,  <36.376606, 42.944927, 25.899715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447891, 43.153820, 25.993965>,  <36.566696, 43.501972, 26.151049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447891, 43.153820, 25.993965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463865, 0.227961, -0.856075,
		0.834632, -0.436431, 0.336031,
		-0.297016, -0.870380, -0.392708,
		36.358788, 42.892708, 25.876152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142109, 43.374466, 25.644806>,  <36.566696, 43.501972, 26.151049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142109, 43.374466, 25.644806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821629, 43.161736, 25.535086>,  <36.629341, 43.034096, 25.469254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821629, 43.161736, 25.535086>,  <37.142109, 43.374466, 25.644806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821629, 43.161736, 25.535086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254470, 0.112067, -0.960566,
		0.541593, -0.839406, 0.045545,
		-0.801201, -0.531825, -0.274298,
		36.581268, 43.002190, 25.452797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329494, 42.955772, 25.120783>,  <37.142109, 43.374466, 25.644806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329494, 42.955772, 25.120783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931797, 42.981747, 25.086676>,  <36.693180, 42.997334, 25.066212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931797, 42.981747, 25.086676>,  <37.329494, 42.955772, 25.120783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931797, 42.981747, 25.086676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098354, 0.236678, -0.966597,
		-0.042590, -0.969415, -0.241702,
		-0.994240, 0.064940, -0.085266,
		36.633526, 43.001228, 25.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796516, 42.323223, 24.986279>,  <37.329494, 42.955772, 25.120783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796516, 42.323223, 24.986279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196236, 42.321842, 24.971333>,  <38.436066, 42.321014, 24.962364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196236, 42.321842, 24.971333>,  <37.796516, 42.323223, 24.986279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196236, 42.321842, 24.971333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037146, -0.050374, 0.998039,
		-0.005320, -0.998725, -0.050211,
		0.999296, -0.003445, -0.037366,
		38.496025, 42.320808, 24.960123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026367, 41.774757, 25.342405>,  <37.796516, 42.323223, 24.986279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026367, 41.774757, 25.342405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358864, 41.995419, 25.369873>,  <38.558361, 42.127815, 25.386353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358864, 41.995419, 25.369873>,  <38.026367, 41.774757, 25.342405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358864, 41.995419, 25.369873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107636, -0.280901, 0.953682,
		0.545387, -0.785352, -0.292875,
		0.831244, 0.551650, 0.068667,
		38.608238, 42.160912, 25.390472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587482, 41.403027, 25.677925>,  <38.026367, 41.774757, 25.342405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587482, 41.403027, 25.677925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700470, 41.783215, 25.729788>,  <38.768265, 42.011330, 25.760906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700470, 41.783215, 25.729788>,  <38.587482, 41.403027, 25.677925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700470, 41.783215, 25.729788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157979, -0.179409, 0.971007,
		0.946178, -0.253799, -0.200832,
		0.282472, 0.950473, 0.129658,
		38.785213, 42.068356, 25.768684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178738, 41.315247, 26.087187>,  <38.587482, 41.403027, 25.677925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178738, 41.315247, 26.087187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067566, 41.695583, 26.141813>,  <39.000862, 41.923786, 26.174589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067566, 41.695583, 26.141813>,  <39.178738, 41.315247, 26.087187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067566, 41.695583, 26.141813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193739, -0.083759, 0.977471,
		0.940861, 0.298128, -0.160936,
		-0.277932, 0.950844, 0.136565,
		38.984188, 41.980835, 26.182783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727161, 41.774693, 26.443798>,  <39.178738, 41.315247, 26.087187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727161, 41.774693, 26.443798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372681, 41.939491, 26.528561>,  <39.159992, 42.038372, 26.579418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372681, 41.939491, 26.528561>,  <39.727161, 41.774693, 26.443798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372681, 41.939491, 26.528561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226923, -0.012768, 0.973829,
		0.403922, 0.911095, -0.082176,
		-0.886202, 0.411999, 0.211906,
		39.106819, 42.063091, 26.592133>
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
