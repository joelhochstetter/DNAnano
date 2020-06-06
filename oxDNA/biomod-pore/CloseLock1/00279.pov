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
	<23.978569, 35.212765, 35.085938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165447, 34.863861, 35.028122>,  <24.277575, 34.654518, 34.993431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165447, 34.863861, 35.028122>,  <23.978569, 35.212765, 35.085938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.165447, 34.863861, 35.028122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548280, 0.157567, 0.821317,
		-0.693627, -0.462963, 0.551857,
		0.467194, -0.872260, -0.144540,
		24.305605, 34.602184, 34.984760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.060486, 34.697231, 35.680115>,  <23.978569, 35.212765, 35.085938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.060486, 34.697231, 35.680115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390690, 34.591927, 35.480423>,  <24.588812, 34.528744, 35.360607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390690, 34.591927, 35.480423>,  <24.060486, 34.697231, 35.680115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390690, 34.591927, 35.480423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556514, 0.232436, 0.797662,
		-0.093953, -0.936306, 0.338386,
		0.825509, -0.263259, -0.499229,
		24.638342, 34.512947, 35.330654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.385126, 34.236320, 36.101021>,  <24.060486, 34.697231, 35.680115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.385126, 34.236320, 36.101021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635466, 34.431034, 35.857265>,  <24.785669, 34.547863, 35.711010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635466, 34.431034, 35.857265>,  <24.385126, 34.236320, 36.101021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635466, 34.431034, 35.857265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380755, 0.491210, 0.783415,
		0.680691, -0.722328, 0.122078,
		0.625848, 0.486781, -0.609392,
		24.823219, 34.577068, 35.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713142, 34.185017, 36.750565>,  <24.385126, 34.236320, 36.101021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713142, 34.185017, 36.750565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984661, 34.472088, 36.812759>,  <25.147572, 34.644329, 36.850075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984661, 34.472088, 36.812759>,  <24.713142, 34.185017, 36.750565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984661, 34.472088, 36.812759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709222, 0.695616, -0.114556,
		-0.190372, -0.032513, 0.981174,
		0.678796, 0.717678, 0.155485,
		25.188299, 34.687389, 36.859406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349672, 33.832680, 36.794628>,  <24.713142, 34.185017, 36.750565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349672, 33.832680, 36.794628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684538, 34.022160, 36.685253>,  <25.885458, 34.135849, 36.619629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684538, 34.022160, 36.685253>,  <25.349672, 33.832680, 36.794628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684538, 34.022160, 36.685253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059139, -0.418594, -0.906246,
		-0.543746, 0.774847, -0.322418,
		0.837164, 0.473700, -0.273433,
		25.935686, 34.164268, 36.603222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265663, 34.321850, 36.197399>,  <25.349672, 33.832680, 36.794628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265663, 34.321850, 36.197399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616053, 34.137203, 36.253365>,  <25.826286, 34.026413, 36.286945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616053, 34.137203, 36.253365>,  <25.265663, 34.321850, 36.197399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616053, 34.137203, 36.253365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007200, -0.277525, -0.960692,
		0.482306, 0.842547, -0.239780,
		0.875973, -0.461621, 0.139918,
		25.878845, 33.998718, 36.295341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823639, 34.536777, 35.602173>,  <25.265663, 34.321850, 36.197399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823639, 34.536777, 35.602173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891331, 34.186249, 35.782581>,  <25.931946, 33.975929, 35.890827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891331, 34.186249, 35.782581>,  <25.823639, 34.536777, 35.602173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891331, 34.186249, 35.782581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195158, -0.418762, -0.886878,
		0.966061, 0.238107, 0.100154,
		0.169231, -0.876324, 0.451018,
		25.942101, 33.923351, 35.917889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516544, 34.122932, 35.277348>,  <25.823639, 34.536777, 35.602173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516544, 34.122932, 35.277348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276493, 33.848763, 35.442291>,  <26.132462, 33.684261, 35.541256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276493, 33.848763, 35.442291>,  <26.516544, 34.122932, 35.277348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276493, 33.848763, 35.442291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208337, -0.631654, -0.746732,
		0.772295, -0.362227, 0.521873,
		-0.600130, -0.685423, 0.412358,
		26.096455, 33.643135, 35.565998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772694, 33.546528, 34.966576>,  <26.516544, 34.122932, 35.277348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772694, 33.546528, 34.966576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435303, 33.401550, 35.125156>,  <26.232868, 33.314564, 35.220306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435303, 33.401550, 35.125156>,  <26.772694, 33.546528, 34.966576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435303, 33.401550, 35.125156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000160, -0.738221, -0.674558,
		0.537164, -0.568912, 0.622731,
		-0.843478, -0.362448, 0.396455,
		26.182259, 33.292816, 35.244091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899172, 32.807102, 34.987076>,  <26.772694, 33.546528, 34.966576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899172, 32.807102, 34.987076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501841, 32.852242, 34.996559>,  <26.263441, 32.879326, 35.002251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501841, 32.852242, 34.996559>,  <26.899172, 32.807102, 34.987076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501841, 32.852242, 34.996559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103494, -0.781839, -0.614831,
		-0.050843, -0.613184, 0.788302,
		-0.993330, 0.112845, 0.023710,
		26.203842, 32.886093, 35.003674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723713, 32.230087, 34.841091>,  <26.899172, 32.807102, 34.987076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723713, 32.230087, 34.841091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380405, 32.419266, 34.761391>,  <26.174421, 32.532772, 34.713570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380405, 32.419266, 34.761391>,  <26.723713, 32.230087, 34.841091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380405, 32.419266, 34.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280968, -0.757913, -0.588749,
		-0.429459, -0.449321, 0.783374,
		-0.858266, 0.472947, -0.199248,
		26.122925, 32.561150, 34.701614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172220, 31.752760, 34.985031>,  <26.723713, 32.230087, 34.841091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172220, 31.752760, 34.985031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041439, 32.030544, 34.728649>,  <25.962971, 32.197216, 34.574818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041439, 32.030544, 34.728649>,  <26.172220, 31.752760, 34.985031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041439, 32.030544, 34.728649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344346, -0.719152, -0.603529,
		-0.880072, 0.023386, 0.474263,
		-0.326953, 0.694459, -0.640958,
		25.943354, 32.238884, 34.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423231, 31.638735, 34.944511>,  <26.172220, 31.752760, 34.985031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423231, 31.638735, 34.944511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544765, 31.837557, 34.619396>,  <25.617687, 31.956850, 34.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544765, 31.837557, 34.619396>,  <25.423231, 31.638735, 34.944511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544765, 31.837557, 34.619396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472142, -0.662434, -0.581604,
		-0.827506, 0.560463, 0.033408,
		0.303837, 0.497054, -0.812786,
		25.635916, 31.986673, 34.375561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870165, 31.576279, 34.482571>,  <25.423231, 31.638735, 34.944511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870165, 31.576279, 34.482571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174841, 31.658451, 34.236767>,  <25.357647, 31.707754, 34.089283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174841, 31.658451, 34.236767>,  <24.870165, 31.576279, 34.482571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174841, 31.658451, 34.236767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394598, -0.605176, -0.691415,
		-0.513926, 0.769130, -0.379894,
		0.761690, 0.205431, -0.614513,
		25.403349, 31.720079, 34.052414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524708, 31.809597, 33.816776>,  <24.870165, 31.576279, 34.482571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524708, 31.809597, 33.816776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891090, 31.694500, 33.704899>,  <25.110920, 31.625441, 33.637772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891090, 31.694500, 33.704899>,  <24.524708, 31.809597, 33.816776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891090, 31.694500, 33.704899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394685, -0.520168, -0.757396,
		0.072448, 0.804132, -0.590019,
		0.915956, -0.287744, -0.279694,
		25.165876, 31.608177, 33.620991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630217, 31.825527, 33.046444>,  <24.524708, 31.809597, 33.816776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630217, 31.825527, 33.046444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922478, 31.576336, 33.158188>,  <25.097834, 31.426821, 33.225235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922478, 31.576336, 33.158188>,  <24.630217, 31.825527, 33.046444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922478, 31.576336, 33.158188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100117, -0.502512, -0.858754,
		0.675371, 0.599480, -0.429532,
		0.730651, -0.622981, 0.279364,
		25.141672, 31.389442, 33.241997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030176, 31.767399, 32.357388>,  <24.630217, 31.825527, 33.046444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030176, 31.767399, 32.357388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204100, 31.488800, 32.585716>,  <25.308455, 31.321642, 32.722713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204100, 31.488800, 32.585716>,  <25.030176, 31.767399, 32.357388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204100, 31.488800, 32.585716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131651, -0.577901, -0.805418,
		0.890847, 0.425353, -0.159583,
		0.434810, -0.696495, 0.570819,
		25.334543, 31.279852, 32.756962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637156, 31.598038, 32.003735>,  <25.030176, 31.767399, 32.357388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637156, 31.598038, 32.003735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535357, 31.276167, 32.218296>,  <25.474277, 31.083044, 32.347034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535357, 31.276167, 32.218296>,  <25.637156, 31.598038, 32.003735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535357, 31.276167, 32.218296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322981, -0.593542, -0.737150,
		0.911545, -0.014355, 0.410950,
		-0.254498, -0.804675, 0.536404,
		25.459007, 31.034765, 32.379219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176975, 31.158596, 31.829868>,  <25.637156, 31.598038, 32.003735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176975, 31.158596, 31.829868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906736, 30.901358, 31.974087>,  <25.744593, 30.747015, 32.060619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906736, 30.901358, 31.974087>,  <26.176975, 31.158596, 31.829868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906736, 30.901358, 31.974087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235438, -0.651611, -0.721091,
		0.698666, -0.402282, 0.591637,
		-0.675599, -0.643096, 0.360546,
		25.704056, 30.708429, 32.082249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517996, 30.582699, 31.820246>,  <26.176975, 31.158596, 31.829868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517996, 30.582699, 31.820246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145401, 30.440367, 31.850489>,  <25.921844, 30.354967, 31.868633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145401, 30.440367, 31.850489>,  <26.517996, 30.582699, 31.820246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145401, 30.440367, 31.850489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187193, -0.647074, -0.739090,
		0.311912, -0.674301, 0.669350,
		-0.931488, -0.355829, 0.075606,
		25.865955, 30.333618, 31.873171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548166, 29.776148, 31.945005>,  <26.517996, 30.582699, 31.820246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548166, 29.776148, 31.945005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188063, 29.864088, 31.794697>,  <25.972000, 29.916853, 31.704512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188063, 29.864088, 31.794697>,  <26.548166, 29.776148, 31.945005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188063, 29.864088, 31.794697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098328, -0.738147, -0.667435,
		-0.424110, -0.637812, 0.642905,
		-0.900257, 0.219850, -0.375770,
		25.917986, 29.930042, 31.681965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238419, 29.160904, 31.777065>,  <26.548166, 29.776148, 31.945005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238419, 29.160904, 31.777065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004427, 29.408272, 31.567165>,  <25.864033, 29.556692, 31.441225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004427, 29.408272, 31.567165>,  <26.238419, 29.160904, 31.777065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004427, 29.408272, 31.567165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078453, -0.687110, -0.722305,
		-0.807246, -0.381364, 0.450461,
		-0.584977, 0.618418, -0.524748,
		25.828934, 29.593798, 31.409740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671661, 28.737774, 31.577759>,  <26.238419, 29.160904, 31.777065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671661, 28.737774, 31.577759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696589, 29.046097, 31.324154>,  <25.711544, 29.231091, 31.171991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696589, 29.046097, 31.324154>,  <25.671661, 28.737774, 31.577759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696589, 29.046097, 31.324154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024223, -0.633893, -0.773041,
		-0.997763, 0.063530, -0.020831,
		0.062316, 0.770807, -0.634014,
		25.715282, 29.277338, 31.133949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106472, 28.585453, 31.089981>,  <25.671661, 28.737774, 31.577759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106472, 28.585453, 31.089981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318762, 28.861080, 30.892591>,  <25.446136, 29.026457, 30.774157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318762, 28.861080, 30.892591>,  <25.106472, 28.585453, 31.089981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318762, 28.861080, 30.892591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008109, -0.578086, -0.815935,
		-0.847505, 0.437039, -0.301218,
		0.530726, 0.689067, -0.493475,
		25.477980, 29.067801, 30.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737535, 28.711113, 30.498747>,  <25.106472, 28.585453, 31.089981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737535, 28.711113, 30.498747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126778, 28.780972, 30.438663>,  <25.360323, 28.822887, 30.402615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126778, 28.780972, 30.438663>,  <24.737535, 28.711113, 30.498747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126778, 28.780972, 30.438663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008789, -0.679734, -0.733406,
		-0.230188, 0.712362, -0.662989,
		0.973106, 0.174648, -0.150206,
		25.418709, 28.833366, 30.393602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539682, 28.376797, 29.862703>,  <24.737535, 28.711113, 30.498747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539682, 28.376797, 29.862703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451252, 28.471901, 29.484371>,  <24.398193, 28.528963, 29.257372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451252, 28.471901, 29.484371>,  <24.539682, 28.376797, 29.862703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451252, 28.471901, 29.484371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951847, -0.158614, -0.262354,
		-0.212400, -0.958285, -0.191248,
		-0.221075, 0.237763, -0.945830,
		24.384930, 28.543230, 29.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745554, 27.823874, 29.347332>,  <24.539682, 28.376797, 29.862703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745554, 27.823874, 29.347332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748419, 28.187227, 29.180099>,  <24.750137, 28.405239, 29.079760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748419, 28.187227, 29.180099>,  <24.745554, 27.823874, 29.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748419, 28.187227, 29.180099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967355, -0.112207, -0.227230,
		-0.253323, -0.402804, -0.879532,
		0.007161, 0.908382, -0.418080,
		24.750566, 28.459742, 29.054676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086718, 27.877003, 28.716101>,  <24.745554, 27.823874, 29.347332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086718, 27.877003, 28.716101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100214, 28.256777, 28.840961>,  <25.108313, 28.484640, 28.915878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100214, 28.256777, 28.840961>,  <25.086718, 27.877003, 28.716101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100214, 28.256777, 28.840961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937902, 0.077815, -0.338060,
		-0.345255, 0.304174, -0.887850,
		0.033741, 0.949433, 0.312152,
		25.110336, 28.541607, 28.934607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558290, 28.163706, 28.257919>,  <25.086718, 27.877003, 28.716101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558290, 28.163706, 28.257919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536205, 28.413645, 28.569437>,  <25.522953, 28.563608, 28.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536205, 28.413645, 28.569437>,  <25.558290, 28.163706, 28.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536205, 28.413645, 28.569437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953720, 0.263906, -0.144124,
		-0.295584, 0.734792, -0.610501,
		-0.055214, 0.624847, 0.778792,
		25.519642, 28.601099, 28.803074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676184, 28.833290, 28.031969>,  <25.558290, 28.163706, 28.257919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676184, 28.833290, 28.031969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801950, 28.766115, 28.405693>,  <25.877411, 28.725809, 28.629929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801950, 28.766115, 28.405693>,  <25.676184, 28.833290, 28.031969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801950, 28.766115, 28.405693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949281, 0.058617, -0.308917,
		-0.002887, 0.984053, 0.177851,
		0.314416, -0.167939, 0.934312,
		25.896275, 28.715734, 28.685987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217354, 29.367188, 28.281088>,  <25.676184, 28.833290, 28.031969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217354, 29.367188, 28.281088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281944, 29.042175, 28.505131>,  <26.320698, 28.847168, 28.639557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281944, 29.042175, 28.505131>,  <26.217354, 29.367188, 28.281088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281944, 29.042175, 28.505131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986122, 0.110663, -0.123759,
		0.038575, 0.572318, 0.819124,
		0.161476, -0.812531, 0.560107,
		26.330387, 28.798416, 28.673162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831007, 29.505301, 28.631351>,  <26.217354, 29.367188, 28.281088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831007, 29.505301, 28.631351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767195, 29.110449, 28.635874>,  <26.728907, 28.873539, 28.638586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767195, 29.110449, 28.635874>,  <26.831007, 29.505301, 28.631351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767195, 29.110449, 28.635874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985621, -0.158621, 0.058222,
		-0.055679, 0.020429, 0.998240,
		-0.159531, -0.987128, 0.011304,
		26.719336, 28.814310, 28.639265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005470, 29.108784, 29.241117>,  <26.831007, 29.505301, 28.631351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005470, 29.108784, 29.241117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053080, 28.824385, 28.963898>,  <27.081646, 28.653746, 28.797565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053080, 28.824385, 28.963898>,  <27.005470, 29.108784, 29.241117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053080, 28.824385, 28.963898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883596, -0.242523, 0.400552,
		-0.452871, -0.660051, 0.599367,
		0.119024, -0.710997, -0.693049,
		27.088787, 28.611086, 28.755983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041046, 28.473799, 29.486454>,  <27.005470, 29.108784, 29.241117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041046, 28.473799, 29.486454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288836, 28.453072, 29.173132>,  <27.437510, 28.440636, 28.985138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288836, 28.453072, 29.173132>,  <27.041046, 28.473799, 29.486454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288836, 28.453072, 29.173132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607589, -0.600181, 0.520210,
		-0.497081, -0.798184, -0.340312,
		0.619472, -0.051816, -0.783307,
		27.474676, 28.437527, 28.938139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494320, 27.867500, 29.254204>,  <27.041046, 28.473799, 29.486454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494320, 27.867500, 29.254204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728588, 28.191677, 29.248863>,  <27.869148, 28.386183, 29.245659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728588, 28.191677, 29.248863>,  <27.494320, 27.867500, 29.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728588, 28.191677, 29.248863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343921, -0.233551, 0.909490,
		0.733969, -0.537253, -0.415511,
		0.585669, 0.810441, -0.013354,
		27.904289, 28.434809, 29.244858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199999, 27.839529, 29.439793>,  <27.494320, 27.867500, 29.254204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199999, 27.839529, 29.439793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099936, 28.211054, 29.549137>,  <28.039898, 28.433969, 29.614744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099936, 28.211054, 29.549137>,  <28.199999, 27.839529, 29.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099936, 28.211054, 29.549137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108109, -0.253778, 0.961202,
		0.962150, 0.270007, -0.036928,
		-0.250160, 0.928813, 0.273363,
		28.024887, 28.489698, 29.631145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449656, 27.850248, 30.166498>,  <28.199999, 27.839529, 29.439793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449656, 27.850248, 30.166498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280884, 28.212595, 30.151609>,  <28.179621, 28.430002, 30.142675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280884, 28.212595, 30.151609>,  <28.449656, 27.850248, 30.166498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280884, 28.212595, 30.151609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244193, 0.153087, 0.957567,
		0.873124, 0.394936, -0.285797,
		-0.421929, 0.905864, -0.037223,
		28.154305, 28.484354, 30.140442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843716, 28.314939, 30.423868>,  <28.449656, 27.850248, 30.166498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843716, 28.314939, 30.423868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522820, 28.551802, 30.454218>,  <28.330280, 28.693920, 30.472427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522820, 28.551802, 30.454218>,  <28.843716, 28.314939, 30.423868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522820, 28.551802, 30.454218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217472, 0.171506, 0.960881,
		0.555979, 0.787360, -0.266367,
		-0.802243, 0.592157, 0.075875,
		28.282146, 28.729448, 30.476980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035410, 28.879019, 30.828558>,  <28.843716, 28.314939, 30.423868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035410, 28.879019, 30.828558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636173, 28.896870, 30.845644>,  <28.396631, 28.907581, 30.855896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636173, 28.896870, 30.845644>,  <29.035410, 28.879019, 30.828558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636173, 28.896870, 30.845644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046773, 0.094198, 0.994454,
		0.040357, 0.994553, -0.096106,
		-0.998090, 0.044628, 0.042717,
		28.336746, 28.910257, 30.858459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921057, 29.624743, 31.018578>,  <29.035410, 28.879019, 30.828558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921057, 29.624743, 31.018578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602129, 29.410093, 31.129080>,  <28.410772, 29.281303, 31.195381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602129, 29.410093, 31.129080>,  <28.921057, 29.624743, 31.018578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602129, 29.410093, 31.129080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031445, 0.420157, 0.906906,
		-0.602739, 0.731780, -0.318124,
		-0.797319, -0.536624, 0.276256,
		28.362934, 29.249105, 31.211956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510393, 30.032269, 31.316156>,  <28.921057, 29.624743, 31.018578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510393, 30.032269, 31.316156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352900, 29.695843, 31.464527>,  <28.258404, 29.493988, 31.553549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352900, 29.695843, 31.464527>,  <28.510393, 30.032269, 31.316156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352900, 29.695843, 31.464527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165783, 0.461875, 0.871314,
		-0.904152, 0.281572, -0.321289,
		-0.393733, -0.841064, 0.370925,
		28.234779, 29.443523, 31.575804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918999, 30.266945, 31.770666>,  <28.510393, 30.032269, 31.316156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918999, 30.266945, 31.770666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996075, 29.896929, 31.901613>,  <28.042320, 29.674919, 31.980183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996075, 29.896929, 31.901613>,  <27.918999, 30.266945, 31.770666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996075, 29.896929, 31.901613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139360, 0.304442, 0.942281,
		-0.971313, -0.227192, -0.070250,
		0.192692, -0.925040, 0.327370,
		28.053883, 29.619417, 31.999825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434574, 30.020905, 32.192871>,  <27.918999, 30.266945, 31.770666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434574, 30.020905, 32.192871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744682, 29.803450, 32.321503>,  <27.930748, 29.672977, 32.398682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744682, 29.803450, 32.321503>,  <27.434574, 30.020905, 32.192871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744682, 29.803450, 32.321503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219808, 0.245096, 0.944252,
		-0.592148, -0.802737, 0.070520,
		0.775271, -0.543636, 0.321582,
		27.977264, 29.640358, 32.417976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190228, 29.517408, 32.709583>,  <27.434574, 30.020905, 32.192871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190228, 29.517408, 32.709583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582596, 29.542513, 32.783184>,  <27.818016, 29.557575, 32.827343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582596, 29.542513, 32.783184>,  <27.190228, 29.517408, 32.709583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582596, 29.542513, 32.783184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192062, 0.166289, 0.967192,
		0.030103, -0.984078, 0.175170,
		0.980921, 0.062759, 0.183998,
		27.876873, 29.561342, 32.838383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261915, 29.158669, 33.330376>,  <27.190228, 29.517408, 32.709583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261915, 29.158669, 33.330376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585087, 29.391073, 33.291023>,  <27.778990, 29.530516, 33.267410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585087, 29.391073, 33.291023>,  <27.261915, 29.158669, 33.330376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585087, 29.391073, 33.291023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031928, 0.123545, 0.991825,
		0.588418, -0.804463, 0.081265,
		0.807927, 0.581013, -0.098381,
		27.827465, 29.565376, 33.261509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833187, 28.938265, 33.838600>,  <27.261915, 29.158669, 33.330376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833187, 28.938265, 33.838600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910503, 29.323889, 33.765682>,  <27.956894, 29.555264, 33.721931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910503, 29.323889, 33.765682>,  <27.833187, 28.938265, 33.838600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910503, 29.323889, 33.765682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135551, 0.157774, 0.978127,
		0.971733, -0.213773, -0.100183,
		0.193291, 0.964058, -0.182292,
		27.968491, 29.613106, 33.710995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306990, 29.070641, 34.288624>,  <27.833187, 28.938265, 33.838600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306990, 29.070641, 34.288624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213352, 29.439024, 34.164021>,  <28.157169, 29.660053, 34.089260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213352, 29.439024, 34.164021>,  <28.306990, 29.070641, 34.288624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213352, 29.439024, 34.164021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085202, 0.338613, 0.937060,
		0.968474, 0.192818, -0.157734,
		-0.234093, 0.920957, -0.311509,
		28.143124, 29.715311, 34.070568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662304, 29.545897, 34.720734>,  <28.306990, 29.070641, 34.288624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662304, 29.545897, 34.720734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375919, 29.778650, 34.566429>,  <28.204088, 29.918303, 34.473846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375919, 29.778650, 34.566429>,  <28.662304, 29.545897, 34.720734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375919, 29.778650, 34.566429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196740, 0.361997, 0.911182,
		0.669844, 0.728266, -0.144696,
		-0.715962, 0.581882, -0.385760,
		28.161131, 29.953215, 34.450703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612352, 30.181911, 35.061535>,  <28.662304, 29.545897, 34.720734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612352, 30.181911, 35.061535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251728, 30.209095, 34.890625>,  <28.035353, 30.225405, 34.788078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251728, 30.209095, 34.890625>,  <28.612352, 30.181911, 35.061535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251728, 30.209095, 34.890625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339120, 0.502271, 0.795438,
		0.268667, 0.862035, -0.429782,
		-0.901563, 0.067960, -0.427277,
		27.981258, 30.229483, 34.762444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471981, 30.869680, 34.874718>,  <28.612352, 30.181911, 35.061535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471981, 30.869680, 34.874718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112122, 30.695034, 34.875004>,  <27.896206, 30.590246, 34.875175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112122, 30.695034, 34.875004>,  <28.471981, 30.869680, 34.874718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112122, 30.695034, 34.875004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340469, 0.702552, 0.624901,
		-0.273342, 0.561949, -0.780703,
		-0.899647, -0.436617, 0.000711,
		27.842228, 30.564049, 34.875217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873577, 31.381569, 34.811378>,  <28.471981, 30.869680, 34.874718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873577, 31.381569, 34.811378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704800, 31.072290, 35.000751>,  <27.603533, 30.886724, 35.114376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704800, 31.072290, 35.000751>,  <27.873577, 31.381569, 34.811378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704800, 31.072290, 35.000751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392275, 0.626476, 0.673534,
		-0.817365, 0.098478, -0.567641,
		-0.421942, -0.773194, 0.473429,
		27.578217, 30.840332, 35.142780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340109, 31.699520, 35.196156>,  <27.873577, 31.381569, 34.811378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340109, 31.699520, 35.196156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329428, 31.336588, 35.363983>,  <27.323019, 31.118830, 35.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329428, 31.336588, 35.363983>,  <27.340109, 31.699520, 35.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329428, 31.336588, 35.363983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271736, 0.410506, 0.870428,
		-0.962001, -0.090768, -0.257516,
		-0.026705, -0.907329, 0.419572,
		27.321417, 31.064388, 35.489857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684202, 31.637009, 35.592239>,  <27.340109, 31.699520, 35.196156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684202, 31.637009, 35.592239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946861, 31.381495, 35.752621>,  <27.104456, 31.228186, 35.848850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946861, 31.381495, 35.752621>,  <26.684202, 31.637009, 35.592239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946861, 31.381495, 35.752621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207738, 0.357876, 0.910368,
		-0.725024, -0.681084, 0.102298,
		0.656647, -0.638787, 0.400956,
		27.143856, 31.189859, 35.872906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388863, 31.526058, 36.239971>,  <26.684202, 31.637009, 35.592239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388863, 31.526058, 36.239971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769484, 31.405664, 36.265125>,  <26.997856, 31.333427, 36.280220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769484, 31.405664, 36.265125>,  <26.388863, 31.526058, 36.239971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769484, 31.405664, 36.265125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079230, 0.437620, 0.895662,
		-0.297103, -0.847287, 0.440266,
		0.951553, -0.300986, 0.062888,
		27.054949, 31.315369, 36.283993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447205, 31.342428, 36.896358>,  <26.388863, 31.526058, 36.239971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447205, 31.342428, 36.896358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824959, 31.415215, 36.786793>,  <27.051611, 31.458887, 36.721054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824959, 31.415215, 36.786793>,  <26.447205, 31.342428, 36.896358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824959, 31.415215, 36.786793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131010, 0.555803, 0.820926,
		0.301621, -0.811154, 0.501052,
		0.944384, 0.181966, -0.273912,
		27.108274, 31.469805, 36.704620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844353, 31.215141, 37.430271>,  <26.447205, 31.342428, 36.896358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844353, 31.215141, 37.430271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066601, 31.461033, 37.206345>,  <27.199949, 31.608568, 37.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066601, 31.461033, 37.206345>,  <26.844353, 31.215141, 37.430271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066601, 31.461033, 37.206345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272502, 0.501487, 0.821130,
		0.785514, -0.608786, 0.111120,
		0.555618, 0.614728, -0.559820,
		27.233286, 31.645451, 37.038399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423901, 31.422436, 37.797977>,  <26.844353, 31.215141, 37.430271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423901, 31.422436, 37.797977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391045, 31.719593, 37.532238>,  <27.371330, 31.897888, 37.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391045, 31.719593, 37.532238>,  <27.423901, 31.422436, 37.797977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391045, 31.719593, 37.532238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379623, 0.639670, 0.668362,
		0.921487, -0.197301, -0.334564,
		-0.082142, 0.742896, -0.664348,
		27.366402, 31.942461, 37.332935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063219, 31.651913, 37.592705>,  <27.423901, 31.422436, 37.797977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063219, 31.651913, 37.592705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820522, 31.969130, 37.570995>,  <27.674904, 32.159458, 37.557968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820522, 31.969130, 37.570995>,  <28.063219, 31.651913, 37.592705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820522, 31.969130, 37.570995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581011, 0.489047, 0.650583,
		0.542485, 0.363201, -0.757493,
		-0.606742, 0.793043, -0.054276,
		27.638500, 32.207043, 37.554714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541697, 31.121281, 37.312378>,  <28.063219, 31.651913, 37.592705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541697, 31.121281, 37.312378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691364, 30.886915, 37.599907>,  <28.781166, 30.746296, 37.772423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691364, 30.886915, 37.599907>,  <28.541697, 31.121281, 37.312378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691364, 30.886915, 37.599907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403759, -0.800727, -0.442509,
		0.834850, -0.124656, -0.536177,
		0.374170, -0.585916, 0.718818,
		28.803616, 30.711140, 37.815552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833033, 31.529099, 37.849663>,  <28.541697, 31.121281, 37.312378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833033, 31.529099, 37.849663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140711, 31.743298, 37.710194>,  <29.325317, 31.871817, 37.626511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140711, 31.743298, 37.710194>,  <28.833033, 31.529099, 37.849663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140711, 31.743298, 37.710194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168874, 0.355900, 0.919139,
		0.616293, -0.765882, 0.183325,
		0.769197, 0.535500, -0.348676,
		29.371469, 31.903948, 37.605591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065178, 31.827042, 38.441517>,  <28.833033, 31.529099, 37.849663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065178, 31.827042, 38.441517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335760, 31.957773, 38.177521>,  <29.498110, 32.036213, 38.019123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335760, 31.957773, 38.177521>,  <29.065178, 31.827042, 38.441517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335760, 31.957773, 38.177521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466988, 0.502611, 0.727533,
		0.569499, -0.800352, 0.187368,
		0.676456, 0.326831, -0.659991,
		29.538698, 32.055820, 37.979523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605490, 31.658632, 38.873371>,  <29.065178, 31.827042, 38.441517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605490, 31.658632, 38.873371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703585, 31.908199, 38.576565>,  <29.762442, 32.057938, 38.398483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703585, 31.908199, 38.576565>,  <29.605490, 31.658632, 38.873371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703585, 31.908199, 38.576565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369478, 0.647470, 0.666535,
		0.896295, -0.437617, -0.071739,
		0.245238, 0.623917, -0.742014,
		29.777157, 32.095375, 38.353962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383219, 31.843086, 38.938812>,  <29.605490, 31.658632, 38.873371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383219, 31.843086, 38.938812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117414, 32.107754, 38.799889>,  <29.957932, 32.266556, 38.716534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117414, 32.107754, 38.799889>,  <30.383219, 31.843086, 38.938812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117414, 32.107754, 38.799889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172525, 0.588047, 0.790212,
		0.727091, 0.465185, -0.504918,
		-0.664510, 0.661667, -0.347308,
		29.918062, 32.306255, 38.695698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595627, 32.431576, 39.263157>,  <30.383219, 31.843086, 38.938812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595627, 32.431576, 39.263157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223595, 32.539989, 39.163967>,  <30.000376, 32.605038, 39.104454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223595, 32.539989, 39.163967>,  <30.595627, 32.431576, 39.263157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223595, 32.539989, 39.163967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096592, 0.470841, 0.876914,
		0.354436, 0.839551, -0.411739,
		-0.930078, 0.271039, -0.247977,
		29.944571, 32.621300, 39.089573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289116, 32.189827, 39.080723>,  <30.595627, 32.431576, 39.263157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289116, 32.189827, 39.080723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677935, 32.114445, 39.024708>,  <31.911226, 32.069218, 38.991100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677935, 32.114445, 39.024708>,  <31.289116, 32.189827, 39.080723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677935, 32.114445, 39.024708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133203, -0.048504, 0.989901,
		-0.193343, -0.980884, -0.022046,
		0.972047, -0.188454, -0.140034,
		31.969549, 32.057907, 38.982697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483185, 31.576471, 39.475410>,  <31.289116, 32.189827, 39.080723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483185, 31.576471, 39.475410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808849, 31.803402, 39.425972>,  <32.004250, 31.939560, 39.396309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808849, 31.803402, 39.425972>,  <31.483185, 31.576471, 39.475410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808849, 31.803402, 39.425972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211394, -0.091359, 0.973122,
		0.540788, -0.818408, -0.194311,
		0.814163, 0.567329, -0.123601,
		32.053097, 31.973600, 39.388893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063911, 31.220827, 39.750324>,  <31.483185, 31.576471, 39.475410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063911, 31.220827, 39.750324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189503, 31.600294, 39.735100>,  <32.264858, 31.827974, 39.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189503, 31.600294, 39.735100>,  <32.063911, 31.220827, 39.750324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189503, 31.600294, 39.735100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474711, -0.122147, 0.871625,
		0.822233, -0.291738, -0.488694,
		0.313979, 0.948667, -0.038058,
		32.283695, 31.884893, 39.723682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771137, 31.167166, 40.013210>,  <32.063911, 31.220827, 39.750324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771137, 31.167166, 40.013210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670288, 31.553005, 40.044163>,  <32.609779, 31.784508, 40.062733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670288, 31.553005, 40.044163>,  <32.771137, 31.167166, 40.013210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670288, 31.553005, 40.044163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566886, 0.082418, 0.819663,
		0.784268, 0.250518, -0.567596,
		-0.252121, 0.964597, 0.077377,
		32.594650, 31.842384, 40.067375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394608, 31.533009, 40.045704>,  <32.771137, 31.167166, 40.013210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394608, 31.533009, 40.045704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137341, 31.795120, 40.204170>,  <32.982983, 31.952387, 40.299252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137341, 31.795120, 40.204170>,  <33.394608, 31.533009, 40.045704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137341, 31.795120, 40.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595089, 0.102149, 0.797141,
		0.481882, 0.748448, -0.455648,
		-0.643163, 0.655279, 0.396170,
		32.944393, 31.991705, 40.323021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878674, 32.045994, 40.226105>,  <33.394608, 31.533009, 40.045704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878674, 32.045994, 40.226105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543209, 32.081932, 40.440983>,  <33.341930, 32.103497, 40.569912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543209, 32.081932, 40.440983>,  <33.878674, 32.045994, 40.226105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543209, 32.081932, 40.440983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530439, 0.358641, 0.768122,
		-0.123647, 0.929141, -0.348436,
		-0.838657, 0.089848, 0.537198,
		33.291611, 32.108887, 40.602142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981434, 32.574692, 40.699387>,  <33.878674, 32.045994, 40.226105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981434, 32.574692, 40.699387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677990, 32.373169, 40.864643>,  <33.495922, 32.252254, 40.963795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677990, 32.373169, 40.864643>,  <33.981434, 32.574692, 40.699387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677990, 32.373169, 40.864643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319412, 0.265090, 0.909782,
		-0.567876, 0.822133, -0.040178,
		-0.758612, -0.503810, 0.413138,
		33.450405, 32.222027, 40.988583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721916, 32.966442, 41.200935>,  <33.981434, 32.574692, 40.699387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721916, 32.966442, 41.200935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567375, 32.617828, 41.321712>,  <33.474651, 32.408661, 41.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567375, 32.617828, 41.321712>,  <33.721916, 32.966442, 41.200935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567375, 32.617828, 41.321712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399698, 0.136830, 0.906377,
		-0.831250, 0.470863, 0.295485,
		-0.386348, -0.871531, 0.301943,
		33.451469, 32.356369, 41.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583019, 33.049320, 41.930046>,  <33.721916, 32.966442, 41.200935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583019, 33.049320, 41.930046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603062, 32.653545, 41.875633>,  <33.615086, 32.416080, 41.842983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603062, 32.653545, 41.875633>,  <33.583019, 33.049320, 41.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603062, 32.653545, 41.875633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431815, -0.101356, 0.896249,
		-0.900570, -0.103646, 0.422175,
		0.050102, -0.989436, -0.136034,
		33.618092, 32.356716, 41.834824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217651, 32.806343, 42.475533>,  <33.583019, 33.049320, 41.930046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217651, 32.806343, 42.475533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444717, 32.504993, 42.342754>,  <33.580956, 32.324184, 42.263088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444717, 32.504993, 42.342754>,  <33.217651, 32.806343, 42.475533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444717, 32.504993, 42.342754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252065, -0.224793, 0.941240,
		-0.783724, -0.617978, 0.062293,
		0.567662, -0.753374, -0.331946,
		33.615017, 32.278980, 42.243172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886524, 32.172276, 42.813507>,  <33.217651, 32.806343, 42.475533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886524, 32.172276, 42.813507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266285, 32.121536, 42.698589>,  <33.494141, 32.091095, 42.629639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266285, 32.121536, 42.698589>,  <32.886524, 32.172276, 42.813507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266285, 32.121536, 42.698589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232285, -0.332050, 0.914213,
		-0.211362, -0.934694, -0.285786,
		0.949405, -0.126846, -0.287298,
		33.551105, 32.083481, 42.612400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151283, 31.714050, 43.197872>,  <32.886524, 32.172276, 42.813507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151283, 31.714050, 43.197872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512611, 31.797104, 43.047726>,  <33.729408, 31.846935, 42.957638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512611, 31.797104, 43.047726>,  <33.151283, 31.714050, 43.197872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512611, 31.797104, 43.047726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428710, -0.406638, 0.806755,
		0.014871, -0.889682, -0.456339,
		0.903319, 0.207635, -0.375368,
		33.783607, 31.859394, 42.935116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564137, 31.094297, 43.210770>,  <33.151283, 31.714050, 43.197872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564137, 31.094297, 43.210770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840668, 31.381968, 43.182930>,  <34.006588, 31.554569, 43.166225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840668, 31.381968, 43.182930>,  <33.564137, 31.094297, 43.210770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840668, 31.381968, 43.182930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438372, -0.340916, 0.831629,
		0.574361, -0.605442, -0.550953,
		0.691332, 0.719177, -0.069600,
		34.048069, 31.597721, 43.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164730, 30.810026, 43.292240>,  <33.564137, 31.094297, 43.210770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164730, 30.810026, 43.292240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259308, 31.189011, 43.378410>,  <34.316055, 31.416401, 43.430115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259308, 31.189011, 43.378410>,  <34.164730, 30.810026, 43.292240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259308, 31.189011, 43.378410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527831, -0.311394, 0.790208,
		0.815777, -0.073126, -0.573726,
		0.236440, 0.947463, 0.215430,
		34.330238, 31.473249, 43.443039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983715, 30.849731, 43.418701>,  <34.164730, 30.810026, 43.292240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983715, 30.849731, 43.418701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781952, 31.143215, 43.600796>,  <34.660892, 31.319305, 43.710052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781952, 31.143215, 43.600796>,  <34.983715, 30.849731, 43.418701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781952, 31.143215, 43.600796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376307, -0.287722, 0.880687,
		0.777151, 0.615535, -0.130971,
		-0.504410, 0.733712, 0.455234,
		34.630630, 31.363329, 43.737366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425785, 31.329302, 43.771523>,  <34.983715, 30.849731, 43.418701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425785, 31.329302, 43.771523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083118, 31.372215, 43.973358>,  <34.877518, 31.397963, 44.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083118, 31.372215, 43.973358>,  <35.425785, 31.329302, 43.771523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083118, 31.372215, 43.973358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499715, -0.070301, 0.863332,
		0.128094, 0.991740, 0.006613,
		-0.856666, 0.107283, 0.504592,
		34.826118, 31.404400, 44.124737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569111, 31.807711, 44.240017>,  <35.425785, 31.329302, 43.771523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569111, 31.807711, 44.240017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229534, 31.660328, 44.391563>,  <35.025787, 31.571899, 44.482491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229534, 31.660328, 44.391563>,  <35.569111, 31.807711, 44.240017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229534, 31.660328, 44.391563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392956, 0.039288, 0.918718,
		-0.353391, 0.928815, 0.111434,
		-0.848941, -0.368455, 0.378867,
		34.974854, 31.549791, 44.505222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470741, 32.177715, 44.991173>,  <35.569111, 31.807711, 44.240017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470741, 32.177715, 44.991173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223751, 31.864220, 45.017906>,  <35.075558, 31.676121, 45.033947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223751, 31.864220, 45.017906>,  <35.470741, 32.177715, 44.991173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223751, 31.864220, 45.017906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179102, -0.057350, 0.982158,
		-0.765926, 0.618432, 0.175783,
		-0.617478, -0.783743, 0.066836,
		35.038509, 31.629097, 45.037956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076992, 32.293613, 45.524548>,  <35.470741, 32.177715, 44.991173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076992, 32.293613, 45.524548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998161, 31.906256, 45.463398>,  <34.950863, 31.673841, 45.426708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998161, 31.906256, 45.463398>,  <35.076992, 32.293613, 45.524548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998161, 31.906256, 45.463398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044104, -0.147015, 0.988150,
		-0.979395, 0.201489, -0.013736,
		-0.197082, -0.968395, -0.152873,
		34.939037, 31.615738, 45.417538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546577, 32.074268, 46.004318>,  <35.076992, 32.293613, 45.524548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546577, 32.074268, 46.004318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750389, 31.745428, 45.902706>,  <34.872677, 31.548124, 45.841740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750389, 31.745428, 45.902706>,  <34.546577, 32.074268, 46.004318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750389, 31.745428, 45.902706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139607, -0.212326, 0.967175,
		-0.849050, -0.528271, 0.006583,
		0.509533, -0.822099, -0.254026,
		34.903248, 31.498798, 45.826500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251774, 31.638929, 46.397648>,  <34.546577, 32.074268, 46.004318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251774, 31.638929, 46.397648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578968, 31.445164, 46.273556>,  <34.775284, 31.328905, 46.199100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578968, 31.445164, 46.273556>,  <34.251774, 31.638929, 46.397648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578968, 31.445164, 46.273556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208785, -0.252512, 0.944800,
		-0.536009, -0.837605, -0.105414,
		0.817987, -0.484412, -0.310228,
		34.824364, 31.299841, 46.180489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319145, 31.132750, 46.846157>,  <34.251774, 31.638929, 46.397648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319145, 31.132750, 46.846157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681499, 31.086905, 46.683071>,  <34.898914, 31.059397, 46.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681499, 31.086905, 46.683071>,  <34.319145, 31.132750, 46.846157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681499, 31.086905, 46.683071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344292, -0.361333, 0.866546,
		-0.246637, -0.925366, -0.287868,
		0.905888, -0.114611, -0.407714,
		34.953266, 31.052521, 46.560757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515759, 30.433529, 46.917480>,  <34.319145, 31.132750, 46.846157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515759, 30.433529, 46.917480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836525, 30.671692, 46.897812>,  <35.028984, 30.814590, 46.886013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836525, 30.671692, 46.897812>,  <34.515759, 30.433529, 46.917480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836525, 30.671692, 46.897812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405133, -0.481469, 0.777210,
		0.439083, -0.643178, -0.627318,
		0.801918, 0.595407, -0.049168,
		35.077099, 30.850313, 46.883060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057030, 30.041557, 47.051159>,  <34.515759, 30.433529, 46.917480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057030, 30.041557, 47.051159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183159, 30.414188, 47.123528>,  <35.258839, 30.637768, 47.166950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183159, 30.414188, 47.123528>,  <35.057030, 30.041557, 47.051159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183159, 30.414188, 47.123528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551379, -0.335020, 0.764031,
		0.772367, -0.141159, -0.619292,
		0.315325, 0.931577, 0.180926,
		35.277756, 30.693661, 47.177807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701893, 29.934017, 47.152523>,  <35.057030, 30.041557, 47.051159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701893, 29.934017, 47.152523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637955, 30.285648, 47.332153>,  <35.599590, 30.496626, 47.439934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637955, 30.285648, 47.332153>,  <35.701893, 29.934017, 47.152523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637955, 30.285648, 47.332153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556128, -0.295668, 0.776725,
		0.815580, 0.373904, -0.441618,
		-0.159848, 0.879077, 0.449079,
		35.590000, 30.549372, 47.466877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355091, 30.003531, 47.467369>,  <35.701893, 29.934017, 47.152523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355091, 30.003531, 47.467369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122410, 30.255529, 47.673176>,  <35.982800, 30.406729, 47.796658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122410, 30.255529, 47.673176>,  <36.355091, 30.003531, 47.467369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122410, 30.255529, 47.673176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375794, -0.352840, 0.856903,
		0.721387, 0.691815, -0.031500,
		-0.581704, 0.629996, 0.514515,
		35.947899, 30.444529, 47.827530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804192, 30.232500, 47.962112>,  <36.355091, 30.003531, 47.467369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804192, 30.232500, 47.962112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432476, 30.318556, 48.082199>,  <36.209446, 30.370190, 48.154251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432476, 30.318556, 48.082199>,  <36.804192, 30.232500, 47.962112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432476, 30.318556, 48.082199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222957, -0.321275, 0.920365,
		0.294458, 0.922225, 0.250592,
		-0.929293, 0.215137, 0.300219,
		36.153687, 30.383097, 48.172264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905708, 30.646036, 48.493896>,  <36.804192, 30.232500, 47.962112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905708, 30.646036, 48.493896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557053, 30.450081, 48.500259>,  <36.347858, 30.332508, 48.504078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557053, 30.450081, 48.500259>,  <36.905708, 30.646036, 48.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557053, 30.450081, 48.500259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268598, -0.450257, 0.851542,
		-0.410000, 0.746510, 0.524045,
		-0.871639, -0.489889, 0.015906,
		36.295559, 30.303114, 48.505032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541180, 30.978943, 49.134296>,  <36.905708, 30.646036, 48.493896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541180, 30.978943, 49.134296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385628, 30.622929, 49.039127>,  <36.292297, 30.409319, 48.982025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385628, 30.622929, 49.039127>,  <36.541180, 30.978943, 49.134296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385628, 30.622929, 49.039127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041672, -0.274974, 0.960548,
		-0.920344, 0.363626, 0.144023,
		-0.388883, -0.890037, -0.237918,
		36.268963, 30.355917, 48.967751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970711, 30.869314, 49.638912>,  <36.541180, 30.978943, 49.134296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970711, 30.869314, 49.638912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083790, 30.506485, 49.514141>,  <36.151638, 30.288788, 49.439278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083790, 30.506485, 49.514141>,  <35.970711, 30.869314, 49.638912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083790, 30.506485, 49.514141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012907, -0.321565, 0.946800,
		-0.959122, -0.271686, -0.079198,
		0.282699, -0.907074, -0.311926,
		36.168598, 30.234364, 49.420563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713581, 30.475527, 50.126362>,  <35.970711, 30.869314, 49.638912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713581, 30.475527, 50.126362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940090, 30.205233, 49.937592>,  <36.075996, 30.043056, 49.824329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940090, 30.205233, 49.937592>,  <35.713581, 30.475527, 50.126362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940090, 30.205233, 49.937592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082944, -0.522950, 0.848318,
		-0.820032, -0.519524, -0.240085,
		0.566274, -0.675735, -0.471928,
		36.109974, 30.002512, 49.796013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370316, 29.762289, 50.307522>,  <35.713581, 30.475527, 50.126362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370316, 29.762289, 50.307522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758392, 29.750250, 50.211334>,  <35.991238, 29.743027, 50.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758392, 29.750250, 50.211334>,  <35.370316, 29.762289, 50.307522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758392, 29.750250, 50.211334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189013, -0.527046, 0.828551,
		-0.151674, -0.849304, -0.505646,
		0.970190, -0.030097, -0.240469,
		36.049450, 29.741220, 50.139194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642178, 29.075886, 50.640850>,  <35.370316, 29.762289, 50.307522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642178, 29.075886, 50.640850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956375, 29.306084, 50.549805>,  <36.144894, 29.444202, 50.495178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956375, 29.306084, 50.549805>,  <35.642178, 29.075886, 50.640850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956375, 29.306084, 50.549805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544201, -0.467178, 0.696843,
		0.294696, -0.671230, -0.680150,
		0.785493, 0.575495, -0.227609,
		36.192024, 29.478733, 50.481522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293800, 28.596151, 50.522923>,  <35.642178, 29.075886, 50.640850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293800, 28.596151, 50.522923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404320, 28.963976, 50.634682>,  <36.470631, 29.184671, 50.701736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404320, 28.963976, 50.634682>,  <36.293800, 28.596151, 50.522923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404320, 28.963976, 50.634682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542147, -0.389175, 0.744728,
		0.793558, -0.054294, -0.606067,
		0.276301, 0.919562, 0.279398,
		36.487209, 29.239845, 50.718502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840672, 28.455948, 50.812103>,  <36.293800, 28.596151, 50.522923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840672, 28.455948, 50.812103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830502, 28.841106, 50.919571>,  <36.824398, 29.072201, 50.984051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830502, 28.841106, 50.919571>,  <36.840672, 28.455948, 50.812103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830502, 28.841106, 50.919571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577977, -0.205122, 0.789853,
		0.815657, 0.175369, -0.551317,
		-0.025428, 0.962897, 0.268668,
		36.822872, 29.129976, 51.000172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549339, 28.592058, 51.032143>,  <36.840672, 28.455948, 50.812103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549339, 28.592058, 51.032143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328655, 28.892241, 51.177708>,  <37.196243, 29.072350, 51.265045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328655, 28.892241, 51.177708>,  <37.549339, 28.592058, 51.032143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328655, 28.892241, 51.177708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504304, -0.047361, 0.862226,
		0.664297, 0.659223, -0.352327,
		-0.551713, 0.750454, 0.363911,
		37.163143, 29.117376, 51.286880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031738, 29.121943, 51.269062>,  <37.549339, 28.592058, 51.032143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031738, 29.121943, 51.269062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697334, 29.117340, 51.488499>,  <37.496693, 29.114578, 51.620163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697334, 29.117340, 51.488499>,  <38.031738, 29.121943, 51.269062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697334, 29.117340, 51.488499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514674, -0.363101, 0.776704,
		0.190258, 0.931679, 0.309477,
		-0.836010, -0.011506, 0.548594,
		37.446533, 29.113888, 51.653076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212097, 29.506088, 51.767342>,  <38.031738, 29.121943, 51.269062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212097, 29.506088, 51.767342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894062, 29.297226, 51.890755>,  <37.703239, 29.171909, 51.964802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894062, 29.297226, 51.890755>,  <38.212097, 29.506088, 51.767342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894062, 29.297226, 51.890755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534674, -0.363336, 0.762961,
		-0.286285, 0.771584, 0.568067,
		-0.795088, -0.522155, 0.308529,
		37.655537, 29.140579, 51.983315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187408, 29.657330, 52.435219>,  <38.212097, 29.506088, 51.767342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187408, 29.657330, 52.435219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988029, 29.314333, 52.384220>,  <37.868401, 29.108534, 52.353619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988029, 29.314333, 52.384220>,  <38.187408, 29.657330, 52.435219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988029, 29.314333, 52.384220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419363, -0.367215, 0.830234,
		-0.758739, 0.360359, 0.542638,
		-0.498447, -0.857493, -0.127499,
		37.838497, 29.057085, 52.345970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901474, 29.495087, 53.063610>,  <38.187408, 29.657330, 52.435219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901474, 29.495087, 53.063610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911434, 29.141964, 52.875977>,  <37.917412, 28.930090, 52.763397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911434, 29.141964, 52.875977>,  <37.901474, 29.495087, 53.063610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911434, 29.141964, 52.875977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528844, -0.386558, 0.755577,
		-0.848353, -0.266887, 0.457239,
		0.024904, -0.882805, -0.469079,
		37.918907, 28.877123, 52.735252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828903, 28.989693, 53.514816>,  <37.901474, 29.495087, 53.063610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828903, 28.989693, 53.514816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999939, 28.790836, 53.212818>,  <38.102562, 28.671522, 53.031620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999939, 28.790836, 53.212818>,  <37.828903, 28.989693, 53.514816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999939, 28.790836, 53.212818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661897, -0.396656, 0.636047,
		-0.615680, -0.771696, 0.159451,
		0.427588, -0.497142, -0.754996,
		38.128216, 28.641693, 52.986320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518909, 29.072424, 54.039860>,  <37.828903, 28.989693, 53.514816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518909, 29.072424, 54.039860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651188, 28.919153, 54.384838>,  <38.730556, 28.827190, 54.591824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651188, 28.919153, 54.384838>,  <38.518909, 29.072424, 54.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651188, 28.919153, 54.384838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783951, -0.397244, -0.477093,
		0.525413, 0.833890, 0.169024,
		0.330699, -0.383178, 0.862446,
		38.750397, 28.804199, 54.643574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239616, 29.270346, 54.113335>,  <38.518909, 29.072424, 54.039860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239616, 29.270346, 54.113335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145042, 28.914003, 54.268501>,  <39.088299, 28.700199, 54.361599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145042, 28.914003, 54.268501>,  <39.239616, 29.270346, 54.113335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145042, 28.914003, 54.268501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614741, -0.446322, -0.650300,
		0.752457, 0.084711, 0.653171,
		-0.236437, -0.890854, 0.387914,
		39.074112, 28.646748, 54.384876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885555, 28.910643, 54.323887>,  <39.239616, 29.270346, 54.113335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885555, 28.910643, 54.323887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585381, 28.660816, 54.237389>,  <39.405273, 28.510921, 54.185490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585381, 28.660816, 54.237389>,  <39.885555, 28.910643, 54.323887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585381, 28.660816, 54.237389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607551, -0.523034, -0.597760,
		0.260237, -0.579961, 0.771960,
		-0.750439, -0.624564, -0.216243,
		39.360249, 28.473448, 54.172516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054913, 28.181850, 54.294106>,  <39.885555, 28.910643, 54.323887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054913, 28.181850, 54.294106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728436, 28.189207, 54.063110>,  <39.532551, 28.193621, 53.924515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728436, 28.189207, 54.063110>,  <40.054913, 28.181850, 54.294106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728436, 28.189207, 54.063110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491757, -0.502600, -0.711033,
		-0.303322, -0.864323, 0.401175,
		-0.816193, 0.018391, -0.577487,
		39.483578, 28.194725, 53.889866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733379, 27.458878, 54.108070>,  <40.054913, 28.181850, 54.294106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733379, 27.458878, 54.108070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655499, 27.740805, 53.835213>,  <39.608772, 27.909962, 53.671497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655499, 27.740805, 53.835213>,  <39.733379, 27.458878, 54.108070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655499, 27.740805, 53.835213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401721, -0.577155, -0.710995,
		-0.894826, -0.412462, -0.170769,
		-0.194698, 0.704818, -0.682147,
		39.597088, 27.952250, 53.630569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324657, 27.254559, 53.471706>,  <39.733379, 27.458878, 54.108070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324657, 27.254559, 53.471706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571701, 27.543148, 53.346462>,  <39.719925, 27.716301, 53.271317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571701, 27.543148, 53.346462>,  <39.324657, 27.254559, 53.471706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571701, 27.543148, 53.346462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069721, -0.446769, -0.891929,
		-0.783391, 0.529031, -0.326229,
		0.617607, 0.721474, -0.313110,
		39.756985, 27.759590, 53.252529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151485, 27.758175, 52.975857>,  <39.324657, 27.254559, 53.471706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151485, 27.758175, 52.975857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525368, 27.617760, 52.953583>,  <39.749695, 27.533510, 52.940220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525368, 27.617760, 52.953583>,  <39.151485, 27.758175, 52.975857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525368, 27.617760, 52.953583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228969, -0.474881, -0.849742,
		0.271848, 0.807007, -0.524251,
		0.934704, -0.351038, -0.055684,
		39.805779, 27.512447, 52.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312241, 27.735960, 52.187141>,  <39.151485, 27.758175, 52.975857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312241, 27.735960, 52.187141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623833, 27.533470, 52.335155>,  <39.810787, 27.411976, 52.423965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623833, 27.533470, 52.335155>,  <39.312241, 27.735960, 52.187141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623833, 27.533470, 52.335155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041227, -0.630196, -0.775341,
		0.625695, 0.588717, -0.511779,
		0.778978, -0.506226, 0.370040,
		39.857525, 27.381603, 52.446167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941902, 27.622684, 51.766018>,  <39.312241, 27.735960, 52.187141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941902, 27.622684, 51.766018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879532, 27.303999, 51.999577>,  <39.842110, 27.112787, 52.139709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879532, 27.303999, 51.999577>,  <39.941902, 27.622684, 51.766018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879532, 27.303999, 51.999577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245852, -0.541219, -0.804138,
		0.956684, -0.268936, -0.111485,
		-0.155924, -0.796715, 0.583894,
		39.832756, 27.064985, 52.174744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956295, 26.984989, 51.307865>,  <39.941902, 27.622684, 51.766018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956295, 26.984989, 51.307865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789463, 26.826864, 51.635223>,  <39.689365, 26.731989, 51.831638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789463, 26.826864, 51.635223>,  <39.956295, 26.984989, 51.307865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789463, 26.826864, 51.635223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604816, -0.551410, -0.574582,
		0.678412, -0.734625, -0.009110,
		-0.417079, -0.395314, 0.818396,
		39.664341, 26.708271, 51.880741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009487, 26.304476, 51.195118>,  <39.956295, 26.984989, 51.307865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009487, 26.304476, 51.195118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713684, 26.379555, 51.453701>,  <39.536201, 26.424603, 51.608849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713684, 26.379555, 51.453701>,  <40.009487, 26.304476, 51.195118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713684, 26.379555, 51.453701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607445, -0.599904, -0.520698,
		0.290078, -0.777744, 0.557646,
		-0.739503, 0.187696, 0.646456,
		39.491833, 26.435863, 51.647636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544067, 25.656254, 51.344814>,  <40.009487, 26.304476, 51.195118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544067, 25.656254, 51.344814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314423, 25.974724, 51.421238>,  <39.176636, 26.165806, 51.467091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314423, 25.974724, 51.421238>,  <39.544067, 25.656254, 51.344814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314423, 25.974724, 51.421238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743395, -0.409070, -0.529174,
		-0.343157, -0.445838, 0.826723,
		-0.574114, 0.796172, 0.191059,
		39.142189, 26.213575, 51.478554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890938, 25.323845, 51.262920>,  <39.544067, 25.656254, 51.344814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890938, 25.323845, 51.262920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840366, 25.719349, 51.230999>,  <38.810024, 25.956652, 51.211845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840366, 25.719349, 51.230999>,  <38.890938, 25.323845, 51.262920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840366, 25.719349, 51.230999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648293, -0.143255, -0.747793,
		-0.750821, -0.042807, 0.659118,
		-0.126433, 0.988760, -0.079808,
		38.802437, 26.015976, 51.207058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179401, 25.411051, 51.159904>,  <38.890938, 25.323845, 51.262920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179401, 25.411051, 51.159904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391079, 25.713366, 51.005638>,  <38.518085, 25.894754, 50.913078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391079, 25.713366, 51.005638>,  <38.179401, 25.411051, 51.159904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391079, 25.713366, 51.005638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521663, -0.068669, -0.850384,
		-0.669192, 0.651207, 0.357927,
		0.529198, 0.755787, -0.385663,
		38.549839, 25.940102, 50.889938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724426, 25.871426, 50.883976>,  <38.179401, 25.411051, 51.159904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724426, 25.871426, 50.883976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054550, 25.972250, 50.681858>,  <38.252625, 26.032745, 50.560589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054550, 25.972250, 50.681858>,  <37.724426, 25.871426, 50.883976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054550, 25.972250, 50.681858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541467, 0.099350, -0.834831,
		-0.160227, 0.962598, 0.218478,
		0.825313, 0.252061, -0.505296,
		38.302143, 26.047869, 50.530270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483482, 26.316778, 50.315384>,  <37.724426, 25.871426, 50.883976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483482, 26.316778, 50.315384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860928, 26.239779, 50.207653>,  <38.087395, 26.193579, 50.143017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860928, 26.239779, 50.207653>,  <37.483482, 26.316778, 50.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860928, 26.239779, 50.207653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245762, 0.137716, -0.959497,
		0.221791, 0.971586, 0.082643,
		0.943615, -0.192497, -0.269323,
		38.144012, 26.182030, 50.126858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705063, 26.885899, 49.907650>,  <37.483482, 26.316778, 50.315384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705063, 26.885899, 49.907650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955158, 26.590073, 49.807961>,  <38.105217, 26.412577, 49.748146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955158, 26.590073, 49.807961>,  <37.705063, 26.885899, 49.907650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955158, 26.590073, 49.807961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105328, 0.236458, -0.965916,
		0.773291, 0.630182, 0.069946,
		0.625242, -0.739566, -0.249227,
		38.142731, 26.368202, 49.733192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294598, 27.290041, 49.568417>,  <37.705063, 26.885899, 49.907650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294598, 27.290041, 49.568417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316586, 26.910936, 49.442730>,  <38.329777, 26.683474, 49.367317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316586, 26.910936, 49.442730>,  <38.294598, 27.290041, 49.568417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316586, 26.910936, 49.442730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131890, 0.318823, -0.938593,
		0.989739, 0.010148, 0.142524,
		0.054965, -0.947760, -0.314213,
		38.333076, 26.626608, 49.348465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729130, 27.314384, 48.978512>,  <38.294598, 27.290041, 49.568417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729130, 27.314384, 48.978512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552509, 26.958252, 48.934067>,  <38.446537, 26.744572, 48.907398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552509, 26.958252, 48.934067>,  <38.729130, 27.314384, 48.978512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552509, 26.958252, 48.934067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058404, 0.152095, -0.986639,
		0.895335, -0.429159, -0.119155,
		-0.441547, -0.890331, -0.111111,
		38.420044, 26.691153, 48.900734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115952, 27.019333, 48.504951>,  <38.729130, 27.314384, 48.978512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115952, 27.019333, 48.504951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749561, 26.858849, 48.502869>,  <38.529728, 26.762558, 48.501621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749561, 26.858849, 48.502869>,  <39.115952, 27.019333, 48.504951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749561, 26.858849, 48.502869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060362, 0.150606, -0.986749,
		0.396678, -0.903520, -0.162168,
		-0.915971, -0.401210, -0.005204,
		38.474770, 26.738485, 48.501308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090065, 26.613676, 47.930374>,  <39.115952, 27.019333, 48.504951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090065, 26.613676, 47.930374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718437, 26.711514, 48.041370>,  <38.495461, 26.770216, 48.107967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718437, 26.711514, 48.041370>,  <39.090065, 26.613676, 47.930374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718437, 26.711514, 48.041370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163168, 0.402265, -0.900866,
		-0.331971, -0.882246, -0.333822,
		-0.929070, 0.244592, 0.277495,
		38.439716, 26.784891, 48.124619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628315, 26.292814, 47.407539>,  <39.090065, 26.613676, 47.930374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628315, 26.292814, 47.407539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438976, 26.612333, 47.556061>,  <38.325375, 26.804045, 47.645176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438976, 26.612333, 47.556061>,  <38.628315, 26.292814, 47.407539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438976, 26.612333, 47.556061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329124, 0.230612, -0.915694,
		-0.817081, -0.555645, 0.153744,
		-0.473346, 0.798797, 0.371305,
		38.296974, 26.851973, 47.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015518, 26.263260, 47.030769>,  <38.628315, 26.292814, 47.407539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015518, 26.263260, 47.030769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003185, 26.633360, 47.182011>,  <37.995785, 26.855421, 47.272755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003185, 26.633360, 47.182011>,  <38.015518, 26.263260, 47.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003185, 26.633360, 47.182011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447559, 0.325460, -0.832927,
		-0.893723, -0.194902, 0.404071,
		-0.030830, 0.925251, 0.378101,
		37.993935, 26.910934, 47.295441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348267, 26.626360, 46.774052>,  <38.015518, 26.263260, 47.030769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348267, 26.626360, 46.774052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577007, 26.933048, 46.890755>,  <37.714252, 27.117062, 46.960777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577007, 26.933048, 46.890755>,  <37.348267, 26.626360, 46.774052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577007, 26.933048, 46.890755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393156, 0.568290, -0.722824,
		-0.720007, 0.298643, 0.626420,
		0.571855, 0.766719, 0.291759,
		37.748562, 27.163065, 46.978283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909443, 27.204794, 46.832321>,  <37.348267, 26.626360, 46.774052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909443, 27.204794, 46.832321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288250, 27.298231, 46.744141>,  <37.515533, 27.354294, 46.691235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288250, 27.298231, 46.744141>,  <36.909443, 27.204794, 46.832321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288250, 27.298231, 46.744141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315626, 0.549592, -0.773517,
		-0.059531, 0.802112, 0.594200,
		0.947015, 0.233593, -0.220449,
		37.572353, 27.368309, 46.678005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929306, 27.971600, 46.900219>,  <36.909443, 27.204794, 46.832321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929306, 27.971600, 46.900219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221573, 27.860346, 46.650814>,  <37.396935, 27.793592, 46.501171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221573, 27.860346, 46.650814>,  <36.929306, 27.971600, 46.900219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221573, 27.860346, 46.650814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470491, 0.456648, -0.755057,
		0.494732, 0.845052, 0.202799,
		0.730670, -0.278135, -0.623508,
		37.440773, 27.776905, 46.463760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123077, 28.543970, 46.492748>,  <36.929306, 27.971600, 46.900219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123077, 28.543970, 46.492748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211658, 28.205881, 46.298199>,  <37.264805, 28.003029, 46.181469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211658, 28.205881, 46.298199>,  <37.123077, 28.543970, 46.492748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211658, 28.205881, 46.298199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405532, 0.373765, -0.834173,
		0.886850, 0.381968, -0.259993,
		0.221451, -0.845222, -0.486374,
		37.278095, 27.952314, 46.152287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350842, 28.844315, 45.777195>,  <37.123077, 28.543970, 46.492748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350842, 28.844315, 45.777195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275867, 28.451834, 45.758797>,  <37.230885, 28.216345, 45.747757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275867, 28.451834, 45.758797>,  <37.350842, 28.844315, 45.777195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275867, 28.451834, 45.758797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505286, 0.136467, -0.852093,
		0.842351, -0.136470, -0.521365,
		-0.187434, -0.981200, -0.045997,
		37.219639, 28.157475, 45.744999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645771, 28.628187, 45.100624>,  <37.350842, 28.844315, 45.777195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645771, 28.628187, 45.100624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385490, 28.348450, 45.218945>,  <37.229321, 28.180607, 45.289936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385490, 28.348450, 45.218945>,  <37.645771, 28.628187, 45.100624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385490, 28.348450, 45.218945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522208, 0.129342, -0.842952,
		0.551254, -0.702986, -0.449367,
		-0.650706, -0.699344, 0.295805,
		37.190277, 28.138647, 45.307686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528965, 28.201876, 44.505791>,  <37.645771, 28.628187, 45.100624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528965, 28.201876, 44.505791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204834, 28.136475, 44.730873>,  <37.010357, 28.097235, 44.865921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204834, 28.136475, 44.730873>,  <37.528965, 28.201876, 44.505791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204834, 28.136475, 44.730873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575934, 0.045213, -0.816245,
		0.108021, -0.985505, -0.130808,
		-0.810328, -0.163508, 0.562702,
		36.961735, 28.087423, 44.899685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113895, 27.698465, 44.096882>,  <37.528965, 28.201876, 44.505791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113895, 27.698465, 44.096882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869438, 27.884256, 44.353245>,  <36.722763, 27.995731, 44.507065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869438, 27.884256, 44.353245>,  <37.113895, 27.698465, 44.096882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869438, 27.884256, 44.353245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690784, 0.082320, -0.718360,
		-0.386423, -0.881750, 0.270545,
		-0.611143, 0.464479, 0.640909,
		36.686096, 28.023600, 44.545517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525196, 27.396822, 44.060204>,  <37.113895, 27.698465, 44.096882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525196, 27.396822, 44.060204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410683, 27.752153, 44.203823>,  <36.341976, 27.965351, 44.289997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410683, 27.752153, 44.203823>,  <36.525196, 27.396822, 44.060204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410683, 27.752153, 44.203823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760630, 0.017171, -0.648958,
		-0.582652, -0.458891, 0.670772,
		-0.286283, 0.888327, 0.359052,
		36.324799, 28.018652, 44.311539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803608, 27.329679, 44.186646>,  <36.525196, 27.396822, 44.060204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803608, 27.329679, 44.186646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852566, 27.725368, 44.154503>,  <35.881943, 27.962782, 44.135216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852566, 27.725368, 44.154503>,  <35.803608, 27.329679, 44.186646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852566, 27.725368, 44.154503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783643, 0.046641, -0.619459,
		-0.609035, 0.138792, 0.780906,
		0.122398, 0.989223, -0.080357,
		35.889286, 28.022135, 44.130394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218285, 27.546070, 44.011581>,  <35.803608, 27.329679, 44.186646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218285, 27.546070, 44.011581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439594, 27.869389, 43.931034>,  <35.572380, 28.063379, 43.882706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439594, 27.869389, 43.931034>,  <35.218285, 27.546070, 44.011581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439594, 27.869389, 43.931034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607123, 0.225774, -0.761858,
		-0.570343, 0.543769, 0.615649,
		0.553272, 0.808295, -0.201366,
		35.605576, 28.111877, 43.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681255, 28.068056, 43.888443>,  <35.218285, 27.546070, 44.011581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681255, 28.068056, 43.888443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019402, 28.235613, 43.755844>,  <35.222290, 28.336147, 43.676285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019402, 28.235613, 43.755844>,  <34.681255, 28.068056, 43.888443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019402, 28.235613, 43.755844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465942, 0.274713, -0.841089,
		-0.261259, 0.865484, 0.427412,
		0.845365, 0.418891, -0.331494,
		35.273010, 28.361280, 43.656395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570801, 28.843948, 43.785496>,  <34.681255, 28.068056, 43.888443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570801, 28.843948, 43.785496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842072, 28.668850, 43.549377>,  <35.004833, 28.563791, 43.407707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842072, 28.668850, 43.549377>,  <34.570801, 28.843948, 43.785496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842072, 28.668850, 43.549377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388569, 0.468187, -0.793608,
		0.623770, 0.767580, 0.147420,
		0.678178, -0.437746, -0.590299,
		35.045525, 28.537525, 43.372288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606983, 29.328238, 43.267082>,  <34.570801, 28.843948, 43.785496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606983, 29.328238, 43.267082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797771, 29.022100, 43.094227>,  <34.912247, 28.838417, 42.990513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797771, 29.022100, 43.094227>,  <34.606983, 29.328238, 43.267082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797771, 29.022100, 43.094227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377321, 0.265751, -0.887133,
		0.793803, 0.586195, -0.162024,
		0.476975, -0.765345, -0.432137,
		34.940865, 28.792498, 42.964584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937901, 29.601906, 42.667046>,  <34.606983, 29.328238, 43.267082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937901, 29.601906, 42.667046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903393, 29.208614, 42.602776>,  <34.882687, 28.972639, 42.564213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903393, 29.208614, 42.602776>,  <34.937901, 29.601906, 42.667046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903393, 29.208614, 42.602776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171856, 0.173545, -0.969715,
		0.981337, -0.056044, -0.183945,
		-0.086269, -0.983230, -0.160675,
		34.877510, 28.913645, 42.554573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463882, 29.533646, 42.213287>,  <34.937901, 29.601906, 42.667046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463882, 29.533646, 42.213287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183094, 29.250854, 42.178841>,  <35.014618, 29.081181, 42.158173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183094, 29.250854, 42.178841>,  <35.463882, 29.533646, 42.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183094, 29.250854, 42.178841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194037, 0.306184, -0.931988,
		0.685259, -0.637523, -0.352113,
		-0.701975, -0.706976, -0.086113,
		34.972500, 29.038761, 42.153008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529602, 29.256573, 41.520916>,  <35.463882, 29.533646, 42.213287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529602, 29.256573, 41.520916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160995, 29.165993, 41.647114>,  <34.939831, 29.111645, 41.722832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160995, 29.165993, 41.647114>,  <35.529602, 29.256573, 41.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160995, 29.165993, 41.647114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347034, 0.115536, -0.930709,
		0.174312, -0.967145, -0.185055,
		-0.921511, -0.226454, 0.315493,
		34.884541, 29.098057, 41.741760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173630, 28.951307, 40.881012>,  <35.529602, 29.256573, 41.520916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173630, 28.951307, 40.881012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876522, 28.990946, 41.145882>,  <34.698257, 29.014729, 41.304802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876522, 28.990946, 41.145882>,  <35.173630, 28.951307, 40.881012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876522, 28.990946, 41.145882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642875, 0.170789, -0.746688,
		-0.187084, -0.980312, -0.063152,
		-0.742773, 0.099095, 0.662170,
		34.653690, 29.020674, 41.344532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686653, 28.530132, 40.606613>,  <35.173630, 28.951307, 40.881012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686653, 28.530132, 40.606613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491737, 28.782927, 40.847656>,  <34.374786, 28.934603, 40.992283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491737, 28.782927, 40.847656>,  <34.686653, 28.530132, 40.606613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491737, 28.782927, 40.847656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659287, 0.186256, -0.728457,
		-0.572614, -0.752266, 0.325898,
		-0.487293, 0.631985, 0.602612,
		34.345551, 28.972523, 41.028439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005325, 28.395060, 40.488987>,  <34.686653, 28.530132, 40.606613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005325, 28.395060, 40.488987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001324, 28.757042, 40.659142>,  <33.998924, 28.974232, 40.761234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001324, 28.757042, 40.659142>,  <34.005325, 28.395060, 40.488987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001324, 28.757042, 40.659142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769536, 0.264679, -0.581171,
		-0.638525, -0.333161, 0.693750,
		-0.010002, 0.904958, 0.425384,
		33.998322, 29.028530, 40.786758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251663, 28.645672, 40.647095>,  <34.005325, 28.395060, 40.488987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251663, 28.645672, 40.647095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489662, 28.959967, 40.579456>,  <33.632462, 29.148544, 40.538876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489662, 28.959967, 40.579456>,  <33.251663, 28.645672, 40.647095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489662, 28.959967, 40.579456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671858, 0.370776, -0.641196,
		-0.441116, 0.495117, 0.748516,
		0.594999, 0.785738, -0.169094,
		33.668163, 29.195688, 40.528728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814728, 29.221142, 40.640614>,  <33.251663, 28.645672, 40.647095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814728, 29.221142, 40.640614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151150, 29.342995, 40.461803>,  <33.353001, 29.416107, 40.354515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151150, 29.342995, 40.461803>,  <32.814728, 29.221142, 40.640614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151150, 29.342995, 40.461803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538435, 0.391715, -0.746088,
		-0.052175, 0.868193, 0.493477,
		0.841051, 0.304632, -0.447027,
		33.403465, 29.434383, 40.327694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591892, 29.764549, 40.215500>,  <32.814728, 29.221142, 40.640614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591892, 29.764549, 40.215500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964138, 29.707209, 40.080795>,  <33.187485, 29.672804, 39.999973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964138, 29.707209, 40.080795>,  <32.591892, 29.764549, 40.215500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964138, 29.707209, 40.080795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286491, 0.287300, -0.913992,
		0.227775, 0.947053, 0.226296,
		0.930613, -0.143353, -0.336762,
		33.243320, 29.664204, 39.979767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673115, 30.395325, 39.839127>,  <32.591892, 29.764549, 40.215500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673115, 30.395325, 39.839127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915359, 30.102304, 39.714798>,  <33.060707, 29.926493, 39.640202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915359, 30.102304, 39.714798>,  <32.673115, 30.395325, 39.839127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915359, 30.102304, 39.714798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264714, 0.182895, -0.946824,
		0.750444, 0.655683, -0.083153,
		0.605608, -0.732550, -0.310821,
		33.097042, 29.882540, 39.621552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134731, 30.675497, 39.334423>,  <32.673115, 30.395325, 39.839127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134731, 30.675497, 39.334423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143303, 30.280125, 39.274368>,  <33.148445, 30.042900, 39.238335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143303, 30.280125, 39.274368>,  <33.134731, 30.675497, 39.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143303, 30.280125, 39.274368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048462, 0.148966, -0.987654,
		0.998595, 0.028442, -0.044708,
		0.021431, -0.988433, -0.150135,
		33.149731, 29.983595, 39.229328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625172, 30.695723, 38.878567>,  <33.134731, 30.675497, 39.334423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625172, 30.695723, 38.878567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450287, 30.339733, 38.826740>,  <33.345356, 30.126139, 38.795643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450287, 30.339733, 38.826740>,  <33.625172, 30.695723, 38.878567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450287, 30.339733, 38.826740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063274, 0.113272, -0.991547,
		0.897128, -0.441718, 0.006788,
		-0.437215, -0.889974, -0.129569,
		33.319122, 30.072741, 38.787868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090160, 30.354658, 38.341476>,  <33.625172, 30.695723, 38.878567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090160, 30.354658, 38.341476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726036, 30.191458, 38.369362>,  <33.507561, 30.093536, 38.386093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726036, 30.191458, 38.369362>,  <34.090160, 30.354658, 38.341476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726036, 30.191458, 38.369362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129149, 0.119956, -0.984343,
		0.393252, -0.905066, -0.161891,
		-0.910315, -0.408003, 0.069715,
		33.452942, 30.069057, 38.390278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568176, 30.838995, 38.614670>,  <34.090160, 30.354658, 38.341476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568176, 30.838995, 38.614670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828274, 30.935518, 38.326515>,  <34.984333, 30.993433, 38.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828274, 30.935518, 38.326515>,  <34.568176, 30.838995, 38.614670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828274, 30.935518, 38.326515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730717, 0.060873, 0.679961,
		0.207934, -0.968537, -0.136747,
		0.650243, 0.241310, -0.720384,
		35.023346, 31.007912, 38.110401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052467, 30.254980, 38.518864>,  <34.568176, 30.838995, 38.614670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052467, 30.254980, 38.518864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235992, 30.588852, 38.397015>,  <35.346107, 30.789175, 38.323906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235992, 30.588852, 38.397015>,  <35.052467, 30.254980, 38.518864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235992, 30.588852, 38.397015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659568, -0.090216, 0.746211,
		0.595367, -0.543293, -0.591922,
		0.458812, 0.834682, -0.304627,
		35.373634, 30.839256, 38.305626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713875, 30.130293, 38.248520>,  <35.052467, 30.254980, 38.518864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713875, 30.130293, 38.248520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750694, 30.523130, 38.314270>,  <35.772785, 30.758833, 38.353722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750694, 30.523130, 38.314270>,  <35.713875, 30.130293, 38.248520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750694, 30.523130, 38.314270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775104, -0.174300, 0.607317,
		0.625092, 0.071505, -0.777269,
		0.092052, 0.982093, 0.164378,
		35.778309, 30.817759, 38.363583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337379, 30.314440, 38.113888>,  <35.713875, 30.130293, 38.248520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337379, 30.314440, 38.113888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258007, 30.634266, 38.340630>,  <36.210384, 30.826160, 38.476673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258007, 30.634266, 38.340630>,  <36.337379, 30.314440, 38.113888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258007, 30.634266, 38.340630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874630, -0.116552, 0.470571,
		0.442320, 0.589163, -0.676195,
		-0.198432, 0.799564, 0.566853,
		36.198479, 30.874136, 38.510685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001019, 30.770245, 38.178658>,  <36.337379, 30.314440, 38.113888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001019, 30.770245, 38.178658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753685, 30.847490, 38.483387>,  <36.605286, 30.893837, 38.666225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753685, 30.847490, 38.483387>,  <37.001019, 30.770245, 38.178658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753685, 30.847490, 38.483387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774208, -0.017041, 0.632702,
		0.135166, 0.981028, -0.138973,
		-0.618330, 0.193114, 0.761823,
		36.568188, 30.905424, 38.711933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323456, 31.335857, 38.576546>,  <37.001019, 30.770245, 38.178658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323456, 31.335857, 38.576546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061069, 31.211948, 38.851864>,  <36.903637, 31.137602, 39.017056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061069, 31.211948, 38.851864>,  <37.323456, 31.335857, 38.576546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061069, 31.211948, 38.851864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702864, 0.081686, 0.706618,
		-0.275115, 0.947295, 0.164146,
		-0.655968, -0.309774, 0.688293,
		36.864281, 31.119017, 39.058353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266079, 31.800886, 39.263538>,  <37.323456, 31.335857, 38.576546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266079, 31.800886, 39.263538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153904, 31.431767, 39.369213>,  <37.086601, 31.210295, 39.432617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153904, 31.431767, 39.369213>,  <37.266079, 31.800886, 39.263538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153904, 31.431767, 39.369213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692557, -0.003952, 0.721352,
		-0.664621, 0.385256, 0.640201,
		-0.280435, -0.922801, 0.264185,
		37.069775, 31.154926, 39.448467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220024, 31.775427, 40.043129>,  <37.266079, 31.800886, 39.263538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220024, 31.775427, 40.043129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264061, 31.390820, 39.942440>,  <37.290485, 31.160055, 39.882027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264061, 31.390820, 39.942440>,  <37.220024, 31.775427, 40.043129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264061, 31.390820, 39.942440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495638, -0.166418, 0.852436,
		-0.861523, -0.218613, 0.458242,
		0.110094, -0.961516, -0.251726,
		37.297089, 31.102365, 39.866920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035580, 31.442768, 40.745342>,  <37.220024, 31.775427, 40.043129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035580, 31.442768, 40.745342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206196, 31.165688, 40.512714>,  <37.308567, 30.999439, 40.373138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206196, 31.165688, 40.512714>,  <37.035580, 31.442768, 40.745342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206196, 31.165688, 40.512714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448852, -0.396121, 0.801012,
		-0.785236, -0.602703, 0.141960,
		0.426539, -0.692703, -0.581573,
		37.334156, 30.957876, 40.338242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889626, 30.786478, 41.020397>,  <37.035580, 31.442768, 40.745342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889626, 30.786478, 41.020397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220127, 30.722898, 40.804234>,  <37.418427, 30.684750, 40.674538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220127, 30.722898, 40.804234>,  <36.889626, 30.786478, 41.020397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220127, 30.722898, 40.804234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436945, -0.424611, 0.792959,
		-0.355500, -0.891314, -0.281387,
		0.826256, -0.158946, -0.540405,
		37.468002, 30.675213, 40.642113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143940, 30.081280, 41.227364>,  <36.889626, 30.786478, 41.020397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143940, 30.081280, 41.227364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459892, 30.272118, 41.073235>,  <37.649464, 30.386620, 40.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459892, 30.272118, 41.073235>,  <37.143940, 30.081280, 41.227364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459892, 30.272118, 41.073235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594460, -0.441237, 0.672256,
		0.150708, -0.760060, -0.632135,
		0.789877, 0.477094, -0.385327,
		37.696854, 30.415245, 40.957638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678005, 29.531244, 41.118580>,  <37.143940, 30.081280, 41.227364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678005, 29.531244, 41.118580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871120, 29.881130, 41.135536>,  <37.986988, 30.091061, 41.145710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871120, 29.881130, 41.135536>,  <37.678005, 29.531244, 41.118580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871120, 29.881130, 41.135536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690171, -0.409830, 0.596409,
		0.539058, -0.258684, -0.801561,
		0.482785, 0.874713, 0.042386,
		38.015957, 30.143543, 41.148251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320030, 29.311317, 40.954674>,  <37.678005, 29.531244, 41.118580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320030, 29.311317, 40.954674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351982, 29.675350, 41.117340>,  <38.371155, 29.893770, 41.214939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351982, 29.675350, 41.117340>,  <38.320030, 29.311317, 40.954674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351982, 29.675350, 41.117340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570290, -0.376327, 0.730169,
		0.817550, 0.173587, -0.549071,
		0.079882, 0.910080, 0.406661,
		38.375946, 29.948374, 41.239338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060062, 29.470718, 41.066940>,  <38.320030, 29.311317, 40.954674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060062, 29.470718, 41.066940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872391, 29.711840, 41.325089>,  <38.759789, 29.856512, 41.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872391, 29.711840, 41.325089>,  <39.060062, 29.470718, 41.066940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872391, 29.711840, 41.325089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440077, -0.473999, 0.762665,
		0.765640, 0.641838, -0.042889,
		-0.469178, 0.602801, 0.645371,
		38.731636, 29.892679, 41.518700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527534, 29.618816, 41.537838>,  <39.060062, 29.470718, 41.066940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527534, 29.618816, 41.537838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180645, 29.720716, 41.708961>,  <38.972511, 29.781857, 41.811634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180645, 29.720716, 41.708961>,  <39.527534, 29.618816, 41.537838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180645, 29.720716, 41.708961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383444, -0.206409, 0.900203,
		0.317630, 0.944721, 0.081321,
		-0.867226, 0.254750, 0.427809,
		38.920479, 29.797142, 41.837303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659107, 30.179651, 42.024338>,  <39.527534, 29.618816, 41.537838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659107, 30.179651, 42.024338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308559, 30.015203, 42.124699>,  <39.098228, 29.916534, 42.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308559, 30.015203, 42.124699>,  <39.659107, 30.179651, 42.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308559, 30.015203, 42.124699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364034, -0.224321, 0.903969,
		-0.315357, 0.883550, 0.346251,
		-0.876373, -0.411120, 0.250901,
		39.045647, 29.891867, 42.199970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455658, 30.370520, 42.756943>,  <39.659107, 30.179651, 42.024338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455658, 30.370520, 42.756943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231445, 30.044577, 42.697872>,  <39.096916, 29.849010, 42.662430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231445, 30.044577, 42.697872>,  <39.455658, 30.370520, 42.756943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231445, 30.044577, 42.697872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056858, -0.215770, 0.974787,
		-0.826177, 0.538006, 0.167278,
		-0.560535, -0.814858, -0.147674,
		39.063286, 29.800119, 42.653568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997997, 30.344151, 43.364079>,  <39.455658, 30.370520, 42.756943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997997, 30.344151, 43.364079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978104, 29.990641, 43.177975>,  <38.966167, 29.778534, 43.066311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978104, 29.990641, 43.177975>,  <38.997997, 30.344151, 43.364079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978104, 29.990641, 43.177975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047443, -0.463222, 0.884972,
		-0.997635, 0.066088, -0.018891,
		-0.049735, -0.883775, -0.465261,
		38.963184, 29.725508, 43.038395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382038, 30.010107, 43.509983>,  <38.997997, 30.344151, 43.364079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382038, 30.010107, 43.509983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649765, 29.727224, 43.418873>,  <38.810402, 29.557495, 43.364208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649765, 29.727224, 43.418873>,  <38.382038, 30.010107, 43.509983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649765, 29.727224, 43.418873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014267, -0.318747, 0.947733,
		-0.742844, -0.631080, -0.223431,
		0.669313, -0.707205, -0.227776,
		38.850559, 29.515062, 43.350540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166061, 29.393297, 43.932079>,  <38.382038, 30.010107, 43.509983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166061, 29.393297, 43.932079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553066, 29.332870, 43.850994>,  <38.785271, 29.296614, 43.802345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553066, 29.332870, 43.850994>,  <38.166061, 29.393297, 43.932079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553066, 29.332870, 43.850994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129644, -0.391890, 0.910832,
		-0.217034, -0.907525, -0.359576,
		0.967517, -0.151065, -0.202709,
		38.843323, 29.287550, 43.790180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287376, 28.711554, 44.140816>,  <38.166061, 29.393297, 43.932079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287376, 28.711554, 44.140816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642796, 28.895035, 44.137215>,  <38.856045, 29.005123, 44.135052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642796, 28.895035, 44.137215>,  <38.287376, 28.711554, 44.140816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642796, 28.895035, 44.137215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125089, -0.223329, 0.966684,
		0.441409, -0.860067, -0.255816,
		0.888544, 0.458703, -0.009006,
		38.909359, 29.032646, 44.134514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803493, 28.296509, 44.475254>,  <38.287376, 28.711554, 44.140816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803493, 28.296509, 44.475254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977661, 28.656435, 44.486168>,  <39.082161, 28.872391, 44.492718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977661, 28.656435, 44.486168>,  <38.803493, 28.296509, 44.475254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977661, 28.656435, 44.486168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142677, -0.098902, 0.984816,
		0.888850, -0.424913, -0.171446,
		0.435418, 0.899815, 0.027283,
		39.108288, 28.926380, 44.494354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407028, 28.233007, 44.902836>,  <38.803493, 28.296509, 44.475254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407028, 28.233007, 44.902836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288204, 28.614508, 44.921238>,  <39.216908, 28.843407, 44.932278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288204, 28.614508, 44.921238>,  <39.407028, 28.233007, 44.902836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288204, 28.614508, 44.921238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134754, -0.005822, 0.990862,
		0.945301, 0.300548, -0.126792,
		-0.297063, 0.953749, 0.046004,
		39.199085, 28.900633, 44.935040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865879, 28.421442, 45.392452>,  <39.407028, 28.233007, 44.902836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865879, 28.421442, 45.392452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618046, 28.733643, 45.359161>,  <39.469345, 28.920963, 45.339188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618046, 28.733643, 45.359161>,  <39.865879, 28.421442, 45.392452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618046, 28.733643, 45.359161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216346, 0.271738, 0.937738,
		0.754524, 0.563003, -0.337224,
		-0.619586, 0.780504, -0.083229,
		39.432171, 28.967794, 45.334194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295033, 28.988722, 45.474739>,  <39.865879, 28.421442, 45.392452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295033, 28.988722, 45.474739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909924, 29.062212, 45.554058>,  <39.678860, 29.106306, 45.601650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909924, 29.062212, 45.554058>,  <40.295033, 28.988722, 45.474739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909924, 29.062212, 45.554058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244593, 0.279709, 0.928406,
		0.115107, 0.942342, -0.314233,
		-0.962769, 0.183725, 0.198294,
		39.621094, 29.117329, 45.613544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246445, 29.599522, 45.816475>,  <40.295033, 28.988722, 45.474739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246445, 29.599522, 45.816475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899994, 29.435373, 45.930611>,  <39.692123, 29.336884, 45.999092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899994, 29.435373, 45.930611>,  <40.246445, 29.599522, 45.816475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899994, 29.435373, 45.930611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134768, 0.357995, 0.923946,
		-0.481312, 0.838710, -0.254765,
		-0.866127, -0.410372, 0.285339,
		39.640156, 29.312262, 46.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987324, 30.007486, 46.293037>,  <40.246445, 29.599522, 45.816475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987324, 30.007486, 46.293037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760872, 29.684868, 46.361130>,  <39.625000, 29.491297, 46.401985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760872, 29.684868, 46.361130>,  <39.987324, 30.007486, 46.293037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760872, 29.684868, 46.361130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096461, 0.140277, 0.985402,
		-0.818651, 0.574290, -0.001615,
		-0.566133, -0.806545, 0.170234,
		39.591034, 29.442905, 46.412201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485344, 30.222548, 46.832741>,  <39.987324, 30.007486, 46.293037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485344, 30.222548, 46.832741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516113, 29.824747, 46.861176>,  <39.534573, 29.586067, 46.878239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516113, 29.824747, 46.861176>,  <39.485344, 30.222548, 46.832741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516113, 29.824747, 46.861176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017061, 0.072603, 0.997215,
		-0.996891, -0.075493, 0.022551,
		0.076920, -0.994500, 0.071089,
		39.539188, 29.526398, 46.882504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190899, 30.152786, 47.475933>,  <39.485344, 30.222548, 46.832741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190899, 30.152786, 47.475933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392120, 29.813004, 47.412231>,  <39.512852, 29.609135, 47.374012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392120, 29.813004, 47.412231>,  <39.190899, 30.152786, 47.475933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392120, 29.813004, 47.412231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233913, -0.043564, 0.971281,
		-0.831998, -0.525858, 0.176784,
		0.503054, -0.849456, -0.159250,
		39.543037, 29.558167, 47.364456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011646, 29.694454, 47.970497>,  <39.190899, 30.152786, 47.475933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011646, 29.694454, 47.970497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362751, 29.537052, 47.861183>,  <39.573414, 29.442612, 47.795597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362751, 29.537052, 47.861183>,  <39.011646, 29.694454, 47.970497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362751, 29.537052, 47.861183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297126, -0.000335, 0.954838,
		-0.375824, -0.919323, 0.116626,
		0.877766, -0.393503, -0.273281,
		39.626080, 29.419001, 47.779198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181217, 29.114235, 48.439972>,  <39.011646, 29.694454, 47.970497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181217, 29.114235, 48.439972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533596, 29.225044, 48.286507>,  <39.745022, 29.291531, 48.194427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533596, 29.225044, 48.286507>,  <39.181217, 29.114235, 48.439972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533596, 29.225044, 48.286507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430899, -0.134463, 0.892326,
		0.195607, -0.951408, -0.237824,
		0.880945, 0.277023, -0.383659,
		39.797878, 29.308151, 48.171410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631790, 28.658979, 48.730808>,  <39.181217, 29.114235, 48.439972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631790, 28.658979, 48.730808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835068, 28.988901, 48.631664>,  <39.957035, 29.186853, 48.572178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835068, 28.988901, 48.631664>,  <39.631790, 28.658979, 48.730808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835068, 28.988901, 48.631664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403923, 0.025914, 0.914426,
		0.760646, -0.564823, -0.319989,
		0.508197, 0.824805, -0.247857,
		39.987526, 29.236343, 48.557308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263847, 28.545179, 48.941303>,  <39.631790, 28.658979, 48.730808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263847, 28.545179, 48.941303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267860, 28.941051, 48.884129>,  <40.270267, 29.178576, 48.849823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267860, 28.941051, 48.884129>,  <40.263847, 28.545179, 48.941303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267860, 28.941051, 48.884129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564729, 0.112360, 0.817591,
		0.825215, -0.088923, -0.557775,
		0.010031, 0.989681, -0.142939,
		40.270870, 29.237955, 48.841248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923981, 28.767355, 49.104542>,  <40.263847, 28.545179, 48.941303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923981, 28.767355, 49.104542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759747, 29.132080, 49.106228>,  <40.661205, 29.350916, 49.107239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759747, 29.132080, 49.106228>,  <40.923981, 28.767355, 49.104542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759747, 29.132080, 49.106228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624117, 0.277654, 0.730333,
		0.664757, 0.302494, -0.683078,
		-0.410581, 0.911815, 0.004219,
		40.636574, 29.405624, 49.107494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478298, 29.214359, 49.116135>,  <40.923981, 28.767355, 49.104542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478298, 29.214359, 49.116135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170784, 29.417833, 49.271160>,  <40.986275, 29.539917, 49.364178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170784, 29.417833, 49.271160>,  <41.478298, 29.214359, 49.116135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170784, 29.417833, 49.271160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622917, 0.458509, 0.633833,
		0.144719, 0.728703, -0.669364,
		-0.768785, 0.508686, 0.387567,
		40.940147, 29.570438, 49.387428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791019, 29.833885, 49.393085>,  <41.478298, 29.214359, 49.116135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791019, 29.833885, 49.393085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428474, 29.796568, 49.557915>,  <41.210949, 29.774178, 49.656815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428474, 29.796568, 49.557915>,  <41.791019, 29.833885, 49.393085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428474, 29.796568, 49.557915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355614, 0.358201, 0.863267,
		-0.228143, 0.928972, -0.291483,
		-0.906360, -0.093293, 0.412077,
		41.156567, 29.768579, 49.681538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768745, 30.390310, 49.841827>,  <41.791019, 29.833885, 49.393085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768745, 30.390310, 49.841827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485451, 30.138910, 49.970444>,  <41.315475, 29.988070, 50.047615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485451, 30.138910, 49.970444>,  <41.768745, 30.390310, 49.841827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485451, 30.138910, 49.970444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203470, 0.254414, 0.945449,
		-0.676022, 0.735023, -0.052303,
		-0.708233, -0.628502, 0.321544,
		41.272980, 29.950359, 50.066906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498394, 30.736891, 50.418953>,  <41.768745, 30.390310, 49.841827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498394, 30.736891, 50.418953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423782, 30.346195, 50.461262>,  <41.379017, 30.111778, 50.486649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423782, 30.346195, 50.461262>,  <41.498394, 30.736891, 50.418953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423782, 30.346195, 50.461262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372813, 0.029242, 0.927446,
		-0.908965, 0.212431, 0.358686,
		-0.186530, -0.976738, 0.105777,
		41.367825, 30.053173, 50.492996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715469, 30.811764, 51.218754>,  <41.498394, 30.736891, 50.418953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715469, 30.811764, 51.218754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009506, 31.082903, 51.213631>,  <42.185928, 31.245586, 51.210556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009506, 31.082903, 51.213631>,  <41.715469, 30.811764, 51.218754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009506, 31.082903, 51.213631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230241, 0.231830, -0.945116,
		-0.637674, 0.697696, 0.326484,
		0.735092, 0.677846, -0.012807,
		42.230034, 31.286257, 51.209789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427502, 31.414618, 50.840229>,  <41.715469, 30.811764, 51.218754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427502, 31.414618, 50.840229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826771, 31.432888, 50.824409>,  <42.066334, 31.443851, 50.814919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826771, 31.432888, 50.824409>,  <41.427502, 31.414618, 50.840229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826771, 31.432888, 50.824409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052722, 0.338656, -0.939432,
		-0.029517, 0.939801, 0.340445,
		0.998173, 0.045678, -0.039553,
		42.126225, 31.446592, 50.812542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570312, 32.038376, 50.513309>,  <41.427502, 31.414618, 50.840229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570312, 32.038376, 50.513309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916077, 31.850582, 50.441330>,  <42.123535, 31.737906, 50.398144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916077, 31.850582, 50.441330>,  <41.570312, 32.038376, 50.513309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916077, 31.850582, 50.441330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013244, 0.336509, -0.941587,
		0.502617, 0.816298, 0.284663,
		0.864407, -0.469488, -0.179947,
		42.175400, 31.709736, 50.387344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906898, 32.478497, 50.174812>,  <41.570312, 32.038376, 50.513309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906898, 32.478497, 50.174812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063629, 32.133060, 50.047897>,  <42.157669, 31.925798, 49.971748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063629, 32.133060, 50.047897>,  <41.906898, 32.478497, 50.174812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063629, 32.133060, 50.047897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021287, 0.336264, -0.941527,
		0.919791, 0.375673, 0.113375,
		0.391831, -0.863595, -0.317290,
		42.181179, 31.873981, 49.952709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409901, 32.566597, 49.689621>,  <41.906898, 32.478497, 50.174812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409901, 32.566597, 49.689621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303173, 32.199127, 49.573116>,  <42.239136, 31.978643, 49.503212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303173, 32.199127, 49.573116>,  <42.409901, 32.566597, 49.689621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303173, 32.199127, 49.573116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025789, 0.295307, -0.955054,
		0.963400, -0.262342, -0.055103,
		-0.266824, -0.918678, -0.291265,
		42.223125, 31.923523, 49.485737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823887, 32.488068, 49.005421>,  <42.409901, 32.566597, 49.689621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823887, 32.488068, 49.005421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565361, 32.187531, 49.058735>,  <42.410248, 32.007210, 49.090725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565361, 32.187531, 49.058735>,  <42.823887, 32.488068, 49.005421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565361, 32.187531, 49.058735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066431, -0.118610, -0.990716,
		0.760176, -0.649167, 0.026747,
		-0.646312, -0.751342, 0.133290,
		42.371468, 31.962128, 49.098721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000565, 32.052059, 48.575054>,  <42.823887, 32.488068, 49.005421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000565, 32.052059, 48.575054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625370, 31.930096, 48.641045>,  <42.400253, 31.856918, 48.680637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625370, 31.930096, 48.641045>,  <43.000565, 32.052059, 48.575054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625370, 31.930096, 48.641045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118606, -0.164923, -0.979149,
		0.325759, -0.937993, 0.118532,
		-0.937984, -0.304908, 0.164977,
		42.343975, 31.838623, 48.690536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902431, 31.318609, 48.195175>,  <43.000565, 32.052059, 48.575054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902431, 31.318609, 48.195175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544704, 31.488823, 48.250469>,  <42.330067, 31.590952, 48.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544704, 31.488823, 48.250469>,  <42.902431, 31.318609, 48.195175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544704, 31.488823, 48.250469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213409, -0.134140, -0.967710,
		-0.393252, -0.894944, 0.210777,
		-0.894320, 0.425536, 0.138239,
		42.276409, 31.616484, 48.291943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474937, 30.987448, 47.863068>,  <42.902431, 31.318609, 48.195175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474937, 30.987448, 47.863068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238426, 31.306740, 47.909065>,  <42.096519, 31.498314, 47.936665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238426, 31.306740, 47.909065>,  <42.474937, 30.987448, 47.863068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238426, 31.306740, 47.909065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297629, -0.083464, -0.951026,
		-0.749538, -0.596545, 0.286926,
		-0.591278, 0.798228, 0.114990,
		42.061043, 31.546207, 47.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953300, 30.851416, 47.523544>,  <42.474937, 30.987448, 47.863068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953300, 30.851416, 47.523544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914204, 31.248802, 47.547112>,  <41.890747, 31.487234, 47.561253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914204, 31.248802, 47.547112>,  <41.953300, 30.851416, 47.523544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914204, 31.248802, 47.547112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148276, 0.044006, -0.987966,
		-0.984104, -0.105299, 0.143006,
		-0.097739, 0.993466, 0.058919,
		41.884884, 31.546843, 47.564789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265102, 31.006008, 47.240746>,  <41.953300, 30.851416, 47.523544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265102, 31.006008, 47.240746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489971, 31.336691, 47.231640>,  <41.624893, 31.535101, 47.226177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489971, 31.336691, 47.231640>,  <41.265102, 31.006008, 47.240746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489971, 31.336691, 47.231640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247569, 0.141956, -0.958414,
		-0.789097, 0.544429, 0.284471,
		0.562171, 0.826708, -0.022767,
		41.658623, 31.584703, 47.224812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903633, 31.503923, 46.907986>,  <41.265102, 31.006008, 47.240746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903633, 31.503923, 46.907986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286995, 31.598778, 46.844460>,  <41.517014, 31.655689, 46.806343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286995, 31.598778, 46.844460>,  <40.903633, 31.503923, 46.907986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286995, 31.598778, 46.844460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226141, 0.291496, -0.929457,
		-0.174113, 0.926713, 0.332998,
		0.958408, 0.237135, -0.158815,
		41.574516, 31.669918, 46.796814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856503, 32.203869, 46.774940>,  <40.903633, 31.503923, 46.907986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856503, 32.203869, 46.774940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150192, 32.014046, 46.580738>,  <41.326405, 31.900152, 46.464214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150192, 32.014046, 46.580738>,  <40.856503, 32.203869, 46.774940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150192, 32.014046, 46.580738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436763, 0.217331, -0.872929,
		0.519768, 0.852975, -0.047699,
		0.734220, -0.474553, -0.485510,
		41.370457, 31.871679, 46.435085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111492, 32.686020, 46.321106>,  <40.856503, 32.203869, 46.774940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111492, 32.686020, 46.321106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203785, 32.316780, 46.198048>,  <41.259163, 32.095238, 46.124210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203785, 32.316780, 46.198048>,  <41.111492, 32.686020, 46.321106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203785, 32.316780, 46.198048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381673, 0.204976, -0.901282,
		0.895035, 0.325378, -0.305028,
		0.230734, -0.923100, -0.307649,
		41.273006, 32.039848, 46.105751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379086, 32.729485, 45.677303>,  <41.111492, 32.686020, 46.321106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379086, 32.729485, 45.677303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262188, 32.347473, 45.697338>,  <41.192047, 32.118267, 45.709358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262188, 32.347473, 45.697338>,  <41.379086, 32.729485, 45.677303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262188, 32.347473, 45.697338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083192, -0.026784, -0.996174,
		0.952717, -0.295297, -0.071623,
		-0.292249, -0.955030, 0.050084,
		41.174515, 32.060963, 45.712364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699238, 32.441307, 45.063236>,  <41.379086, 32.729485, 45.677303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699238, 32.441307, 45.063236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452629, 32.152454, 45.188728>,  <41.304665, 31.979143, 45.264023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452629, 32.152454, 45.188728>,  <41.699238, 32.441307, 45.063236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452629, 32.152454, 45.188728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213580, -0.230131, -0.949433,
		0.757815, -0.652353, -0.012352,
		-0.616523, -0.722132, 0.313726,
		41.267673, 31.935814, 45.282845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810856, 31.899509, 44.671772>,  <41.699238, 32.441307, 45.063236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810856, 31.899509, 44.671772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436565, 31.840229, 44.799801>,  <41.211990, 31.804661, 44.876617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436565, 31.840229, 44.799801>,  <41.810856, 31.899509, 44.671772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436565, 31.840229, 44.799801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334725, 0.086973, -0.938294,
		0.111219, -0.985125, -0.130990,
		-0.935730, -0.148201, 0.320073,
		41.155846, 31.795769, 44.895824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552967, 31.548840, 44.143829>,  <41.810856, 31.899509, 44.671772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552967, 31.548840, 44.143829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227589, 31.669182, 44.342945>,  <41.032364, 31.741388, 44.462414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227589, 31.669182, 44.342945>,  <41.552967, 31.548840, 44.143829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227589, 31.669182, 44.342945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479625, 0.137206, -0.866680,
		-0.329047, -0.943747, 0.032690,
		-0.813442, 0.300858, 0.497792,
		40.983555, 31.759439, 44.492283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936954, 31.093781, 43.860470>,  <41.552967, 31.548840, 44.143829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936954, 31.093781, 43.860470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789059, 31.421370, 44.036003>,  <40.700321, 31.617924, 44.141323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789059, 31.421370, 44.036003>,  <40.936954, 31.093781, 43.860470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789059, 31.421370, 44.036003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558081, 0.181864, -0.809612,
		-0.742859, -0.544250, 0.389812,
		-0.369738, 0.818974, 0.438834,
		40.678139, 31.667061, 44.167652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200878, 30.971603, 44.085766>,  <40.936954, 31.093781, 43.860470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200878, 30.971603, 44.085766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214638, 31.370434, 44.058479>,  <40.222893, 31.609732, 44.042107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214638, 31.370434, 44.058479>,  <40.200878, 30.971603, 44.085766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214638, 31.370434, 44.058479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633777, -0.031019, -0.772894,
		-0.772751, 0.069820, 0.630858,
		0.034395, 0.997077, -0.068220,
		40.224957, 31.669558, 44.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627632, 31.248253, 43.857990>,  <40.200878, 30.971603, 44.085766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627632, 31.248253, 43.857990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838718, 31.575010, 43.764862>,  <39.965370, 31.771065, 43.708984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838718, 31.575010, 43.764862>,  <39.627632, 31.248253, 43.857990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838718, 31.575010, 43.764862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460199, 0.044577, -0.886696,
		-0.713959, 0.575061, 0.399459,
		0.527711, 0.816895, -0.232816,
		39.997032, 31.820080, 43.695019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121685, 31.717890, 43.639606>,  <39.627632, 31.248253, 43.857990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121685, 31.717890, 43.639606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474545, 31.823442, 43.483562>,  <39.686260, 31.886774, 43.389935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474545, 31.823442, 43.483562>,  <39.121685, 31.717890, 43.639606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474545, 31.823442, 43.483562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428392, 0.105387, -0.897426,
		-0.195700, 0.958781, 0.206010,
		0.882146, 0.263880, -0.390110,
		39.739189, 31.902607, 43.366531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969776, 32.253387, 43.083961>,  <39.121685, 31.717890, 43.639606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969776, 32.253387, 43.083961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339138, 32.135876, 42.985153>,  <39.560757, 32.065369, 42.925869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339138, 32.135876, 42.985153>,  <38.969776, 32.253387, 43.083961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339138, 32.135876, 42.985153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243923, 0.047766, -0.968617,
		0.296356, 0.954680, -0.027551,
		0.923404, -0.293776, -0.247024,
		39.616158, 32.047741, 42.911045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409969, 32.772236, 42.666737>,  <38.969776, 32.253387, 43.083961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409969, 32.772236, 42.666737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528923, 32.402710, 42.570301>,  <39.600296, 32.180992, 42.512440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528923, 32.402710, 42.570301>,  <39.409969, 32.772236, 42.666737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528923, 32.402710, 42.570301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315768, 0.143133, -0.937979,
		0.901030, 0.355065, -0.249147,
		0.297382, -0.923819, -0.241085,
		39.618137, 32.125565, 42.497974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640221, 32.899117, 41.947845>,  <39.409969, 32.772236, 42.666737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640221, 32.899117, 41.947845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668442, 32.500458, 41.964455>,  <39.685375, 32.261265, 41.974419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668442, 32.500458, 41.964455>,  <39.640221, 32.899117, 41.947845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668442, 32.500458, 41.964455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148385, -0.051648, -0.987580,
		0.986410, 0.063513, -0.151531,
		0.070551, -0.996644, 0.041522,
		39.689606, 32.201466, 41.976910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111111, 32.780804, 41.465458>,  <39.640221, 32.899117, 41.947845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111111, 32.780804, 41.465458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900642, 32.443481, 41.509232>,  <39.774361, 32.241089, 41.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900642, 32.443481, 41.509232>,  <40.111111, 32.780804, 41.465458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900642, 32.443481, 41.509232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299041, 0.063019, -0.952157,
		0.796066, -0.533721, -0.285343,
		-0.526169, -0.843309, 0.109437,
		39.742790, 32.190487, 41.542061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829124, 32.732059, 41.545654>,  <40.111111, 32.780804, 41.465458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829124, 32.732059, 41.545654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584496, 32.438812, 41.426651>,  <40.437717, 32.262863, 41.355247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584496, 32.438812, 41.426651>,  <40.829124, 32.732059, 41.545654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584496, 32.438812, 41.426651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228255, 0.523527, -0.820865,
		0.757547, -0.434112, -0.487514,
		-0.611574, -0.733121, -0.297508,
		40.401024, 32.218876, 41.337399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183231, 32.304447, 41.013512>,  <40.829124, 32.732059, 41.545654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183231, 32.304447, 41.013512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784248, 32.286674, 40.991207>,  <40.544861, 32.276009, 40.977825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784248, 32.286674, 40.991207>,  <41.183231, 32.304447, 41.013512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784248, 32.286674, 40.991207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034066, 0.390029, -0.920172,
		0.062634, -0.919730, -0.387523,
		-0.997455, -0.044433, -0.055761,
		40.485012, 32.273346, 40.974480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038757, 31.983173, 40.387695>,  <41.183231, 32.304447, 41.013512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038757, 31.983173, 40.387695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704422, 32.173721, 40.496834>,  <40.503822, 32.288052, 40.562317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704422, 32.173721, 40.496834>,  <41.038757, 31.983173, 40.387695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704422, 32.173721, 40.496834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014050, 0.478284, -0.878093,
		-0.548794, -0.737778, -0.393075,
		-0.835839, 0.476370, 0.272845,
		40.453671, 32.316631, 40.578686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585701, 31.882547, 39.775776>,  <41.038757, 31.983173, 40.387695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585701, 31.882547, 39.775776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460232, 32.201851, 39.981453>,  <40.384949, 32.393433, 40.104858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460232, 32.201851, 39.981453>,  <40.585701, 31.882547, 39.775776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460232, 32.201851, 39.981453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051347, 0.526467, -0.848644,
		-0.948142, -0.292599, -0.124150,
		-0.313673, 0.798260, 0.514189,
		40.366131, 32.441330, 40.135708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087685, 32.043911, 39.365021>,  <40.585701, 31.882547, 39.775776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087685, 32.043911, 39.365021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129086, 32.367683, 39.596230>,  <40.153927, 32.561947, 39.734955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129086, 32.367683, 39.596230>,  <40.087685, 32.043911, 39.365021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129086, 32.367683, 39.596230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130723, 0.587170, -0.798838,
		-0.986001, 0.007121, 0.166585,
		0.103503, 0.809432, 0.578020,
		40.160137, 32.610512, 39.769634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403229, 32.511257, 39.305031>,  <40.087685, 32.043911, 39.365021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403229, 32.511257, 39.305031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739883, 32.701702, 39.406990>,  <39.941875, 32.815968, 39.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739883, 32.701702, 39.406990>,  <39.403229, 32.511257, 39.305031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739883, 32.701702, 39.406990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047701, 0.535677, -0.843075,
		-0.537937, 0.697402, 0.473555,
		0.841635, 0.476110, 0.254893,
		39.992374, 32.844536, 39.483459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351955, 33.097656, 38.955109>,  <39.403229, 32.511257, 39.305031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351955, 33.097656, 38.955109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732647, 33.135361, 39.071957>,  <39.961060, 33.157982, 39.142063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732647, 33.135361, 39.071957>,  <39.351955, 33.097656, 38.955109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732647, 33.135361, 39.071957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186431, 0.578526, -0.794073,
		-0.243847, 0.810199, 0.533025,
		0.951726, 0.094260, 0.292118,
		40.018166, 33.163639, 39.159592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534302, 33.725384, 38.729431>,  <39.351955, 33.097656, 38.955109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534302, 33.725384, 38.729431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895187, 33.573364, 38.810989>,  <40.111717, 33.482151, 38.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895187, 33.573364, 38.810989>,  <39.534302, 33.725384, 38.729431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895187, 33.573364, 38.810989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414998, 0.636298, -0.650309,
		0.117411, 0.671334, 0.731796,
		0.902215, -0.380047, 0.203894,
		40.165852, 33.459351, 38.872158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035553, 34.290302, 38.782272>,  <39.534302, 33.725384, 38.729431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035553, 34.290302, 38.782272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251495, 33.960911, 38.712490>,  <40.381062, 33.763275, 38.670620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251495, 33.960911, 38.712490>,  <40.035553, 34.290302, 38.782272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251495, 33.960911, 38.712490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612770, 0.526561, -0.589276,
		0.577118, 0.211225, 0.788872,
		0.539859, -0.823479, -0.174456,
		40.413452, 33.713867, 38.660152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640018, 34.516987, 39.032307>,  <40.035553, 34.290302, 38.782272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640018, 34.516987, 39.032307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696522, 34.230618, 38.758812>,  <40.730423, 34.058796, 38.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696522, 34.230618, 38.758812>,  <40.640018, 34.516987, 39.032307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696522, 34.230618, 38.758812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596235, 0.612877, -0.518543,
		0.790285, -0.334422, 0.513432,
		0.141258, -0.715922, -0.683741,
		40.738899, 34.015842, 38.553688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347916, 34.560459, 38.733170>,  <40.640018, 34.516987, 39.032307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347916, 34.560459, 38.733170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158508, 34.333057, 38.464073>,  <41.044865, 34.196617, 38.302616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158508, 34.333057, 38.464073>,  <41.347916, 34.560459, 38.733170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158508, 34.333057, 38.464073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415369, 0.529396, -0.739735,
		0.776689, -0.629716, -0.014541,
		-0.473522, -0.568504, -0.672741,
		41.016453, 34.162506, 38.262253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776752, 34.425388, 38.203705>,  <41.347916, 34.560459, 38.733170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776752, 34.425388, 38.203705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432083, 34.356777, 38.012665>,  <41.225281, 34.315609, 37.898041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432083, 34.356777, 38.012665>,  <41.776752, 34.425388, 38.203705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432083, 34.356777, 38.012665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307138, 0.572908, -0.759897,
		0.403965, -0.801470, -0.440975,
		-0.861672, -0.171532, -0.477596,
		41.173580, 34.305317, 37.869385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928368, 34.277008, 37.533813>,  <41.776752, 34.425388, 38.203705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928368, 34.277008, 37.533813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546513, 34.395374, 37.520542>,  <41.317398, 34.466396, 37.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546513, 34.395374, 37.520542>,  <41.928368, 34.277008, 37.533813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546513, 34.395374, 37.520542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181392, 0.489543, -0.852903,
		-0.236149, -0.820231, -0.521014,
		-0.954636, 0.295920, -0.033178,
		41.260120, 34.484150, 37.510590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791798, 34.214241, 36.846542>,  <41.928368, 34.277008, 37.533813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791798, 34.214241, 36.846542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534401, 34.472080, 37.011662>,  <41.379963, 34.626785, 37.110733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534401, 34.472080, 37.011662>,  <41.791798, 34.214241, 36.846542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534401, 34.472080, 37.011662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239785, 0.681901, -0.691024,
		-0.726925, -0.345686, -0.593365,
		-0.643493, 0.644602, 0.412801,
		41.341354, 34.665462, 37.135502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267838, 34.416889, 36.292805>,  <41.791798, 34.214241, 36.846542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267838, 34.416889, 36.292805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323109, 34.693111, 36.576786>,  <41.356274, 34.858845, 36.747177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323109, 34.693111, 36.576786>,  <41.267838, 34.416889, 36.292805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323109, 34.693111, 36.576786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547396, 0.544146, -0.635817,
		-0.825387, 0.476486, -0.302816,
		0.138182, 0.690555, 0.709958,
		41.364563, 34.900276, 36.789772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023170, 35.184216, 36.189537>,  <41.267838, 34.416889, 36.292805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023170, 35.184216, 36.189537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342354, 35.152027, 36.428463>,  <41.533867, 35.132713, 36.571819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342354, 35.152027, 36.428463>,  <41.023170, 35.184216, 36.189537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342354, 35.152027, 36.428463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590970, 0.299089, -0.749200,
		-0.118363, 0.950826, 0.286216,
		0.797963, -0.080468, 0.597310,
		41.581741, 35.127888, 36.607655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192204, 35.544994, 35.650532>,  <41.023170, 35.184216, 36.189537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192204, 35.544994, 35.650532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341400, 35.207298, 35.496578>,  <41.430920, 35.004681, 35.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341400, 35.207298, 35.496578>,  <41.192204, 35.544994, 35.650532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341400, 35.207298, 35.496578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274747, -0.496714, 0.823280,
		-0.886224, -0.201329, -0.417222,
		0.372990, -0.844241, -0.384885,
		41.453297, 34.954025, 35.381111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834812, 35.332680, 36.075611>,  <41.192204, 35.544994, 35.650532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834812, 35.332680, 36.075611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639229, 35.422775, 36.412701>,  <41.521877, 35.476833, 36.614956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639229, 35.422775, 36.412701>,  <41.834812, 35.332680, 36.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639229, 35.422775, 36.412701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242226, 0.963153, -0.116885,
		-0.838002, 0.146978, -0.525500,
		-0.488957, 0.225240, 0.842726,
		41.492542, 35.490349, 36.665520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569561, 35.239441, 35.750114>,  <41.834812, 35.332680, 36.075611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569561, 35.239441, 35.750114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316013, 35.496048, 35.577293>,  <42.163883, 35.650013, 35.473602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316013, 35.496048, 35.577293>,  <42.569561, 35.239441, 35.750114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316013, 35.496048, 35.577293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276300, 0.333932, 0.901193,
		0.722405, 0.690614, -0.034418,
		-0.633869, 0.641516, -0.432051,
		42.125854, 35.688503, 35.447678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437801, 35.788361, 36.114864>,  <42.569561, 35.239441, 35.750114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437801, 35.788361, 36.114864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116100, 35.824028, 35.879837>,  <41.923080, 35.845428, 35.738823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116100, 35.824028, 35.879837>,  <42.437801, 35.788361, 36.114864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116100, 35.824028, 35.879837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436678, 0.581952, 0.686035,
		0.403108, 0.808319, -0.429096,
		-0.804249, 0.089169, -0.587565,
		41.874825, 35.850780, 35.703568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195366, 35.809353, 36.374252>,  <42.437801, 35.788361, 36.114864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195366, 35.809353, 36.374252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448200, 35.500416, 36.399403>,  <43.599899, 35.315052, 36.414494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448200, 35.500416, 36.399403>,  <43.195366, 35.809353, 36.374252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448200, 35.500416, 36.399403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008635, 0.074117, 0.997212,
		-0.774852, -0.630864, 0.040179,
		0.632083, -0.772345, 0.062877,
		43.637825, 35.268711, 36.418266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963024, 35.386967, 36.937374>,  <43.195366, 35.809353, 36.374252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963024, 35.386967, 36.937374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349297, 35.291542, 36.896297>,  <43.581062, 35.234287, 36.871651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349297, 35.291542, 36.896297>,  <42.963024, 35.386967, 36.937374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349297, 35.291542, 36.896297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066836, -0.153828, 0.985835,
		-0.250977, -0.958867, -0.132604,
		0.965683, -0.238559, -0.102694,
		43.639000, 35.219975, 36.865490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122543, 34.893494, 37.456089>,  <42.963024, 35.386967, 36.937374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122543, 34.893494, 37.456089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501942, 34.962864, 37.350056>,  <43.729580, 35.004486, 37.286434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501942, 34.962864, 37.350056>,  <43.122543, 34.893494, 37.456089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501942, 34.962864, 37.350056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302586, -0.248375, 0.920191,
		0.093747, -0.953012, -0.288060,
		0.948500, 0.173428, -0.265084,
		43.786491, 35.014893, 37.270531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462738, 34.279312, 37.601501>,  <43.122543, 34.893494, 37.456089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462738, 34.279312, 37.601501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724026, 34.581436, 37.622734>,  <43.880798, 34.762711, 37.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724026, 34.581436, 37.622734>,  <43.462738, 34.279312, 37.601501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724026, 34.581436, 37.622734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168050, -0.212977, 0.962497,
		0.738289, -0.619797, -0.266049,
		0.653214, 0.755310, 0.053082,
		43.919991, 34.808029, 37.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054920, 34.016903, 37.972710>,  <43.462738, 34.279312, 37.601501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054920, 34.016903, 37.972710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086670, 34.414757, 37.999252>,  <44.105721, 34.653469, 38.015179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086670, 34.414757, 37.999252>,  <44.054920, 34.016903, 37.972710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086670, 34.414757, 37.999252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134827, -0.076664, 0.987899,
		0.987685, -0.069468, -0.140189,
		0.079375, 0.994634, 0.066354,
		44.110481, 34.713146, 38.019157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678627, 34.104382, 38.355026>,  <44.054920, 34.016903, 37.972710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678627, 34.104382, 38.355026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441860, 34.424755, 38.391129>,  <44.299801, 34.616978, 38.412792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441860, 34.424755, 38.391129>,  <44.678627, 34.104382, 38.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441860, 34.424755, 38.391129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251041, 0.076788, 0.964926,
		0.765909, 0.593811, -0.246518,
		-0.591914, 0.800932, 0.090258,
		44.264286, 34.665035, 38.418205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008884, 34.412426, 38.754356>,  <44.678627, 34.104382, 38.355026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008884, 34.412426, 38.754356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669537, 34.618298, 38.803947>,  <44.465927, 34.741821, 38.833702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669537, 34.618298, 38.803947>,  <45.008884, 34.412426, 38.754356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669537, 34.618298, 38.803947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221008, 0.131528, 0.966362,
		0.481058, 0.847236, -0.225332,
		-0.848374, 0.514676, 0.123974,
		44.415024, 34.772701, 38.841141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140350, 34.990490, 39.183701>,  <45.008884, 34.412426, 38.754356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140350, 34.990490, 39.183701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742596, 34.980953, 39.224949>,  <44.503944, 34.975231, 39.249699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742596, 34.980953, 39.224949>,  <45.140350, 34.990490, 39.183701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742596, 34.980953, 39.224949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096891, 0.187046, 0.977561,
		-0.042591, 0.982062, -0.183686,
		-0.994383, -0.023837, 0.103119,
		44.444283, 34.973801, 39.255886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838516, 35.622318, 39.641102>,  <45.140350, 34.990490, 39.183701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838516, 35.622318, 39.641102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553555, 35.341900, 39.653843>,  <44.382580, 35.173649, 39.661488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553555, 35.341900, 39.653843>,  <44.838516, 35.622318, 39.641102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553555, 35.341900, 39.653843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081933, 0.128171, 0.988362,
		-0.696972, 0.701501, -0.148748,
		-0.712402, -0.701048, 0.031855,
		44.339832, 35.131584, 39.663399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213383, 35.958908, 39.928085>,  <44.838516, 35.622318, 39.641102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213383, 35.958908, 39.928085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197693, 35.564117, 39.990498>,  <44.188278, 35.327244, 40.027946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197693, 35.564117, 39.990498>,  <44.213383, 35.958908, 39.928085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197693, 35.564117, 39.990498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105355, 0.151198, 0.982873,
		-0.993661, 0.054994, 0.098052,
		-0.039227, -0.986972, 0.156033,
		44.185925, 35.268024, 40.037308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689907, 35.881783, 40.477646>,  <44.213383, 35.958908, 39.928085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689907, 35.881783, 40.477646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906521, 35.545513, 40.476189>,  <44.036488, 35.343754, 40.475315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906521, 35.545513, 40.476189>,  <43.689907, 35.881783, 40.477646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906521, 35.545513, 40.476189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035620, 0.018610, 0.999192,
		-0.839924, -0.541226, 0.040023,
		0.541534, -0.840671, -0.003648,
		44.068981, 35.293312, 40.475094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498878, 35.714897, 41.073586>,  <43.689907, 35.881783, 40.477646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498878, 35.714897, 41.073586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803326, 35.473091, 40.979546>,  <43.985992, 35.328007, 40.923122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803326, 35.473091, 40.979546>,  <43.498878, 35.714897, 41.073586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803326, 35.473091, 40.979546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285433, -0.013312, 0.958306,
		-0.582437, -0.796485, 0.162415,
		0.761115, -0.604511, -0.235096,
		44.031662, 35.291737, 40.909016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482689, 35.269238, 41.655716>,  <43.498878, 35.714897, 41.073586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482689, 35.269238, 41.655716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856266, 35.250977, 41.513916>,  <44.080410, 35.240021, 41.428837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856266, 35.250977, 41.513916>,  <43.482689, 35.269238, 41.655716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856266, 35.250977, 41.513916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350241, -0.081020, 0.933149,
		-0.071311, -0.995667, -0.059683,
		0.933941, -0.045640, -0.354501,
		44.136448, 35.237282, 41.407566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833916, 34.897736, 42.146660>,  <43.482689, 35.269238, 41.655716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833916, 34.897736, 42.146660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144604, 35.042965, 41.940792>,  <44.331017, 35.130104, 41.817272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144604, 35.042965, 41.940792>,  <43.833916, 34.897736, 42.146660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144604, 35.042965, 41.940792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544623, 0.023288, 0.838357,
		0.316375, -0.931468, -0.179653,
		0.776719, 0.363078, -0.514667,
		44.377621, 35.151890, 41.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338688, 34.463921, 42.200005>,  <43.833916, 34.897736, 42.146660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338688, 34.463921, 42.200005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517551, 34.817081, 42.142689>,  <44.624870, 35.028976, 42.108299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517551, 34.817081, 42.142689>,  <44.338688, 34.463921, 42.200005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517551, 34.817081, 42.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539014, -0.138140, 0.830892,
		0.713801, -0.448779, -0.537667,
		0.447160, 0.882902, -0.143293,
		44.651699, 35.081951, 42.099701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068783, 34.398087, 42.229004>,  <44.338688, 34.463921, 42.200005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068783, 34.398087, 42.229004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051662, 34.793026, 42.290070>,  <45.041389, 35.029991, 42.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051662, 34.793026, 42.290070>,  <45.068783, 34.398087, 42.229004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051662, 34.793026, 42.290070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647763, -0.088909, 0.756636,
		0.760639, 0.131274, -0.635764,
		-0.042801, 0.987351, 0.152662,
		45.038822, 35.089230, 42.335869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795204, 34.717861, 42.289371>,  <45.068783, 34.398087, 42.229004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795204, 34.717861, 42.289371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561497, 34.999443, 42.450897>,  <45.421272, 35.168392, 42.547813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561497, 34.999443, 42.450897>,  <45.795204, 34.717861, 42.289371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561497, 34.999443, 42.450897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583788, 0.018920, 0.811686,
		0.563753, 0.709990, -0.422016,
		-0.584273, 0.703958, 0.403817,
		45.386215, 35.210632, 42.572041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242470, 35.374664, 42.634159>,  <45.795204, 34.717861, 42.289371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242470, 35.374664, 42.634159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879059, 35.351780, 42.799717>,  <45.661015, 35.338051, 42.899052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879059, 35.351780, 42.799717>,  <46.242470, 35.374664, 42.634159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879059, 35.351780, 42.799717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390975, 0.233017, 0.890416,
		-0.147387, 0.970788, -0.189334,
		-0.908524, -0.057211, 0.413898,
		45.606503, 35.334618, 42.923885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237358, 35.974323, 42.975155>,  <46.242470, 35.374664, 42.634159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237358, 35.974323, 42.975155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.928104, 35.788193, 43.147541>,  <45.742550, 35.676514, 43.250973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.928104, 35.788193, 43.147541>,  <46.237358, 35.974323, 42.975155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928104, 35.788193, 43.147541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244025, 0.408952, 0.879324,
		-0.585415, 0.785005, -0.202626,
		-0.773137, -0.465324, 0.430967,
		45.696163, 35.648594, 43.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961853, 36.485886, 43.434116>,  <46.237358, 35.974323, 42.975155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961853, 36.485886, 43.434116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848770, 36.118896, 43.546062>,  <45.780922, 35.898705, 43.613228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848770, 36.118896, 43.546062>,  <45.961853, 36.485886, 43.434116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848770, 36.118896, 43.546062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004674, 0.290442, 0.956881,
		-0.959196, 0.271823, -0.077821,
		-0.282705, -0.917473, 0.279861,
		45.763958, 35.843655, 43.630020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381744, 36.574554, 43.758816>,  <45.961853, 36.485886, 43.434116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381744, 36.574554, 43.758816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532127, 36.232227, 43.900932>,  <45.622356, 36.026829, 43.986202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532127, 36.232227, 43.900932>,  <45.381744, 36.574554, 43.758816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532127, 36.232227, 43.900932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010857, 0.379324, 0.925200,
		-0.926575, -0.351690, 0.133317,
		0.375954, -0.855819, 0.355291,
		45.644913, 35.975483, 44.007519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149857, 36.568844, 44.403370>,  <45.381744, 36.574554, 43.758816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149857, 36.568844, 44.403370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438488, 36.292072, 44.412777>,  <45.611668, 36.126007, 44.418419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438488, 36.292072, 44.412777>,  <45.149857, 36.568844, 44.403370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438488, 36.292072, 44.412777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235603, 0.277353, 0.931432,
		-0.651010, -0.666562, 0.363153,
		0.721579, -0.691932, 0.023516,
		45.654961, 36.084492, 44.419830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006435, 36.257973, 45.019848>,  <45.149857, 36.568844, 44.403370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006435, 36.257973, 45.019848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381611, 36.274063, 44.882065>,  <45.606716, 36.283718, 44.799397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381611, 36.274063, 44.882065>,  <45.006435, 36.257973, 45.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381611, 36.274063, 44.882065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301997, 0.393539, 0.868289,
		0.170482, -0.918427, 0.356968,
		0.937942, 0.040224, -0.344454,
		45.662994, 36.286129, 44.778728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616234, 36.039604, 45.457611>,  <45.006435, 36.257973, 45.019848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616234, 36.039604, 45.457611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.656250, 36.349148, 45.207447>,  <45.680260, 36.534874, 45.057350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.656250, 36.349148, 45.207447>,  <45.616234, 36.039604, 45.457611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.656250, 36.349148, 45.207447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052297, 0.623603, 0.779990,
		0.993608, -0.110738, 0.021916,
		0.100041, 0.773858, -0.625408,
		45.686264, 36.581306, 45.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171352, 36.566772, 45.398296>,  <45.616234, 36.039604, 45.457611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171352, 36.566772, 45.398296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870975, 36.815277, 45.308746>,  <45.690750, 36.964378, 45.255016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870975, 36.815277, 45.308746>,  <46.171352, 36.566772, 45.398296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870975, 36.815277, 45.308746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009336, 0.328992, 0.944287,
		0.660298, 0.711198, -0.241255,
		-0.750946, 0.621258, -0.223872,
		45.645691, 37.001656, 45.241585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326263, 37.321095, 45.375999>,  <46.171352, 36.566772, 45.398296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326263, 37.321095, 45.375999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952312, 37.240219, 45.492710>,  <45.727943, 37.191692, 45.562737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952312, 37.240219, 45.492710>,  <46.326263, 37.321095, 45.375999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952312, 37.240219, 45.492710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234202, 0.266357, 0.934988,
		-0.266763, 0.942429, -0.201656,
		-0.934873, -0.202192, 0.291773,
		45.671852, 37.179562, 45.580242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921013, 37.857334, 45.449013>,  <46.326263, 37.321095, 45.375999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921013, 37.857334, 45.449013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941490, 38.253590, 45.499630>,  <46.953777, 38.491344, 45.530003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941490, 38.253590, 45.499630>,  <46.921013, 37.857334, 45.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941490, 38.253590, 45.499630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067611, 0.129859, -0.989225,
		-0.996398, 0.042088, 0.073626,
		0.051196, 0.990639, 0.126545,
		46.956848, 38.550781, 45.537594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544033, 38.099930, 44.949268>,  <46.921013, 37.857334, 45.449013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544033, 38.099930, 44.949268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795982, 38.386955, 45.068172>,  <46.947151, 38.559170, 45.139515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795982, 38.386955, 45.068172>,  <46.544033, 38.099930, 44.949268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795982, 38.386955, 45.068172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095731, 0.308085, -0.946530,
		-0.770774, 0.624653, 0.125362,
		0.629875, 0.717560, 0.297262,
		46.984943, 38.602222, 45.157352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312424, 38.872757, 44.880756>,  <46.544033, 38.099930, 44.949268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312424, 38.872757, 44.880756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702724, 38.800316, 44.831600>,  <46.936905, 38.756851, 44.802105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702724, 38.800316, 44.831600>,  <46.312424, 38.872757, 44.880756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702724, 38.800316, 44.831600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103424, 0.113312, -0.988162,
		0.192880, 0.976915, 0.091835,
		0.975757, -0.181098, -0.122892,
		46.995453, 38.745987, 44.794731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437050, 39.254482, 44.282776>,  <46.312424, 38.872757, 44.880756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437050, 39.254482, 44.282776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742298, 39.004364, 44.348076>,  <46.925446, 38.854294, 44.387257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742298, 39.004364, 44.348076>,  <46.437050, 39.254482, 44.282776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742298, 39.004364, 44.348076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026731, -0.282930, -0.958768,
		0.645703, 0.727292, -0.232625,
		0.763121, -0.625298, 0.163247,
		46.971233, 38.816776, 44.397049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945576, 39.357002, 43.743565>,  <46.437050, 39.254482, 44.282776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945576, 39.357002, 43.743565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934715, 38.988785, 43.899441>,  <46.928200, 38.767853, 43.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934715, 38.988785, 43.899441>,  <46.945576, 39.357002, 43.743565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934715, 38.988785, 43.899441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117672, -0.384177, -0.915730,
		0.992681, -0.070719, -0.097891,
		-0.027152, -0.920547, 0.389687,
		46.926571, 38.712620, 44.016346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478096, 38.991505, 43.419746>,  <46.945576, 39.357002, 43.743565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478096, 38.991505, 43.419746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189442, 38.740124, 43.535873>,  <47.016247, 38.589294, 43.605549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189442, 38.740124, 43.535873>,  <47.478096, 38.991505, 43.419746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.189442, 38.740124, 43.535873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041303, -0.457708, -0.888143,
		0.691037, -0.628927, 0.356256,
		-0.721638, -0.628454, 0.290317,
		46.972950, 38.551586, 43.622967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.630219, 38.197918, 43.464733>,  <47.478096, 38.991505, 43.419746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.630219, 38.197918, 43.464733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256153, 38.286259, 43.353958>,  <47.031715, 38.339264, 43.287491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256153, 38.286259, 43.353958>,  <47.630219, 38.197918, 43.464733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.256153, 38.286259, 43.353958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097750, -0.590577, -0.801039,
		-0.340463, -0.776173, 0.530698,
		-0.935163, 0.220848, -0.276940,
		46.975605, 38.352512, 43.270878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.410591, 37.567165, 43.131641>,  <47.630219, 38.197918, 43.464733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.410591, 37.567165, 43.131641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120209, 37.819332, 43.021690>,  <46.945980, 37.970631, 42.955719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120209, 37.819332, 43.021690>,  <47.410591, 37.567165, 43.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120209, 37.819332, 43.021690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030345, -0.428658, -0.902957,
		-0.687069, -0.647167, 0.330318,
		-0.725958, 0.630418, -0.274879,
		46.902420, 38.008457, 42.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984756, 37.134407, 42.713654>,  <47.410591, 37.567165, 43.131641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984756, 37.134407, 42.713654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887424, 37.506889, 42.605099>,  <46.829025, 37.730377, 42.539967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887424, 37.506889, 42.605099>,  <46.984756, 37.134407, 42.713654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887424, 37.506889, 42.605099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067783, -0.262784, -0.962471,
		-0.967572, -0.252596, 0.000824,
		-0.243332, 0.931204, -0.271384,
		46.814426, 37.786251, 42.523682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435463, 37.065144, 42.219490>,  <46.984756, 37.134407, 42.713654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435463, 37.065144, 42.219490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.599800, 37.426884, 42.173256>,  <46.698402, 37.643929, 42.145515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.599800, 37.426884, 42.173256>,  <46.435463, 37.065144, 42.219490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.599800, 37.426884, 42.173256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073987, -0.093292, -0.992886,
		-0.908697, 0.416476, 0.028582,
		0.410846, 0.904348, -0.115588,
		46.723053, 37.698189, 42.138580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954891, 37.420628, 41.788902>,  <46.435463, 37.065144, 42.219490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954891, 37.420628, 41.788902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309990, 37.595806, 41.732189>,  <46.523048, 37.700912, 41.698162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309990, 37.595806, 41.732189>,  <45.954891, 37.420628, 41.788902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309990, 37.595806, 41.732189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065372, -0.184949, -0.980571,
		-0.455659, 0.879772, -0.135559,
		0.887751, 0.437944, -0.141787,
		46.576317, 37.727188, 41.689651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930649, 37.397686, 41.118607>,  <45.954891, 37.420628, 41.788902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930649, 37.397686, 41.118607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.275837, 37.592525, 41.172302>,  <46.482948, 37.709427, 41.204517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.275837, 37.592525, 41.172302>,  <45.930649, 37.397686, 41.118607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275837, 37.592525, 41.172302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112851, 0.073149, -0.990916,
		-0.492491, 0.870279, 0.008156,
		0.862970, 0.487097, 0.134237,
		46.534729, 37.738655, 41.212574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981586, 38.025024, 40.712605>,  <45.930649, 37.397686, 41.118607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981586, 38.025024, 40.712605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349594, 37.873127, 40.751312>,  <46.570396, 37.781986, 40.774536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349594, 37.873127, 40.751312>,  <45.981586, 38.025024, 40.712605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349594, 37.873127, 40.751312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014724, -0.213264, -0.976884,
		0.391606, 0.900173, -0.190615,
		0.920015, -0.379747, 0.096769,
		46.625599, 37.759201, 40.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382881, 38.198315, 40.165432>,  <45.981586, 38.025024, 40.712605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382881, 38.198315, 40.165432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575932, 37.870411, 40.288757>,  <46.691761, 37.673668, 40.362751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575932, 37.870411, 40.288757>,  <46.382881, 38.198315, 40.165432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575932, 37.870411, 40.288757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104212, -0.295774, -0.949557,
		0.869603, 0.490413, -0.057320,
		0.482629, -0.819764, 0.308313,
		46.720718, 37.624481, 40.381252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.900486, 38.036385, 39.637630>,  <46.382881, 38.198315, 40.165432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.900486, 38.036385, 39.637630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880634, 37.681408, 39.820927>,  <46.868725, 37.468422, 39.930904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880634, 37.681408, 39.820927>,  <46.900486, 38.036385, 39.637630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.880634, 37.681408, 39.820927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097904, -0.460918, -0.882026,
		0.993958, 0.001091, 0.109759,
		-0.049627, -0.887442, 0.458240,
		46.865746, 37.415176, 39.958397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.545109, 37.698872, 39.524818>,  <46.900486, 38.036385, 39.637630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.545109, 37.698872, 39.524818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.267769, 37.426189, 39.618244>,  <47.101364, 37.262581, 39.674297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.267769, 37.426189, 39.618244>,  <47.545109, 37.698872, 39.524818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.267769, 37.426189, 39.618244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090098, -0.403582, -0.910496,
		0.714951, -0.610245, 0.341242,
		-0.693345, -0.681705, 0.233560,
		47.059765, 37.221676, 39.688313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708706, 37.148060, 39.072151>,  <47.545109, 37.698872, 39.524818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708706, 37.148060, 39.072151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365154, 36.994610, 39.207893>,  <47.159023, 36.902538, 39.289337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365154, 36.994610, 39.207893>,  <47.708706, 37.148060, 39.072151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365154, 36.994610, 39.207893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021400, -0.635110, -0.772125,
		0.511736, -0.670423, 0.537271,
		-0.858876, -0.383627, 0.339356,
		47.107491, 36.879520, 39.309700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.720821, 36.469242, 38.876095>,  <47.708706, 37.148060, 39.072151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.720821, 36.469242, 38.876095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335838, 36.528236, 38.967239>,  <47.104847, 36.563633, 39.021927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335838, 36.528236, 38.967239>,  <47.720821, 36.469242, 38.876095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.335838, 36.528236, 38.967239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270621, -0.456751, -0.847433,
		-0.020914, -0.877283, 0.479518,
		-0.962459, 0.147490, 0.227858,
		47.047100, 36.572483, 39.035599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403332, 35.858326, 38.695244>,  <47.720821, 36.469242, 38.876095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403332, 35.858326, 38.695244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116829, 36.137371, 38.688259>,  <46.944927, 36.304798, 38.684067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116829, 36.137371, 38.688259>,  <47.403332, 35.858326, 38.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116829, 36.137371, 38.688259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376955, -0.407843, -0.831606,
		-0.587265, -0.589062, 0.555091,
		-0.716257, 0.697618, -0.017462,
		46.901951, 36.346657, 38.683022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772667, 35.479755, 38.614185>,  <47.403332, 35.858326, 38.695244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772667, 35.479755, 38.614185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734306, 35.858360, 38.490948>,  <46.711292, 36.085522, 38.417004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734306, 35.858360, 38.490948>,  <46.772667, 35.479755, 38.614185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734306, 35.858360, 38.490948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395701, -0.320264, -0.860727,
		-0.913359, 0.039370, 0.405248,
		-0.095899, 0.946510, -0.308095,
		46.705536, 36.142315, 38.398518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018871, 35.565742, 38.469345>,  <46.772667, 35.479755, 38.614185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018871, 35.565742, 38.469345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239731, 35.837292, 38.275745>,  <46.372246, 36.000221, 38.159584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239731, 35.837292, 38.275745>,  <46.018871, 35.565742, 38.469345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239731, 35.837292, 38.275745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509345, -0.184932, -0.840457,
		-0.660073, 0.710583, 0.243671,
		0.552152, 0.678876, -0.484000,
		46.405376, 36.040955, 38.130547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616924, 35.838581, 37.957584>,  <46.018871, 35.565742, 38.469345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616924, 35.838581, 37.957584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964901, 35.985538, 37.825996>,  <46.173687, 36.073715, 37.747044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964901, 35.985538, 37.825996>,  <45.616924, 35.838581, 37.957584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964901, 35.985538, 37.825996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327249, -0.068963, -0.942418,
		-0.368928, 0.927504, 0.060236,
		0.869942, 0.367397, -0.328967,
		46.225883, 36.095757, 37.727306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405087, 36.351974, 37.456661>,  <45.616924, 35.838581, 37.957584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405087, 36.351974, 37.456661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784492, 36.248230, 37.383942>,  <46.012135, 36.185982, 37.340309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784492, 36.248230, 37.383942>,  <45.405087, 36.351974, 37.456661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784492, 36.248230, 37.383942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239189, -0.210292, -0.947927,
		0.207629, 0.942606, -0.261502,
		0.948514, -0.259366, -0.181798,
		46.069046, 36.170422, 37.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577705, 36.616421, 36.781834>,  <45.405087, 36.351974, 37.456661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577705, 36.616421, 36.781834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909302, 36.394161, 36.807232>,  <46.108257, 36.260803, 36.822472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909302, 36.394161, 36.807232>,  <45.577705, 36.616421, 36.781834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909302, 36.394161, 36.807232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074111, -0.221675, -0.972300,
		0.554336, 0.801319, -0.224945,
		0.828987, -0.555651, 0.063496,
		46.157997, 36.227467, 36.826283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907932, 36.903942, 36.150593>,  <45.577705, 36.616421, 36.781834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907932, 36.903942, 36.150593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019714, 36.540836, 36.275730>,  <46.086784, 36.322975, 36.350815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019714, 36.540836, 36.275730>,  <45.907932, 36.903942, 36.150593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019714, 36.540836, 36.275730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090096, -0.349182, -0.932714,
		0.955922, 0.232468, -0.179367,
		0.279458, -0.907761, 0.312847,
		46.103550, 36.268509, 36.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501934, 36.668579, 35.785309>,  <45.907932, 36.903942, 36.150593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501934, 36.668579, 35.785309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329163, 36.330692, 35.911728>,  <46.225498, 36.127960, 35.987579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329163, 36.330692, 35.911728>,  <46.501934, 36.668579, 35.785309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329163, 36.330692, 35.911728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060246, -0.322613, -0.944612,
		0.899893, -0.427047, 0.088455,
		-0.431930, -0.844721, 0.316045,
		46.199585, 36.077274, 36.006542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.946148, 37.023563, 36.411636>,  <46.501934, 36.668579, 35.785309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.946148, 37.023563, 36.411636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895996, 36.627594, 36.437939>,  <46.865906, 36.390011, 36.453720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895996, 36.627594, 36.437939>,  <46.946148, 37.023563, 36.411636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895996, 36.627594, 36.437939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489992, -0.119418, -0.863508,
		0.862663, -0.076049, 0.500030,
		-0.125382, -0.989927, 0.065754,
		46.858383, 36.330616, 36.457664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315369, 36.643551, 35.848614>,  <46.946148, 37.023563, 36.411636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315369, 36.643551, 35.848614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142014, 36.284271, 35.878025>,  <47.038002, 36.068703, 35.895672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142014, 36.284271, 35.878025>,  <47.315369, 36.643551, 35.848614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142014, 36.284271, 35.878025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545464, -0.326388, -0.771972,
		0.717387, -0.294454, 0.631390,
		-0.433388, -0.898203, 0.073532,
		47.011997, 36.014809, 35.900085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.808121, 36.243301, 35.470249>,  <47.315369, 36.643551, 35.848614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.808121, 36.243301, 35.470249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514652, 35.971931, 35.485584>,  <47.338570, 35.809109, 35.494785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514652, 35.971931, 35.485584>,  <47.808121, 36.243301, 35.470249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514652, 35.971931, 35.485584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402508, -0.479355, -0.779876,
		0.547460, -0.556744, 0.624759,
		-0.733672, -0.678421, 0.038334,
		47.294552, 35.768406, 35.497086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.095406, 35.497421, 35.463749>,  <47.808121, 36.243301, 35.470249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.095406, 35.497421, 35.463749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717934, 35.486839, 35.331833>,  <47.491451, 35.480492, 35.252682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717934, 35.486839, 35.331833>,  <48.095406, 35.497421, 35.463749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717934, 35.486839, 35.331833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283206, -0.579913, -0.763869,
		-0.171040, -0.814249, 0.554747,
		-0.943684, -0.026456, -0.329788,
		47.434830, 35.478901, 35.232895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867279, 34.784698, 35.231030>,  <48.095406, 35.497421, 35.463749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867279, 34.784698, 35.231030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657810, 35.045399, 35.011578>,  <47.532131, 35.201820, 34.879906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657810, 35.045399, 35.011578>,  <47.867279, 34.784698, 35.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657810, 35.045399, 35.011578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141571, -0.568455, -0.810442,
		-0.840078, -0.502071, 0.205412,
		-0.523667, 0.651754, -0.548625,
		47.500710, 35.240925, 34.846989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.361389, 33.610466, 47.130112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972382, 33.524342, 47.165562>,  <36.738979, 33.472668, 47.186832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972382, 33.524342, 47.165562>,  <37.361389, 33.610466, 47.130112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972382, 33.524342, 47.165562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139228, 0.232658, -0.962541,
		0.186626, -0.948426, -0.256241,
		-0.972515, -0.215311, 0.088627,
		36.680626, 33.459747, 47.192150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257828, 33.218361, 46.586693>,  <37.361389, 33.610466, 47.130112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257828, 33.218361, 46.586693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.887344, 33.344296, 46.669651>,  <36.665054, 33.419857, 46.719425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.887344, 33.344296, 46.669651>,  <37.257828, 33.218361, 46.586693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887344, 33.344296, 46.669651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153353, 0.187921, -0.970138,
		-0.344405, -0.930358, -0.125774,
		-0.926211, 0.314833, 0.207394,
		36.609482, 33.438744, 46.731869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898739, 32.996601, 46.038967>,  <37.257828, 33.218361, 46.586693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898739, 32.996601, 46.038967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665878, 33.289917, 46.179470>,  <36.526161, 33.465908, 46.263771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665878, 33.289917, 46.179470>,  <36.898739, 32.996601, 46.038967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665878, 33.289917, 46.179470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369678, 0.146064, -0.917608,
		-0.724181, -0.664039, 0.186051,
		-0.582152, 0.733292, 0.351257,
		36.491234, 33.509903, 46.284847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364460, 32.914562, 45.557117>,  <36.898739, 32.996601, 46.038967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364460, 32.914562, 45.557117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285324, 33.257252, 45.747650>,  <36.237843, 33.462864, 45.861969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285324, 33.257252, 45.747650>,  <36.364460, 32.914562, 45.557117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285324, 33.257252, 45.747650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551871, 0.304255, -0.776446,
		-0.810122, -0.416484, 0.412605,
		-0.197840, 0.856720, 0.476329,
		36.225971, 33.514267, 45.890549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575653, 32.957119, 45.631538>,  <36.364460, 32.914562, 45.557117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575653, 32.957119, 45.631538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770489, 33.306023, 45.649029>,  <35.887390, 33.515366, 45.659523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770489, 33.306023, 45.649029>,  <35.575653, 32.957119, 45.631538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770489, 33.306023, 45.649029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517472, 0.328575, -0.790102,
		-0.703539, 0.362224, 0.611414,
		0.487090, 0.872257, 0.043724,
		35.916615, 33.567699, 45.662148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105408, 33.485645, 45.449997>,  <35.575653, 32.957119, 45.631538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105408, 33.485645, 45.449997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449184, 33.683815, 45.399517>,  <35.655449, 33.802715, 45.369228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449184, 33.683815, 45.399517>,  <35.105408, 33.485645, 45.449997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449184, 33.683815, 45.399517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285849, 0.261011, -0.922043,
		-0.423860, 0.828512, 0.365938,
		0.859437, 0.495421, -0.126197,
		35.707016, 33.832439, 45.361656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867290, 34.003269, 45.001667>,  <35.105408, 33.485645, 45.449997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867290, 34.003269, 45.001667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263657, 33.979347, 44.953472>,  <35.501476, 33.964993, 44.924557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263657, 33.979347, 44.953472>,  <34.867290, 34.003269, 45.001667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263657, 33.979347, 44.953472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116918, 0.059990, -0.991328,
		0.066517, 0.996405, 0.052453,
		0.990911, -0.059808, -0.120488,
		35.560928, 33.961407, 44.917324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025883, 34.498798, 44.477356>,  <34.867290, 34.003269, 45.001667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025883, 34.498798, 44.477356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339771, 34.251289, 44.491970>,  <35.528103, 34.102783, 44.500740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339771, 34.251289, 44.491970>,  <35.025883, 34.498798, 44.477356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339771, 34.251289, 44.491970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091315, 0.057097, -0.994184,
		0.613091, 0.783490, 0.101308,
		0.784717, -0.618776, 0.036539,
		35.575188, 34.065655, 44.502934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629807, 34.828499, 43.996647>,  <35.025883, 34.498798, 44.477356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629807, 34.828499, 43.996647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667953, 34.433952, 44.050308>,  <35.690842, 34.197224, 44.082504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667953, 34.433952, 44.050308>,  <35.629807, 34.828499, 43.996647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667953, 34.433952, 44.050308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222278, -0.110262, -0.968728,
		0.970308, 0.122199, 0.208732,
		0.095363, -0.986362, 0.134151,
		35.696564, 34.138042, 44.090553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261982, 34.603519, 43.588604>,  <35.629807, 34.828499, 43.996647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261982, 34.603519, 43.588604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013153, 34.296738, 43.651604>,  <35.863857, 34.112667, 43.689404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013153, 34.296738, 43.651604>,  <36.261982, 34.603519, 43.588604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013153, 34.296738, 43.651604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124711, -0.295652, -0.947120,
		0.772964, -0.569535, 0.279565,
		-0.622072, -0.766955, 0.157501,
		35.826530, 34.066650, 43.698853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561913, 34.014263, 43.363998>,  <36.261982, 34.603519, 43.588604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561913, 34.014263, 43.363998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176880, 33.905880, 43.361984>,  <35.945862, 33.840851, 43.360775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176880, 33.905880, 43.361984>,  <36.561913, 34.014263, 43.363998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176880, 33.905880, 43.361984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075168, -0.249079, -0.965562,
		0.260371, -0.929807, 0.260125,
		-0.962578, -0.270958, -0.005039,
		35.888107, 33.824593, 43.360474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562908, 33.361156, 42.825207>,  <36.561913, 34.014263, 43.363998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562908, 33.361156, 42.825207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197556, 33.523312, 42.840111>,  <35.978344, 33.620605, 42.849052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197556, 33.523312, 42.840111>,  <36.562908, 33.361156, 42.825207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197556, 33.523312, 42.840111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083037, -0.095932, -0.991918,
		-0.398537, -0.909097, 0.121285,
		-0.913385, 0.405387, 0.037256,
		35.923538, 33.644928, 42.851288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185280, 32.954559, 42.408951>,  <36.562908, 33.361156, 42.825207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185280, 32.954559, 42.408951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930363, 33.259804, 42.451881>,  <35.777412, 33.442951, 42.477642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930363, 33.259804, 42.451881>,  <36.185280, 32.954559, 42.408951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930363, 33.259804, 42.451881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187582, -0.018528, -0.982074,
		-0.747444, -0.646001, 0.154953,
		-0.637292, 0.763112, 0.107329,
		35.739174, 33.488739, 42.484081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539669, 32.747028, 42.156796>,  <36.185280, 32.954559, 42.408951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539669, 32.747028, 42.156796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569645, 33.145397, 42.136669>,  <35.587631, 33.384418, 42.124596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569645, 33.145397, 42.136669>,  <35.539669, 32.747028, 42.156796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569645, 33.145397, 42.136669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176894, -0.036376, -0.983557,
		-0.981372, 0.082611, 0.173446,
		0.074943, 0.995918, -0.050312,
		35.592129, 33.444172, 42.121574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085251, 32.874523, 41.590748>,  <35.539669, 32.747028, 42.156796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085251, 32.874523, 41.590748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294502, 33.210781, 41.646820>,  <35.420055, 33.412537, 41.680462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294502, 33.210781, 41.646820>,  <35.085251, 32.874523, 41.590748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294502, 33.210781, 41.646820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017184, 0.154046, -0.987914,
		-0.852078, 0.519218, 0.066141,
		0.523132, 0.840644, 0.140181,
		35.451443, 33.462975, 41.688873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748936, 33.400116, 41.251968>,  <35.085251, 32.874523, 41.590748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748936, 33.400116, 41.251968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132488, 33.512417, 41.268570>,  <35.362621, 33.579800, 41.278530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132488, 33.512417, 41.268570>,  <34.748936, 33.400116, 41.251968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132488, 33.512417, 41.268570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008528, 0.174660, -0.984592,
		-0.283679, 0.943753, 0.169873,
		0.958881, 0.280756, 0.041500,
		35.420155, 33.596645, 41.281021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733418, 33.998924, 40.711563>,  <34.748936, 33.400116, 41.251968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733418, 33.998924, 40.711563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121765, 33.929943, 40.778099>,  <35.354774, 33.888554, 40.818020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121765, 33.929943, 40.778099>,  <34.733418, 33.998924, 40.711563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121765, 33.929943, 40.778099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219939, 0.365979, -0.904260,
		0.095067, 0.914504, 0.393248,
		0.970870, -0.172456, 0.166343,
		35.413025, 33.878208, 40.828003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010986, 34.559307, 40.461121>,  <34.733418, 33.998924, 40.711563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010986, 34.559307, 40.461121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.311016, 34.294861, 40.468166>,  <35.491035, 34.136192, 40.472393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.311016, 34.294861, 40.468166>,  <35.010986, 34.559307, 40.461121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311016, 34.294861, 40.468166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222909, 0.227649, -0.947886,
		0.622651, 0.714915, 0.318123,
		0.750078, -0.661115, 0.017616,
		35.536041, 34.096527, 40.473450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464367, 34.895462, 40.105450>,  <35.010986, 34.559307, 40.461121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464367, 34.895462, 40.105450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584759, 34.514313, 40.090244>,  <35.656994, 34.285622, 40.081123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584759, 34.514313, 40.090244>,  <35.464367, 34.895462, 40.105450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584759, 34.514313, 40.090244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228518, 0.110764, -0.967218,
		0.925846, 0.282425, 0.251086,
		0.300978, -0.952873, -0.038011,
		35.675053, 34.228451, 40.078842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202206, 34.885441, 39.906902>,  <35.464367, 34.895462, 40.105450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202206, 34.885441, 39.906902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099739, 34.510193, 39.813686>,  <36.038258, 34.285042, 39.757759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099739, 34.510193, 39.813686>,  <36.202206, 34.885441, 39.906902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099739, 34.510193, 39.813686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274594, 0.160526, -0.948066,
		0.926810, -0.306853, 0.216482,
		-0.256165, -0.938122, -0.233038,
		36.022888, 34.228756, 39.743774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798767, 34.515362, 39.766407>,  <36.202206, 34.885441, 39.906902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798767, 34.515362, 39.766407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496605, 34.322948, 39.588436>,  <36.315308, 34.207500, 39.481651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496605, 34.322948, 39.588436>,  <36.798767, 34.515362, 39.766407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496605, 34.322948, 39.588436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486076, 0.043974, -0.872810,
		0.439418, -0.875598, 0.200601,
		-0.755409, -0.481035, -0.444930,
		36.269981, 34.178638, 39.454956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097874, 34.246956, 39.154846>,  <36.798767, 34.515362, 39.766407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097874, 34.246956, 39.154846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716789, 34.154896, 39.075470>,  <36.488140, 34.099659, 39.027843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716789, 34.154896, 39.075470>,  <37.097874, 34.246956, 39.154846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716789, 34.154896, 39.075470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199596, 0.018488, -0.979704,
		0.229145, -0.972980, 0.028323,
		-0.952709, -0.230148, -0.198439,
		36.430977, 34.085850, 39.015938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103344, 34.593952, 38.461037>,  <37.097874, 34.246956, 39.154846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103344, 34.593952, 38.461037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435249, 34.762165, 38.314262>,  <37.634392, 34.863094, 38.226196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435249, 34.762165, 38.314262>,  <37.103344, 34.593952, 38.461037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435249, 34.762165, 38.314262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388816, 0.036094, 0.920608,
		0.400394, -0.906557, -0.133561,
		0.829763, 0.420537, -0.366935,
		37.684177, 34.888325, 38.204182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761417, 34.239658, 38.762589>,  <37.103344, 34.593952, 38.461037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761417, 34.239658, 38.762589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884174, 34.601971, 38.645706>,  <37.957829, 34.819359, 38.575577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884174, 34.601971, 38.645706>,  <37.761417, 34.239658, 38.762589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884174, 34.601971, 38.645706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479418, 0.118099, 0.869604,
		0.822179, -0.406958, -0.398005,
		0.306888, 0.905781, -0.292201,
		37.976242, 34.873703, 38.558044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449986, 34.214001, 38.942684>,  <37.761417, 34.239658, 38.762589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449986, 34.214001, 38.942684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384434, 34.604130, 38.883511>,  <38.345104, 34.838207, 38.848007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384434, 34.604130, 38.883511>,  <38.449986, 34.214001, 38.942684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384434, 34.604130, 38.883511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641648, 0.219288, 0.734983,
		0.749288, 0.025528, -0.661753,
		-0.163877, 0.975326, -0.147929,
		38.335270, 34.896729, 38.839130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108307, 34.458801, 38.817646>,  <38.449986, 34.214001, 38.942684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108307, 34.458801, 38.817646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883869, 34.759037, 38.957241>,  <38.749207, 34.939178, 39.040997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883869, 34.759037, 38.957241>,  <39.108307, 34.458801, 38.817646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883869, 34.759037, 38.957241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706699, 0.214854, 0.674102,
		0.430993, 0.624862, -0.650994,
		-0.561090, 0.750590, 0.348989,
		38.715542, 34.984215, 39.061939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576416, 35.044075, 39.042194>,  <39.108307, 34.458801, 38.817646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576416, 35.044075, 39.042194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231514, 35.081638, 39.241272>,  <39.024574, 35.104176, 39.360718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231514, 35.081638, 39.241272>,  <39.576416, 35.044075, 39.042194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231514, 35.081638, 39.241272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503586, 0.054065, 0.862252,
		0.054065, 0.994112, -0.093909,
		-0.862252, 0.093909, 0.497698,
		38.972839, 35.109810, 39.390583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664165, 35.599056, 39.549973>,  <39.576416, 35.044075, 39.042194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664165, 35.599056, 39.549973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350899, 35.402973, 39.702995>,  <39.162941, 35.285324, 39.794807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350899, 35.402973, 39.702995>,  <39.664165, 35.599056, 39.549973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350899, 35.402973, 39.702995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393635, 0.085413, 0.915290,
		-0.481361, 0.867408, 0.126072,
		-0.783162, -0.490212, 0.382556,
		39.115952, 35.255909, 39.817760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487690, 35.910686, 40.127743>,  <39.664165, 35.599056, 39.549973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487690, 35.910686, 40.127743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310440, 35.560047, 40.202797>,  <39.204090, 35.349663, 40.247829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310440, 35.560047, 40.202797>,  <39.487690, 35.910686, 40.127743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310440, 35.560047, 40.202797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276851, 0.065258, 0.958694,
		-0.852638, 0.476771, 0.213771,
		-0.443127, -0.876602, 0.187636,
		39.177502, 35.297066, 40.259087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128742, 36.068581, 40.753902>,  <39.487690, 35.910686, 40.127743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128742, 36.068581, 40.753902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135738, 35.669582, 40.726505>,  <39.139938, 35.430183, 40.710068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135738, 35.669582, 40.726505>,  <39.128742, 36.068581, 40.753902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135738, 35.669582, 40.726505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085405, -0.066763, 0.994107,
		-0.996193, -0.023240, 0.084024,
		0.017494, -0.997498, -0.068494,
		39.140987, 35.370335, 40.705956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618958, 35.876789, 41.224468>,  <39.128742, 36.068581, 40.753902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618958, 35.876789, 41.224468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863041, 35.569553, 41.146820>,  <39.009491, 35.385212, 41.100231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863041, 35.569553, 41.146820>,  <38.618958, 35.876789, 41.224468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863041, 35.569553, 41.146820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042067, -0.213264, 0.976088,
		-0.791126, -0.603780, -0.097823,
		0.610204, -0.768094, -0.194119,
		39.046101, 35.339127, 41.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303371, 35.386768, 41.635143>,  <38.618958, 35.876789, 41.224468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303371, 35.386768, 41.635143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650497, 35.195496, 41.581123>,  <38.858772, 35.080730, 41.548710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650497, 35.195496, 41.581123>,  <38.303371, 35.386768, 41.635143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650497, 35.195496, 41.581123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089212, -0.417317, 0.904372,
		-0.488815, -0.772779, -0.404813,
		0.867815, -0.478184, -0.135050,
		38.910843, 35.052040, 41.540607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185577, 34.704391, 41.922150>,  <38.303371, 35.386768, 41.635143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185577, 34.704391, 41.922150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.581108, 34.763325, 41.913074>,  <38.818428, 34.798683, 41.907631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.581108, 34.763325, 41.913074>,  <38.185577, 34.704391, 41.922150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581108, 34.763325, 41.913074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101816, -0.556355, 0.824683,
		0.108881, -0.817779, -0.565140,
		0.988827, 0.147333, -0.022686,
		38.877758, 34.807526, 41.906269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431351, 34.175259, 42.248413>,  <38.185577, 34.704391, 41.922150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431351, 34.175259, 42.248413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754215, 34.410942, 42.262917>,  <38.947933, 34.552353, 42.271618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754215, 34.410942, 42.262917>,  <38.431351, 34.175259, 42.248413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754215, 34.410942, 42.262917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305737, -0.469794, 0.828142,
		0.504987, -0.657360, -0.559345,
		0.807163, 0.589214, 0.036261,
		38.996365, 34.587708, 42.273796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072670, 33.745968, 42.360607>,  <38.431351, 34.175259, 42.248413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072670, 33.745968, 42.360607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125126, 34.119991, 42.492344>,  <39.156597, 34.344406, 42.571384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125126, 34.119991, 42.492344>,  <39.072670, 33.745968, 42.360607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125126, 34.119991, 42.492344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316766, -0.354313, 0.879842,
		0.939395, -0.011055, -0.342658,
		0.131135, 0.935062, 0.329338,
		39.164467, 34.400509, 42.591145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844608, 33.825638, 42.636909>,  <39.072670, 33.745968, 42.360607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844608, 33.825638, 42.636909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.616604, 34.091076, 42.830704>,  <39.479801, 34.250340, 42.946980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.616604, 34.091076, 42.830704>,  <39.844608, 33.825638, 42.636909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616604, 34.091076, 42.830704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382445, -0.307603, 0.871273,
		0.727202, 0.681925, -0.078451,
		-0.570011, 0.663595, 0.484489,
		39.445602, 34.290154, 42.976051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246380, 34.173420, 43.316940>,  <39.844608, 33.825638, 42.636909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246380, 34.173420, 43.316940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848499, 34.201195, 43.347248>,  <39.609772, 34.217857, 43.365433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848499, 34.201195, 43.347248>,  <40.246380, 34.173420, 43.316940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848499, 34.201195, 43.347248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071624, -0.060380, 0.995603,
		0.073703, 0.995758, 0.055087,
		-0.994705, 0.069433, 0.075771,
		39.550087, 34.222023, 43.369980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170113, 34.602356, 43.876156>,  <40.246380, 34.173420, 43.316940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170113, 34.602356, 43.876156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800819, 34.451160, 43.848553>,  <39.579243, 34.360443, 43.831989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800819, 34.451160, 43.848553>,  <40.170113, 34.602356, 43.876156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800819, 34.451160, 43.848553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079657, 0.012580, 0.996743,
		-0.375885, 0.925726, -0.041724,
		-0.923236, -0.377984, -0.069012,
		39.523849, 34.337765, 43.827850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675022, 34.946869, 44.365131>,  <40.170113, 34.602356, 43.876156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675022, 34.946869, 44.365131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457623, 34.612720, 44.332237>,  <39.327183, 34.412231, 44.312500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457623, 34.612720, 44.332237>,  <39.675022, 34.946869, 44.365131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457623, 34.612720, 44.332237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095891, -0.035536, 0.994757,
		-0.833913, 0.548538, -0.060790,
		-0.543502, -0.835370, -0.082234,
		39.294571, 34.362110, 44.307568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032215, 35.078125, 44.631241>,  <39.675022, 34.946869, 44.365131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032215, 35.078125, 44.631241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068138, 34.679905, 44.642715>,  <39.089691, 34.440975, 44.649601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068138, 34.679905, 44.642715>,  <39.032215, 35.078125, 44.631241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068138, 34.679905, 44.642715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300499, 0.000374, 0.953782,
		-0.949545, -0.094273, -0.299127,
		0.089804, -0.995546, 0.028684,
		39.095078, 34.381241, 44.651321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.428837, 34.785069, 45.025257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702644, 34.494717, 45.052200>,  <38.866928, 34.320507, 45.068367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702644, 34.494717, 45.052200>,  <38.428837, 34.785069, 45.025257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702644, 34.494717, 45.052200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226928, -0.124369, 0.965938,
		-0.692776, -0.676486, -0.249855,
		0.684518, -0.725878, 0.067354,
		38.908001, 34.276955, 45.072407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075039, 34.338276, 45.492794>,  <38.428837, 34.785069, 45.025257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075039, 34.338276, 45.492794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451088, 34.202015, 45.497341>,  <38.676716, 34.120258, 45.500069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451088, 34.202015, 45.497341>,  <38.075039, 34.338276, 45.492794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451088, 34.202015, 45.497341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147076, -0.375356, 0.915137,
		-0.307472, -0.862013, -0.402982,
		0.940122, -0.340648, 0.011370,
		38.733124, 34.099819, 45.500751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036781, 33.655918, 45.794029>,  <38.075039, 34.338276, 45.492794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036781, 33.655918, 45.794029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423767, 33.754875, 45.815216>,  <38.655960, 33.814247, 45.827927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423767, 33.754875, 45.815216>,  <38.036781, 33.655918, 45.794029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423767, 33.754875, 45.815216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059824, -0.427126, 0.902211,
		0.245821, -0.869691, -0.428030,
		0.967467, 0.247389, 0.052968,
		38.714008, 33.829090, 45.831108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341583, 33.169720, 46.207932>,  <38.036781, 33.655918, 45.794029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341583, 33.169720, 46.207932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606476, 33.469124, 46.221680>,  <38.765411, 33.648766, 46.229931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606476, 33.469124, 46.221680>,  <38.341583, 33.169720, 46.207932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606476, 33.469124, 46.221680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070120, -0.107581, 0.991720,
		0.746007, -0.654343, -0.123729,
		0.662236, 0.748506, 0.034374,
		38.805145, 33.693676, 46.231991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956402, 32.925854, 46.370003>,  <38.341583, 33.169720, 46.207932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956402, 32.925854, 46.370003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949776, 33.305405, 46.496082>,  <38.945801, 33.533134, 46.571732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949776, 33.305405, 46.496082>,  <38.956402, 32.925854, 46.370003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949776, 33.305405, 46.496082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126671, -0.310712, 0.942026,
		0.991807, 0.055531, -0.115049,
		-0.016565, 0.948881, 0.315200,
		38.944805, 33.590069, 46.590641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518066, 32.967796, 46.835133>,  <38.956402, 32.925854, 46.370003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518066, 32.967796, 46.835133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271252, 33.272728, 46.913231>,  <39.123161, 33.455685, 46.960091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271252, 33.272728, 46.913231>,  <39.518066, 32.967796, 46.835133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271252, 33.272728, 46.913231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082757, -0.183875, 0.979460,
		0.782568, 0.620525, 0.050371,
		-0.617041, 0.762325, 0.195247,
		39.086140, 33.501427, 46.971806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843014, 33.257389, 47.319801>,  <39.518066, 32.967796, 46.835133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843014, 33.257389, 47.319801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.470589, 33.400173, 47.349979>,  <39.247131, 33.485844, 47.368088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.470589, 33.400173, 47.349979>,  <39.843014, 33.257389, 47.319801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470589, 33.400173, 47.349979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042394, -0.099534, 0.994131,
		0.362376, 0.928801, 0.077540,
		-0.931067, 0.356962, 0.075444,
		39.191269, 33.507263, 47.372612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889130, 33.932793, 47.649994>,  <39.843014, 33.257389, 47.319801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889130, 33.932793, 47.649994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536472, 33.750000, 47.697105>,  <39.324879, 33.640324, 47.725372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536472, 33.750000, 47.697105>,  <39.889130, 33.932793, 47.649994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536472, 33.750000, 47.697105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182854, -0.100719, 0.977967,
		-0.435048, 0.883757, 0.172359,
		-0.881645, -0.456979, 0.117780,
		39.271980, 33.612907, 47.732441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684860, 34.201740, 48.208481>,  <39.889130, 33.932793, 47.649994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684860, 34.201740, 48.208481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.468269, 33.866261, 48.185200>,  <39.338314, 33.664974, 48.171230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.468269, 33.866261, 48.185200>,  <39.684860, 34.201740, 48.208481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468269, 33.866261, 48.185200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138272, -0.157128, 0.977851,
		-0.829268, 0.521435, 0.201050,
		-0.541476, -0.838699, -0.058201,
		39.305828, 33.614651, 48.167740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243355, 34.309307, 48.749668>,  <39.684860, 34.201740, 48.208481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243355, 34.309307, 48.749668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233749, 33.917122, 48.671577>,  <39.227985, 33.681812, 48.624722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233749, 33.917122, 48.671577>,  <39.243355, 34.309307, 48.749668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233749, 33.917122, 48.671577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321722, -0.192474, 0.927064,
		-0.946529, -0.040543, 0.320060,
		-0.024017, -0.980464, -0.195225,
		39.226543, 33.622982, 48.613010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012074, 34.077076, 49.354473>,  <39.243355, 34.309307, 48.749668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012074, 34.077076, 49.354473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.138622, 33.731598, 49.197533>,  <39.214554, 33.524311, 49.103367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.138622, 33.731598, 49.197533>,  <39.012074, 34.077076, 49.354473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138622, 33.731598, 49.197533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261455, -0.318192, 0.911260,
		-0.911893, -0.390883, 0.125148,
		0.316375, -0.863692, -0.392356,
		39.233536, 33.472488, 49.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691673, 33.614426, 49.823185>,  <39.012074, 34.077076, 49.354473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691673, 33.614426, 49.823185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.960075, 33.395432, 49.623180>,  <39.121117, 33.264034, 49.503178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.960075, 33.395432, 49.623180>,  <38.691673, 33.614426, 49.823185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960075, 33.395432, 49.623180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262910, -0.454863, 0.850869,
		-0.693278, -0.702393, -0.161274,
		0.671002, -0.547488, -0.500013,
		39.161377, 33.231186, 49.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643600, 32.863686, 49.973881>,  <38.691673, 33.614426, 49.823185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643600, 32.863686, 49.973881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014599, 32.966827, 49.865608>,  <39.237198, 33.028713, 49.800644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014599, 32.966827, 49.865608>,  <38.643600, 32.863686, 49.973881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014599, 32.966827, 49.865608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328170, -0.214800, 0.919873,
		0.179050, -0.942005, -0.283845,
		0.927494, 0.257853, -0.270678,
		39.292847, 33.044182, 49.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051388, 32.451164, 50.215889>,  <38.643600, 32.863686, 49.973881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051388, 32.451164, 50.215889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333260, 32.729744, 50.161652>,  <39.502384, 32.896893, 50.129108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333260, 32.729744, 50.161652>,  <39.051388, 32.451164, 50.215889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333260, 32.729744, 50.161652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437775, -0.276386, 0.855549,
		0.558367, -0.662249, -0.499651,
		0.704683, 0.696446, -0.135592,
		39.544666, 32.938679, 50.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704533, 32.172119, 50.315765>,  <39.051388, 32.451164, 50.215889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704533, 32.172119, 50.315765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781700, 32.558849, 50.382740>,  <39.827999, 32.790886, 50.422924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781700, 32.558849, 50.382740>,  <39.704533, 32.172119, 50.315765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781700, 32.558849, 50.382740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529919, -0.246275, 0.811502,
		0.825814, -0.067827, -0.559849,
		0.192918, 0.966824, 0.167434,
		39.839577, 32.848896, 50.432972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334324, 32.232040, 50.621418>,  <39.704533, 32.172119, 50.315765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334324, 32.232040, 50.621418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196522, 32.596668, 50.711185>,  <40.113842, 32.815445, 50.765045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196522, 32.596668, 50.711185>,  <40.334324, 32.232040, 50.621418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196522, 32.596668, 50.711185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605440, 0.033045, 0.795205,
		0.717466, 0.409822, -0.563283,
		-0.344506, 0.911567, 0.224414,
		40.093170, 32.870140, 50.778511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964054, 32.631962, 50.772331>,  <40.334324, 32.232040, 50.621418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964054, 32.631962, 50.772331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652039, 32.808414, 50.949848>,  <40.464828, 32.914284, 51.056358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652039, 32.808414, 50.949848>,  <40.964054, 32.631962, 50.772331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652039, 32.808414, 50.949848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478309, -0.036932, 0.877415,
		0.403441, 0.896684, -0.182187,
		-0.780036, 0.441127, 0.443792,
		40.418026, 32.940754, 51.082985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219677, 33.160988, 51.191536>,  <40.964054, 32.631962, 50.772331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219677, 33.160988, 51.191536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858646, 33.071472, 51.338650>,  <40.642029, 33.017761, 51.426918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858646, 33.071472, 51.338650>,  <41.219677, 33.160988, 51.191536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858646, 33.071472, 51.338650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418828, -0.258699, 0.870435,
		-0.099652, 0.939676, 0.327228,
		-0.902581, -0.223793, 0.367783,
		40.587872, 33.004333, 51.448986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260780, 33.485565, 51.825134>,  <41.219677, 33.160988, 51.191536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260780, 33.485565, 51.825134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956799, 33.227562, 51.857216>,  <40.774410, 33.072762, 51.876465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956799, 33.227562, 51.857216>,  <41.260780, 33.485565, 51.825134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956799, 33.227562, 51.857216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339840, -0.289115, 0.894942,
		-0.554057, 0.707373, 0.438914,
		-0.759954, -0.645009, 0.080208,
		40.728813, 33.034058, 51.881279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883102, 33.628590, 52.463474>,  <41.260780, 33.485565, 51.825134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883102, 33.628590, 52.463474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802803, 33.252712, 52.352715>,  <40.754623, 33.027184, 52.286259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802803, 33.252712, 52.352715>,  <40.883102, 33.628590, 52.463474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802803, 33.252712, 52.352715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133121, -0.306196, 0.942615,
		-0.970555, 0.152371, 0.186563,
		-0.200752, -0.939695, -0.276897,
		40.742577, 32.970802, 52.269646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498821, 33.395111, 52.977646>,  <40.883102, 33.628590, 52.463474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498821, 33.395111, 52.977646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587646, 33.031937, 52.835472>,  <40.640942, 32.814034, 52.750168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587646, 33.031937, 52.835472>,  <40.498821, 33.395111, 52.977646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587646, 33.031937, 52.835472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157223, -0.326427, 0.932055,
		-0.962272, -0.262862, 0.070259,
		0.222067, -0.907937, -0.355439,
		40.654266, 32.759556, 52.728840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046528, 32.874592, 53.307751>,  <40.498821, 33.395111, 52.977646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046528, 32.874592, 53.307751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.384769, 32.699116, 53.186089>,  <40.587715, 32.593830, 53.113091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.384769, 32.699116, 53.186089>,  <40.046528, 32.874592, 53.307751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384769, 32.699116, 53.186089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155145, -0.343214, 0.926355,
		-0.510770, -0.830516, -0.222163,
		0.845603, -0.438688, -0.304154,
		40.638451, 32.567509, 53.094841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131332, 32.231678, 53.658646>,  <40.046528, 32.874592, 53.307751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131332, 32.231678, 53.658646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.508663, 32.307625, 53.549774>,  <40.735062, 32.353191, 53.484451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.508663, 32.307625, 53.549774>,  <40.131332, 32.231678, 53.658646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508663, 32.307625, 53.549774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308327, -0.198101, 0.930425,
		0.122735, -0.961617, -0.245415,
		0.943330, 0.189864, -0.272178,
		40.791660, 32.364582, 53.468121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420494, 31.673729, 53.734283>,  <40.131332, 32.231678, 53.658646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420494, 31.673729, 53.734283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.655849, 31.992758, 53.787468>,  <40.797062, 32.184174, 53.819378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.655849, 31.992758, 53.787468>,  <40.420494, 31.673729, 53.734283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655849, 31.992758, 53.787468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392094, -0.425242, 0.815740,
		0.707151, -0.427839, -0.562931,
		0.588387, 0.797573, 0.132957,
		40.832367, 32.232029, 53.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866779, 31.775169, 54.283085>,  <40.420494, 31.673729, 53.734283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866779, 31.775169, 54.283085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.488804, 31.781822, 54.413815>,  <39.262020, 31.785814, 54.492252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.488804, 31.781822, 54.413815>,  <39.866779, 31.775169, 54.283085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488804, 31.781822, 54.413815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323536, -0.197492, -0.925376,
		0.049156, -0.980163, 0.191998,
		-0.944938, 0.016630, 0.326826,
		39.205322, 31.786812, 54.511864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531597, 31.190716, 54.063759>,  <39.866779, 31.775169, 54.283085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531597, 31.190716, 54.063759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233627, 31.447426, 54.136646>,  <39.054844, 31.601452, 54.180378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233627, 31.447426, 54.136646>,  <39.531597, 31.190716, 54.063759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233627, 31.447426, 54.136646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426329, -0.247845, -0.869952,
		-0.513152, -0.725738, 0.458235,
		-0.744928, 0.641777, 0.182220,
		39.010147, 31.639959, 54.191311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997860, 30.834030, 53.799500>,  <39.531597, 31.190716, 54.063759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997860, 30.834030, 53.799500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875027, 31.213028, 53.835175>,  <38.801327, 31.440426, 53.856579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875027, 31.213028, 53.835175>,  <38.997860, 30.834030, 53.799500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875027, 31.213028, 53.835175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682915, -0.154120, -0.714055,
		-0.662816, -0.280187, 0.694385,
		-0.307087, 0.947493, 0.089190,
		38.782902, 31.497276, 53.861931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252132, 30.843966, 53.871876>,  <38.997860, 30.834030, 53.799500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252132, 30.843966, 53.871876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348972, 31.199686, 53.716686>,  <38.407078, 31.413118, 53.623573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348972, 31.199686, 53.716686>,  <38.252132, 30.843966, 53.871876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348972, 31.199686, 53.716686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600176, -0.176926, -0.780055,
		-0.762349, 0.421708, 0.490904,
		0.242102, 0.889303, -0.387978,
		38.421604, 31.466476, 53.600292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638035, 31.094904, 53.618904>,  <38.252132, 30.843966, 53.871876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638035, 31.094904, 53.618904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888012, 31.348413, 53.436577>,  <38.037998, 31.500519, 53.327179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888012, 31.348413, 53.436577>,  <37.638035, 31.094904, 53.618904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888012, 31.348413, 53.436577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576308, -0.019318, -0.817004,
		-0.526602, 0.773277, 0.353177,
		0.624947, 0.633774, -0.455819,
		38.075497, 31.538546, 53.299831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138798, 31.497921, 53.257236>,  <37.638035, 31.094904, 53.618904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138798, 31.497921, 53.257236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486820, 31.595400, 53.085838>,  <37.695633, 31.653887, 52.982998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486820, 31.595400, 53.085838>,  <37.138798, 31.497921, 53.257236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486820, 31.595400, 53.085838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448566, 0.030931, -0.893214,
		-0.204419, 0.969358, 0.136226,
		0.870058, 0.243696, -0.428498,
		37.747837, 31.668509, 52.957291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094704, 32.132248, 52.830528>,  <37.138798, 31.497921, 53.257236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094704, 32.132248, 52.830528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393379, 31.917604, 52.673298>,  <37.572586, 31.788818, 52.578960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393379, 31.917604, 52.673298>,  <37.094704, 32.132248, 52.830528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393379, 31.917604, 52.673298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289401, 0.270007, -0.918338,
		0.598920, 0.799468, 0.046316,
		0.746687, -0.536607, -0.393079,
		37.617386, 31.756622, 52.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313885, 32.541035, 52.214993>,  <37.094704, 32.132248, 52.830528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313885, 32.541035, 52.214993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490738, 32.188049, 52.150768>,  <37.596851, 31.976259, 52.112232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490738, 32.188049, 52.150768>,  <37.313885, 32.541035, 52.214993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490738, 32.188049, 52.150768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025855, 0.191475, -0.981157,
		0.896577, 0.429649, 0.107473,
		0.442132, -0.882462, -0.160564,
		37.623379, 31.923311, 52.102600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850430, 32.631718, 51.681187>,  <37.313885, 32.541035, 52.214993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850430, 32.631718, 51.681187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773670, 32.240837, 51.644867>,  <37.727615, 32.006310, 51.623074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773670, 32.240837, 51.644867>,  <37.850430, 32.631718, 51.681187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773670, 32.240837, 51.644867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025854, 0.097523, -0.994897,
		0.981075, -0.188569, -0.043979,
		-0.191895, -0.977206, -0.090802,
		37.716103, 31.947676, 51.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367985, 32.284000, 51.224243>,  <37.850430, 32.631718, 51.681187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367985, 32.284000, 51.224243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032021, 32.067089, 51.233070>,  <37.830444, 31.936943, 51.238365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032021, 32.067089, 51.233070>,  <38.367985, 32.284000, 51.224243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032021, 32.067089, 51.233070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074422, 0.074800, -0.994418,
		0.537601, -0.836862, -0.103182,
		-0.839908, -0.542279, 0.022068,
		37.780048, 31.904406, 51.239689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425152, 31.890324, 50.596992>,  <38.367985, 32.284000, 51.224243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425152, 31.890324, 50.596992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036724, 31.871174, 50.690578>,  <37.803669, 31.859684, 50.746731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036724, 31.871174, 50.690578>,  <38.425152, 31.890324, 50.596992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036724, 31.871174, 50.690578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237427, 0.088173, -0.967395,
		0.025676, -0.994954, -0.096987,
		-0.971065, -0.047866, 0.233965,
		37.745403, 31.856812, 50.760769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183475, 31.442314, 50.050941>,  <38.425152, 31.890324, 50.596992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183475, 31.442314, 50.050941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869061, 31.639097, 50.200668>,  <37.680412, 31.757168, 50.290504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869061, 31.639097, 50.200668>,  <38.183475, 31.442314, 50.050941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869061, 31.639097, 50.200668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325670, 0.185124, -0.927183,
		-0.525432, -0.850709, 0.014702,
		-0.786041, 0.491959, 0.374321,
		37.633247, 31.786684, 50.312965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644844, 31.405329, 49.509869>,  <38.183475, 31.442314, 50.050941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644844, 31.405329, 49.509869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534355, 31.733305, 49.710426>,  <37.468060, 31.930092, 49.830761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534355, 31.733305, 49.710426>,  <37.644844, 31.405329, 49.509869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534355, 31.733305, 49.710426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470377, 0.339603, -0.814503,
		-0.838120, -0.460830, 0.291876,
		-0.276225, 0.819942, 0.501392,
		37.451488, 31.979288, 49.860844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990738, 31.541784, 49.325123>,  <37.644844, 31.405329, 49.509869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990738, 31.541784, 49.325123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122639, 31.890518, 49.469994>,  <37.201778, 32.099758, 49.556915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122639, 31.890518, 49.469994>,  <36.990738, 31.541784, 49.325123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122639, 31.890518, 49.469994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484525, 0.485542, -0.727657,
		-0.810247, 0.064462, 0.582532,
		0.329750, 0.871834, 0.362176,
		37.221565, 32.152069, 49.578648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414116, 32.038761, 49.457016>,  <36.990738, 31.541784, 49.325123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414116, 32.038761, 49.457016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755497, 32.244164, 49.421421>,  <36.960327, 32.367405, 49.400063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755497, 32.244164, 49.421421>,  <36.414116, 32.038761, 49.457016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755497, 32.244164, 49.421421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406679, 0.549413, -0.729903,
		-0.325919, 0.659131, 0.677734,
		0.853457, 0.513509, -0.088990,
		37.011536, 32.398216, 49.394726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132698, 32.669323, 49.299469>,  <36.414116, 32.038761, 49.457016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132698, 32.669323, 49.299469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.517372, 32.725975, 49.205566>,  <36.748177, 32.759968, 49.149227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.517372, 32.725975, 49.205566>,  <36.132698, 32.669323, 49.299469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517372, 32.725975, 49.205566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268990, 0.653054, -0.707930,
		0.053042, 0.743950, 0.666127,
		0.961681, 0.141631, -0.234755,
		36.805878, 32.768463, 49.135139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262512, 33.398689, 49.376446>,  <36.132698, 32.669323, 49.299469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262512, 33.398689, 49.376446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520870, 33.238281, 49.116600>,  <36.675884, 33.142036, 48.960693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520870, 33.238281, 49.116600>,  <36.262512, 33.398689, 49.376446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520870, 33.238281, 49.116600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288656, 0.659469, -0.694103,
		0.706749, 0.635835, 0.310193,
		0.645897, -0.401018, -0.649616,
		36.714638, 33.117977, 48.921715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366127, 33.931019, 48.895004>,  <36.262512, 33.398689, 49.376446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366127, 33.931019, 48.895004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521828, 33.617172, 48.701984>,  <36.615250, 33.428864, 48.586170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521828, 33.617172, 48.701984>,  <36.366127, 33.931019, 48.895004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521828, 33.617172, 48.701984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390401, 0.333966, -0.857936,
		0.834307, 0.522345, -0.176316,
		0.389255, -0.784616, -0.482554,
		36.638603, 33.381786, 48.557217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680450, 34.203613, 48.232868>,  <36.366127, 33.931019, 48.895004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680450, 34.203613, 48.232868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621475, 33.813602, 48.166431>,  <36.586090, 33.579597, 48.126572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621475, 33.813602, 48.166431>,  <36.680450, 34.203613, 48.232868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621475, 33.813602, 48.166431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128825, 0.185426, -0.974177,
		0.980645, -0.122238, -0.152947,
		-0.147442, -0.975026, -0.166090,
		36.577244, 33.521095, 48.116604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008720, 34.161724, 47.596096>,  <36.680450, 34.203613, 48.232868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008720, 34.161724, 47.596096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792183, 33.825527, 47.605228>,  <36.662262, 33.623810, 47.610706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792183, 33.825527, 47.605228>,  <37.008720, 34.161724, 47.596096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792183, 33.825527, 47.605228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207797, 0.107431, -0.972255,
		0.814720, -0.531067, -0.232809,
		-0.541343, -0.840492, 0.022828,
		36.629780, 33.573380, 47.612076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.533913, 35.171883, 44.613598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.245361, 35.445927, 44.573124>,  <46.072231, 35.610352, 44.548840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.245361, 35.445927, 44.573124>,  <46.533913, 35.171883, 44.613598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245361, 35.445927, 44.573124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314220, -0.453992, -0.833760,
		-0.617155, -0.569661, 0.542776,
		-0.721377, 0.685111, -0.101185,
		46.028950, 35.651459, 44.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974075, 34.735706, 44.375294>,  <46.533913, 35.171883, 44.613598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974075, 34.735706, 44.375294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886555, 35.111717, 44.270626>,  <45.834042, 35.337326, 44.207825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886555, 35.111717, 44.270626>,  <45.974075, 34.735706, 44.375294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886555, 35.111717, 44.270626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387315, -0.329803, -0.860940,
		-0.895607, -0.087028, 0.436249,
		-0.218802, 0.940030, -0.261667,
		45.820915, 35.393726, 44.192127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327549, 34.636551, 43.963299>,  <45.974075, 34.735706, 44.375294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327549, 34.636551, 43.963299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454323, 35.007408, 43.883335>,  <45.530388, 35.229923, 43.835358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454323, 35.007408, 43.883335>,  <45.327549, 34.636551, 43.963299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454323, 35.007408, 43.883335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378510, -0.069624, -0.922975,
		-0.869646, 0.368189, 0.328866,
		0.316932, 0.927140, -0.199912,
		45.549404, 35.285549, 43.823360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727104, 34.976879, 43.751865>,  <45.327549, 34.636551, 43.963299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727104, 34.976879, 43.751865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022366, 35.207062, 43.611015>,  <45.199520, 35.345169, 43.526505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022366, 35.207062, 43.611015>,  <44.727104, 34.976879, 43.751865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022366, 35.207062, 43.611015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509423, 0.133246, -0.850138,
		-0.442295, 0.806908, 0.391504,
		0.738149, 0.575452, -0.352123,
		45.243809, 35.379696, 43.505379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384369, 35.533905, 43.420918>,  <44.727104, 34.976879, 43.751865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384369, 35.533905, 43.420918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753605, 35.480049, 43.276821>,  <44.975147, 35.447735, 43.190361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753605, 35.480049, 43.276821>,  <44.384369, 35.533905, 43.420918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753605, 35.480049, 43.276821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362982, 0.004494, -0.931785,
		0.127074, 0.990884, -0.044723,
		0.923091, -0.134640, -0.360244,
		45.030533, 35.439659, 43.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475647, 36.045853, 42.934742>,  <44.384369, 35.533905, 43.420918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475647, 36.045853, 42.934742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763977, 35.782326, 42.848614>,  <44.936977, 35.624210, 42.796936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763977, 35.782326, 42.848614>,  <44.475647, 36.045853, 42.934742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763977, 35.782326, 42.848614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325429, -0.047405, -0.944378,
		0.611968, 0.750805, -0.248570,
		0.720827, -0.658821, -0.215323,
		44.980225, 35.584679, 42.784016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879684, 36.375710, 42.458408>,  <44.475647, 36.045853, 42.934742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879684, 36.375710, 42.458408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911999, 35.977184, 42.446793>,  <44.931389, 35.738071, 42.439823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911999, 35.977184, 42.446793>,  <44.879684, 36.375710, 42.458408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911999, 35.977184, 42.446793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312147, 0.002377, -0.950031,
		0.946593, 0.085814, -0.310802,
		0.080787, -0.996309, -0.029036,
		44.936234, 35.678291, 42.438084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324432, 36.164879, 41.902092>,  <44.879684, 36.375710, 42.458408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324432, 36.164879, 41.902092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084099, 35.853485, 41.974709>,  <44.939899, 35.666649, 42.018280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084099, 35.853485, 41.974709>,  <45.324432, 36.164879, 41.902092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084099, 35.853485, 41.974709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234104, -0.045787, -0.971133,
		0.764322, -0.625994, -0.154735,
		-0.600838, -0.778483, 0.181544,
		44.903847, 35.619942, 42.029171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340614, 35.866726, 41.202709>,  <45.324432, 36.164879, 41.902092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340614, 35.866726, 41.202709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062706, 35.638050, 41.377281>,  <44.895962, 35.500843, 41.482025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062706, 35.638050, 41.377281>,  <45.340614, 35.866726, 41.202709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062706, 35.638050, 41.377281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309335, -0.310289, -0.898906,
		0.649314, -0.759533, 0.038735,
		-0.694768, -0.571691, 0.436426,
		44.854275, 35.466541, 41.508209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323704, 35.242916, 40.831802>,  <45.340614, 35.866726, 41.202709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323704, 35.242916, 40.831802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964573, 35.241726, 41.007942>,  <44.749096, 35.241013, 41.113625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964573, 35.241726, 41.007942>,  <45.323704, 35.242916, 40.831802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964573, 35.241726, 41.007942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428076, -0.228607, -0.874351,
		0.103272, -0.973514, 0.203973,
		-0.897823, -0.002980, 0.440346,
		44.695225, 35.240833, 41.140045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077744, 34.520081, 40.865437>,  <45.323704, 35.242916, 40.831802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077744, 34.520081, 40.865437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770561, 34.775497, 40.845409>,  <44.586250, 34.928749, 40.833393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770561, 34.775497, 40.845409>,  <45.077744, 34.520081, 40.865437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770561, 34.775497, 40.845409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399124, -0.538212, -0.742313,
		-0.500940, -0.550085, 0.668181,
		-0.767958, 0.638541, -0.050060,
		44.540176, 34.967060, 40.830391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607243, 34.118908, 40.613003>,  <45.077744, 34.520081, 40.865437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607243, 34.118908, 40.613003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455608, 34.483749, 40.550571>,  <44.364628, 34.702652, 40.513111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455608, 34.483749, 40.550571>,  <44.607243, 34.118908, 40.613003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455608, 34.483749, 40.550571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514864, -0.348053, -0.783437,
		-0.768900, -0.216632, 0.601551,
		-0.379089, 0.912102, -0.156082,
		44.341881, 34.757381, 40.503746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860981, 34.027035, 40.285404>,  <44.607243, 34.118908, 40.613003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860981, 34.027035, 40.285404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.977398, 34.398209, 40.192261>,  <44.047249, 34.620914, 40.136375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.977398, 34.398209, 40.192261>,  <43.860981, 34.027035, 40.285404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977398, 34.398209, 40.192261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436045, -0.087984, -0.895613,
		-0.851562, 0.362200, 0.379016,
		0.291044, 0.927938, -0.232860,
		44.064713, 34.676590, 40.122402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348232, 34.306465, 39.872993>,  <43.860981, 34.027035, 40.285404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348232, 34.306465, 39.872993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663372, 34.544033, 39.807804>,  <43.852455, 34.686573, 39.768692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663372, 34.544033, 39.807804>,  <43.348232, 34.306465, 39.872993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663372, 34.544033, 39.807804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247473, 0.062977, -0.966846,
		-0.563962, 0.802058, 0.196594,
		0.787848, 0.593916, -0.162971,
		43.899727, 34.722206, 39.758911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187073, 34.802708, 39.522415>,  <43.348232, 34.306465, 39.872993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187073, 34.802708, 39.522415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572628, 34.848892, 39.426418>,  <43.803959, 34.876602, 39.368820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572628, 34.848892, 39.426418>,  <43.187073, 34.802708, 39.522415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572628, 34.848892, 39.426418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250853, 0.090979, -0.963740,
		-0.089445, 0.989136, 0.116658,
		0.963884, 0.115466, -0.239990,
		43.861794, 34.883533, 39.354420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238689, 35.328068, 38.979710>,  <43.187073, 34.802708, 39.522415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238689, 35.328068, 38.979710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615120, 35.193485, 38.966064>,  <43.840981, 35.112736, 38.957878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615120, 35.193485, 38.966064>,  <43.238689, 35.328068, 38.979710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615120, 35.193485, 38.966064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032314, 0.189885, -0.981274,
		0.336637, 0.922355, 0.189570,
		0.941080, -0.336459, -0.034118,
		43.897446, 35.092548, 38.955830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718563, 35.828323, 38.550125>,  <43.238689, 35.328068, 38.979710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718563, 35.828323, 38.550125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886913, 35.468056, 38.506943>,  <43.987923, 35.251896, 38.481033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886913, 35.468056, 38.506943>,  <43.718563, 35.828323, 38.550125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886913, 35.468056, 38.506943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168546, 0.194578, -0.966298,
		0.891323, 0.388495, 0.233698,
		0.420875, -0.900672, -0.107952,
		44.013176, 35.197853, 38.474556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242390, 35.945728, 38.099239>,  <43.718563, 35.828323, 38.550125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242390, 35.945728, 38.099239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210430, 35.547844, 38.073402>,  <44.191254, 35.309113, 38.057899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210430, 35.547844, 38.073402>,  <44.242390, 35.945728, 38.099239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210430, 35.547844, 38.073402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107578, 0.055814, -0.992629,
		0.990981, -0.086261, 0.102549,
		-0.079902, -0.994708, -0.064591,
		44.186459, 35.249432, 38.054024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835484, 35.779091, 37.640663>,  <44.242390, 35.945728, 38.099239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835484, 35.779091, 37.640663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.550976, 35.497936, 37.643074>,  <44.380272, 35.329243, 37.644520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.550976, 35.497936, 37.643074>,  <44.835484, 35.779091, 37.640663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550976, 35.497936, 37.643074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055664, -0.064869, -0.996340,
		0.700710, -0.708333, 0.085265,
		-0.711272, -0.702892, 0.006025,
		44.337593, 35.287067, 37.644882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953526, 35.487625, 37.103199>,  <44.835484, 35.779091, 37.640663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953526, 35.487625, 37.103199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591110, 35.323612, 37.145084>,  <44.373661, 35.225204, 37.170216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591110, 35.323612, 37.145084>,  <44.953526, 35.487625, 37.103199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591110, 35.323612, 37.145084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091442, -0.051910, -0.994457,
		0.413191, -0.910594, 0.009539,
		-0.906042, -0.410028, 0.104715,
		44.319298, 35.200603, 37.176498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888653, 34.946758, 36.660561>,  <44.953526, 35.487625, 37.103199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888653, 34.946758, 36.660561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.509502, 35.058575, 36.721725>,  <44.282013, 35.125664, 36.758423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.509502, 35.058575, 36.721725>,  <44.888653, 34.946758, 36.660561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509502, 35.058575, 36.721725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193118, -0.122321, -0.973521,
		-0.253441, -0.952309, 0.169930,
		-0.947878, 0.279546, 0.152907,
		44.225140, 35.142437, 36.767597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208897, 35.441711, 36.234894>,  <44.888653, 34.946758, 36.660561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208897, 35.441711, 36.234894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536263, 35.553337, 36.033966>,  <45.732681, 35.620312, 35.913410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536263, 35.553337, 36.033966>,  <45.208897, 35.441711, 36.234894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536263, 35.553337, 36.033966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490681, 0.115536, 0.863646,
		0.299048, -0.953297, -0.042375,
		0.818414, 0.279064, -0.502315,
		45.781788, 35.637058, 35.883270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738506, 35.022411, 36.551411>,  <45.208897, 35.441711, 36.234894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738506, 35.022411, 36.551411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.884701, 35.343273, 36.362534>,  <45.972416, 35.535789, 36.249207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.884701, 35.343273, 36.362534>,  <45.738506, 35.022411, 36.551411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884701, 35.343273, 36.362534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506810, 0.254012, 0.823785,
		0.780747, -0.540393, -0.313703,
		0.365483, 0.802155, -0.472196,
		45.994347, 35.583920, 36.220875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414249, 35.037209, 36.673950>,  <45.738506, 35.022411, 36.551411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414249, 35.037209, 36.673950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308678, 35.415592, 36.598579>,  <46.245335, 35.642624, 36.553356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308678, 35.415592, 36.598579>,  <46.414249, 35.037209, 36.673950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308678, 35.415592, 36.598579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343021, 0.274639, 0.898282,
		0.901487, 0.172445, -0.396968,
		-0.263927, 0.945958, -0.188431,
		46.229500, 35.699379, 36.542049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995808, 35.238579, 36.930813>,  <46.414249, 35.037209, 36.673950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995808, 35.238579, 36.930813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734745, 35.540768, 36.907829>,  <46.578106, 35.722080, 36.894039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734745, 35.540768, 36.907829>,  <46.995808, 35.238579, 36.930813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734745, 35.540768, 36.907829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306529, 0.332639, 0.891847,
		0.692876, 0.564460, -0.448673,
		-0.652658, 0.755471, -0.057454,
		46.538948, 35.767410, 36.890594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344631, 35.700062, 37.244537>,  <46.995808, 35.238579, 36.930813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344631, 35.700062, 37.244537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.981796, 35.868263, 37.236778>,  <46.764095, 35.969185, 37.232124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.981796, 35.868263, 37.236778>,  <47.344631, 35.700062, 37.244537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981796, 35.868263, 37.236778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215991, 0.504489, 0.835966,
		0.361310, 0.754102, -0.548439,
		-0.907085, 0.420501, -0.019398,
		46.709671, 35.994415, 37.230961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385258, 36.377247, 37.261829>,  <47.344631, 35.700062, 37.244537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385258, 36.377247, 37.261829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.017834, 36.311680, 37.405704>,  <46.797379, 36.272339, 37.492031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.017834, 36.311680, 37.405704>,  <47.385258, 36.377247, 37.261829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017834, 36.311680, 37.405704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249116, 0.466448, 0.848745,
		-0.306898, 0.869229, -0.387627,
		-0.918561, -0.163914, 0.359691,
		46.742264, 36.262505, 37.513611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017876, 37.024429, 37.545971>,  <47.385258, 36.377247, 37.261829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017876, 37.024429, 37.545971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.838409, 36.706379, 37.709175>,  <46.730728, 36.515549, 37.807098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.838409, 36.706379, 37.709175>,  <47.017876, 37.024429, 37.545971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838409, 36.706379, 37.709175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228880, 0.339088, 0.912488,
		-0.863893, 0.502790, 0.029850,
		-0.448668, -0.795124, 0.408014,
		46.703808, 36.467842, 37.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518024, 37.317924, 37.912460>,  <47.017876, 37.024429, 37.545971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518024, 37.317924, 37.912460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.606972, 36.965977, 38.080448>,  <46.660339, 36.754807, 38.181240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.606972, 36.965977, 38.080448>,  <46.518024, 37.317924, 37.912460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606972, 36.965977, 38.080448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039747, 0.438576, 0.897815,
		-0.974151, -0.182957, 0.132499,
		0.222372, -0.879874, 0.419967,
		46.673683, 36.702015, 38.206440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934414, 37.149590, 38.451450>,  <46.518024, 37.317924, 37.912460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934414, 37.149590, 38.451450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.248791, 36.923599, 38.551929>,  <46.437416, 36.788006, 38.612217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.248791, 36.923599, 38.551929>,  <45.934414, 37.149590, 38.451450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248791, 36.923599, 38.551929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114255, 0.266564, 0.957021,
		-0.607657, -0.780860, 0.144951,
		0.785938, -0.564979, 0.251197,
		46.484573, 36.754105, 38.627289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771706, 36.842289, 39.156513>,  <45.934414, 37.149590, 38.451450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771706, 36.842289, 39.156513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.162781, 36.773609, 39.108116>,  <46.397427, 36.732403, 39.079079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.162781, 36.773609, 39.108116>,  <45.771706, 36.842289, 39.156513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162781, 36.773609, 39.108116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158513, 0.225141, 0.961345,
		-0.137819, -0.959078, 0.247335,
		0.977691, -0.171698, -0.120997,
		46.456089, 36.722099, 39.071815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957928, 36.442707, 39.692833>,  <45.771706, 36.842289, 39.156513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957928, 36.442707, 39.692833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.315384, 36.587269, 39.586411>,  <46.529858, 36.674007, 39.522556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.315384, 36.587269, 39.586411>,  <45.957928, 36.442707, 39.692833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315384, 36.587269, 39.586411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115983, 0.386711, 0.914879,
		0.433533, -0.848432, 0.303664,
		0.893643, 0.361411, -0.266055,
		46.583477, 36.695690, 39.506596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350391, 36.290947, 40.225758>,  <45.957928, 36.442707, 39.692833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350391, 36.290947, 40.225758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.565365, 36.566650, 40.031403>,  <46.694347, 36.732075, 39.914791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.565365, 36.566650, 40.031403>,  <46.350391, 36.290947, 40.225758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565365, 36.566650, 40.031403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264119, 0.409603, 0.873193,
		0.800879, -0.597614, 0.038087,
		0.537433, 0.689262, -0.485883,
		46.726597, 36.773430, 39.885639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959698, 36.278957, 40.530228>,  <46.350391, 36.290947, 40.225758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959698, 36.278957, 40.530228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.939049, 36.641392, 40.362255>,  <46.926659, 36.858852, 40.261471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.939049, 36.641392, 40.362255>,  <46.959698, 36.278957, 40.530228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.939049, 36.641392, 40.362255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243928, 0.419197, 0.874513,
		0.968418, -0.057288, -0.242660,
		-0.051623, 0.906086, -0.419932,
		46.923561, 36.913219, 40.236275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.432205, 36.587795, 40.857685>,  <46.959698, 36.278957, 40.530228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.432205, 36.587795, 40.857685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.231052, 36.897442, 40.703876>,  <47.110363, 37.083229, 40.611591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.231052, 36.897442, 40.703876>,  <47.432205, 36.587795, 40.857685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231052, 36.897442, 40.703876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111079, 0.499058, 0.859420,
		0.857190, 0.389471, -0.336954,
		-0.502879, 0.774114, -0.384525,
		47.080189, 37.129677, 40.588520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822254, 37.247463, 41.006355>,  <47.432205, 36.587795, 40.857685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822254, 37.247463, 41.006355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.456764, 37.392227, 40.932457>,  <47.237469, 37.479084, 40.888119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.456764, 37.392227, 40.932457>,  <47.822254, 37.247463, 41.006355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456764, 37.392227, 40.932457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035660, 0.524336, 0.850764,
		0.404767, 0.770776, -0.492004,
		-0.913724, 0.361906, -0.184748,
		47.182648, 37.500797, 40.877033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.720448, 38.023479, 41.118980>,  <47.822254, 37.247463, 41.006355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.720448, 38.023479, 41.118980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.354156, 37.885559, 41.201496>,  <47.134384, 37.802807, 41.251007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.354156, 37.885559, 41.201496>,  <47.720448, 38.023479, 41.118980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354156, 37.885559, 41.201496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042767, 0.426852, 0.903310,
		-0.399521, 0.836006, -0.376133,
		-0.915726, -0.344806, 0.206290,
		47.079437, 37.782116, 41.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.671368, 38.413960, 41.639294>,  <47.720448, 38.023479, 41.118980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.671368, 38.413960, 41.639294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.324791, 38.214249, 41.640007>,  <47.116844, 38.094421, 41.640434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.324791, 38.214249, 41.640007>,  <47.671368, 38.413960, 41.639294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324791, 38.214249, 41.640007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275314, 0.480744, 0.832519,
		-0.416515, 0.720837, -0.553994,
		-0.866440, -0.499278, 0.001781,
		47.064857, 38.064465, 41.640541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164803, 38.857918, 41.741562>,  <47.671368, 38.413960, 41.639294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164803, 38.857918, 41.741562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.986301, 38.520103, 41.859962>,  <46.879200, 38.317413, 41.931004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.986301, 38.520103, 41.859962>,  <47.164803, 38.857918, 41.741562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986301, 38.520103, 41.859962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281857, 0.446568, 0.849196,
		-0.849360, 0.295529, -0.437321,
		-0.446256, -0.844535, 0.296001,
		46.852425, 38.266743, 41.948761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542236, 39.086853, 42.218895>,  <47.164803, 38.857918, 41.741562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542236, 39.086853, 42.218895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632080, 38.704372, 42.293972>,  <46.685986, 38.474884, 42.339020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632080, 38.704372, 42.293972>,  <46.542236, 39.086853, 42.218895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632080, 38.704372, 42.293972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165908, 0.152280, 0.974312,
		-0.960221, -0.249984, -0.124438,
		0.224613, -0.956200, 0.187697,
		46.699463, 38.417511, 42.350281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971958, 38.778954, 42.626434>,  <46.542236, 39.086853, 42.218895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971958, 38.778954, 42.626434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.296844, 38.564487, 42.718380>,  <46.491776, 38.435810, 42.773548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.296844, 38.564487, 42.718380>,  <45.971958, 38.778954, 42.626434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296844, 38.564487, 42.718380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169454, 0.160195, 0.972431,
		-0.558203, -0.828775, 0.039258,
		0.812216, -0.536162, 0.229861,
		46.540508, 38.403641, 42.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687244, 38.496838, 43.138668>,  <45.971958, 38.778954, 42.626434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687244, 38.496838, 43.138668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.084938, 38.474640, 43.175362>,  <46.323555, 38.461323, 43.197380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.084938, 38.474640, 43.175362>,  <45.687244, 38.496838, 43.138668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084938, 38.474640, 43.175362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071309, 0.296703, 0.952304,
		-0.080063, -0.953356, 0.291035,
		0.994236, -0.055491, 0.091738,
		46.383209, 38.457993, 43.202885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.868591, 35.536346, 42.290112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616379, 35.225891, 42.287971>,  <39.465050, 35.039616, 42.286686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616379, 35.225891, 42.287971>,  <39.868591, 35.536346, 42.290112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616379, 35.225891, 42.287971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153527, 0.131480, -0.979358,
		0.760825, -0.616698, -0.202062,
		-0.630535, -0.776142, -0.005353,
		39.427219, 34.993050, 42.286366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106850, 35.094280, 41.805115>,  <39.868591, 35.536346, 42.290112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106850, 35.094280, 41.805115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723766, 34.982418, 41.832199>,  <39.493916, 34.915302, 41.848450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723766, 34.982418, 41.832199>,  <40.106850, 35.094280, 41.805115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723766, 34.982418, 41.832199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118684, 0.169578, -0.978344,
		0.262120, -0.945005, -0.195597,
		-0.957709, -0.279658, 0.067707,
		39.436455, 34.898521, 41.852512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100220, 34.574455, 41.387814>,  <40.106850, 35.094280, 41.805115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100220, 34.574455, 41.387814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727726, 34.713989, 41.430004>,  <39.504230, 34.797710, 41.455318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727726, 34.713989, 41.430004>,  <40.100220, 34.574455, 41.387814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727726, 34.713989, 41.430004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175350, -0.175185, -0.968794,
		-0.319472, -0.920665, 0.224306,
		-0.931230, 0.348835, 0.105472,
		39.448357, 34.818638, 41.461647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720608, 34.260841, 40.957005>,  <40.100220, 34.574455, 41.387814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720608, 34.260841, 40.957005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494431, 34.586956, 41.006954>,  <39.358727, 34.782623, 41.036922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494431, 34.586956, 41.006954>,  <39.720608, 34.260841, 40.957005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494431, 34.586956, 41.006954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317600, -0.075498, -0.945215,
		-0.761189, -0.574121, 0.301623,
		-0.565439, 0.815282, 0.124872,
		39.324799, 34.831539, 41.044415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053844, 34.072197, 40.689529>,  <39.720608, 34.260841, 40.957005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053844, 34.072197, 40.689529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083229, 34.471081, 40.694977>,  <39.100861, 34.710411, 40.698246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083229, 34.471081, 40.694977>,  <39.053844, 34.072197, 40.689529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083229, 34.471081, 40.694977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372169, 0.040085, -0.927299,
		-0.925253, 0.063053, 0.374073,
		0.073463, 0.997205, 0.013622,
		39.105267, 34.770241, 40.699062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360546, 34.334721, 40.476994>,  <39.053844, 34.072197, 40.689529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360546, 34.334721, 40.476994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629589, 34.624523, 40.416737>,  <38.791016, 34.798405, 40.380581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629589, 34.624523, 40.416737>,  <38.360546, 34.334721, 40.476994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629589, 34.624523, 40.416737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399470, 0.184128, -0.898065,
		-0.622913, 0.664223, 0.413264,
		0.672609, 0.724503, -0.150641,
		38.831371, 34.841873, 40.371544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966667, 34.832554, 40.090317>,  <38.360546, 34.334721, 40.476994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966667, 34.832554, 40.090317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332115, 34.988976, 40.045826>,  <38.551384, 35.082829, 40.019131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332115, 34.988976, 40.045826>,  <37.966667, 34.832554, 40.090317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332115, 34.988976, 40.045826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240391, 0.298957, -0.923492,
		-0.327878, 0.870463, 0.367139,
		0.913624, 0.391050, -0.111230,
		38.606201, 35.106289, 40.012459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833050, 35.511776, 39.927326>,  <37.966667, 34.832554, 40.090317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833050, 35.511776, 39.927326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180592, 35.394093, 39.768063>,  <38.389118, 35.323483, 39.672504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180592, 35.394093, 39.768063>,  <37.833050, 35.511776, 39.927326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180592, 35.394093, 39.768063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307671, 0.309194, -0.899854,
		0.387855, 0.904345, 0.178125,
		0.868854, -0.294209, -0.398163,
		38.441246, 35.305828, 39.648613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007248, 36.046719, 39.491867>,  <37.833050, 35.511776, 39.927326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007248, 36.046719, 39.491867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206932, 35.722561, 39.369198>,  <38.326744, 35.528065, 39.295597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206932, 35.722561, 39.369198>,  <38.007248, 36.046719, 39.491867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206932, 35.722561, 39.369198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369057, 0.121350, -0.921450,
		0.783954, 0.573178, -0.238503,
		0.499213, -0.810395, -0.306668,
		38.356697, 35.479443, 39.277199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181446, 36.159603, 38.815895>,  <38.007248, 36.046719, 39.491867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181446, 36.159603, 38.815895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210075, 35.760864, 38.829548>,  <38.227253, 35.521622, 38.837738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210075, 35.760864, 38.829548>,  <38.181446, 36.159603, 38.815895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210075, 35.760864, 38.829548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376187, -0.058670, -0.924684,
		0.923775, 0.053343, -0.379201,
		0.071573, -0.996851, 0.034131,
		38.231548, 35.461807, 38.839787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321556, 36.030781, 38.104866>,  <38.181446, 36.159603, 38.815895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321556, 36.030781, 38.104866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217323, 35.670822, 38.244740>,  <38.154785, 35.454845, 38.328663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217323, 35.670822, 38.244740>,  <38.321556, 36.030781, 38.104866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217323, 35.670822, 38.244740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417430, -0.221577, -0.881281,
		0.870546, -0.375615, -0.317905,
		-0.260582, -0.899898, 0.349686,
		38.139149, 35.400852, 38.349644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743328, 35.391712, 37.735706>,  <38.321556, 36.030781, 38.104866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743328, 35.391712, 37.735706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388374, 35.265480, 37.870144>,  <38.175404, 35.189743, 37.950806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388374, 35.265480, 37.870144>,  <38.743328, 35.391712, 37.735706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388374, 35.265480, 37.870144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255699, -0.269716, -0.928370,
		0.383624, -0.909760, 0.158649,
		-0.887384, -0.315579, 0.336094,
		38.122158, 35.170807, 37.970970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298386, 35.759605, 38.035717>,  <38.743328, 35.391712, 37.735706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298386, 35.759605, 38.035717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486362, 36.075375, 37.877743>,  <39.599148, 36.264835, 37.782959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486362, 36.075375, 37.877743>,  <39.298386, 35.759605, 38.035717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486362, 36.075375, 37.877743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313359, -0.567475, -0.761432,
		-0.825205, 0.234071, -0.514050,
		0.469940, 0.789420, -0.394935,
		39.627346, 36.312199, 37.759262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952560, 35.868618, 37.894825>,  <39.298386, 35.759605, 38.035717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952560, 35.868618, 37.894825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622688, 35.837543, 37.670727>,  <39.424767, 35.818897, 37.536266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622688, 35.837543, 37.670727>,  <39.952560, 35.868618, 37.894825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622688, 35.837543, 37.670727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404826, -0.772822, -0.488736,
		-0.395001, -0.629850, 0.668777,
		-0.824676, -0.077687, -0.560245,
		39.375286, 35.814236, 37.502655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300308, 35.452690, 37.416798>,  <39.952560, 35.868618, 37.894825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300308, 35.452690, 37.416798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616234, 35.223072, 37.330387>,  <40.805790, 35.085300, 37.278542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616234, 35.223072, 37.330387>,  <40.300308, 35.452690, 37.416798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616234, 35.223072, 37.330387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505272, -0.808618, 0.301391,
		-0.347696, -0.128889, -0.928706,
		0.789815, -0.574042, -0.216030,
		40.853180, 35.050861, 37.265579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076221, 34.888760, 37.145195>,  <40.300308, 35.452690, 37.416798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076221, 34.888760, 37.145195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432007, 34.773750, 37.287285>,  <40.645477, 34.704746, 37.372540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432007, 34.773750, 37.287285>,  <40.076221, 34.888760, 37.145195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432007, 34.773750, 37.287285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432561, -0.780471, 0.451392,
		0.147455, -0.555153, -0.818573,
		0.889465, -0.287523, 0.355222,
		40.698845, 34.687492, 37.393852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008873, 34.093834, 37.356667>,  <40.076221, 34.888760, 37.145195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008873, 34.093834, 37.356667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376022, 34.168236, 37.496899>,  <40.596313, 34.212875, 37.581039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376022, 34.168236, 37.496899>,  <40.008873, 34.093834, 37.356667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376022, 34.168236, 37.496899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102389, -0.742475, 0.662003,
		0.383434, -0.643532, -0.662455,
		0.917875, 0.186006, 0.350581,
		40.651386, 34.224037, 37.602074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370396, 33.447075, 37.359234>,  <40.008873, 34.093834, 37.356667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370396, 33.447075, 37.359234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551941, 33.668194, 37.638783>,  <40.660866, 33.800865, 37.806511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551941, 33.668194, 37.638783>,  <40.370396, 33.447075, 37.359234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551941, 33.668194, 37.638783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021113, -0.777413, 0.628635,
		0.890822, -0.300068, -0.341166,
		0.453861, 0.552800, 0.698873,
		40.688099, 33.834034, 37.848446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068512, 33.071526, 37.678310>,  <40.370396, 33.447075, 37.359234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068512, 33.071526, 37.678310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915745, 33.343830, 37.928337>,  <40.824085, 33.507214, 38.078354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915745, 33.343830, 37.928337>,  <41.068512, 33.071526, 37.678310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915745, 33.343830, 37.928337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256404, -0.727833, 0.636016,
		0.887915, 0.082639, 0.452523,
		-0.381921, 0.680757, 0.625065,
		40.801170, 33.548058, 38.115856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280418, 32.849621, 38.262379>,  <41.068512, 33.071526, 37.678310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280418, 32.849621, 38.262379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985291, 33.097233, 38.370022>,  <40.808212, 33.245800, 38.434608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985291, 33.097233, 38.370022>,  <41.280418, 32.849621, 38.262379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985291, 33.097233, 38.370022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198009, -0.579630, 0.790457,
		0.645301, 0.529930, 0.550237,
		-0.737821, 0.619034, 0.269105,
		40.763943, 33.282944, 38.450752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266018, 32.716656, 38.891815>,  <41.280418, 32.849621, 38.262379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266018, 32.716656, 38.891815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948689, 32.960129, 38.887177>,  <40.758289, 33.106213, 38.884392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948689, 32.960129, 38.887177>,  <41.266018, 32.716656, 38.891815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948689, 32.960129, 38.887177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223192, -0.273063, 0.935747,
		0.566409, 0.744941, 0.352482,
		-0.793326, 0.608686, -0.011599,
		40.710690, 33.142735, 38.883698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298660, 33.351612, 39.441963>,  <41.266018, 32.716656, 38.891815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298660, 33.351612, 39.441963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915531, 33.269356, 39.361683>,  <40.685654, 33.220001, 39.313515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915531, 33.269356, 39.361683>,  <41.298660, 33.351612, 39.441963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915531, 33.269356, 39.361683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134061, -0.297994, 0.945107,
		-0.254160, 0.932154, 0.257858,
		-0.957826, -0.205640, -0.200704,
		40.628185, 33.207664, 39.301472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984673, 33.572418, 39.983746>,  <41.298660, 33.351612, 39.441963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984673, 33.572418, 39.983746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682026, 33.366493, 39.822502>,  <40.500439, 33.242939, 39.725758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682026, 33.366493, 39.822502>,  <40.984673, 33.572418, 39.983746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682026, 33.366493, 39.822502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282610, -0.298460, 0.911621,
		-0.589624, 0.803673, 0.080330,
		-0.756621, -0.514811, -0.403105,
		40.455040, 33.212051, 39.701572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499695, 33.718510, 40.403355>,  <40.984673, 33.572418, 39.983746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499695, 33.718510, 40.403355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374638, 33.382725, 40.225559>,  <40.299603, 33.181255, 40.118881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374638, 33.382725, 40.225559>,  <40.499695, 33.718510, 40.403355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374638, 33.382725, 40.225559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174210, -0.409331, 0.895600,
		-0.933760, 0.357434, -0.018269,
		-0.312640, -0.839458, -0.444485,
		40.280846, 33.130886, 40.092213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897888, 33.372089, 40.812904>,  <40.499695, 33.718510, 40.403355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897888, 33.372089, 40.812904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013882, 33.061073, 40.589710>,  <40.083477, 32.874466, 40.455795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013882, 33.061073, 40.589710>,  <39.897888, 33.372089, 40.812904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013882, 33.061073, 40.589710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068758, -0.598455, 0.798201,
		-0.954558, -0.193101, -0.227006,
		0.289986, -0.777537, -0.557983,
		40.100876, 32.827812, 40.422314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339542, 32.961155, 40.799076>,  <39.897888, 33.372089, 40.812904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339542, 32.961155, 40.799076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680370, 32.759060, 40.744373>,  <39.884869, 32.637802, 40.711552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680370, 32.759060, 40.744373>,  <39.339542, 32.961155, 40.799076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680370, 32.759060, 40.744373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193987, -0.547491, 0.814016,
		-0.486145, -0.667075, -0.564513,
		0.852076, -0.505238, -0.136756,
		39.935993, 32.607487, 40.703346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179939, 32.310619, 40.908592>,  <39.339542, 32.961155, 40.799076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179939, 32.310619, 40.908592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578236, 32.275322, 40.919331>,  <39.817211, 32.254143, 40.925774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578236, 32.275322, 40.919331>,  <39.179939, 32.310619, 40.908592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578236, 32.275322, 40.919331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080505, -0.689449, 0.719846,
		-0.045010, -0.718939, -0.693614,
		0.995737, -0.088239, 0.026846,
		39.876957, 32.248852, 40.927383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351673, 31.641123, 40.940311>,  <39.179939, 32.310619, 40.908592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351673, 31.641123, 40.940311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676361, 31.818880, 41.091900>,  <39.871174, 31.925535, 41.182854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676361, 31.818880, 41.091900>,  <39.351673, 31.641123, 40.940311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676361, 31.818880, 41.091900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045328, -0.598986, 0.799475,
		0.582284, -0.666129, -0.466066,
		0.811721, 0.444396, 0.378974,
		39.919876, 31.952198, 41.205593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785030, 31.169674, 41.046364>,  <39.351673, 31.641123, 40.940311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785030, 31.169674, 41.046364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540154, 30.854607, 41.074078>,  <38.393227, 30.665565, 41.090706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540154, 30.854607, 41.074078>,  <38.785030, 31.169674, 41.046364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540154, 30.854607, 41.074078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578739, 0.386651, -0.718026,
		0.538781, -0.479664, -0.692559,
		-0.612190, -0.787670, 0.069280,
		38.356495, 30.618305, 41.094860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746792, 30.909306, 40.361576>,  <38.785030, 31.169674, 41.046364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746792, 30.909306, 40.361576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427742, 30.752626, 40.545040>,  <38.236313, 30.658619, 40.655121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427742, 30.752626, 40.545040>,  <38.746792, 30.909306, 40.361576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427742, 30.752626, 40.545040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558181, 0.191227, -0.807382,
		0.228545, -0.900001, -0.371167,
		-0.797622, -0.391702, 0.458660,
		38.188454, 30.635118, 40.682640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471851, 30.433914, 39.930607>,  <38.746792, 30.909306, 40.361576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471851, 30.433914, 39.930607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158188, 30.537487, 40.156193>,  <37.969990, 30.599630, 40.291546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158188, 30.537487, 40.156193>,  <38.471851, 30.433914, 39.930607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158188, 30.537487, 40.156193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582222, 0.007528, -0.812995,
		-0.214757, -0.965866, 0.144854,
		-0.784154, 0.258934, 0.563965,
		37.922943, 30.615168, 40.325382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919167, 30.016235, 39.605301>,  <38.471851, 30.433914, 39.930607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919167, 30.016235, 39.605301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752762, 30.311314, 39.817993>,  <37.652920, 30.488359, 39.945610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752762, 30.311314, 39.817993>,  <37.919167, 30.016235, 39.605301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752762, 30.311314, 39.817993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644459, 0.173362, -0.744727,
		-0.641563, -0.652497, 0.403293,
		-0.416016, 0.737695, 0.531730,
		37.627956, 30.532621, 39.977512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225780, 29.860111, 39.669319>,  <37.919167, 30.016235, 39.605301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225780, 29.860111, 39.669319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257256, 30.253395, 39.735180>,  <37.276138, 30.489365, 39.774696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257256, 30.253395, 39.735180>,  <37.225780, 29.860111, 39.669319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257256, 30.253395, 39.735180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682790, 0.173493, -0.709717,
		-0.726365, -0.056577, 0.684976,
		0.078685, 0.983209, 0.164649,
		37.280861, 30.548357, 39.784576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562599, 30.019489, 39.777828>,  <37.225780, 29.860111, 39.669319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562599, 30.019489, 39.777828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720390, 30.375523, 39.686489>,  <36.815063, 30.589142, 39.631683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720390, 30.375523, 39.686489>,  <36.562599, 30.019489, 39.777828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720390, 30.375523, 39.686489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791599, 0.202968, -0.576346,
		-0.466647, 0.408117, 0.784653,
		0.394476, 0.890081, -0.228351,
		36.838734, 30.642548, 39.617985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952801, 30.568594, 39.774467>,  <36.562599, 30.019489, 39.777828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952801, 30.568594, 39.774467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249557, 30.745504, 39.572876>,  <36.427612, 30.851650, 39.451923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249557, 30.745504, 39.572876>,  <35.952801, 30.568594, 39.774467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249557, 30.745504, 39.572876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660452, 0.352237, -0.663123,
		-0.115765, 0.824816, 0.553423,
		0.741891, 0.442276, -0.503974,
		36.472126, 30.878187, 39.421684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844173, 31.232162, 39.759071>,  <35.952801, 30.568594, 39.774467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844173, 31.232162, 39.759071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064030, 31.140495, 39.437729>,  <36.195946, 31.085495, 39.244923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064030, 31.140495, 39.437729>,  <35.844173, 31.232162, 39.759071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064030, 31.140495, 39.437729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657029, 0.475331, -0.585127,
		0.515949, 0.849437, 0.110693,
		0.549644, -0.229167, -0.803352,
		36.228924, 31.071745, 39.196724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724331, 31.827591, 39.279919>,  <35.844173, 31.232162, 39.759071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724331, 31.827591, 39.279919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880997, 31.537672, 39.053196>,  <35.974998, 31.363722, 38.917164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880997, 31.537672, 39.053196>,  <35.724331, 31.827591, 39.279919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880997, 31.537672, 39.053196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680549, 0.186382, -0.708600,
		0.619233, 0.663274, -0.420259,
		0.391668, -0.724796, -0.566804,
		35.998497, 31.320232, 38.883156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778229, 32.091118, 38.584660>,  <35.724331, 31.827591, 39.279919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778229, 32.091118, 38.584660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805553, 31.698532, 38.513046>,  <35.821949, 31.462980, 38.470078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805553, 31.698532, 38.513046>,  <35.778229, 32.091118, 38.584660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805553, 31.698532, 38.513046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670164, 0.087796, -0.737002,
		0.739063, 0.170327, -0.651748,
		0.068310, -0.981468, -0.179034,
		35.826046, 31.404091, 38.459335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812553, 32.034603, 37.832088>,  <35.778229, 32.091118, 38.584660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812553, 32.034603, 37.832088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709824, 31.671124, 37.963726>,  <35.648186, 31.453035, 38.042709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709824, 31.671124, 37.963726>,  <35.812553, 32.034603, 37.832088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709824, 31.671124, 37.963726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672733, -0.076395, -0.735931,
		0.693883, -0.410397, -0.591693,
		-0.256822, -0.908702, 0.329097,
		35.632778, 31.398514, 38.062454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947323, 31.482779, 37.371288>,  <35.812553, 32.034603, 37.832088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947323, 31.482779, 37.371288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642437, 31.331673, 37.581554>,  <35.459507, 31.241009, 37.707714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642437, 31.331673, 37.581554>,  <35.947323, 31.482779, 37.371288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642437, 31.331673, 37.581554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494950, -0.183272, -0.849374,
		0.417204, -0.907582, -0.047283,
		-0.762210, -0.377765, 0.525670,
		35.413773, 31.218344, 37.739254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.118240, 29.652855, 43.917973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764091, 29.478508, 43.982635>,  <39.551601, 29.373899, 44.021431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764091, 29.478508, 43.982635>,  <40.118240, 29.652855, 43.917973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764091, 29.478508, 43.982635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086556, -0.187092, -0.978522,
		0.456748, -0.880351, 0.127920,
		-0.885375, -0.435865, 0.161653,
		39.498478, 29.347748, 44.031132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048862, 29.186241, 43.415451>,  <40.118240, 29.652855, 43.917973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048862, 29.186241, 43.415451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667686, 29.207541, 43.534828>,  <39.438980, 29.220320, 43.606453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667686, 29.207541, 43.534828>,  <40.048862, 29.186241, 43.415451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667686, 29.207541, 43.534828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291259, 0.112244, -0.950037,
		-0.084088, -0.992253, -0.091452,
		-0.952941, 0.053251, 0.298441,
		39.381805, 29.223515, 43.624359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734322, 28.653450, 42.961628>,  <40.048862, 29.186241, 43.415451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734322, 28.653450, 42.961628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.469929, 28.925493, 43.088467>,  <39.311291, 29.088720, 43.164570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.469929, 28.925493, 43.088467>,  <39.734322, 28.653450, 42.961628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469929, 28.925493, 43.088467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294529, 0.153526, -0.943230,
		-0.690183, -0.716854, 0.098834,
		-0.660984, 0.680110, 0.317095,
		39.271633, 29.129526, 43.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028152, 28.464357, 42.656368>,  <39.734322, 28.653450, 42.961628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028152, 28.464357, 42.656368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054073, 28.852463, 42.749653>,  <39.069626, 29.085325, 42.805626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054073, 28.852463, 42.749653>,  <39.028152, 28.464357, 42.656368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054073, 28.852463, 42.749653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345830, 0.241059, -0.906803,
		-0.936056, -0.021885, 0.351169,
		0.064807, 0.970264, 0.233214,
		39.073517, 29.143541, 42.819618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317348, 28.776123, 42.391144>,  <39.028152, 28.464357, 42.656368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317348, 28.776123, 42.391144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539299, 29.095116, 42.485920>,  <38.672470, 29.286510, 42.542786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539299, 29.095116, 42.485920>,  <38.317348, 28.776123, 42.391144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539299, 29.095116, 42.485920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407448, 0.508813, -0.758350,
		-0.725329, 0.324245, 0.607258,
		0.554873, 0.797480, 0.236944,
		38.705761, 29.334360, 42.557003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882198, 29.344471, 42.370579>,  <38.317348, 28.776123, 42.391144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882198, 29.344471, 42.370579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249683, 29.497709, 42.332203>,  <38.470173, 29.589651, 42.309177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249683, 29.497709, 42.332203>,  <37.882198, 29.344471, 42.370579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249683, 29.497709, 42.332203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317226, 0.571158, -0.757064,
		-0.235231, 0.725959, 0.646258,
		0.918713, 0.383095, -0.095939,
		38.525299, 29.612638, 42.303421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842758, 30.181875, 42.377689>,  <37.882198, 29.344471, 42.370579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842758, 30.181875, 42.377689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179443, 30.046787, 42.209183>,  <38.381454, 29.965734, 42.108078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179443, 30.046787, 42.209183>,  <37.842758, 30.181875, 42.377689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179443, 30.046787, 42.209183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199937, 0.529803, -0.824217,
		0.501541, 0.777981, 0.378420,
		0.841713, -0.337719, -0.421266,
		38.431957, 29.945471, 42.082802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174427, 30.849699, 42.275097>,  <37.842758, 30.181875, 42.377689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174427, 30.849699, 42.275097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331718, 30.564886, 42.042416>,  <38.426094, 30.393999, 41.902805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331718, 30.564886, 42.042416>,  <38.174427, 30.849699, 42.275097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331718, 30.564886, 42.042416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236076, 0.533271, -0.812336,
		0.888615, 0.456762, 0.041605,
		0.393231, -0.712033, -0.581704,
		38.449688, 30.351276, 41.867905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507061, 31.176163, 41.692982>,  <38.174427, 30.849699, 42.275097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507061, 31.176163, 41.692982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458035, 30.796383, 41.577377>,  <38.428619, 30.568516, 41.508015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458035, 30.796383, 41.577377>,  <38.507061, 31.176163, 41.692982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458035, 30.796383, 41.577377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384864, 0.313886, -0.867960,
		0.914799, 0.004844, -0.403881,
		-0.122568, -0.949448, -0.289006,
		38.421265, 30.511549, 41.490677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168991, 31.053940, 41.725204>,  <38.507061, 31.176163, 41.692982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168991, 31.053940, 41.725204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.353737, 31.401379, 41.653400>,  <39.464584, 31.609842, 41.610317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.353737, 31.401379, 41.653400>,  <39.168991, 31.053940, 41.725204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353737, 31.401379, 41.653400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396038, -0.020871, 0.917997,
		0.793624, -0.495077, -0.353638,
		0.461860, 0.868598, -0.179506,
		39.492294, 31.661959, 41.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774128, 30.936600, 42.019341>,  <39.168991, 31.053940, 41.725204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774128, 30.936600, 42.019341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755733, 31.335848, 42.003162>,  <39.744698, 31.575397, 41.993454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755733, 31.335848, 42.003162>,  <39.774128, 30.936600, 42.019341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755733, 31.335848, 42.003162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308775, 0.052713, 0.949673,
		0.950023, 0.031186, -0.310620,
		-0.045990, 0.998123, -0.040449,
		39.741936, 31.635284, 41.991028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418606, 31.127165, 42.260307>,  <39.774128, 30.936600, 42.019341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418606, 31.127165, 42.260307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.172104, 31.432390, 42.338249>,  <40.024204, 31.615526, 42.385014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.172104, 31.432390, 42.338249>,  <40.418606, 31.127165, 42.260307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172104, 31.432390, 42.338249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455709, 0.143714, 0.878451,
		0.642311, 0.630142, -0.436299,
		-0.616251, 0.763064, 0.194852,
		39.987228, 31.661310, 42.396706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818130, 31.540901, 42.636215>,  <40.418606, 31.127165, 42.260307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818130, 31.540901, 42.636215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.460953, 31.697695, 42.724762>,  <40.246647, 31.791771, 42.777889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.460953, 31.697695, 42.724762>,  <40.818130, 31.540901, 42.636215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460953, 31.697695, 42.724762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322201, 0.213082, 0.922379,
		0.314388, 0.894955, -0.316568,
		-0.892943, 0.391983, 0.221365,
		40.193069, 31.815290, 42.791172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915497, 32.267689, 42.880989>,  <40.818130, 31.540901, 42.636215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915497, 32.267689, 42.880989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553867, 32.175606, 43.025017>,  <40.336887, 32.120358, 43.111435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553867, 32.175606, 43.025017>,  <40.915497, 32.267689, 42.880989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553867, 32.175606, 43.025017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273830, 0.334829, 0.901613,
		-0.328121, 0.913725, -0.239673,
		-0.904076, -0.230209, 0.360070,
		40.282646, 32.106544, 43.133038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750046, 32.770199, 43.386669>,  <40.915497, 32.267689, 42.880989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750046, 32.770199, 43.386669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521858, 32.456478, 43.484192>,  <40.384945, 32.268246, 43.542706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521858, 32.456478, 43.484192>,  <40.750046, 32.770199, 43.386669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521858, 32.456478, 43.484192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184407, 0.166954, 0.968566,
		-0.800349, 0.597496, 0.049388,
		-0.570469, -0.784299, 0.243805,
		40.350719, 32.221188, 43.557335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522064, 32.986748, 43.996624>,  <40.750046, 32.770199, 43.386669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522064, 32.986748, 43.996624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463795, 32.591118, 44.005592>,  <40.428833, 32.353741, 44.010975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463795, 32.591118, 44.005592>,  <40.522064, 32.986748, 43.996624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463795, 32.591118, 44.005592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395608, -0.037463, 0.917655,
		-0.906793, 0.142549, 0.396745,
		-0.145674, -0.989078, 0.022422,
		40.420094, 32.294395, 44.012318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237835, 32.887444, 44.594154>,  <40.522064, 32.986748, 43.996624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237835, 32.887444, 44.594154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358826, 32.521999, 44.485474>,  <40.431419, 32.302731, 44.420265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358826, 32.521999, 44.485474>,  <40.237835, 32.887444, 44.594154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358826, 32.521999, 44.485474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317158, -0.172337, 0.932583,
		-0.898843, -0.368255, 0.237632,
		0.302476, -0.913613, -0.271699,
		40.449570, 32.247917, 44.403965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020111, 32.432846, 45.107887>,  <40.237835, 32.887444, 44.594154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020111, 32.432846, 45.107887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302116, 32.214958, 44.926231>,  <40.471317, 32.084225, 44.817238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302116, 32.214958, 44.926231>,  <40.020111, 32.432846, 45.107887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302116, 32.214958, 44.926231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372990, -0.259839, 0.890709,
		-0.603190, -0.797347, 0.019986,
		0.705011, -0.544721, -0.454135,
		40.513618, 32.051540, 44.789989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964584, 31.893278, 45.437561>,  <40.020111, 32.432846, 45.107887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964584, 31.893278, 45.437561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325226, 31.857269, 45.268326>,  <40.541611, 31.835665, 45.166786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325226, 31.857269, 45.268326>,  <39.964584, 31.893278, 45.437561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325226, 31.857269, 45.268326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404419, -0.171598, 0.898332,
		-0.153459, -0.981047, -0.118312,
		0.901608, -0.090010, -0.423087,
		40.595707, 31.830263, 45.141399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222076, 31.286951, 45.716427>,  <39.964584, 31.893278, 45.437561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222076, 31.286951, 45.716427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.539349, 31.492012, 45.584946>,  <40.729713, 31.615047, 45.506058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.539349, 31.492012, 45.584946>,  <40.222076, 31.286951, 45.716427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539349, 31.492012, 45.584946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493677, -0.225245, 0.839969,
		0.356571, -0.828524, -0.431745,
		0.793183, 0.512652, -0.328708,
		40.777302, 31.645807, 45.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827145, 30.802513, 45.829880>,  <40.222076, 31.286951, 45.716427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827145, 30.802513, 45.829880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928978, 31.188696, 45.807678>,  <40.990078, 31.420404, 45.794357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928978, 31.188696, 45.807678>,  <40.827145, 30.802513, 45.829880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928978, 31.188696, 45.807678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577556, -0.105764, 0.809471,
		0.775638, -0.238137, -0.584530,
		0.254587, 0.965456, -0.055503,
		41.005356, 31.478333, 45.791027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495579, 30.843782, 45.718933>,  <40.827145, 30.802513, 45.829880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495579, 30.843782, 45.718933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.415615, 31.217186, 45.837997>,  <41.367638, 31.441227, 45.909435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.415615, 31.217186, 45.837997>,  <41.495579, 30.843782, 45.718933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415615, 31.217186, 45.837997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730702, -0.060360, 0.680023,
		0.652773, 0.353442, -0.670049,
		-0.199905, 0.933507, 0.297662,
		41.355644, 31.497238, 45.927296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160572, 31.064028, 45.823318>,  <41.495579, 30.843782, 45.718933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160572, 31.064028, 45.823318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912666, 31.320990, 46.003632>,  <41.763924, 31.475166, 46.111820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912666, 31.320990, 46.003632>,  <42.160572, 31.064028, 45.823318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912666, 31.320990, 46.003632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648140, 0.095105, 0.755559,
		0.442504, 0.760440, -0.475312,
		-0.619762, 0.642407, 0.450787,
		41.726738, 31.513712, 46.138866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.908855, 30.549429, 48.673290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277405, 30.518442, 48.520939>,  <35.498535, 30.499849, 48.429527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277405, 30.518442, 48.520939>,  <34.908855, 30.549429, 48.673290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277405, 30.518442, 48.520939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291724, 0.509720, -0.809372,
		0.256843, 0.856845, 0.447043,
		0.921373, -0.077468, -0.380880,
		35.553818, 30.495201, 48.406673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070244, 31.218908, 48.422031>,  <34.908855, 30.549429, 48.673290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070244, 31.218908, 48.422031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349640, 30.997046, 48.241161>,  <35.517277, 30.863928, 48.132641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349640, 30.997046, 48.241161>,  <35.070244, 31.218908, 48.422031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349640, 30.997046, 48.241161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153598, 0.500940, -0.851743,
		0.698939, 0.664390, 0.264709,
		0.698493, -0.554657, -0.452176,
		35.559189, 30.830648, 48.105507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522552, 31.628660, 48.211666>,  <35.070244, 31.218908, 48.422031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522552, 31.628660, 48.211666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511688, 31.307695, 47.973206>,  <35.505169, 31.115116, 47.830128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511688, 31.307695, 47.973206>,  <35.522552, 31.628660, 48.211666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511688, 31.307695, 47.973206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136486, 0.593766, -0.792978,
		0.990270, 0.059830, -0.125643,
		-0.027159, -0.802410, -0.596154,
		35.503540, 31.066973, 47.794361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758553, 31.869596, 47.493816>,  <35.522552, 31.628660, 48.211666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758553, 31.869596, 47.493816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625977, 31.503603, 47.401772>,  <35.546429, 31.284006, 47.346546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625977, 31.503603, 47.401772>,  <35.758553, 31.869596, 47.493816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625977, 31.503603, 47.401772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067840, 0.266375, -0.961479,
		0.941033, -0.303066, -0.150361,
		-0.331444, -0.914984, -0.230108,
		35.526543, 31.229109, 47.332741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034019, 31.732756, 46.859665>,  <35.758553, 31.869596, 47.493816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034019, 31.732756, 46.859665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747494, 31.453907, 46.871773>,  <35.575577, 31.286598, 46.879036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747494, 31.453907, 46.871773>,  <36.034019, 31.732756, 46.859665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747494, 31.453907, 46.871773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198276, 0.161761, -0.966706,
		0.669013, -0.698468, -0.254094,
		-0.716316, -0.697120, 0.030270,
		35.532600, 31.244772, 46.880856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193249, 31.163700, 46.350624>,  <36.034019, 31.732756, 46.859665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193249, 31.163700, 46.350624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798012, 31.155472, 46.411621>,  <35.560871, 31.150534, 46.448219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798012, 31.155472, 46.411621>,  <36.193249, 31.163700, 46.350624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798012, 31.155472, 46.411621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153445, 0.057581, -0.986478,
		0.011510, -0.998129, -0.060051,
		-0.988090, -0.020569, 0.152495,
		35.501583, 31.149300, 46.457371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993980, 30.711416, 45.927094>,  <36.193249, 31.163700, 46.350624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993980, 30.711416, 45.927094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654800, 30.904449, 46.014816>,  <35.451294, 31.020269, 46.067448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654800, 30.904449, 46.014816>,  <35.993980, 30.711416, 45.927094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654800, 30.904449, 46.014816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278252, -0.053091, -0.959040,
		-0.451176, -0.874238, 0.179298,
		-0.847949, 0.482586, 0.219305,
		35.400417, 31.049225, 46.080608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488117, 30.377241, 45.549694>,  <35.993980, 30.711416, 45.927094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488117, 30.377241, 45.549694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313755, 30.730713, 45.617916>,  <35.209137, 30.942797, 45.658852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313755, 30.730713, 45.617916>,  <35.488117, 30.377241, 45.549694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313755, 30.730713, 45.617916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223526, 0.077271, -0.971630,
		-0.871791, -0.461667, 0.163842,
		-0.435910, 0.883681, 0.170559,
		35.182983, 30.995817, 45.669083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789326, 30.345257, 45.221119>,  <35.488117, 30.377241, 45.549694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789326, 30.345257, 45.221119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841797, 30.738283, 45.273819>,  <34.873280, 30.974098, 45.305439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841797, 30.738283, 45.273819>,  <34.789326, 30.345257, 45.221119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841797, 30.738283, 45.273819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453691, 0.177661, -0.873271,
		-0.881452, 0.054778, 0.469086,
		0.131174, 0.982566, 0.131748,
		34.881149, 31.033052, 45.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207088, 30.672356, 44.895653>,  <34.789326, 30.345257, 45.221119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207088, 30.672356, 44.895653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457706, 30.975895, 44.966751>,  <34.608078, 31.158018, 45.009411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457706, 30.975895, 44.966751>,  <34.207088, 30.672356, 44.895653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457706, 30.975895, 44.966751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279364, 0.431560, -0.857737,
		-0.727599, 0.487754, 0.482385,
		0.626542, 0.758849, 0.177742,
		34.645668, 31.203550, 45.020073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764469, 31.220901, 44.906197>,  <34.207088, 30.672356, 44.895653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764469, 31.220901, 44.906197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130005, 31.301691, 44.765285>,  <34.349327, 31.350164, 44.680740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130005, 31.301691, 44.765285>,  <33.764469, 31.220901, 44.906197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130005, 31.301691, 44.765285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400417, 0.304008, -0.864434,
		-0.067501, 0.931013, 0.358690,
		0.913843, 0.201975, -0.352273,
		34.404160, 31.362284, 44.659603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650097, 31.825193, 44.480377>,  <33.764469, 31.220901, 44.906197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650097, 31.825193, 44.480377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.027225, 31.717237, 44.402153>,  <34.253502, 31.652464, 44.355221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.027225, 31.717237, 44.402153>,  <33.650097, 31.825193, 44.480377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027225, 31.717237, 44.402153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114275, 0.289413, -0.950359,
		0.313089, 0.918368, 0.242023,
		0.942824, -0.269889, -0.195559,
		34.310074, 31.636271, 44.343487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050510, 32.380371, 44.344494>,  <33.650097, 31.825193, 44.480377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050510, 32.380371, 44.344494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223881, 32.081463, 44.143005>,  <34.327904, 31.902119, 44.022114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223881, 32.081463, 44.143005>,  <34.050510, 32.380371, 44.344494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223881, 32.081463, 44.143005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203645, 0.463277, -0.862498,
		0.877878, 0.476411, 0.048620,
		0.433428, -0.747267, -0.503719,
		34.353909, 31.857283, 43.991890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437355, 32.717548, 43.865761>,  <34.050510, 32.380371, 44.344494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437355, 32.717548, 43.865761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402477, 32.338627, 43.742462>,  <34.381550, 32.111275, 43.668484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402477, 32.338627, 43.742462>,  <34.437355, 32.717548, 43.865761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402477, 32.338627, 43.742462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270084, 0.320311, -0.907995,
		0.958881, 0.004083, -0.283779,
		-0.087191, -0.947304, -0.308243,
		34.376320, 32.054436, 43.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269318, 32.925751, 43.907715>,  <34.437355, 32.717548, 43.865761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269318, 32.925751, 43.907715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408852, 33.293224, 43.833599>,  <35.492573, 33.513710, 43.789131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408852, 33.293224, 43.833599>,  <35.269318, 32.925751, 43.907715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408852, 33.293224, 43.833599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318837, 0.069579, 0.945252,
		0.881280, -0.388816, -0.268639,
		0.348838, 0.918684, -0.185287,
		35.513504, 33.568829, 43.778011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005077, 32.925461, 44.218468>,  <35.269318, 32.925751, 43.907715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005077, 32.925461, 44.218468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904053, 33.312073, 44.200413>,  <35.843437, 33.544041, 44.189579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904053, 33.312073, 44.200413>,  <36.005077, 32.925461, 44.218468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904053, 33.312073, 44.200413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460112, 0.161009, 0.873140,
		0.851181, 0.199753, -0.485375,
		-0.252562, 0.966527, -0.045139,
		35.828285, 33.602032, 44.186871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561954, 33.279140, 44.521992>,  <36.005077, 32.925461, 44.218468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561954, 33.279140, 44.521992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264874, 33.546764, 44.511066>,  <36.086624, 33.707340, 44.504513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264874, 33.546764, 44.511066>,  <36.561954, 33.279140, 44.521992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264874, 33.546764, 44.511066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203137, 0.263983, 0.942893,
		0.638063, 0.694744, -0.331973,
		-0.742705, 0.669062, -0.027310,
		36.042061, 33.747482, 44.502872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829292, 33.867729, 44.805939>,  <36.561954, 33.279140, 44.521992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829292, 33.867729, 44.805939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431847, 33.890854, 44.844700>,  <36.193378, 33.904728, 44.867958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431847, 33.890854, 44.844700>,  <36.829292, 33.867729, 44.805939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431847, 33.890854, 44.844700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101242, 0.077488, 0.991839,
		0.049833, 0.995315, -0.082846,
		-0.993613, 0.057814, 0.096906,
		36.133762, 33.908199, 44.873772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803070, 34.437935, 45.240040>,  <36.829292, 33.867729, 44.805939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803070, 34.437935, 45.240040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.453178, 34.247051, 45.273785>,  <36.243244, 34.132523, 45.294033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.453178, 34.247051, 45.273785>,  <36.803070, 34.437935, 45.240040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453178, 34.247051, 45.273785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092854, 0.005822, 0.995663,
		-0.475629, 0.878771, 0.039218,
		-0.874731, -0.477208, 0.084366,
		36.190758, 34.103889, 45.299095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467831, 34.721561, 45.821568>,  <36.803070, 34.437935, 45.240040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467831, 34.721561, 45.821568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297810, 34.362408, 45.775719>,  <36.195797, 34.146915, 45.748211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297810, 34.362408, 45.775719>,  <36.467831, 34.721561, 45.821568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297810, 34.362408, 45.775719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211419, -0.221604, 0.951942,
		-0.880131, 0.380395, 0.284022,
		-0.425054, -0.897882, -0.114618,
		36.170292, 34.093044, 45.741333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091816, 34.678799, 46.387066>,  <36.467831, 34.721561, 45.821568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091816, 34.678799, 46.387066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.123344, 34.305309, 46.247387>,  <36.142262, 34.081215, 46.163578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.123344, 34.305309, 46.247387>,  <36.091816, 34.678799, 46.387066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123344, 34.305309, 46.247387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114738, -0.339464, 0.933595,
		-0.990264, -0.113652, 0.080378,
		0.078820, -0.933728, -0.349199,
		36.146992, 34.025192, 46.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654964, 34.297401, 46.847164>,  <36.091816, 34.678799, 46.387066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654964, 34.297401, 46.847164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.907623, 34.042450, 46.670631>,  <36.059219, 33.889481, 46.564713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.907623, 34.042450, 46.670631>,  <35.654964, 34.297401, 46.847164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907623, 34.042450, 46.670631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112177, -0.488139, 0.865527,
		-0.767098, -0.596214, -0.236832,
		0.631646, -0.637377, -0.441332,
		36.097118, 33.851238, 46.538231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417820, 33.769245, 47.028152>,  <35.654964, 34.297401, 46.847164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417820, 33.769245, 47.028152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791523, 33.661728, 46.934414>,  <36.015743, 33.597218, 46.878170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791523, 33.661728, 46.934414>,  <35.417820, 33.769245, 47.028152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791523, 33.661728, 46.934414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080775, -0.480573, 0.873227,
		-0.347340, -0.834745, -0.427265,
		0.934253, -0.268794, -0.234349,
		36.071800, 33.581089, 46.864109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442787, 33.100201, 47.220478>,  <35.417820, 33.769245, 47.028152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442787, 33.100201, 47.220478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821918, 33.227467, 47.212502>,  <36.049397, 33.303825, 47.207718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821918, 33.227467, 47.212502>,  <35.442787, 33.100201, 47.220478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821918, 33.227467, 47.212502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186097, -0.501442, 0.844940,
		0.258830, -0.804567, -0.534489,
		0.947826, 0.318163, -0.019939,
		36.106266, 33.322914, 47.206520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741779, 32.618309, 47.711346>,  <35.442787, 33.100201, 47.220478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741779, 32.618309, 47.711346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012447, 32.911072, 47.679298>,  <36.174850, 33.086731, 47.660069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012447, 32.911072, 47.679298>,  <35.741779, 32.618309, 47.711346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012447, 32.911072, 47.679298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416826, -0.291105, 0.861112,
		0.606933, -0.616089, -0.502063,
		0.676675, 0.731910, -0.080120,
		36.215450, 33.130646, 47.655262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269344, 32.276203, 47.865925>,  <35.741779, 32.618309, 47.711346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269344, 32.276203, 47.865925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.383514, 32.656883, 47.911167>,  <36.452015, 32.885292, 47.938313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.383514, 32.656883, 47.911167>,  <36.269344, 32.276203, 47.865925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383514, 32.656883, 47.911167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550210, -0.259346, 0.793731,
		0.784731, -0.164313, -0.597660,
		0.285421, 0.951704, 0.113110,
		36.469139, 32.942394, 47.945099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083809, 32.354542, 47.868908>,  <36.269344, 32.276203, 47.865925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083809, 32.354542, 47.868908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943760, 32.665321, 48.078197>,  <36.859730, 32.851788, 48.203773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943760, 32.665321, 48.078197>,  <37.083809, 32.354542, 47.868908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943760, 32.665321, 48.078197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714526, -0.139665, 0.685526,
		0.605694, 0.613878, -0.506249,
		-0.350124, 0.776947, 0.523226,
		36.838722, 32.898407, 48.235165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632671, 32.684669, 48.114475>,  <37.083809, 32.354542, 47.868908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632671, 32.684669, 48.114475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.337128, 32.803181, 48.356567>,  <37.159801, 32.874287, 48.501823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.337128, 32.803181, 48.356567>,  <37.632671, 32.684669, 48.114475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337128, 32.803181, 48.356567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558740, -0.232719, 0.796022,
		0.376692, 0.926316, 0.006406,
		-0.738859, 0.296276, 0.605234,
		37.115471, 32.892063, 48.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034626, 33.213390, 47.757023>,  <37.632671, 32.684669, 48.114475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034626, 33.213390, 47.757023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.419247, 33.323219, 47.759373>,  <38.650017, 33.389118, 47.760780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.419247, 33.323219, 47.759373>,  <38.034626, 33.213390, 47.757023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419247, 33.323219, 47.759373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065993, 0.251757, -0.965538,
		-0.266588, 0.928024, 0.260197,
		0.961549, 0.274572, 0.005872,
		38.707710, 33.405590, 47.761135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987473, 33.875237, 47.486488>,  <38.034626, 33.213390, 47.757023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987473, 33.875237, 47.486488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373505, 33.776489, 47.451458>,  <38.605125, 33.717239, 47.430439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373505, 33.776489, 47.451458>,  <37.987473, 33.875237, 47.486488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373505, 33.776489, 47.451458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019218, 0.400148, -0.916249,
		0.261237, 0.882574, 0.390921,
		0.965083, -0.246871, -0.087572,
		38.663029, 33.702427, 47.425186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241222, 34.489147, 47.201252>,  <37.987473, 33.875237, 47.486488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241222, 34.489147, 47.201252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494926, 34.188499, 47.128830>,  <38.647148, 34.008110, 47.085377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494926, 34.188499, 47.128830>,  <38.241222, 34.489147, 47.201252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494926, 34.188499, 47.128830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048805, 0.272646, -0.960876,
		0.771578, 0.600608, 0.209611,
		0.634260, -0.751621, -0.181055,
		38.685204, 33.963013, 47.074512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880436, 34.833691, 46.927280>,  <38.241222, 34.489147, 47.201252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880436, 34.833691, 46.927280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884521, 34.444271, 46.835987>,  <38.886971, 34.210617, 46.781212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884521, 34.444271, 46.835987>,  <38.880436, 34.833691, 46.927280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884521, 34.444271, 46.835987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156936, 0.226980, -0.961172,
		0.987556, -0.026004, 0.155103,
		0.010211, -0.973552, -0.228236,
		38.887585, 34.152206, 46.767517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343597, 34.866711, 46.366661>,  <38.880436, 34.833691, 46.927280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343597, 34.866711, 46.366661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.180397, 34.503914, 46.324886>,  <39.082478, 34.286236, 46.299820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.180397, 34.503914, 46.324886>,  <39.343597, 34.866711, 46.366661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180397, 34.503914, 46.324886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438385, -0.094280, -0.893828,
		0.800847, -0.410463, 0.436077,
		-0.407997, -0.906990, -0.104437,
		39.057999, 34.231815, 46.293556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896698, 34.333107, 46.094650>,  <39.343597, 34.866711, 46.366661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896698, 34.333107, 46.094650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532169, 34.192219, 46.009396>,  <39.313450, 34.107685, 45.958241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532169, 34.192219, 46.009396>,  <39.896698, 34.333107, 46.094650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532169, 34.192219, 46.009396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296711, -0.203033, -0.933135,
		0.285394, -0.913630, 0.289536,
		-0.911325, -0.352219, -0.213140,
		39.258770, 34.086552, 45.945454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961781, 33.728313, 45.619041>,  <39.896698, 34.333107, 46.094650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961781, 33.728313, 45.619041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.576538, 33.827007, 45.576065>,  <39.345390, 33.886223, 45.550278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.576538, 33.827007, 45.576065>,  <39.961781, 33.728313, 45.619041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576538, 33.827007, 45.576065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039239, -0.266233, -0.963110,
		-0.266233, -0.931796, 0.246730,
		0.963110, -0.246730, 0.107443,
		39.287605, 33.901028, 45.543831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699184, 33.276543, 45.022373>,  <39.961781, 33.728313, 45.619041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699184, 33.276543, 45.022373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453842, 33.591625, 45.045380>,  <39.306637, 33.780674, 45.059185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453842, 33.591625, 45.045380>,  <39.699184, 33.276543, 45.022373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453842, 33.591625, 45.045380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091803, 0.001229, -0.995776,
		-0.784451, -0.616049, 0.071560,
		-0.613359, 0.787707, 0.057519,
		39.269836, 33.827938, 45.062634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075176, 33.077259, 44.596279>,  <39.699184, 33.276543, 45.022373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075176, 33.077259, 44.596279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109745, 33.475300, 44.615494>,  <39.130486, 33.714123, 44.627022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109745, 33.475300, 44.615494>,  <39.075176, 33.077259, 44.596279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109745, 33.475300, 44.615494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069358, 0.042087, -0.996704,
		-0.993841, 0.089471, -0.065381,
		0.086424, 0.995100, 0.048034,
		39.135674, 33.773830, 44.629906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601875, 33.286072, 44.120354>,  <39.075176, 33.077259, 44.596279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601875, 33.286072, 44.120354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821663, 33.613033, 44.189568>,  <38.953533, 33.809212, 44.231094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821663, 33.613033, 44.189568>,  <38.601875, 33.286072, 44.120354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821663, 33.613033, 44.189568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046394, 0.176926, -0.983130,
		-0.834227, 0.548224, 0.059292,
		0.549465, 0.817403, 0.173031,
		38.986504, 33.858253, 44.241478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337399, 33.750622, 43.618282>,  <38.601875, 33.286072, 44.120354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337399, 33.750622, 43.618282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689018, 33.924770, 43.695972>,  <38.899990, 34.029259, 43.742584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689018, 33.924770, 43.695972>,  <38.337399, 33.750622, 43.618282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689018, 33.924770, 43.695972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023098, 0.368034, -0.929525,
		-0.476165, 0.821588, 0.313465,
		0.879053, 0.435367, 0.194222,
		38.952736, 34.055382, 43.754238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261112, 34.503708, 43.504608>,  <38.337399, 33.750622, 43.618282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261112, 34.503708, 43.504608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648865, 34.419346, 43.454311>,  <38.881516, 34.368729, 43.424133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648865, 34.419346, 43.454311>,  <38.261112, 34.503708, 43.504608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648865, 34.419346, 43.454311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000853, 0.514976, -0.857204,
		0.245546, 0.830853, 0.499390,
		0.969384, -0.210909, -0.125741,
		38.939682, 34.356071, 43.416588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578945, 35.162979, 43.435108>,  <38.261112, 34.503708, 43.504608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578945, 35.162979, 43.435108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847042, 34.897243, 43.302784>,  <39.007900, 34.737801, 43.223389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847042, 34.897243, 43.302784>,  <38.578945, 35.162979, 43.435108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847042, 34.897243, 43.302784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123563, 0.539420, -0.832922,
		0.731787, 0.517380, 0.443628,
		0.670238, -0.664338, -0.330812,
		39.048115, 34.697941, 43.203541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149315, 35.520592, 43.267235>,  <38.578945, 35.162979, 43.435108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149315, 35.520592, 43.267235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.145828, 35.187065, 43.046448>,  <39.143738, 34.986950, 42.913975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.145828, 35.187065, 43.046448>,  <39.149315, 35.520592, 43.267235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145828, 35.187065, 43.046448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133903, 0.546044, -0.826986,
		0.990956, -0.081117, 0.106892,
		-0.008716, -0.833820, -0.551967,
		39.143215, 34.936920, 42.880859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.653015, 29.243450, 30.188093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.262241, 29.164972, 30.221815>,  <26.027777, 29.117886, 30.242048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.262241, 29.164972, 30.221815>,  <26.653015, 29.243450, 30.188093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262241, 29.164972, 30.221815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067085, 0.656786, 0.751087,
		-0.202730, 0.728107, -0.654798,
		-0.976934, -0.196195, 0.084305,
		25.969162, 29.106113, 30.247107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240080, 29.883364, 30.099863>,  <26.653015, 29.243450, 30.188093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240080, 29.883364, 30.099863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.008694, 29.623596, 30.297298>,  <25.869862, 29.467735, 30.415760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.008694, 29.623596, 30.297298>,  <26.240080, 29.883364, 30.099863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008694, 29.623596, 30.297298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136230, 0.673524, 0.726503,
		-0.804250, 0.353016, -0.478082,
		-0.578467, -0.649419, 0.493590,
		25.835154, 29.428770, 30.445375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541336, 30.226620, 30.255461>,  <26.240080, 29.883364, 30.099863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541336, 30.226620, 30.255461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.561794, 29.938326, 30.531988>,  <25.574070, 29.765348, 30.697905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.561794, 29.938326, 30.531988>,  <25.541336, 30.226620, 30.255461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561794, 29.938326, 30.531988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267382, 0.657073, 0.704813,
		-0.962232, -0.220894, -0.159106,
		0.051145, -0.720736, 0.691320,
		25.577137, 29.722105, 30.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107992, 30.377642, 30.700203>,  <25.541336, 30.226620, 30.255461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107992, 30.377642, 30.700203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.333155, 30.130203, 30.919466>,  <25.468252, 29.981741, 31.051023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.333155, 30.130203, 30.919466>,  <25.107992, 30.377642, 30.700203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333155, 30.130203, 30.919466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298673, 0.466155, 0.832763,
		-0.770669, -0.632488, 0.077645,
		0.562907, -0.618594, 0.548158,
		25.502028, 29.944626, 31.083914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686987, 30.201548, 31.225094>,  <25.107992, 30.377642, 30.700203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686987, 30.201548, 31.225094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.049559, 30.111752, 31.368195>,  <25.267101, 30.057875, 31.454056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.049559, 30.111752, 31.368195>,  <24.686987, 30.201548, 31.225094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049559, 30.111752, 31.368195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243734, 0.413737, 0.877163,
		-0.344930, -0.882284, 0.320308,
		0.906431, -0.224490, 0.357753,
		25.321487, 30.044405, 31.475521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610403, 29.941393, 31.847031>,  <24.686987, 30.201548, 31.225094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610403, 29.941393, 31.847031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.992035, 30.059910, 31.864655>,  <25.221014, 30.131020, 31.875229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.992035, 30.059910, 31.864655>,  <24.610403, 29.941393, 31.847031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992035, 30.059910, 31.864655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151500, 0.350397, 0.924267,
		0.258415, -0.888500, 0.379195,
		0.954081, 0.296292, 0.044060,
		25.278259, 30.148798, 31.877872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854750, 29.860655, 32.583858>,  <24.610403, 29.941393, 31.847031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854750, 29.860655, 32.583858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.114134, 30.124121, 32.431198>,  <25.269764, 30.282200, 32.339600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.114134, 30.124121, 32.431198>,  <24.854750, 29.860655, 32.583858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114134, 30.124121, 32.431198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097167, 0.568869, 0.816668,
		0.755020, -0.492494, 0.432890,
		0.648462, 0.658663, -0.381653,
		25.308672, 30.321720, 32.316704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067223, 30.056616, 33.114410>,  <24.854750, 29.860655, 32.583858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067223, 30.056616, 33.114410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.219080, 30.352108, 32.891644>,  <25.310194, 30.529404, 32.757984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.219080, 30.352108, 32.891644>,  <25.067223, 30.056616, 33.114410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219080, 30.352108, 32.891644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021550, 0.608880, 0.792970,
		0.924882, -0.289043, 0.247076,
		0.379642, 0.738729, -0.556913,
		25.332973, 30.573727, 32.724571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544483, 30.375898, 33.616600>,  <25.067223, 30.056616, 33.114410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544483, 30.375898, 33.616600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.513231, 30.650547, 33.327480>,  <25.494480, 30.815336, 33.154007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.513231, 30.650547, 33.327480>,  <25.544483, 30.375898, 33.616600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513231, 30.650547, 33.327480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093987, 0.726863, 0.680321,
		0.992503, -0.014780, -0.121324,
		-0.078130, 0.686623, -0.722803,
		25.489792, 30.856535, 33.110638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236191, 30.778872, 33.543339>,  <25.544483, 30.375898, 33.616600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236191, 30.778872, 33.543339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907717, 30.974409, 33.425571>,  <25.710632, 31.091732, 33.354912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907717, 30.974409, 33.425571>,  <26.236191, 30.778872, 33.543339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907717, 30.974409, 33.425571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234370, 0.759317, 0.607049,
		0.520310, 0.429498, -0.738112,
		-0.821187, 0.488845, -0.294419,
		25.661360, 31.121063, 33.337246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445053, 31.411867, 33.433987>,  <26.236191, 30.778872, 33.543339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445053, 31.411867, 33.433987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.051281, 31.451122, 33.492321>,  <25.815018, 31.474674, 33.527321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.051281, 31.451122, 33.492321>,  <26.445053, 31.411867, 33.433987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051281, 31.451122, 33.492321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172268, 0.703598, 0.689401,
		-0.034953, 0.703789, -0.709549,
		-0.984430, 0.098136, 0.145833,
		25.755953, 31.480562, 33.536072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321943, 32.075417, 33.200787>,  <26.445053, 31.411867, 33.433987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321943, 32.075417, 33.200787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028297, 31.974335, 33.452888>,  <25.852110, 31.913685, 33.604149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028297, 31.974335, 33.452888>,  <26.321943, 32.075417, 33.200787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028297, 31.974335, 33.452888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235063, 0.776204, 0.585024,
		-0.637043, 0.577623, -0.510420,
		-0.734113, -0.252705, 0.630253,
		25.808064, 31.898523, 33.641964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974974, 32.692585, 33.367523>,  <26.321943, 32.075417, 33.200787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974974, 32.692585, 33.367523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.867933, 32.462315, 33.676582>,  <25.803709, 32.324150, 33.862019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.867933, 32.462315, 33.676582>,  <25.974974, 32.692585, 33.367523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867933, 32.462315, 33.676582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004647, 0.801112, 0.598497,
		-0.963519, 0.163748, -0.211702,
		-0.267599, -0.575680, 0.772647,
		25.787653, 32.289612, 33.908375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459824, 33.151085, 33.791332>,  <25.974974, 32.692585, 33.367523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459824, 33.151085, 33.791332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.612015, 32.856567, 34.015156>,  <25.703329, 32.679855, 34.149448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.612015, 32.856567, 34.015156>,  <25.459824, 33.151085, 33.791332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612015, 32.856567, 34.015156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082350, 0.629635, 0.772514,
		-0.921117, -0.247843, 0.300195,
		0.380476, -0.736297, 0.559558,
		25.726158, 32.635677, 34.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117212, 33.288826, 34.323009>,  <25.459824, 33.151085, 33.791332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117212, 33.288826, 34.323009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.406769, 33.045036, 34.452328>,  <25.580503, 32.898762, 34.529919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.406769, 33.045036, 34.452328>,  <25.117212, 33.288826, 34.323009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406769, 33.045036, 34.452328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016767, 0.484013, 0.874900,
		-0.689710, -0.627912, 0.360592,
		0.723892, -0.609473, 0.323300,
		25.623936, 32.862194, 34.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950176, 32.954887, 35.016369>,  <25.117212, 33.288826, 34.323009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950176, 32.954887, 35.016369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.349218, 32.957935, 34.988880>,  <25.588644, 32.959763, 34.972389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.349218, 32.957935, 34.988880>,  <24.950176, 32.954887, 35.016369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349218, 32.957935, 34.988880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058280, 0.442049, 0.895096,
		0.037196, -0.896958, 0.440547,
		0.997607, 0.007619, -0.068717,
		25.648500, 32.960220, 34.968266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148726, 32.633854, 35.675503>,  <24.950176, 32.954887, 35.016369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148726, 32.633854, 35.675503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.454760, 32.857262, 35.547310>,  <25.638380, 32.991306, 35.470394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.454760, 32.857262, 35.547310>,  <25.148726, 32.633854, 35.675503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454760, 32.857262, 35.547310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080846, 0.410439, 0.908297,
		0.638837, -0.720832, 0.268866,
		0.765083, 0.558517, -0.320480,
		25.684284, 33.024818, 35.451164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472885, 32.868870, 36.325645>,  <25.148726, 32.633854, 35.675503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472885, 32.868870, 36.325645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673891, 33.099606, 36.068047>,  <25.794495, 33.238049, 35.913486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673891, 33.099606, 36.068047>,  <25.472885, 32.868870, 36.325645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673891, 33.099606, 36.068047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285173, 0.592597, 0.753329,
		0.816182, -0.562210, 0.133289,
		0.502516, 0.576844, -0.643994,
		25.824646, 33.272659, 35.874847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222588, 32.741611, 36.228195>,  <25.472885, 32.868870, 36.325645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222588, 32.741611, 36.228195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138029, 33.123875, 36.146198>,  <26.087294, 33.353233, 36.097000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138029, 33.123875, 36.146198>,  <26.222588, 32.741611, 36.228195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138029, 33.123875, 36.146198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410926, 0.277199, 0.868504,
		0.886821, 0.099360, -0.451305,
		-0.211396, 0.955661, -0.204996,
		26.074610, 33.410572, 36.084698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696730, 33.112232, 36.675880>,  <26.222588, 32.741611, 36.228195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696730, 33.112232, 36.675880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455023, 33.406830, 36.554268>,  <26.309999, 33.583588, 36.481300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455023, 33.406830, 36.554268>,  <26.696730, 33.112232, 36.675880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455023, 33.406830, 36.554268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138902, 0.473107, 0.869986,
		0.784581, 0.483473, -0.388184,
		-0.604268, 0.736494, -0.304036,
		26.273743, 33.627777, 36.463058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363844, 32.796772, 36.371655>,  <26.696730, 33.112232, 36.675880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363844, 32.796772, 36.371655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391550, 32.537373, 36.674877>,  <27.408173, 32.381733, 36.856812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391550, 32.537373, 36.674877>,  <27.363844, 32.796772, 36.371655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391550, 32.537373, 36.674877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192159, -0.736977, -0.648028,
		0.978917, 0.190552, 0.073570,
		0.069263, -0.648503, 0.758055,
		27.412329, 32.342823, 36.902294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956739, 32.331367, 36.197292>,  <27.363844, 32.796772, 36.371655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956739, 32.331367, 36.197292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747042, 32.121204, 36.465359>,  <27.621223, 31.995108, 36.626198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747042, 32.121204, 36.465359>,  <27.956739, 32.331367, 36.197292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747042, 32.121204, 36.465359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019042, -0.794010, -0.607606,
		0.851356, -0.305772, 0.426259,
		-0.524243, -0.525406, 0.670163,
		27.589769, 31.963583, 36.666409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308208, 31.667347, 36.286758>,  <27.956739, 32.331367, 36.197292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308208, 31.667347, 36.286758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.925314, 31.628956, 36.395927>,  <27.695578, 31.605921, 36.461430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.925314, 31.628956, 36.395927>,  <28.308208, 31.667347, 36.286758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925314, 31.628956, 36.395927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058963, -0.858845, -0.508831,
		0.283233, -0.503164, 0.816459,
		-0.957237, -0.095977, 0.272922,
		27.638144, 31.600163, 36.477802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292614, 30.955000, 36.355103>,  <28.308208, 31.667347, 36.286758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292614, 30.955000, 36.355103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908867, 31.063807, 36.325111>,  <27.678619, 31.129091, 36.307117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908867, 31.063807, 36.325111>,  <28.292614, 30.955000, 36.355103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908867, 31.063807, 36.325111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156913, -0.735179, -0.659462,
		-0.234505, -0.620902, 0.747990,
		-0.959367, 0.272016, -0.074975,
		27.621058, 31.145411, 36.302620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875259, 30.324450, 36.454330>,  <28.292614, 30.955000, 36.355103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875259, 30.324450, 36.454330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634024, 30.579554, 36.262688>,  <27.489283, 30.732616, 36.147701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634024, 30.579554, 36.262688>,  <27.875259, 30.324450, 36.454330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634024, 30.579554, 36.262688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003771, -0.598345, -0.801230,
		-0.797665, -0.485019, 0.358450,
		-0.603089, 0.637762, -0.479108,
		27.453096, 30.770882, 36.118954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464018, 29.922232, 36.092716>,  <27.875259, 30.324450, 36.454330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464018, 29.922232, 36.092716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.423183, 30.277512, 35.913525>,  <27.398682, 30.490679, 35.806011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.423183, 30.277512, 35.913525>,  <27.464018, 29.922232, 36.092716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423183, 30.277512, 35.913525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191385, -0.424379, -0.885028,
		-0.976191, -0.176087, -0.126664,
		-0.102088, 0.888198, -0.447975,
		27.392557, 30.543972, 35.779133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037195, 29.743589, 35.554287>,  <27.464018, 29.922232, 36.092716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037195, 29.743589, 35.554287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.176378, 30.097685, 35.430817>,  <27.259888, 30.310143, 35.356735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.176378, 30.097685, 35.430817>,  <27.037195, 29.743589, 35.554287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176378, 30.097685, 35.430817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302780, -0.417717, -0.856643,
		-0.887272, 0.204613, -0.413379,
		0.347956, 0.885238, -0.308676,
		27.280766, 30.363256, 35.338215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702137, 29.945539, 34.944450>,  <27.037195, 29.743589, 35.554287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702137, 29.945539, 34.944450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048149, 30.146101, 34.937298>,  <27.255756, 30.266438, 34.933006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048149, 30.146101, 34.937298>,  <26.702137, 29.945539, 34.944450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048149, 30.146101, 34.937298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257191, -0.473749, -0.842268,
		-0.430789, 0.723986, -0.538763,
		0.865028, 0.501404, -0.017883,
		27.307657, 30.296522, 34.931934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798658, 30.193687, 34.252369>,  <26.702137, 29.945539, 34.944450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798658, 30.193687, 34.252369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173033, 30.228065, 34.388981>,  <27.397657, 30.248692, 34.470947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173033, 30.228065, 34.388981>,  <26.798658, 30.193687, 34.252369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173033, 30.228065, 34.388981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352027, -0.256290, -0.900218,
		0.010162, 0.962772, -0.270125,
		0.935935, 0.085944, 0.341526,
		27.453814, 30.253849, 34.491440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257660, 30.731386, 33.948357>,  <26.798658, 30.193687, 34.252369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257660, 30.731386, 33.948357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535049, 30.482914, 34.094360>,  <27.701483, 30.333830, 34.181961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535049, 30.482914, 34.094360>,  <27.257660, 30.731386, 33.948357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535049, 30.482914, 34.094360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303166, -0.207998, -0.929961,
		0.653596, 0.755559, 0.044080,
		0.693472, -0.621182, 0.365006,
		27.743092, 30.296558, 34.203861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834082, 30.916624, 33.642311>,  <27.257660, 30.731386, 33.948357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834082, 30.916624, 33.642311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913431, 30.550350, 33.782124>,  <27.961040, 30.330585, 33.866013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913431, 30.550350, 33.782124>,  <27.834082, 30.916624, 33.642311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913431, 30.550350, 33.782124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350600, -0.266730, -0.897739,
		0.915275, 0.300633, 0.268127,
		0.198373, -0.915683, 0.349533,
		27.972942, 30.275646, 33.886982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303680, 30.776308, 33.218826>,  <27.834082, 30.916624, 33.642311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303680, 30.776308, 33.218826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219780, 30.423595, 33.387810>,  <28.169439, 30.211967, 33.489201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219780, 30.423595, 33.387810>,  <28.303680, 30.776308, 33.218826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219780, 30.423595, 33.387810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173526, -0.458781, -0.871441,
		0.962234, -0.109477, 0.249241,
		-0.209750, -0.881779, 0.422457,
		28.156855, 30.159061, 33.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839195, 30.364542, 33.025379>,  <28.303680, 30.776308, 33.218826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839195, 30.364542, 33.025379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561569, 30.094482, 33.125336>,  <28.394993, 29.932446, 33.185310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561569, 30.094482, 33.125336>,  <28.839195, 30.364542, 33.025379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561569, 30.094482, 33.125336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241539, -0.545378, -0.802634,
		0.678181, -0.496724, 0.541604,
		-0.694067, -0.675150, 0.249887,
		28.353350, 29.891937, 33.200302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169468, 29.692368, 32.901951>,  <28.839195, 30.364542, 33.025379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169468, 29.692368, 32.901951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773523, 29.636284, 32.892849>,  <28.535957, 29.602634, 32.887390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773523, 29.636284, 32.892849>,  <29.169468, 29.692368, 32.901951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773523, 29.636284, 32.892849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086842, -0.470612, -0.878056,
		0.112404, -0.871129, 0.478016,
		-0.989860, -0.140209, -0.022752,
		28.476564, 29.594221, 32.886024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999481, 28.950504, 32.690056>,  <29.169468, 29.692368, 32.901951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999481, 28.950504, 32.690056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677132, 29.171598, 32.605156>,  <28.483723, 29.304255, 32.554214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677132, 29.171598, 32.605156>,  <28.999481, 28.950504, 32.690056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677132, 29.171598, 32.605156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118504, -0.501803, -0.856826,
		-0.580108, -0.665340, 0.469891,
		-0.805873, 0.552736, -0.212255,
		28.435369, 29.337420, 32.541481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463255, 28.494837, 32.451260>,  <28.999481, 28.950504, 32.690056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463255, 28.494837, 32.451260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312828, 28.841980, 32.321400>,  <28.222572, 29.050266, 32.243484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312828, 28.841980, 32.321400>,  <28.463255, 28.494837, 32.451260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312828, 28.841980, 32.321400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291472, -0.443385, -0.847616,
		-0.879555, -0.224134, 0.419699,
		-0.376068, 0.867856, -0.324653,
		28.200008, 29.102337, 32.224003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906271, 28.300777, 31.988747>,  <28.463255, 28.494837, 32.451260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906271, 28.300777, 31.988747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007051, 28.669495, 31.870888>,  <28.067520, 28.890724, 31.800173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007051, 28.669495, 31.870888>,  <27.906271, 28.300777, 31.988747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007051, 28.669495, 31.870888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129550, -0.269603, -0.954217,
		-0.959030, 0.278586, 0.051492,
		0.251950, 0.921794, -0.294648,
		28.082636, 28.946033, 31.782494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307438, 28.598129, 31.581593>,  <27.906271, 28.300777, 31.988747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307438, 28.598129, 31.581593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639198, 28.788986, 31.465366>,  <27.838255, 28.903500, 31.395630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639198, 28.788986, 31.465366>,  <27.307438, 28.598129, 31.581593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639198, 28.788986, 31.465366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318368, -0.023694, -0.947671,
		-0.459058, 0.878507, 0.132255,
		0.829402, 0.477142, -0.290566,
		27.888020, 28.932129, 31.378197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099285, 29.119024, 31.049812>,  <27.307438, 28.598129, 31.581593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099285, 29.119024, 31.049812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486313, 29.054142, 30.972353>,  <27.718529, 29.015213, 30.925877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486313, 29.054142, 30.972353>,  <27.099285, 29.119024, 31.049812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486313, 29.054142, 30.972353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195145, 0.006818, -0.980751,
		0.160401, 0.986734, -0.025056,
		0.967569, -0.162203, -0.193650,
		27.776583, 29.005482, 30.914259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264797, 29.533674, 30.541393>,  <27.099285, 29.119024, 31.049812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264797, 29.533674, 30.541393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564413, 29.268736, 30.535261>,  <27.744183, 29.109772, 30.531582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564413, 29.268736, 30.535261>,  <27.264797, 29.533674, 30.541393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564413, 29.268736, 30.535261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094022, -0.083364, -0.992074,
		0.655819, 0.744544, -0.124718,
		0.749040, -0.662347, -0.015332,
		27.789125, 29.070032, 30.530661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769621, 29.791721, 30.093857>,  <27.264797, 29.533674, 30.541393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769621, 29.791721, 30.093857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.855862, 29.401464, 30.110058>,  <27.907606, 29.167311, 30.119780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.855862, 29.401464, 30.110058>,  <27.769621, 29.791721, 30.093857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855862, 29.401464, 30.110058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109335, -0.017100, -0.993858,
		0.970341, 0.218707, 0.102985,
		0.215603, -0.975641, 0.040505,
		27.920542, 29.108772, 30.122210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436710, 29.552370, 29.654518>,  <27.769621, 29.791721, 30.093857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436710, 29.552370, 29.654518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184858, 29.243113, 29.685026>,  <28.033747, 29.057558, 29.703331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184858, 29.243113, 29.685026>,  <28.436710, 29.552370, 29.654518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184858, 29.243113, 29.685026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157870, -0.223452, -0.961845,
		0.760686, -0.593566, 0.262748,
		-0.629630, -0.773142, 0.076271,
		27.995970, 29.011169, 29.707907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.740990, 32.268272, 46.649155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370655, 32.125587, 46.699097>,  <42.148457, 32.039978, 46.729061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370655, 32.125587, 46.699097>,  <42.740990, 32.268272, 46.649155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370655, 32.125587, 46.699097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106996, 0.069442, 0.991832,
		-0.362468, 0.931630, -0.026125,
		-0.925834, -0.356712, 0.124851,
		42.092903, 32.018574, 46.736553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396919, 32.638073, 47.197182>,  <42.740990, 32.268272, 46.649155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396919, 32.638073, 47.197182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.171597, 32.308220, 47.176510>,  <42.036404, 32.110310, 47.164108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.171597, 32.308220, 47.176510>,  <42.396919, 32.638073, 47.197182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171597, 32.308220, 47.176510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103049, 0.008065, 0.994644,
		-0.819795, 0.565616, -0.089521,
		-0.563308, -0.824629, -0.051675,
		42.002605, 32.060829, 47.161007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802326, 32.853352, 47.598324>,  <42.396919, 32.638073, 47.197182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802326, 32.853352, 47.598324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.828812, 32.454411, 47.586288>,  <41.844704, 32.215046, 47.579067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.828812, 32.454411, 47.586288>,  <41.802326, 32.853352, 47.598324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828812, 32.454411, 47.586288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049671, -0.033412, 0.998207,
		-0.996569, -0.064596, -0.051751,
		0.066209, -0.997352, -0.030088,
		41.848675, 32.155205, 47.577263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368946, 32.627117, 48.090084>,  <41.802326, 32.853352, 47.598324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368946, 32.627117, 48.090084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.597340, 32.301453, 48.047897>,  <41.734375, 32.106052, 48.022587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.597340, 32.301453, 48.047897>,  <41.368946, 32.627117, 48.090084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597340, 32.301453, 48.047897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054099, -0.090875, 0.994392,
		-0.819180, -0.573483, -0.007842,
		0.570980, -0.814161, -0.105468,
		41.768635, 32.057205, 48.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105618, 32.156097, 48.495113>,  <41.368946, 32.627117, 48.090084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105618, 32.156097, 48.495113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.458061, 31.976168, 48.436729>,  <41.669529, 31.868210, 48.401699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.458061, 31.976168, 48.436729>,  <41.105618, 32.156097, 48.495113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458061, 31.976168, 48.436729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102284, -0.120060, 0.987483,
		-0.461718, -0.885010, -0.059776,
		0.881109, -0.449825, -0.145957,
		41.722393, 31.841221, 48.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131714, 31.574635, 48.907036>,  <41.105618, 32.156097, 48.495113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131714, 31.574635, 48.907036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.525524, 31.606083, 48.844387>,  <41.761810, 31.624952, 48.806797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.525524, 31.606083, 48.844387>,  <41.131714, 31.574635, 48.907036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525524, 31.606083, 48.844387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166353, -0.138149, 0.976341,
		0.055124, -0.987286, -0.149090,
		0.984525, 0.078621, -0.156622,
		41.820881, 31.629669, 48.797401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534962, 30.965654, 49.168232>,  <41.131714, 31.574635, 48.907036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534962, 30.965654, 49.168232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.781803, 31.280361, 49.173584>,  <41.929909, 31.469185, 49.176796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.781803, 31.280361, 49.173584>,  <41.534962, 30.965654, 49.168232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781803, 31.280361, 49.173584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329031, -0.273450, 0.903860,
		0.714787, -0.553374, -0.427618,
		0.617104, 0.786767, 0.013381,
		41.966934, 31.516392, 49.177597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306705, 30.761332, 49.124729>,  <41.534962, 30.965654, 49.168232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306705, 30.761332, 49.124729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.245659, 31.112478, 49.306301>,  <42.209030, 31.323166, 49.415245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.245659, 31.112478, 49.306301>,  <42.306705, 30.761332, 49.124729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245659, 31.112478, 49.306301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552689, -0.304959, 0.775587,
		0.819294, 0.369254, -0.438645,
		-0.152620, 0.877868, 0.453933,
		42.199871, 31.375839, 49.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800713, 30.713465, 49.795124>,  <42.306705, 30.761332, 49.124729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800713, 30.713465, 49.795124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.640453, 31.077133, 49.840542>,  <42.544300, 31.295334, 49.867790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.640453, 31.077133, 49.840542>,  <42.800713, 30.713465, 49.795124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640453, 31.077133, 49.840542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252270, -0.009670, 0.967609,
		0.880819, 0.416312, -0.225482,
		-0.400646, 0.909171, 0.113540,
		42.520260, 31.349884, 49.874603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302029, 31.151150, 50.090031>,  <42.800713, 30.713465, 49.795124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302029, 31.151150, 50.090031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.939255, 31.289209, 50.186653>,  <42.721592, 31.372046, 50.244625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.939255, 31.289209, 50.186653>,  <43.302029, 31.151150, 50.090031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939255, 31.289209, 50.186653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184480, -0.190109, 0.964275,
		0.378739, 0.919093, 0.108743,
		-0.906931, 0.345148, 0.241556,
		42.667175, 31.392754, 50.259121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431622, 31.544237, 50.615932>,  <43.302029, 31.151150, 50.090031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431622, 31.544237, 50.615932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038525, 31.503918, 50.677982>,  <42.802666, 31.479727, 50.715210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038525, 31.503918, 50.677982>,  <43.431622, 31.544237, 50.615932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038525, 31.503918, 50.677982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155266, 0.006462, 0.987852,
		-0.100577, 0.994886, 0.009300,
		-0.982740, -0.100799, 0.155122,
		42.743702, 31.473679, 50.724518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146305, 32.129143, 51.054428>,  <43.431622, 31.544237, 50.615932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146305, 32.129143, 51.054428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.878952, 31.836494, 51.108097>,  <42.718540, 31.660906, 51.140297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.878952, 31.836494, 51.108097>,  <43.146305, 32.129143, 51.054428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878952, 31.836494, 51.108097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156947, 0.037602, 0.986891,
		-0.727073, 0.680677, 0.089693,
		-0.668381, -0.731618, 0.134170,
		42.678436, 31.617008, 51.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523438, 32.275047, 51.488209>,  <43.146305, 32.129143, 51.054428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523438, 32.275047, 51.488209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.631691, 31.890293, 51.503906>,  <42.696644, 31.659441, 51.513325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.631691, 31.890293, 51.503906>,  <42.523438, 32.275047, 51.488209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631691, 31.890293, 51.503906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020965, 0.046649, 0.998691,
		-0.962453, -0.269460, 0.032791,
		0.270637, -0.961881, 0.039248,
		42.712883, 31.601728, 51.515682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129307, 32.038040, 52.028130>,  <42.523438, 32.275047, 51.488209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129307, 32.038040, 52.028130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.423214, 31.772741, 51.971245>,  <42.599556, 31.613562, 51.937115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.423214, 31.772741, 51.971245>,  <42.129307, 32.038040, 52.028130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423214, 31.772741, 51.971245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020621, -0.187721, 0.982006,
		-0.678010, -0.724475, -0.124254,
		0.734763, -0.663247, -0.142216,
		42.643642, 31.573767, 51.928581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630550, 31.843021, 52.543819>,  <42.129307, 32.038040, 52.028130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630550, 31.843021, 52.543819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.321632, 32.028290, 52.717728>,  <41.136280, 32.139450, 52.822071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.321632, 32.028290, 52.717728>,  <41.630550, 31.843021, 52.543819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321632, 32.028290, 52.717728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446273, 0.091501, -0.890207,
		-0.452101, -0.881532, 0.136035,
		-0.772298, 0.463172, 0.434772,
		41.089943, 32.167240, 52.848160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097870, 31.679060, 52.167698>,  <41.630550, 31.843021, 52.543819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097870, 31.679060, 52.167698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.951694, 32.005829, 52.346176>,  <40.863987, 32.201889, 52.453262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.951694, 32.005829, 52.346176>,  <41.097870, 31.679060, 52.167698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951694, 32.005829, 52.346176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470691, 0.251368, -0.845733,
		-0.803058, -0.519085, 0.292658,
		-0.365442, 0.816924, 0.446192,
		40.842060, 32.250908, 52.480034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332993, 31.783735, 51.894241>,  <41.097870, 31.679060, 52.167698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332993, 31.783735, 51.894241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.463017, 32.136139, 52.031738>,  <40.541031, 32.347580, 52.114235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.463017, 32.136139, 52.031738>,  <40.332993, 31.783735, 51.894241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463017, 32.136139, 52.031738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513456, 0.469656, -0.718183,
		-0.794166, 0.056958, 0.605026,
		0.325060, 0.881011, 0.343739,
		40.560535, 32.400440, 52.134861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704422, 32.198925, 51.946236>,  <40.332993, 31.783735, 51.894241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704422, 32.198925, 51.946236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.013992, 32.452133, 51.939045>,  <40.199734, 32.604057, 51.934731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.013992, 32.452133, 51.939045>,  <39.704422, 32.198925, 51.946236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013992, 32.452133, 51.939045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370286, 0.429311, -0.823760,
		-0.513737, 0.644187, 0.566654,
		0.773926, 0.633020, -0.017981,
		40.246170, 32.642040, 51.933651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397324, 32.890251, 51.885719>,  <39.704422, 32.198925, 51.946236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397324, 32.890251, 51.885719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768353, 32.946285, 51.747162>,  <39.990971, 32.979904, 51.664028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768353, 32.946285, 51.747162>,  <39.397324, 32.890251, 51.885719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768353, 32.946285, 51.747162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372013, 0.432830, -0.821136,
		0.034902, 0.890525, 0.453594,
		0.927571, 0.140084, -0.346393,
		40.046623, 32.988312, 51.643246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372902, 33.559875, 51.536987>,  <39.397324, 32.890251, 51.885719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372902, 33.559875, 51.536987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.695087, 33.361603, 51.407043>,  <39.888397, 33.242638, 51.329075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.695087, 33.361603, 51.407043>,  <39.372902, 33.559875, 51.536987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695087, 33.361603, 51.407043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280984, 0.163232, -0.945729,
		0.521808, 0.853027, -0.007802,
		0.805459, -0.495681, -0.324863,
		39.936726, 33.212898, 51.309586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515308, 34.029491, 50.986511>,  <39.372902, 33.559875, 51.536987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515308, 34.029491, 50.986511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.723526, 33.692505, 50.930977>,  <39.848457, 33.490311, 50.897655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.723526, 33.692505, 50.930977>,  <39.515308, 34.029491, 50.986511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723526, 33.692505, 50.930977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143156, 0.074191, -0.986915,
		0.841747, 0.533611, -0.081985,
		0.520547, -0.842469, -0.138840,
		39.879688, 33.439766, 50.889324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098808, 34.081383, 50.510979>,  <39.515308, 34.029491, 50.986511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098808, 34.081383, 50.510979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.985626, 33.698215, 50.491646>,  <39.917717, 33.468315, 50.480045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.985626, 33.698215, 50.491646>,  <40.098808, 34.081383, 50.510979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985626, 33.698215, 50.491646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169037, 0.099407, -0.980583,
		0.944119, -0.269293, -0.190051,
		-0.282957, -0.957914, -0.048331,
		39.900738, 33.410843, 50.477146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409531, 33.845181, 49.913860>,  <40.098808, 34.081383, 50.510979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409531, 33.845181, 49.913860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126915, 33.574093, 49.995346>,  <39.957348, 33.411438, 50.044239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126915, 33.574093, 49.995346>,  <40.409531, 33.845181, 49.913860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126915, 33.574093, 49.995346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267376, -0.010885, -0.963531,
		0.655225, -0.735236, -0.173516,
		-0.706534, -0.677723, 0.203717,
		39.914955, 33.370777, 50.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415333, 33.315212, 49.330952>,  <40.409531, 33.845181, 49.913860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415333, 33.315212, 49.330952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052647, 33.258842, 49.489952>,  <39.835037, 33.225021, 49.585354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052647, 33.258842, 49.489952>,  <40.415333, 33.315212, 49.330952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052647, 33.258842, 49.489952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409139, 0.065177, -0.910141,
		0.102366, -0.987870, -0.116760,
		-0.906712, -0.140939, 0.397504,
		39.780632, 33.216564, 49.609203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188244, 33.003334, 48.781013>,  <40.415333, 33.315212, 49.330952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188244, 33.003334, 48.781013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855087, 33.021603, 49.001633>,  <39.655193, 33.032566, 49.134003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855087, 33.021603, 49.001633>,  <40.188244, 33.003334, 48.781013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855087, 33.021603, 49.001633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553153, -0.100604, -0.826983,
		0.017717, -0.993878, 0.109056,
		-0.832891, 0.045673, 0.551549,
		39.605221, 33.035305, 49.167099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831326, 32.442322, 48.574589>,  <40.188244, 33.003334, 48.781013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831326, 32.442322, 48.574589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.623112, 32.742683, 48.737164>,  <39.498184, 32.922901, 48.834709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.623112, 32.742683, 48.737164>,  <39.831326, 32.442322, 48.574589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623112, 32.742683, 48.737164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507699, 0.110520, -0.854416,
		-0.686502, -0.651101, 0.323702,
		-0.520535, 0.750902, 0.406436,
		39.466949, 32.967953, 48.859093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139126, 32.386627, 48.366665>,  <39.831326, 32.442322, 48.574589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139126, 32.386627, 48.366665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139130, 32.778721, 48.445808>,  <39.139130, 33.013977, 48.493294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139130, 32.778721, 48.445808>,  <39.139126, 32.386627, 48.366665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139130, 32.778721, 48.445808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341620, 0.185961, -0.921257,
		-0.939838, -0.067588, 0.334867,
		0.000007, 0.980230, 0.197863,
		39.139133, 33.072788, 48.505169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397751, 32.633343, 48.303570>,  <39.139126, 32.386627, 48.366665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397751, 32.633343, 48.303570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655216, 32.934662, 48.249542>,  <38.809696, 33.115452, 48.217125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655216, 32.934662, 48.249542>,  <38.397751, 32.633343, 48.303570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655216, 32.934662, 48.249542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428854, 0.208844, -0.878902,
		-0.633864, 0.623642, 0.457479,
		0.643662, 0.753296, -0.135073,
		38.848316, 33.160652, 48.209019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944862, 33.052441, 48.636219>,  <38.397751, 32.633343, 48.303570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944862, 33.052441, 48.636219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602158, 32.953671, 48.817326>,  <37.396534, 32.894409, 48.925987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602158, 32.953671, 48.817326>,  <37.944862, 33.052441, 48.636219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602158, 32.953671, 48.817326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514400, -0.346394, 0.784477,
		-0.036874, 0.905007, 0.423795,
		-0.856757, -0.246927, 0.452762,
		37.345131, 32.879593, 48.953156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003349, 33.203110, 49.339573>,  <37.944862, 33.052441, 48.636219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003349, 33.203110, 49.339573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691357, 32.954727, 49.370693>,  <37.504162, 32.805698, 49.389366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691357, 32.954727, 49.370693>,  <38.003349, 33.203110, 49.339573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691357, 32.954727, 49.370693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408075, -0.410411, 0.815498,
		-0.474456, 0.667819, 0.573507,
		-0.779979, -0.620952, 0.077798,
		37.457363, 32.768440, 49.394032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706844, 33.237816, 50.151539>,  <38.003349, 33.203110, 49.339573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706844, 33.237816, 50.151539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566746, 32.910954, 49.968418>,  <37.482685, 32.714836, 49.858547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566746, 32.910954, 49.968418>,  <37.706844, 33.237816, 50.151539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566746, 32.910954, 49.968418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205806, -0.543957, 0.813483,
		-0.913768, 0.190700, 0.358694,
		-0.350245, -0.817157, -0.457803,
		37.461674, 32.665806, 49.831078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056705, 33.021873, 50.519192>,  <37.706844, 33.237816, 50.151539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056705, 33.021873, 50.519192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187675, 32.700130, 50.320877>,  <37.266258, 32.507084, 50.201889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187675, 32.700130, 50.320877>,  <37.056705, 33.021873, 50.519192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187675, 32.700130, 50.320877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095841, -0.493730, 0.864318,
		-0.940004, -0.330516, -0.084570,
		0.327426, -0.804357, -0.495785,
		37.285904, 32.458824, 50.172142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666592, 32.487358, 50.816002>,  <37.056705, 33.021873, 50.519192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666592, 32.487358, 50.816002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978558, 32.294415, 50.656475>,  <37.165737, 32.178650, 50.560757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978558, 32.294415, 50.656475>,  <36.666592, 32.487358, 50.816002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978558, 32.294415, 50.656475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104680, -0.527709, 0.842951,
		-0.617069, -0.699179, -0.361075,
		0.779916, -0.482361, -0.398822,
		37.212532, 32.149708, 50.536827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500725, 31.846203, 50.965019>,  <36.666592, 32.487358, 50.816002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500725, 31.846203, 50.965019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895363, 31.839468, 50.900082>,  <37.132145, 31.835426, 50.861118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895363, 31.839468, 50.900082>,  <36.500725, 31.846203, 50.965019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895363, 31.839468, 50.900082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136757, -0.457610, 0.878573,
		-0.089082, -0.888994, -0.449171,
		0.986591, -0.016838, -0.162341,
		37.191341, 31.834417, 50.851379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758438, 31.172304, 51.074741>,  <36.500725, 31.846203, 50.965019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758438, 31.172304, 51.074741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092274, 31.384962, 51.132458>,  <37.292576, 31.512556, 51.167088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092274, 31.384962, 51.132458>,  <36.758438, 31.172304, 51.074741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092274, 31.384962, 51.132458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184438, -0.516487, 0.836196,
		0.519083, -0.671265, -0.529108,
		0.834587, 0.531643, 0.144293,
		37.342651, 31.544455, 51.175747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010601, 30.459179, 50.930721>,  <36.758438, 31.172304, 51.074741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010601, 30.459179, 50.930721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863319, 30.092951, 50.866024>,  <36.774952, 29.873215, 50.827206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863319, 30.092951, 50.866024>,  <37.010601, 30.459179, 50.930721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863319, 30.092951, 50.866024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426361, 0.320866, -0.845731,
		0.826223, -0.242439, -0.508507,
		-0.368201, -0.915570, -0.161740,
		36.752857, 29.818279, 50.817501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199364, 30.220644, 50.160660>,  <37.010601, 30.459179, 50.930721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199364, 30.220644, 50.160660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904049, 29.983999, 50.290230>,  <36.726860, 29.842012, 50.367970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904049, 29.983999, 50.290230>,  <37.199364, 30.220644, 50.160660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904049, 29.983999, 50.290230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365565, -0.052617, -0.929298,
		0.566827, -0.804505, -0.177426,
		-0.738289, -0.591611, 0.323923,
		36.682564, 29.806517, 50.387405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240524, 29.627743, 49.723026>,  <37.199364, 30.220644, 50.160660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240524, 29.627743, 49.723026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867367, 29.635138, 49.866898>,  <36.643471, 29.639574, 49.953220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867367, 29.635138, 49.866898>,  <37.240524, 29.627743, 49.723026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867367, 29.635138, 49.866898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359669, 0.003792, -0.933072,
		-0.018625, -0.999822, 0.003116,
		-0.932894, 0.018499, 0.359675,
		36.587498, 29.640684, 49.974800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904205, 29.094055, 49.338398>,  <37.240524, 29.627743, 49.723026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904205, 29.094055, 49.338398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661076, 29.380596, 49.475449>,  <36.515198, 29.552521, 49.557678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661076, 29.380596, 49.475449>,  <36.904205, 29.094055, 49.338398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661076, 29.380596, 49.475449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430280, 0.065521, -0.900315,
		-0.667393, -0.694654, 0.268407,
		-0.607821, 0.716354, 0.342624,
		36.478729, 29.595503, 49.578236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278481, 29.064201, 48.937759>,  <36.904205, 29.094055, 49.338398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278481, 29.064201, 48.937759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188007, 29.418903, 49.099007>,  <36.133724, 29.631725, 49.195755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188007, 29.418903, 49.099007>,  <36.278481, 29.064201, 48.937759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188007, 29.418903, 49.099007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455537, 0.269506, -0.848441,
		-0.861003, -0.375540, 0.342992,
		-0.226186, 0.886756, 0.403118,
		36.120152, 29.684931, 49.219940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650124, 29.261034, 48.805447>,  <36.278481, 29.064201, 48.937759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650124, 29.261034, 48.805447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826698, 29.615366, 48.862625>,  <35.932644, 29.827965, 48.896931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826698, 29.615366, 48.862625>,  <35.650124, 29.261034, 48.805447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826698, 29.615366, 48.862625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422022, 0.345557, -0.838145,
		-0.791852, 0.309664, 0.526383,
		0.441439, 0.885832, 0.142945,
		35.959129, 29.881115, 48.905510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144283, 29.806051, 48.746914>,  <35.650124, 29.261034, 48.805447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144283, 29.806051, 48.746914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505692, 29.950394, 48.654457>,  <35.722538, 30.036999, 48.598984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505692, 29.950394, 48.654457>,  <35.144283, 29.806051, 48.746914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505692, 29.950394, 48.654457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402481, 0.529349, -0.746859,
		-0.147152, 0.767837, 0.623517,
		0.903524, 0.360856, -0.231145,
		35.776749, 30.058651, 48.585114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.064976, 28.740353, 50.484047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.103165, 29.137669, 50.510151>,  <41.126080, 29.376059, 50.525814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.103165, 29.137669, 50.510151>,  <41.064976, 28.740353, 50.484047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103165, 29.137669, 50.510151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490192, 0.103969, -0.865391,
		-0.866370, 0.050632, 0.496830,
		0.095472, 0.993291, 0.065256,
		41.131805, 29.435656, 50.529728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417812, 29.068607, 50.385063>,  <41.064976, 28.740353, 50.484047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417812, 29.068607, 50.385063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.664177, 29.370459, 50.294563>,  <40.811996, 29.551569, 50.240265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.664177, 29.370459, 50.294563>,  <40.417812, 29.068607, 50.385063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664177, 29.370459, 50.294563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453677, 0.104962, -0.884963,
		-0.644069, 0.647705, 0.407005,
		0.615915, 0.754626, -0.226247,
		40.848953, 29.596846, 50.226688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980000, 29.588041, 50.146931>,  <40.417812, 29.068607, 50.385063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980000, 29.588041, 50.146931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.350548, 29.646887, 50.008251>,  <40.572876, 29.682194, 49.925045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.350548, 29.646887, 50.008251>,  <39.980000, 29.588041, 50.146931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350548, 29.646887, 50.008251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364095, 0.114391, -0.924310,
		-0.096318, 0.982483, 0.159531,
		0.926368, 0.147112, -0.346699,
		40.628460, 29.691021, 49.904240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912525, 30.253757, 49.740276>,  <39.980000, 29.588041, 50.146931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912525, 30.253757, 49.740276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.238209, 30.057514, 49.616104>,  <40.433620, 29.939768, 49.541603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.238209, 30.057514, 49.616104>,  <39.912525, 30.253757, 49.740276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238209, 30.057514, 49.616104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376711, -0.039598, -0.925484,
		0.441760, 0.870479, -0.217059,
		0.814209, -0.490610, -0.310427,
		40.482471, 29.910332, 49.522976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104919, 30.582373, 49.072495>,  <39.912525, 30.253757, 49.740276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104919, 30.582373, 49.072495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.283295, 30.224428, 49.080078>,  <40.390320, 30.009661, 49.084629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.283295, 30.224428, 49.080078>,  <40.104919, 30.582373, 49.072495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283295, 30.224428, 49.080078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103495, -0.072595, -0.991977,
		0.889059, 0.440401, -0.124987,
		0.445941, -0.894862, 0.018962,
		40.417076, 29.955969, 49.085766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550900, 30.532476, 48.574116>,  <40.104919, 30.582373, 49.072495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550900, 30.532476, 48.574116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.464962, 30.147577, 48.640957>,  <40.413399, 29.916637, 48.681061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.464962, 30.147577, 48.640957>,  <40.550900, 30.532476, 48.574116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464962, 30.147577, 48.640957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029269, -0.164680, -0.985913,
		0.976209, -0.216710, 0.007217,
		-0.214846, -0.962246, 0.167105,
		40.400509, 29.858904, 48.691090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806240, 30.179482, 47.994450>,  <40.550900, 30.532476, 48.574116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806240, 30.179482, 47.994450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.576015, 29.900326, 48.164944>,  <40.437881, 29.732832, 48.267239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.576015, 29.900326, 48.164944>,  <40.806240, 30.179482, 47.994450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576015, 29.900326, 48.164944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218855, -0.370754, -0.902577,
		0.787928, -0.612773, 0.060655,
		-0.575562, -0.697891, 0.426235,
		40.403347, 29.690958, 48.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922543, 29.631901, 47.610355>,  <40.806240, 30.179482, 47.994450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922543, 29.631901, 47.610355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.575546, 29.538380, 47.785988>,  <40.367348, 29.482267, 47.891369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.575546, 29.538380, 47.785988>,  <40.922543, 29.631901, 47.610355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575546, 29.538380, 47.785988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363774, -0.303891, -0.880522,
		0.339303, -0.923572, 0.178572,
		-0.867492, -0.233804, 0.439083,
		40.315300, 29.468239, 47.917713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756275, 28.949533, 47.365345>,  <40.922543, 29.631901, 47.610355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756275, 28.949533, 47.365345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.405457, 29.107716, 47.474449>,  <40.194965, 29.202625, 47.539913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.405457, 29.107716, 47.474449>,  <40.756275, 28.949533, 47.365345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405457, 29.107716, 47.474449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378006, -0.217689, -0.899846,
		-0.296474, -0.892314, 0.340409,
		-0.877049, 0.395458, 0.272761,
		40.142342, 29.226353, 47.556278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292614, 28.517767, 46.969864>,  <40.756275, 28.949533, 47.365345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292614, 28.517767, 46.969864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.072475, 28.815512, 47.121147>,  <39.940392, 28.994158, 47.211918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.072475, 28.815512, 47.121147>,  <40.292614, 28.517767, 46.969864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072475, 28.815512, 47.121147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590269, -0.026496, -0.806772,
		-0.590509, -0.667251, 0.453955,
		-0.550347, 0.744362, 0.378212,
		39.907372, 29.038820, 47.234612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615780, 28.194914, 47.004845>,  <40.292614, 28.517767, 46.969864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615780, 28.194914, 47.004845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.613083, 28.591660, 46.953999>,  <39.611465, 28.829708, 46.923492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.613083, 28.591660, 46.953999>,  <39.615780, 28.194914, 47.004845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613083, 28.591660, 46.953999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541925, -0.110458, -0.833136,
		-0.840400, 0.063268, 0.538262,
		-0.006745, 0.991865, -0.127116,
		39.611061, 28.889219, 46.915863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049183, 28.307535, 46.667805>,  <39.615780, 28.194914, 47.004845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049183, 28.307535, 46.667805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.222332, 28.659431, 46.589134>,  <39.326221, 28.870569, 46.541931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.222332, 28.659431, 46.589134>,  <39.049183, 28.307535, 46.667805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222332, 28.659431, 46.589134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474062, 0.036588, -0.879731,
		-0.766739, 0.474045, 0.432889,
		0.432871, 0.879740, -0.196674,
		39.352192, 28.923353, 46.530132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497032, 28.131487, 47.250202>,  <39.049183, 28.307535, 46.667805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497032, 28.131487, 47.250202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235538, 27.837765, 47.177071>,  <38.078644, 27.661531, 47.133190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235538, 27.837765, 47.177071>,  <38.497032, 28.131487, 47.250202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235538, 27.837765, 47.177071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142085, -0.356418, 0.923460,
		-0.743266, 0.577719, 0.337336,
		-0.653733, -0.734307, -0.182829,
		38.039417, 27.617472, 47.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122589, 28.055429, 47.892014>,  <38.497032, 28.131487, 47.250202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122589, 28.055429, 47.892014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.080727, 27.710228, 47.694321>,  <38.055607, 27.503107, 47.575703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.080727, 27.710228, 47.694321>,  <38.122589, 28.055429, 47.892014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080727, 27.710228, 47.694321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044208, -0.500510, 0.864601,
		-0.993525, 0.068640, 0.090535,
		-0.104660, -0.863005, -0.494235,
		38.049328, 27.451326, 47.546051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495464, 27.688644, 48.168049>,  <38.122589, 28.055429, 47.892014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495464, 27.688644, 48.168049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.760658, 27.441227, 47.999359>,  <37.919777, 27.292776, 47.898144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.760658, 27.441227, 47.999359>,  <37.495464, 27.688644, 48.168049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760658, 27.441227, 47.999359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001215, -0.564218, 0.825625,
		-0.748629, -0.546868, -0.374821,
		0.662988, -0.618542, -0.421725,
		37.959557, 27.255665, 47.872841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232376, 27.102814, 48.327091>,  <37.495464, 27.688644, 48.168049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232376, 27.102814, 48.327091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.610512, 26.989901, 48.261784>,  <37.837391, 26.922153, 48.222599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.610512, 26.989901, 48.261784>,  <37.232376, 27.102814, 48.327091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610512, 26.989901, 48.261784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023762, -0.439711, 0.897825,
		-0.325229, -0.852626, -0.408968,
		0.945336, -0.282281, -0.163267,
		37.894112, 26.905216, 48.212803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209114, 26.325500, 48.518890>,  <37.232376, 27.102814, 48.327091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209114, 26.325500, 48.518890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.593620, 26.435755, 48.519180>,  <37.824322, 26.501907, 48.519356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.593620, 26.435755, 48.519180>,  <37.209114, 26.325500, 48.518890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593620, 26.435755, 48.519180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118777, -0.416602, 0.901296,
		0.248732, -0.866295, -0.433203,
		0.961262, 0.275636, 0.000727,
		37.882000, 26.518446, 48.519398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687542, 25.680159, 48.695320>,  <37.209114, 26.325500, 48.518890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687542, 25.680159, 48.695320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.920628, 25.996677, 48.769394>,  <38.060478, 26.186588, 48.813839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.920628, 25.996677, 48.769394>,  <37.687542, 25.680159, 48.695320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920628, 25.996677, 48.769394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360290, -0.455794, 0.813906,
		0.728450, -0.407550, -0.550693,
		0.582711, 0.791299, 0.185187,
		38.095440, 26.234068, 48.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316284, 25.411093, 48.871078>,  <37.687542, 25.680159, 48.695320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316284, 25.411093, 48.871078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291092, 25.782120, 49.018402>,  <38.275978, 26.004736, 49.106796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291092, 25.782120, 49.018402>,  <38.316284, 25.411093, 48.871078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291092, 25.782120, 49.018402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379303, -0.319106, 0.868505,
		0.923127, 0.194401, -0.331731,
		-0.062981, 0.927567, 0.368312,
		38.272198, 26.060390, 49.128895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006123, 25.594906, 49.188496>,  <38.316284, 25.411093, 48.871078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006123, 25.594906, 49.188496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.720734, 25.802877, 49.376381>,  <38.549500, 25.927660, 49.489113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.720734, 25.802877, 49.376381>,  <39.006123, 25.594906, 49.188496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720734, 25.802877, 49.376381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472986, -0.137205, 0.870321,
		0.516954, 0.843117, -0.148028,
		-0.713473, 0.519931, 0.469711,
		38.506691, 25.958857, 49.517296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305660, 25.750780, 49.840881>,  <39.006123, 25.594906, 49.188496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305660, 25.750780, 49.840881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.945538, 25.903690, 49.924118>,  <38.729462, 25.995438, 49.974060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.945538, 25.903690, 49.924118>,  <39.305660, 25.750780, 49.840881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945538, 25.903690, 49.924118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201820, -0.056943, 0.977766,
		0.385627, 0.922292, -0.025885,
		-0.900311, 0.382277, 0.208096,
		38.675446, 26.018373, 49.986546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305912, 26.473322, 49.886459>,  <39.305660, 25.750780, 49.840881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305912, 26.473322, 49.886459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.988579, 26.368063, 50.106049>,  <38.798180, 26.304907, 50.237801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.988579, 26.368063, 50.106049>,  <39.305912, 26.473322, 49.886459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988579, 26.368063, 50.106049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482610, 0.277815, 0.830606,
		-0.371086, 0.923889, -0.093402,
		-0.793336, -0.263149, 0.548972,
		38.750576, 26.289118, 50.270741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143017, 27.032757, 50.358818>,  <39.305912, 26.473322, 49.886459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143017, 27.032757, 50.358818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.946468, 26.721283, 50.514874>,  <38.828541, 26.534399, 50.608505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.946468, 26.721283, 50.514874>,  <39.143017, 27.032757, 50.358818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946468, 26.721283, 50.514874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352536, 0.231784, 0.906639,
		-0.796413, 0.583033, 0.160623,
		-0.491370, -0.778684, 0.390135,
		38.799057, 26.487679, 50.631916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824310, 27.333569, 50.944225>,  <39.143017, 27.032757, 50.358818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824310, 27.333569, 50.944225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.824490, 26.942636, 51.028912>,  <38.824596, 26.708076, 51.079723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.824490, 26.942636, 51.028912>,  <38.824310, 27.333569, 50.944225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824490, 26.942636, 51.028912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231244, 0.206076, 0.950820,
		-0.972896, 0.048530, 0.226095,
		0.000449, -0.977332, 0.211713,
		38.824623, 26.649437, 51.092426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495544, 27.360521, 51.557568>,  <38.824310, 27.333569, 50.944225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495544, 27.360521, 51.557568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.693569, 27.013651, 51.535950>,  <38.812382, 26.805529, 51.522980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.693569, 27.013651, 51.535950>,  <38.495544, 27.360521, 51.557568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693569, 27.013651, 51.535950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515717, 0.243218, 0.821511,
		-0.699252, -0.434566, 0.567626,
		0.495058, -0.867178, -0.054043,
		38.842087, 26.753498, 51.519737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439011, 26.906736, 52.213531>,  <38.495544, 27.360521, 51.557568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439011, 26.906736, 52.213531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783531, 26.863714, 52.014904>,  <38.990246, 26.837902, 51.895725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783531, 26.863714, 52.014904>,  <38.439011, 26.906736, 52.213531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783531, 26.863714, 52.014904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507827, 0.151034, 0.848116,
		-0.016219, -0.982660, 0.184706,
		0.861306, -0.107554, -0.496572,
		39.041924, 26.831448, 51.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437824, 27.754267, 52.440525>,  <38.439011, 26.906736, 52.213531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437824, 27.754267, 52.440525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159939, 27.951496, 52.650002>,  <37.993206, 28.069834, 52.775688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159939, 27.951496, 52.650002>,  <38.437824, 27.754267, 52.440525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159939, 27.951496, 52.650002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313725, 0.447452, -0.837474,
		-0.647263, -0.746099, -0.156161,
		-0.694714, 0.493075, 0.523689,
		37.951523, 28.099419, 52.807110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777985, 27.721006, 52.125465>,  <38.437824, 27.754267, 52.440525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777985, 27.721006, 52.125465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819054, 28.068253, 52.319714>,  <37.843697, 28.276600, 52.436264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819054, 28.068253, 52.319714>,  <37.777985, 27.721006, 52.125465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819054, 28.068253, 52.319714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487783, 0.469417, -0.736013,
		-0.866906, -0.161309, 0.471650,
		0.102674, 0.868117, 0.485624,
		37.849857, 28.328688, 52.465401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170300, 28.068695, 52.077263>,  <37.777985, 27.721006, 52.125465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170300, 28.068695, 52.077263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.385479, 28.377535, 52.212597>,  <37.514587, 28.562840, 52.293797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.385479, 28.377535, 52.212597>,  <37.170300, 28.068695, 52.077263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385479, 28.377535, 52.212597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579017, 0.630133, -0.517370,
		-0.612660, 0.082414, 0.786038,
		0.537947, 0.772101, 0.338339,
		37.546864, 28.609165, 52.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724022, 28.478918, 52.493938>,  <37.170300, 28.068695, 52.077263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724022, 28.478918, 52.493938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.026329, 28.686478, 52.334160>,  <37.207714, 28.811012, 52.238293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.026329, 28.686478, 52.334160>,  <36.724022, 28.478918, 52.493938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026329, 28.686478, 52.334160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654063, 0.627834, -0.421932,
		0.031848, 0.580147, 0.813889,
		0.755769, 0.518897, -0.399448,
		37.253059, 28.842146, 52.214325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394054, 29.178562, 52.409142>,  <36.724022, 28.478918, 52.493938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394054, 29.178562, 52.409142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711838, 29.142750, 52.168869>,  <36.902508, 29.121264, 52.024708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711838, 29.142750, 52.168869>,  <36.394054, 29.178562, 52.409142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711838, 29.142750, 52.168869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457430, 0.562385, -0.688825,
		0.399482, 0.822014, 0.405840,
		0.794463, -0.089530, -0.600677,
		36.950176, 29.115891, 51.988667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372864, 29.771273, 52.010509>,  <36.394054, 29.178562, 52.409142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372864, 29.771273, 52.010509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.628769, 29.557259, 51.789806>,  <36.782314, 29.428850, 51.657383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.628769, 29.557259, 51.789806>,  <36.372864, 29.771273, 52.010509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628769, 29.557259, 51.789806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315797, 0.471504, -0.823381,
		0.700695, 0.701014, 0.132689,
		0.639765, -0.535036, -0.551758,
		36.820698, 29.396748, 51.624279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660885, 30.275072, 51.518852>,  <36.372864, 29.771273, 52.010509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660885, 30.275072, 51.518852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.696491, 29.911581, 51.355740>,  <36.717854, 29.693485, 51.257874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.696491, 29.911581, 51.355740>,  <36.660885, 30.275072, 51.518852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696491, 29.911581, 51.355740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271047, 0.371858, -0.887838,
		0.958441, 0.189559, -0.213208,
		0.089014, -0.908730, -0.407783,
		36.723194, 29.638962, 51.233406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323532, 30.690905, 51.642757>,  <36.660885, 30.275072, 51.518852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323532, 30.690905, 51.642757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457619, 31.065828, 51.604641>,  <37.538071, 31.290783, 51.581772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457619, 31.065828, 51.604641>,  <37.323532, 30.690905, 51.642757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457619, 31.065828, 51.604641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403424, -0.051403, 0.913568,
		0.851399, -0.344683, -0.395365,
		0.335215, 0.937311, -0.095289,
		37.558182, 31.347021, 51.576054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029854, 30.705153, 51.877666>,  <37.323532, 30.690905, 51.642757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029854, 30.705153, 51.877666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.892456, 31.078409, 51.920113>,  <37.810017, 31.302362, 51.945580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.892456, 31.078409, 51.920113>,  <38.029854, 30.705153, 51.877666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892456, 31.078409, 51.920113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366007, 0.028949, 0.930162,
		0.864900, 0.358344, -0.351480,
		-0.343493, 0.933141, 0.106118,
		37.789410, 31.358351, 51.951946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581497, 30.989279, 52.176949>,  <38.029854, 30.705153, 51.877666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581497, 30.989279, 52.176949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314018, 31.268448, 52.279522>,  <38.153530, 31.435949, 52.341064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314018, 31.268448, 52.279522>,  <38.581497, 30.989279, 52.176949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314018, 31.268448, 52.279522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410978, 0.059526, 0.909700,
		0.619635, 0.713696, -0.326634,
		-0.668693, 0.697921, 0.256429,
		38.113411, 31.477825, 52.356449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920349, 31.547380, 52.465664>,  <38.581497, 30.989279, 52.176949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920349, 31.547380, 52.465664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545727, 31.615595, 52.588165>,  <38.320953, 31.656523, 52.661667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545727, 31.615595, 52.588165>,  <38.920349, 31.547380, 52.465664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545727, 31.615595, 52.588165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346016, 0.310011, 0.885532,
		0.056073, 0.935313, -0.349349,
		-0.936552, 0.170535, 0.306250,
		38.264763, 31.666756, 52.680038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995640, 32.188362, 52.748470>,  <38.920349, 31.547380, 52.465664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995640, 32.188362, 52.748470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.695503, 31.993872, 52.927612>,  <38.515423, 31.877178, 53.035099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.695503, 31.993872, 52.927612>,  <38.995640, 32.188362, 52.748470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695503, 31.993872, 52.927612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321211, 0.323955, 0.889874,
		-0.577762, 0.811566, -0.086897,
		-0.750343, -0.486223, 0.447853,
		38.470402, 31.848005, 53.061970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750881, 32.654869, 53.243156>,  <38.995640, 32.188362, 52.748470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750881, 32.654869, 53.243156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.606468, 32.297638, 53.350544>,  <38.519821, 32.083302, 53.414978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.606468, 32.297638, 53.350544>,  <38.750881, 32.654869, 53.243156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606468, 32.297638, 53.350544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117492, 0.242035, 0.963127,
		-0.925123, 0.379261, 0.017547,
		-0.361030, -0.893073, 0.268473,
		38.498158, 32.029716, 53.431087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480839, 32.790539, 53.920593>,  <38.750881, 32.654869, 53.243156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480839, 32.790539, 53.920593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.547550, 32.397060, 53.893658>,  <38.587578, 32.160973, 53.877495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.547550, 32.397060, 53.893658>,  <38.480839, 32.790539, 53.920593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547550, 32.397060, 53.893658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093498, -0.052209, 0.994250,
		-0.981551, -0.172117, 0.083265,
		0.166780, -0.983692, -0.067339,
		38.597584, 32.101952, 53.873455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051292, 32.464741, 54.426476>,  <38.480839, 32.790539, 53.920593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051292, 32.464741, 54.426476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.340206, 32.195057, 54.364845>,  <38.513554, 32.033245, 54.327866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.340206, 32.195057, 54.364845>,  <38.051292, 32.464741, 54.426476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340206, 32.195057, 54.364845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147175, -0.067841, 0.986781,
		-0.675750, -0.735417, 0.050226,
		0.722289, -0.674210, -0.154079,
		38.556892, 31.992794, 54.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975491, 31.931007, 54.912457>,  <38.051292, 32.464741, 54.426476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975491, 31.931007, 54.912457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.354511, 31.874636, 54.797714>,  <38.581924, 31.840813, 54.728870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.354511, 31.874636, 54.797714>,  <37.975491, 31.931007, 54.912457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354511, 31.874636, 54.797714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270618, -0.123728, 0.954703,
		-0.170042, -0.982257, -0.079099,
		0.947550, -0.140934, -0.286856,
		38.638775, 31.832357, 54.711658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.205044, 34.265629, 38.592163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572239, 34.192307, 38.732849>,  <35.792557, 34.148312, 38.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572239, 34.192307, 38.732849>,  <35.205044, 34.265629, 38.592163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572239, 34.192307, 38.732849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394884, -0.339685, 0.853628,
		-0.037002, -0.922504, -0.384210,
		0.917985, -0.183304, 0.351713,
		35.847633, 34.137314, 38.838364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194286, 33.563576, 38.971024>,  <35.205044, 34.265629, 38.592163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194286, 33.563576, 38.971024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525909, 33.745872, 39.100620>,  <35.724884, 33.855251, 39.178379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525909, 33.745872, 39.100620>,  <35.194286, 33.563576, 38.971024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525909, 33.745872, 39.100620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227393, -0.254553, 0.939944,
		0.510844, -0.852938, -0.107406,
		0.829054, 0.455741, 0.323989,
		35.774624, 33.882595, 39.197819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490620, 33.083458, 39.455662>,  <35.194286, 33.563576, 38.971024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490620, 33.083458, 39.455662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663311, 33.433617, 39.542641>,  <35.766926, 33.643711, 39.594830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663311, 33.433617, 39.542641>,  <35.490620, 33.083458, 39.455662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663311, 33.433617, 39.542641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122256, -0.295640, 0.947444,
		0.893679, -0.382455, -0.234660,
		0.431730, 0.875400, 0.217450,
		35.792831, 33.696236, 39.607876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032078, 33.043118, 39.979618>,  <35.490620, 33.083458, 39.455662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032078, 33.043118, 39.979618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961620, 33.435188, 40.015907>,  <35.919346, 33.670429, 40.037682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961620, 33.435188, 40.015907>,  <36.032078, 33.043118, 39.979618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961620, 33.435188, 40.015907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148899, -0.064576, 0.986742,
		0.973039, 0.187313, -0.134573,
		-0.176139, 0.980176, 0.090725,
		35.908779, 33.729240, 40.043125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578529, 33.324520, 40.353237>,  <36.032078, 33.043118, 39.979618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578529, 33.324520, 40.353237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257710, 33.558762, 40.400208>,  <36.065220, 33.699306, 40.428391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257710, 33.558762, 40.400208>,  <36.578529, 33.324520, 40.353237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257710, 33.558762, 40.400208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034995, -0.150188, 0.988038,
		0.596235, 0.796562, 0.099965,
		-0.802047, 0.585604, 0.117423,
		36.017094, 33.734444, 40.435436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601437, 33.388855, 41.066620>,  <36.578529, 33.324520, 40.353237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601437, 33.388855, 41.066620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248554, 33.562481, 40.993622>,  <36.036827, 33.666656, 40.949821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248554, 33.562481, 40.993622>,  <36.601437, 33.388855, 41.066620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248554, 33.562481, 40.993622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186473, 0.033824, 0.981878,
		0.432370, 0.900247, 0.051101,
		-0.882204, 0.434063, -0.182497,
		35.983894, 33.692699, 40.938873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620396, 34.020191, 41.411572>,  <36.601437, 33.388855, 41.066620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620396, 34.020191, 41.411572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236755, 33.912868, 41.375484>,  <36.006573, 33.848476, 41.353832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236755, 33.912868, 41.375484>,  <36.620396, 34.020191, 41.411572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236755, 33.912868, 41.375484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113258, 0.071638, 0.990980,
		-0.259425, 0.960666, -0.099096,
		-0.959099, -0.268308, -0.090219,
		35.949024, 33.832375, 41.348419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243061, 34.459564, 41.912342>,  <36.620396, 34.020191, 41.411572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243061, 34.459564, 41.912342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990555, 34.159138, 41.834980>,  <35.839050, 33.978882, 41.788563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990555, 34.159138, 41.834980>,  <36.243061, 34.459564, 41.912342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990555, 34.159138, 41.834980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327119, 0.031745, 0.944450,
		-0.703202, 0.659467, -0.265727,
		-0.631269, -0.751063, -0.193401,
		35.801174, 33.933819, 41.776958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567261, 34.715599, 42.071129>,  <36.243061, 34.459564, 41.912342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567261, 34.715599, 42.071129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575939, 34.316948, 42.102802>,  <35.581146, 34.077759, 42.121807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575939, 34.316948, 42.102802>,  <35.567261, 34.715599, 42.071129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575939, 34.316948, 42.102802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129632, 0.075734, 0.988666,
		-0.991325, -0.031711, -0.127551,
		0.021691, -0.996624, 0.079188,
		35.582447, 34.017960, 42.126560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091270, 34.572437, 42.544399>,  <35.567261, 34.715599, 42.071129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091270, 34.572437, 42.544399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294662, 34.229549, 42.511860>,  <35.416698, 34.023815, 42.492336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294662, 34.229549, 42.511860>,  <35.091270, 34.572437, 42.544399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294662, 34.229549, 42.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058831, -0.128833, 0.989920,
		-0.859063, -0.498567, -0.115940,
		0.508478, -0.857224, -0.081345,
		35.447205, 33.972382, 42.487457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734688, 34.136040, 43.045486>,  <35.091270, 34.572437, 42.544399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734688, 34.136040, 43.045486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086605, 33.959534, 42.974770>,  <35.297756, 33.853630, 42.932339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086605, 33.959534, 42.974770>,  <34.734688, 34.136040, 43.045486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086605, 33.959534, 42.974770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104748, -0.182818, 0.977551,
		-0.463676, -0.878559, -0.114620,
		0.879791, -0.441261, -0.176795,
		35.350544, 33.827156, 42.921730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765297, 33.318142, 43.213043>,  <34.734688, 34.136040, 43.045486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765297, 33.318142, 43.213043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115040, 33.502888, 43.272614>,  <35.324886, 33.613735, 43.308353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115040, 33.502888, 43.272614>,  <34.765297, 33.318142, 43.213043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115040, 33.502888, 43.272614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032857, -0.249830, 0.967732,
		0.484171, -0.851036, -0.203265,
		0.874357, 0.461869, 0.148923,
		35.377346, 33.641449, 43.317291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801373, 32.658012, 43.114017>,  <34.765297, 33.318142, 43.213043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801373, 32.658012, 43.114017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558205, 32.343552, 43.158562>,  <34.412304, 32.154877, 43.185287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558205, 32.343552, 43.158562>,  <34.801373, 32.658012, 43.114017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558205, 32.343552, 43.158562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377562, 0.162832, -0.911555,
		0.698488, -0.596196, -0.395809,
		-0.607916, -0.786153, 0.111365,
		34.375832, 32.107704, 43.191971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896320, 32.391644, 42.469765>,  <34.801373, 32.658012, 43.114017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896320, 32.391644, 42.469765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563625, 32.231083, 42.623169>,  <34.364006, 32.134747, 42.715210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563625, 32.231083, 42.623169>,  <34.896320, 32.391644, 42.469765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563625, 32.231083, 42.623169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428113, 0.023952, -0.903408,
		0.353449, -0.915586, -0.191770,
		-0.831741, -0.401407, 0.383509,
		34.314102, 32.110661, 42.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703224, 31.717274, 42.135429>,  <34.896320, 32.391644, 42.469765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703224, 31.717274, 42.135429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358707, 31.811703, 42.315407>,  <34.151997, 31.868361, 42.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358707, 31.811703, 42.315407>,  <34.703224, 31.717274, 42.135429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358707, 31.811703, 42.315407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500923, -0.246070, -0.829774,
		-0.085167, -0.940064, 0.330191,
		-0.861291, 0.236070, 0.449943,
		34.100319, 31.882524, 42.450390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334133, 31.244038, 42.021976>,  <34.703224, 31.717274, 42.135429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334133, 31.244038, 42.021976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085049, 31.553736, 42.067196>,  <33.935600, 31.739553, 42.094326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085049, 31.553736, 42.067196>,  <34.334133, 31.244038, 42.021976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085049, 31.553736, 42.067196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473320, -0.257691, -0.842356,
		-0.623058, -0.578050, 0.526932,
		-0.622709, 0.774244, 0.113046,
		33.898235, 31.786009, 42.101109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679459, 31.062632, 41.700237>,  <34.334133, 31.244038, 42.021976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679459, 31.062632, 41.700237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645096, 31.460629, 41.720669>,  <33.624477, 31.699427, 41.732929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645096, 31.460629, 41.720669>,  <33.679459, 31.062632, 41.700237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645096, 31.460629, 41.720669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672940, -0.020142, -0.739423,
		-0.734691, -0.097898, 0.671301,
		-0.085909, 0.994992, 0.051081,
		33.619324, 31.759127, 41.735992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975136, 31.164837, 41.715611>,  <33.679459, 31.062632, 41.700237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975136, 31.164837, 41.715611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124554, 31.529510, 41.647148>,  <33.214203, 31.748316, 41.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124554, 31.529510, 41.647148>,  <32.975136, 31.164837, 41.715611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124554, 31.529510, 41.647148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526531, 0.056486, -0.848277,
		-0.763695, 0.406986, 0.501131,
		0.373543, 0.911686, -0.171153,
		33.236618, 31.803017, 41.595802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482277, 31.680428, 41.672565>,  <32.975136, 31.164837, 41.715611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482277, 31.680428, 41.672565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778198, 31.843616, 41.458553>,  <32.955750, 31.941530, 41.330147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778198, 31.843616, 41.458553>,  <32.482277, 31.680428, 41.672565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778198, 31.843616, 41.458553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608619, 0.066760, -0.790649,
		-0.286845, 0.910550, 0.297690,
		0.739799, 0.407973, -0.535028,
		33.000137, 31.966009, 41.298046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127861, 32.166897, 41.358887>,  <32.482277, 31.680428, 41.672565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127861, 32.166897, 41.358887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471203, 32.150112, 41.154350>,  <32.677208, 32.140041, 41.031628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471203, 32.150112, 41.154350>,  <32.127861, 32.166897, 41.358887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471203, 32.150112, 41.154350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505266, 0.103881, -0.856688,
		0.089062, 0.993704, 0.067967,
		0.858356, -0.041957, -0.511337,
		32.728710, 32.137524, 41.000950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998350, 32.663551, 40.918533>,  <32.127861, 32.166897, 41.358887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998350, 32.663551, 40.918533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300453, 32.469723, 40.741997>,  <32.481716, 32.353428, 40.636074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300453, 32.469723, 40.741997>,  <31.998350, 32.663551, 40.918533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300453, 32.469723, 40.741997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453596, 0.099626, -0.885621,
		0.473112, 0.869062, -0.144554,
		0.755259, -0.484567, -0.441338,
		32.527031, 32.324352, 40.609596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169472, 33.037418, 40.370197>,  <31.998350, 32.663551, 40.918533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169472, 33.037418, 40.370197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269321, 32.662674, 40.272228>,  <32.329231, 32.437828, 40.213448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269321, 32.662674, 40.272228>,  <32.169472, 33.037418, 40.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269321, 32.662674, 40.272228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282858, 0.171351, -0.943732,
		0.926109, 0.304859, -0.222224,
		0.249627, -0.936856, -0.244921,
		32.344208, 32.381618, 40.198753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638397, 33.085396, 39.753288>,  <32.169472, 33.037418, 40.370197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638397, 33.085396, 39.753288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550980, 32.695133, 39.745960>,  <32.498531, 32.460976, 39.741562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550980, 32.695133, 39.745960>,  <32.638397, 33.085396, 39.753288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550980, 32.695133, 39.745960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127025, 0.047060, -0.990782,
		0.967525, -0.214200, -0.134217,
		-0.218542, -0.975655, -0.018323,
		32.485416, 32.402435, 39.740463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901890, 32.839516, 39.123238>,  <32.638397, 33.085396, 39.753288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901890, 32.839516, 39.123238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635372, 32.558479, 39.223175>,  <32.475464, 32.389858, 39.283138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635372, 32.558479, 39.223175>,  <32.901890, 32.839516, 39.123238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635372, 32.558479, 39.223175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218824, -0.136074, -0.966230,
		0.712862, -0.698461, -0.063080,
		-0.666291, -0.702592, 0.249842,
		32.435486, 32.347702, 39.298126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244923, 32.160664, 38.854671>,  <32.901890, 32.839516, 39.123238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244923, 32.160664, 38.854671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846470, 32.148167, 38.887539>,  <32.607399, 32.140667, 38.907261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846470, 32.148167, 38.887539>,  <33.244923, 32.160664, 38.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846470, 32.148167, 38.887539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076656, -0.148902, -0.985876,
		0.043037, -0.988358, 0.145930,
		-0.996128, -0.031243, 0.082171,
		32.547630, 32.138794, 38.912189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854031, 31.495108, 38.504665>,  <33.244923, 32.160664, 38.854671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854031, 31.495108, 38.504665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683800, 31.856333, 38.527836>,  <32.581661, 32.073067, 38.541737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683800, 31.856333, 38.527836>,  <32.854031, 31.495108, 38.504665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683800, 31.856333, 38.527836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134675, 0.000092, -0.990890,
		-0.894842, -0.429506, 0.121581,
		-0.425582, 0.903064, 0.057926,
		32.556126, 32.127251, 38.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675976, 30.780565, 38.167770>,  <32.854031, 31.495108, 38.504665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675976, 30.780565, 38.167770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619087, 30.460817, 37.934265>,  <32.584953, 30.268969, 37.794163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619087, 30.460817, 37.934265>,  <32.675976, 30.780565, 38.167770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619087, 30.460817, 37.934265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454466, -0.576656, 0.678918,
		-0.879338, -0.168747, 0.445297,
		-0.142218, -0.799370, -0.583765,
		32.576424, 30.221006, 37.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264053, 30.302729, 38.487366>,  <32.675976, 30.780565, 38.167770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264053, 30.302729, 38.487366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537609, 30.169525, 38.227707>,  <32.701744, 30.089603, 38.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537609, 30.169525, 38.227707>,  <32.264053, 30.302729, 38.487366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537609, 30.169525, 38.227707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385081, -0.590967, 0.708851,
		-0.619681, -0.734753, -0.275922,
		0.683892, -0.333010, -0.649151,
		32.742779, 30.069622, 38.032963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284634, 29.548891, 38.428066>,  <32.264053, 30.302729, 38.487366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284634, 29.548891, 38.428066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659111, 29.687618, 38.405247>,  <32.883797, 29.770855, 38.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659111, 29.687618, 38.405247>,  <32.284634, 29.548891, 38.428066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659111, 29.687618, 38.405247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240581, -0.513977, 0.823376,
		0.256239, -0.784567, -0.564621,
		0.936196, 0.346818, -0.057051,
		32.939968, 29.791664, 38.388130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743546, 28.936398, 38.602715>,  <32.284634, 29.548891, 38.428066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743546, 28.936398, 38.602715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931747, 29.286983, 38.643566>,  <33.044670, 29.497335, 38.668079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931747, 29.286983, 38.643566>,  <32.743546, 28.936398, 38.602715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931747, 29.286983, 38.643566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347140, -0.290270, 0.891761,
		0.811243, -0.384127, -0.440830,
		0.470509, 0.876465, 0.102134,
		33.072899, 29.549923, 38.674206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333492, 28.739386, 38.964512>,  <32.743546, 28.936398, 38.602715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333492, 28.739386, 38.964512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303802, 29.131767, 39.036308>,  <33.285988, 29.367197, 39.079388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303802, 29.131767, 39.036308>,  <33.333492, 28.739386, 38.964512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303802, 29.131767, 39.036308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523999, -0.114772, 0.843950,
		0.848478, 0.156697, -0.505501,
		-0.074227, 0.980955, 0.179491,
		33.281536, 29.426054, 39.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915527, 28.999283, 39.210358>,  <33.333492, 28.739386, 38.964512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915527, 28.999283, 39.210358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663017, 29.281406, 39.339375>,  <33.511513, 29.450680, 39.416782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663017, 29.281406, 39.339375>,  <33.915527, 28.999283, 39.210358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663017, 29.281406, 39.339375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526990, 0.084974, 0.845612,
		0.569009, 0.703790, -0.425333,
		-0.631276, 0.705308, 0.322539,
		33.473633, 29.492998, 39.436138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409225, 29.422947, 39.454453>,  <33.915527, 28.999283, 39.210358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409225, 29.422947, 39.454453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061371, 29.534485, 39.617416>,  <33.852657, 29.601408, 39.715195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061371, 29.534485, 39.617416>,  <34.409225, 29.422947, 39.454453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061371, 29.534485, 39.617416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419990, -0.015930, 0.907389,
		0.259512, 0.960204, -0.103259,
		-0.869634, 0.278846, 0.407410,
		33.800480, 29.618139, 39.739639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474358, 29.999498, 39.934864>,  <34.409225, 29.422947, 39.454453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474358, 29.999498, 39.934864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143597, 29.809534, 40.055321>,  <33.945141, 29.695557, 40.127594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143597, 29.809534, 40.055321>,  <34.474358, 29.999498, 39.934864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143597, 29.809534, 40.055321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298342, 0.083444, 0.950804,
		-0.476675, 0.876070, 0.072685,
		-0.826906, -0.474910, 0.301144,
		33.895523, 29.667061, 40.145664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398891, 30.268620, 40.554260>,  <34.474358, 29.999498, 39.934864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398891, 30.268620, 40.554260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158550, 29.948982, 40.562500>,  <34.014347, 29.757200, 40.567444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158550, 29.948982, 40.562500>,  <34.398891, 30.268620, 40.554260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158550, 29.948982, 40.562500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387938, -0.268972, 0.881566,
		-0.698912, 0.537684, 0.471612,
		-0.600854, -0.799093, 0.020600,
		33.978294, 29.709253, 40.568680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072701, 30.240492, 41.191055>,  <34.398891, 30.268620, 40.554260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072701, 30.240492, 41.191055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053574, 29.869287, 41.043266>,  <34.042099, 29.646564, 40.954594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053574, 29.869287, 41.043266>,  <34.072701, 30.240492, 41.191055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053574, 29.869287, 41.043266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344244, -0.362547, 0.866057,
		-0.937662, -0.085776, 0.336798,
		-0.047818, -0.928010, -0.369475,
		34.039227, 29.590885, 40.932423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894672, 29.957775, 41.769592>,  <34.072701, 30.240492, 41.191055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894672, 29.957775, 41.769592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021667, 29.652704, 41.544193>,  <34.097866, 29.469662, 41.408955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021667, 29.652704, 41.544193>,  <33.894672, 29.957775, 41.769592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021667, 29.652704, 41.544193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329897, -0.468284, 0.819681,
		-0.889028, -0.446134, 0.102931,
		0.317487, -0.762676, -0.563496,
		34.116913, 29.423901, 41.375145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626766, 29.359037, 42.030373>,  <33.894672, 29.957775, 41.769592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626766, 29.359037, 42.030373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949211, 29.250538, 41.820000>,  <34.142677, 29.185438, 41.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949211, 29.250538, 41.820000>,  <33.626766, 29.359037, 42.030373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949211, 29.250538, 41.820000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410402, -0.384034, 0.827096,
		-0.426331, -0.882575, -0.198251,
		0.806110, -0.271254, -0.525936,
		34.191044, 29.169163, 41.662220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682320, 28.643583, 41.995457>,  <33.626766, 29.359037, 42.030373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682320, 28.643583, 41.995457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049969, 28.793472, 41.946808>,  <34.270557, 28.883406, 41.917618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049969, 28.793472, 41.946808>,  <33.682320, 28.643583, 41.995457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049969, 28.793472, 41.946808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330278, -0.564607, 0.756397,
		0.214768, -0.735393, -0.642706,
		0.919125, 0.374722, -0.121624,
		34.325706, 28.905890, 41.910320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076530, 28.148809, 42.377045>,  <33.682320, 28.643583, 41.995457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076530, 28.148809, 42.377045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358547, 28.418232, 42.288280>,  <34.527756, 28.579885, 42.235023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358547, 28.418232, 42.288280>,  <34.076530, 28.148809, 42.377045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358547, 28.418232, 42.288280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615614, -0.425958, 0.663007,
		0.352048, -0.604056, -0.714967,
		0.705040, 0.673555, -0.221908,
		34.570061, 28.620298, 42.221706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763676, 27.708857, 42.248211>,  <34.076530, 28.148809, 42.377045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763676, 27.708857, 42.248211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807976, 28.089643, 42.362400>,  <34.834557, 28.318115, 42.430912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807976, 28.089643, 42.362400>,  <34.763676, 27.708857, 42.248211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807976, 28.089643, 42.362400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523112, -0.300071, 0.797692,
		0.845037, 0.060986, -0.531218,
		0.110755, 0.951966, 0.285474,
		34.841202, 28.375233, 42.448044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488533, 27.836182, 42.326374>,  <34.763676, 27.708857, 42.248211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488533, 27.836182, 42.326374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280750, 28.100372, 42.543236>,  <35.156082, 28.258886, 42.673355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280750, 28.100372, 42.543236>,  <35.488533, 27.836182, 42.326374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280750, 28.100372, 42.543236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710379, -0.018822, 0.703567,
		0.474894, 0.750610, -0.459412,
		-0.519458, 0.660477, 0.542156,
		35.124912, 28.298515, 42.705883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060066, 28.158754, 42.609428>,  <35.488533, 27.836182, 42.326374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060066, 28.158754, 42.609428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761539, 28.301805, 42.833969>,  <35.582424, 28.387636, 42.968693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761539, 28.301805, 42.833969>,  <36.060066, 28.158754, 42.609428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761539, 28.301805, 42.833969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593182, -0.025183, 0.804675,
		0.301912, 0.933524, -0.193345,
		-0.746314, 0.357630, 0.561352,
		35.537643, 28.409094, 43.002377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318810, 28.671818, 43.024910>,  <36.060066, 28.158754, 42.609428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318810, 28.671818, 43.024910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988075, 28.582680, 43.231476>,  <35.789635, 28.529198, 43.355415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988075, 28.582680, 43.231476>,  <36.318810, 28.671818, 43.024910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988075, 28.582680, 43.231476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553412, -0.158485, 0.817690,
		-0.100375, 0.961885, 0.254367,
		-0.826837, -0.222845, 0.516411,
		35.740025, 28.515825, 43.386398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286331, 29.212833, 43.593552>,  <36.318810, 28.671818, 43.024910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286331, 29.212833, 43.593552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068054, 28.887287, 43.673389>,  <35.937088, 28.691959, 43.721291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068054, 28.887287, 43.673389>,  <36.286331, 29.212833, 43.593552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068054, 28.887287, 43.673389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518551, -0.140859, 0.843364,
		-0.658273, 0.563718, 0.498898,
		-0.545694, -0.813868, 0.199593,
		35.904346, 28.643127, 43.733269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949837, 29.296726, 44.197742>,  <36.286331, 29.212833, 43.593552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949837, 29.296726, 44.197742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935574, 28.897942, 44.170040>,  <35.927017, 28.658670, 44.153419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935574, 28.897942, 44.170040>,  <35.949837, 29.296726, 44.197742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935574, 28.897942, 44.170040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497306, -0.077814, 0.864078,
		-0.866842, -0.003632, 0.498570,
		-0.035658, -0.996961, -0.069259,
		35.924877, 28.598854, 44.149261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731327, 29.044571, 44.915668>,  <35.949837, 29.296726, 44.197742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731327, 29.044571, 44.915668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931358, 28.751364, 44.731232>,  <36.051376, 28.575439, 44.620567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931358, 28.751364, 44.731232>,  <35.731327, 29.044571, 44.915668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931358, 28.751364, 44.731232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428450, -0.253292, 0.867337,
		-0.752564, -0.631293, 0.187395,
		0.500078, -0.733016, -0.461096,
		36.081383, 28.531460, 44.592903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900921, 28.526241, 45.391090>,  <35.731327, 29.044571, 44.915668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900921, 28.526241, 45.391090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141628, 28.363705, 45.116062>,  <36.286053, 28.266182, 44.951046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141628, 28.363705, 45.116062>,  <35.900921, 28.526241, 45.391090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141628, 28.363705, 45.116062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519874, -0.454253, 0.723453,
		-0.606302, -0.792805, -0.062109,
		0.601771, -0.406342, -0.687573,
		36.322159, 28.241802, 44.909790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918392, 27.792498, 45.621891>,  <35.900921, 28.526241, 45.391090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918392, 27.792498, 45.621891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241463, 27.873920, 45.400539>,  <36.435303, 27.922773, 45.267727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241463, 27.873920, 45.400539>,  <35.918392, 27.792498, 45.621891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241463, 27.873920, 45.400539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567731, -0.521874, 0.636655,
		-0.159197, -0.828379, -0.537070,
		0.807674, 0.203558, -0.553378,
		36.483765, 27.934988, 45.234528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382191, 27.211365, 45.715363>,  <35.918392, 27.792498, 45.621891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382191, 27.211365, 45.715363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624870, 27.507200, 45.598789>,  <36.770477, 27.684702, 45.528847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624870, 27.507200, 45.598789>,  <36.382191, 27.211365, 45.715363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624870, 27.507200, 45.598789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613773, -0.202841, 0.762980,
		0.505176, -0.641768, -0.577001,
		0.606696, 0.739587, -0.291430,
		36.806877, 27.729076, 45.511360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936184, 26.883284, 45.748425>,  <36.382191, 27.211365, 45.715363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936184, 26.883284, 45.748425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016609, 27.274900, 45.761395>,  <37.064865, 27.509871, 45.769176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016609, 27.274900, 45.761395>,  <36.936184, 26.883284, 45.748425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016609, 27.274900, 45.761395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709503, -0.168374, 0.684292,
		0.675410, -0.114580, -0.728487,
		0.201065, 0.979041, 0.032427,
		37.076927, 27.568613, 45.771122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778812, 26.944729, 45.577969>,  <36.936184, 26.883284, 45.748425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778812, 26.944729, 45.577969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622532, 27.271048, 45.748531>,  <37.528763, 27.466839, 45.850868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622532, 27.271048, 45.748531>,  <37.778812, 26.944729, 45.577969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622532, 27.271048, 45.748531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709185, -0.028562, 0.704443,
		0.586862, 0.577633, -0.567392,
		-0.390704, 0.815797, 0.426411,
		37.505322, 27.515787, 45.876453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373932, 27.408478, 45.666054>,  <37.778812, 26.944729, 45.577969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373932, 27.408478, 45.666054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063103, 27.466684, 45.910995>,  <37.876606, 27.501608, 46.057961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063103, 27.466684, 45.910995>,  <38.373932, 27.408478, 45.666054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063103, 27.466684, 45.910995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594581, -0.149429, 0.790028,
		0.206466, 0.978006, 0.029595,
		-0.777075, 0.145517, 0.612356,
		37.829979, 27.510340, 46.094704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680897, 27.850315, 46.249134>,  <38.373932, 27.408478, 45.666054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680897, 27.850315, 46.249134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343578, 27.671225, 46.368061>,  <38.141190, 27.563770, 46.439419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343578, 27.671225, 46.368061>,  <38.680897, 27.850315, 46.249134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343578, 27.671225, 46.368061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343096, -0.022648, 0.939027,
		-0.413695, 0.893883, 0.172712,
		-0.843292, -0.447727, 0.297318,
		38.090591, 27.536907, 46.457256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549446, 28.621479, 46.134674>,  <38.680897, 27.850315, 46.249134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549446, 28.621479, 46.134674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868134, 28.862268, 46.113251>,  <39.059345, 29.006742, 46.100399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868134, 28.862268, 46.113251>,  <38.549446, 28.621479, 46.134674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868134, 28.862268, 46.113251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183488, 0.156508, -0.970483,
		-0.575822, 0.783030, 0.235147,
		0.796720, 0.601972, -0.053555,
		39.107151, 29.042860, 46.097183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315292, 29.321766, 45.876850>,  <38.549446, 28.621479, 46.134674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315292, 29.321766, 45.876850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704975, 29.269730, 45.803097>,  <38.938786, 29.238508, 45.758846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704975, 29.269730, 45.803097>,  <38.315292, 29.321766, 45.876850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704975, 29.269730, 45.803097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173580, 0.090074, -0.980692,
		0.144187, 0.987402, 0.065170,
		0.974207, -0.130091, -0.184381,
		38.997238, 29.230701, 45.747784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332230, 29.746548, 45.249794>,  <38.315292, 29.321766, 45.876850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332230, 29.746548, 45.249794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679607, 29.551241, 45.284195>,  <38.888035, 29.434057, 45.304836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679607, 29.551241, 45.284195>,  <38.332230, 29.746548, 45.249794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679607, 29.551241, 45.284195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190615, 0.168698, -0.967061,
		0.457675, 0.856234, 0.239576,
		0.868447, -0.488266, 0.086002,
		38.940140, 29.404760, 45.309994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917057, 30.179104, 45.016174>,  <38.332230, 29.746548, 45.249794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917057, 30.179104, 45.016174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018387, 29.793777, 44.980736>,  <39.079185, 29.562582, 44.959473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018387, 29.793777, 44.980736>,  <38.917057, 30.179104, 45.016174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018387, 29.793777, 44.980736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122622, 0.122819, -0.984825,
		0.959577, 0.238621, 0.149238,
		0.253329, -0.963315, -0.088594,
		39.094387, 29.504784, 44.954159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472454, 30.150534, 44.573463>,  <38.917057, 30.179104, 45.016174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472454, 30.150534, 44.573463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345562, 29.771685, 44.554203>,  <39.269424, 29.544374, 44.542648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345562, 29.771685, 44.554203>,  <39.472454, 30.150534, 44.573463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345562, 29.771685, 44.554203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032727, 0.039808, -0.998671,
		0.947783, -0.318387, 0.018368,
		-0.317233, -0.947124, -0.048149,
		39.250393, 29.487547, 44.539757>
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
